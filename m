Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9427D5FBEB2
	for <lists+devicetree@lfdr.de>; Wed, 12 Oct 2022 02:35:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229436AbiJLAe7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Oct 2022 20:34:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52212 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229491AbiJLAe5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Oct 2022 20:34:57 -0400
Received: from gandalf.ozlabs.org (mail.ozlabs.org [IPv6:2404:9400:2221:ea00::3])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D76732ED3;
        Tue, 11 Oct 2022 17:34:52 -0700 (PDT)
Received: by gandalf.ozlabs.org (Postfix, from userid 1007)
        id 4MnDF32q82z4xGs; Wed, 12 Oct 2022 11:34:47 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gibson.dropbear.id.au; s=201602; t=1665534887;
        bh=XCkMGo0+8Gvb0BGGDFKvL5HQW5EqJNq1I3tGS8WcC9g=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=qIQ95UnCQvDpZgjWVGT2A/olJ1SfDf0AiRYrrYGDueRxQF9n7fzFfd7UeLINQhwsL
         mCywigL5CkPZNtJY7rzXEguEyFyrOXCxs7bi5AYtmrVAIMHAGR4FD7PSGorHdXZevD
         tQHqKg97fJzbwuMQzVnTZ/Wkz99+JO243XzajeYI=
Date:   Wed, 12 Oct 2022 10:51:08 +1100
From:   David Gibson <david@gibson.dropbear.id.au>
To:     Tadeusz Struk <tadeusz.struk@linaro.org>
Cc:     Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        devicetree-compiler@vger.kernel.org
Subject: Re: [PATCH v3 1/2] libfdt: prevent integer overflow in fdt_next_tag
Message-ID: <Y0YBbEEZGtMh+o7U@yekko>
References: <20221005232931.3016047-1-tadeusz.struk@linaro.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="7ll6rwBMRxr4VFtD"
Content-Disposition: inline
In-Reply-To: <20221005232931.3016047-1-tadeusz.struk@linaro.org>
X-Spam-Status: No, score=-4.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_MED,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--7ll6rwBMRxr4VFtD
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 05, 2022 at 04:29:30PM -0700, Tadeusz Struk wrote:
> Since fdt_next_tag() in a public API function all input parameters,
> including the fdt blob should not be trusted. It is possible to forge
> a blob with invalid property length that will cause integer overflow
> during offset calculation. To prevent that, validate the property length
> read from the blob before doing calculations.
>=20
> Signed-off-by: Tadeusz Struk <tadeusz.struk@linaro.org>

Merged, thanks.

> ---
> v2:
> * Use len local variable to avoid multiple calls to fdt32_to_cpu(*lenp)
> * Add can_assume(VALID_DTB) to the new checks
> v3:
> * Use unsigned integer for prop len and offset validation
> ---
>  libfdt/fdt.c | 17 ++++++++++++-----
>  1 file changed, 12 insertions(+), 5 deletions(-)
>=20
> diff --git a/libfdt/fdt.c b/libfdt/fdt.c
> index 90a39e8..20c6415 100644
> --- a/libfdt/fdt.c
> +++ b/libfdt/fdt.c
> @@ -162,7 +162,7 @@ const void *fdt_offset_ptr(const void *fdt, int offse=
t, unsigned int len)
>  uint32_t fdt_next_tag(const void *fdt, int startoffset, int *nextoffset)
>  {
>  	const fdt32_t *tagp, *lenp;
> -	uint32_t tag;
> +	uint32_t tag, len, sum;
>  	int offset =3D startoffset;
>  	const char *p;
> =20
> @@ -188,12 +188,19 @@ uint32_t fdt_next_tag(const void *fdt, int startoff=
set, int *nextoffset)
>  		lenp =3D fdt_offset_ptr(fdt, offset, sizeof(*lenp));
>  		if (!can_assume(VALID_DTB) && !lenp)
>  			return FDT_END; /* premature end */
> +
> +		len =3D fdt32_to_cpu(*lenp);
> +		sum =3D len + offset;
> +		if (!can_assume(VALID_DTB) &&
> +		    (INT_MAX <=3D sum || sum < (uint32_t) offset))
> +			return FDT_END; /* premature end */
> +
>  		/* skip-name offset, length and value */
> -		offset +=3D sizeof(struct fdt_property) - FDT_TAGSIZE
> -			+ fdt32_to_cpu(*lenp);
> +		offset +=3D sizeof(struct fdt_property) - FDT_TAGSIZE + len;
> +
>  		if (!can_assume(LATEST) &&
> -		    fdt_version(fdt) < 0x10 && fdt32_to_cpu(*lenp) >=3D 8 &&
> -		    ((offset - fdt32_to_cpu(*lenp)) % 8) !=3D 0)
> +		    fdt_version(fdt) < 0x10 && len >=3D 8 &&
> +		    ((offset - len) % 8) !=3D 0)
>  			offset +=3D 4;
>  		break;
> =20

--=20
David Gibson			| I'll have my music baroque, and my code
david AT gibson.dropbear.id.au	| minimalist, thank you.  NOT _the_ _other_
				| _way_ _around_!
http://www.ozlabs.org/~dgibson

--7ll6rwBMRxr4VFtD
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEoULxWu4/Ws0dB+XtgypY4gEwYSIFAmNGAWUACgkQgypY4gEw
YSLwZA/7B/iFazyU2ARPc9vApTITt3ejXdXMC7a0+G6BqAm4G3z3EBqOeJNVEmtU
/seIpZzjTg0ZXlCnh/4EekTc2/fQ80SfYUDmQvc+yJ98Zj0HT0GEUATx9LK8Y+in
DvFfJlZ9lh2A4niD38SXUWp8tPXZ16vAp/mQNzKWm7fj4Z8e1h1F9B4cZSZDiUYD
bfXYiwJGi7BAPGYFdScnBDVsVRyXGb6Ej+4JIKnMG/NMSrMJHoNgA38obtldSPdG
i8jYFG1QOu55yQe+Sh0WTtPNVbvHDgZ7Xc6C/zFcHLvv/Vb0OSJtf+ie3OcP92ty
c20L1z8lUPTJdWrz4otFqDATl/TbGbjQVjoAANAx4SBAjk/VC5FSXUfJuZBTRD8u
gomqVe++3xM5YJdvctnKu9G0UntDtvS0It/QJ7jC+H3BMcIGC5gDFBfeBJVbEyHu
wOjMF+1UHMlKxSHv1LPCxSIbNjUK3R7a2mFDeoRhX/4bHM5OeVXpXl5+gQTdvE93
8zFqReXOI5bJ09H8ISD9jQmTBiBAC34U8O+OvOm2MvxzHRC6QD2cqlxNEvwK9kht
ZQKQIs1aR1/SJZOYV/U+V7G6lEITkEhcDeoGpOSX8em3Zqmq3+QD0VvW+7BSt7Ej
94CxIIk3H3XOQRMhg3njMaMY3f+4nk4DNQC4HGrG90uViQy9uO0=
=vjS2
-----END PGP SIGNATURE-----

--7ll6rwBMRxr4VFtD--
