#include "mheads.h"
#include "lheads.h"

HDF *g_cfg = NULL;
HASH *g_datah = NULL;

int main(int argc, char *argv[])
{
    NEOERR *err;

    mtc_init(TC_ROOT"sitemap");

    err = mcfg_parse_file(SITE_CONFIG, &g_cfg);
    DIE_NOK_MTL(err);

    err = ltpl_parse_dir(PATH_TPL"config/static/sitemap", NULL);
    DIE_NOK_MTL(err);

    return 0;
}
