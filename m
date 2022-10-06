Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8909D5F6247
	for <lists+devicetree@lfdr.de>; Thu,  6 Oct 2022 10:06:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230473AbiJFIGh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Oct 2022 04:06:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53548 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230357AbiJFIGW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Oct 2022 04:06:22 -0400
Received: from gandalf.ozlabs.org (mail.ozlabs.org [IPv6:2404:9400:2221:ea00::3])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 971274D250;
        Thu,  6 Oct 2022 01:06:19 -0700 (PDT)
Received: by gandalf.ozlabs.org (Postfix, from userid 1007)
        id 4MjkXj6NHTz4x1D; Thu,  6 Oct 2022 19:06:13 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gibson.dropbear.id.au; s=201602; t=1665043573;
        bh=Afdal0VsT4PQodJDWku3s7BjaIEWYJHrpQSmE0nqZhE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=gv1mh0u/VTrRViU6Coc/PtdW0oDGpLOpq9y5OdvNz2olq9rDU0uVt7/aEwQxKAPe4
         AqmiG1IMhVt54ZOhbxEjzw2A5AEFO/b50yw8yu1y3YV66/et2oGXvWEJU4Of3IaeDP
         GETg55UM+YDRG3eDiQ7fkOsp0edpmNZu/E7X2Rmo=
Date:   Thu, 6 Oct 2022 19:06:06 +1100
From:   David Gibson <david@gibson.dropbear.id.au>
To:     Tadeusz Struk <tadeusz.struk@linaro.org>
Cc:     Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        devicetree-compiler@vger.kernel.org
Subject: Re: [PATCH v3 2/2] libfdt: tests: add get_next_tag_invalid_prop_len
Message-ID: <Yz6MbgDg9gOmC6k9@yekko>
References: <20221005232931.3016047-1-tadeusz.struk@linaro.org>
 <20221005232931.3016047-2-tadeusz.struk@linaro.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="S/jzh2VBa8Yvs20v"
Content-Disposition: inline
In-Reply-To: <20221005232931.3016047-2-tadeusz.struk@linaro.org>
X-Spam-Status: No, score=-4.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_MED,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--S/jzh2VBa8Yvs20v
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 05, 2022 at 04:29:31PM -0700, Tadeusz Struk wrote:
> Add a new test get_next_tag_invalid_prop_len, which covers
> fdt_next_tag(), when it is passed an corrupted blob, with
> invalid property len values.
>=20
> Signed-off-by: Tadeusz Struk <tadeusz.struk@linaro.org>

Looks good overall, but a bunch of minor things to polish.

> ---
>  tests/.gitignore                      |  1 +
>  tests/Makefile.tests                  |  2 +-
>  tests/get_next_tag_invalid_prop_len.c | 84 +++++++++++++++++++++++++++
>  tests/meson.build                     |  1 +
>  tests/run_tests.sh                    |  1 +
>  5 files changed, 88 insertions(+), 1 deletion(-)
>  create mode 100644 tests/get_next_tag_invalid_prop_len.c
>=20
> diff --git a/tests/.gitignore b/tests/.gitignore
> index 03bdde2..3376ed9 100644
> --- a/tests/.gitignore
> +++ b/tests/.gitignore
> @@ -74,3 +74,4 @@ tmp.*
>  /truncated_memrsv
>  /utilfdt_test
>  /value-labels
> +/get_next_tag_invalid_prop_len
> diff --git a/tests/Makefile.tests b/tests/Makefile.tests
> index 2d36c5d..2c5b4c9 100644
> --- a/tests/Makefile.tests
> +++ b/tests/Makefile.tests
> @@ -4,7 +4,7 @@ LIB_TESTS_L =3D get_mem_rsv \
>  	get_path supernode_atdepth_offset parent_offset \
>  	node_offset_by_prop_value node_offset_by_phandle \
>  	node_check_compatible node_offset_by_compatible \
> -	get_alias \
> +	get_alias get_next_tag_invalid_prop_len \
>  	char_literal \
>  	sized_cells \
>  	notfound \
> diff --git a/tests/get_next_tag_invalid_prop_len.c b/tests/get_next_tag_i=
nvalid_prop_len.c
> new file mode 100644
> index 0000000..f5a6d99
> --- /dev/null
> +++ b/tests/get_next_tag_invalid_prop_len.c
> @@ -0,0 +1,84 @@
> +// SPDX-License-Identifier: LGPL-2.1-or-later
> +/*
> + * libfdt - Flat Device Tree manipulation
> + *	Testcase for fdt_next_tag()
> + */
> +#include <stdlib.h>
> +#include <stdio.h>
> +#include <string.h>
> +#include <stdint.h>
> +
> +#include <libfdt.h>
> +#include "tests.h"
> +#include "testdata.h"
> +
> +#define FDT_SIZE 65536
> +#define CHECK_ERR(err) \
> +({ if (err) { \
> +	free(fdt); \

You don't need the free() here, you're about to quit the test program
anyway.

> +	FAIL("%s: %d: %s", __FILE__, __LINE__, fdt_strerror(err)); \
> +	} \
> +})
> +
> +int main(int argc, char *argv[])
> +{
> +	struct fdt_property *prp;
> +	void *fdt;
> +	int nextoff =3D 0, offset, err;
> +	uint32_t tag, val;
> +
> +	test_init(argc, argv);
> +	fdt =3D calloc(1, FDT_SIZE);

No need to use cleared memory, the fdt_sw functions will work just
fine with an uninitialized buffer.

> +	if (!fdt)
> +		FAIL("Can't allocate memory");
> +	err =3D fdt_create(fdt, FDT_SIZE);
> +	CHECK_ERR(err);
> +	err =3D fdt_add_reservemap_entry(fdt, 0xdeadbeefUL, 0x10000UL);

No need to insert a dummy reservemap entry here.

> +	CHECK_ERR(err);
> +	err =3D fdt_finish_reservemap(fdt);
> +	CHECK_ERR(err);
> +	err =3D fdt_begin_node(fdt, "");
> +	CHECK_ERR(err);
> +	err =3D fdt_begin_node(fdt, "subnode1");
> +	CHECK_ERR(err);

No particular need for this subnode either, you can test what you want
with properties on the root node.

> +	err =3D fdt_property_u32(fdt, "prop-int-32", 0x1234);
> +	CHECK_ERR(err);
> +	err =3D fdt_property_u32(fdt, "prop2-int-32", 0x4321);
> +	CHECK_ERR(err);
> +	err =3D fdt_end_node(fdt);
> +	CHECK_ERR(err);
> +	err =3D fdt_end_node(fdt);
> +	CHECK_ERR(err);
> +	offset =3D -1;
> +	val =3D cpu_to_fdt32(0x1234);
> +	offset =3D fdt_node_offset_by_prop_value(fdt, offset,  "prop-int-32",
> +					       &val, sizeof(val));

fdt_node_offset_by_prop_value() is a very roundabout way to find the
node you need - you know the path (and if you get rid of the
unnecessary subnode, it'll just be the root node at offset 0).

> +	do {
> +		tag =3D fdt_next_tag(fdt, offset, &nextoff);
> +		offset =3D nextoff;
> +	} while (tag !=3D FDT_PROP);
> +
> +	/* Calculate len to property */
> +	prp =3D (struct fdt_property *)(((char*)fdt) + fdt_off_dt_struct(fdt) +=
 offset);

You could replace the loop as well as this nasty pointer arithmetic
with an fdt_get_property_w() call.

> +	/* int overflow case */

Probably worth testing the fdt_next_tag() behaviour on the unmangled
tree before testing the corrupted cases.  If the test ever breaks,
that sort of thing makes it easier to figure out if the breakage is in
the library, or the testcase.

> +	prp->len =3D cpu_to_fdt32(0xFFFFFFFA);
> +	tag =3D fdt_next_tag(fdt, offset, &nextoff);
> +	if (tag !=3D FDT_END)
> +		FAIL("Invalid tag %x, expected premature end", tag);
> +
> +	if (nextoff !=3D -FDT_ERR_BADSTRUCTURE)
> +		FAIL("Invalid nextoff, expected error -FDT_ERR_BADSTRUCTURE");
> +
> +	/* negative offset case */
> +	prp->len =3D cpu_to_fdt32(0x7FFFFFFA);
> +	tag =3D fdt_next_tag(fdt, offset, &nextoff);
> +	if (tag !=3D FDT_END)
> +		FAIL("Invalid tag, expected premature end");
> +
> +	if (nextoff !=3D -FDT_ERR_BADSTRUCTURE)
> +		FAIL("Invalid nextoff, expected error -FDT_ERR_BADSTRUCTURE");
> +
> +	free(fdt);
> +	PASS();
> +}
> diff --git a/tests/meson.build b/tests/meson.build
<> index 4ac154a..29a42dd 100644
> --- a/tests/meson.build
> +++ b/tests/meson.build
> @@ -47,6 +47,7 @@ tests =3D [
>    'get_path',
>    'get_phandle',
>    'get_prop_offset',
> +  'get_next_tag_invalid_prop_len',
>    'getprop',
>    'incbin',
>    'integer-expressions',
> diff --git a/tests/run_tests.sh b/tests/run_tests.sh
> index 244df8a..46678cb 100755
> --- a/tests/run_tests.sh
> +++ b/tests/run_tests.sh
> @@ -513,6 +513,7 @@ libfdt_tests () {
>      run_dtc_test -I fs -O dts -o fs.test_tree1.test.dts $FSBASE/test_tre=
e1
>      run_dtc_test -I fs -O dtb -o fs.test_tree1.test.dtb $FSBASE/test_tre=
e1
>      run_test dtbs_equal_unordered -m fs.test_tree1.test.dtb test_tree1.d=
tb
> +    run_test get_next_tag_invalid_prop_len
> =20
>      ## https://github.com/dgibson/dtc/issues/64
>      check_tests "$SRCDIR/phandle-args-overflow.dts" clocks_property

--=20
David Gibson			| I'll have my music baroque, and my code
david AT gibson.dropbear.id.au	| minimalist, thank you.  NOT _the_ _other_
				| _way_ _around_!
http://www.ozlabs.org/~dgibson

--S/jzh2VBa8Yvs20v
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEoULxWu4/Ws0dB+XtgypY4gEwYSIFAmM+jFwACgkQgypY4gEw
YSJ+/A//VejqulchZzgMzsNqNaFUzu1uPYdeIu//Clts5UR97/oxniGDKrDwruVm
pmvbvK2b9307EkCQs/8TBsVOFon4H7J4t6HeN9FlVCZracoz75Uc8Uw85ah38nPZ
BIamiTNEV9a5E5g1LNLxoMeiRW6RwVybuJG9qeRlu68Ur90cXnDtAsLa8gsvQ6lw
NYTBUwf5bnzFWNGmyNIZML0o9aySFK0fL7mnC7A2+ioqnTQ2le271cnF1T9nCWgH
hKWGrIIFdpZnMFb+kFTcCMZWeJR7jO32rFqWf9CiJN2/xwBMlRH4dOw8uBYnU2c7
ZV63Fy2jDJJB3MdZEEhftUOD2J5JpMz7wGNYV2bMC/9dkDhGHDdFH8ydjo0BFjcY
3aI9C30SlLH1/ZLXSkzrXVamtraCzk0I8+GMx5zXEfx0YOommnzyUl9BqXMGbsut
KG7NU9KGUQIxm7Ci18lc4mSwPRDXSyV7qyR5sTsHIlpmx3NuIinn4yBddGzBfjjw
oHn+nQD3BBQjMRpKIpd9MUwcqKP9oFAOrb0Rn8iezKatwIvB45P+FDMnv803nXmB
XuOqn428MVW0PeF5c3LM4h6UUrfL/lp3FVOnTBERddFn+npzj6Hr3E85XmY0Jpnp
zmBQwQlr9M2jiQdx3mbfFNQZgD5t4LDltNsuJUxOmtsMs+Yedgk=
=pwRJ
-----END PGP SIGNATURE-----

--S/jzh2VBa8Yvs20v--
