Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DB9682EB545
	for <lists+devicetree@lfdr.de>; Tue,  5 Jan 2021 23:15:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726636AbhAEWPz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Jan 2021 17:15:55 -0500
Received: from mout.gmx.net ([212.227.15.15]:48827 "EHLO mout.gmx.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726306AbhAEWPz (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 5 Jan 2021 17:15:55 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1609884844;
        bh=Akq1tCzOrH1xiiw0JByliJwuWqpFfqfeL3h97Gehb3Y=;
        h=X-UI-Sender-Class:Date:From:To:Cc:Subject:References:In-Reply-To;
        b=PPrT1ZKwNdw2YiEW7joY3becyNjQK8GD/ZQb5PzbTi2RaSBk6wtI8YnvlK/w3yxiN
         ZXpd/zxXF08t/vUjAuQZChXSGDbNHWNbYzoZhtntK25Z28x5lGwAg1TYWJateGkxQm
         rt833ZQcFZ7GJr55KP7vcDMzhXqOyfTwbl8tH++4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from longitude ([37.201.215.57]) by mail.gmx.com (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MtOKi-1k7Z5O2SpK-00uusx; Tue, 05
 Jan 2021 23:14:04 +0100
Date:   Tue, 5 Jan 2021 23:14:02 +0100
From:   Jonathan =?utf-8?Q?Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>
To:     conor.dooley@microchip.com
Cc:     robh+dt@kernel.org, damien.lemoal@wdc.com,
        jassisinghbrar@gmail.com, aou@eecs.berkeley.edu,
        paul.walmsley@sifive.com, palmer@dabbelt.com,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        cyril.jean@microchip.com, david.abdurachmanov@gmail.com,
        daire.mcnamara@microchip.com, anup.patel@wdc.com,
        j.neuschaefer@gmx.net, atish.patra@wdc.com,
        lewis.hanly@microchip.com
Subject: Re: [PATCH v3 3/5] soc: add polarfire soc system controller
Message-ID: <X/TkquplML5INtZg@latitude>
References: <20201223163310.29122-1-conor.dooley@microchip.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="lzfUsh6qR7gklPXt"
Content-Disposition: inline
In-Reply-To: <20201223163310.29122-1-conor.dooley@microchip.com>
X-Provags-ID: V03:K1:nIcxYDV20l0/8DyaPjDAuGxdNyqjJZIMd7NUiUPag8lQcVINg4U
 tTRPXH1hSXVBXy1+tOQwqB6hTG1Zm1hW+1kVbvW43XV2tOhm2hCp73zCBsnkQaaRfPv43AF
 RRxS90l8wQxf3K9eCcoLYb2YRwMGFuYAFgN1X9bcuzgWb8BPfkKHMPnWdYEVJaG++a41pgt
 dn5uPEqv96BQv3RXlahXA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Vx/O7sD3hGM=:F10vPCdKP6pJhYycrUd5P/
 yxwWDzpiNUFfICbikFZYdLFldsf4p5U9dGPrwUhbFJMBfhMyWIqKYMKptXQ0WbMKMHyHOrzWQ
 iv+BId+Y11LTj94Za71fh3IqJAQS2g8p8PNrxM3O3DsNBRsFpV+7HUDLVAleq4y9d5X32WwTg
 lgeTTGvnOZAXdTs0vuN5eA4SIFyakKGA5laGBZ9H23C335O2b3qXW/7aiug9th+tw3NSNAbPR
 bU3OX3Nh7f8tQ+bU61iMxXczTINcgtrxZEpsfxi0mg4yKdlMhCFVkPliWvPH9LBmfDmlASouh
 3HucCpMAWe2LaXUdyL7B5/d5yQh73qjFDO+BVpP5g89oxyT/+1FSaVcRsNYYUdBDihPEYDKQM
 pUcCf5VOdzxiTyZecNqoa+USVlAZjhcS6HPO3jehdyO6JyC5hTC91nnji3Z461F5/L9soH1U8
 l7/EvXkLLeLv2onyD3hdbrkI5//ShBNnCGYz7JrzdrkrIJtAVn18hOMys/64w8U2QlH3huvsn
 bgPWfvA0ZFrDIi9XgAvdyVF17YjKid+Ecxk084wVVxXjymDgZUNA/0Q22oTQ+d9sfE2k+K8mU
 uHrMAZuDN5rO6pOldgLXyVB5iyUSQdAhFYEFryGc2X6TbcG2xiGRodmegNZHOfe8+1yHMF0dk
 OApLN/BCWOo3pb0QKWCx5XjcznFy1YKlTNoY15nbVmXEldJyhaW5UrzXHIqf+NqCXsaf853J1
 kozqvCHwFb9wg4k6d5f5XHYBDLeq2elKBuOGepOXA7xJYcWSJ+8934NPjIc/wRvYQmUhIRG5m
 8pOK7hxsn68HUZm9o+Ly9OOc0UAVFVxVIDSTI8OgIA+MqxTkeOnDbwzO6a1OCPC5R0NAkVG/P
 J80kR+U0APznVZYF8uPw==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--lzfUsh6qR7gklPXt
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

On Wed, Dec 23, 2020 at 04:33:10PM +0000, conor.dooley@microchip.com wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
>=20
> This driver provides an interface for other drivers to access the
> functions of the system controller on the Microchip PolarFire SoC.
>=20
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
[...]
> --- a/drivers/soc/Makefile
> +++ b/drivers/soc/Makefile
> @@ -14,6 +14,7 @@ obj-$(CONFIG_ARCH_GEMINI)	+=3D gemini/
>  obj-y				+=3D imx/
>  obj-$(CONFIG_ARCH_IXP4XX)	+=3D ixp4xx/
>  obj-$(CONFIG_SOC_XWAY)		+=3D lantiq/
> +obj-$(CONFIG_SOC_MICROCHIP_POLARFIRE)	+=3D microchip/

CONFIG_SOC_MICROCHIP_POLARFIRE is more specific than a flag guarding
the microchip directory should (intuitively) be (because there may be
Microchip SoCs that are not Microchip PolarFire). Fortunately, since
mpfs-sys-controller.o itself is guarded by CONFIG_POLARFIRE_SOC_SYS_CTRL,
using "obj-y +=3D microchip/" here should work without a problem.


[...]
> +int mpfs_blocking_transaction(struct mpfs_sys_controller *mpfs_client, v=
oid *msg,
> +			      void *response, u16 response_size_bytes)
> +{
> +	int ret;
> +
> +	mpfs_client->response =3D response;
> +	mpfs_client->response_size_bytes =3D response_size_bytes;
> +
> +	mutex_lock_interruptible(&transaction_lock);
> +
> +	reinit_completion(&mpfs_client->c);
> +
> +	ret =3D mbox_send_message(mpfs_client->chan, msg);
> +	if (ret >=3D 0) {
> +		if (wait_for_completion_timeout(&mpfs_client->c, HZ)) {
> +			ret =3D 0;
> +		} else {
> +			ret =3D -ETIMEDOUT;
> +			dev_warn(mpfs_client->client.dev, "MPFS sys controller transaction ti=
meout");

\n is missing

> +		}
> +	} else {
> +		dev_err(mpfs_client->client.dev,
> +			"mpfs sys controller transaction returned %d\r\n", ret);

\r\n is quite unusual and probably unnecessary in printk-style
functions, \n is enough.

> +	}
> +
> +	mutex_unlock(&transaction_lock);
> +
> +	return ret;
> +}
> +EXPORT_SYMBOL(mpfs_blocking_transaction);


Best regards,
Jonathan Neusch=C3=A4fer

--lzfUsh6qR7gklPXt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEvHAHGBBjQPVy+qvDCDBEmo7zX9sFAl/05KEACgkQCDBEmo7z
X9uW3w/7BWkX0EOwMcLup/IOp5yIzP/Pc8Jh3HP7N1inwHaB+g9ot2514xdnMYSy
A07zImFXlaCbw0T+qXpUQfLAlt4DZs/24ysSnJ5wPHp5yFXt9e4M5i6S5k6mCsv3
B4+MnwY2AyD6MwTJ0jYOJYCsc5Pvi89v4hFPGsXZOieebXj1RZMDJ4mmfI6z/Jru
+l+o86J9tX09sOz4eBDXf4+pNcaqoaLuMNDdrJVZJcVuTRtsbhV+U39d6b8czYsE
u/xzdmK4lt0zJg5ZdpEPrU+WDWAbihyQ4o40iO4J0f4g7vEwX/68oHMoBffCDoNX
0yXjbTaCiHRQacS83P+nAkAUe4a+3Mw6Cvq1T3eWIqJVTqgYXIhyo64K8rlKo2GO
v3bSKKCCtWvmXCtcXFEp3YjMfsnurDijUbblAMowAsyJ7pOtp19A1c2TbXb8tftd
YQFms3A4yBFtKjj0D0LNjoUFtRg1lD1fzDRuF2Dep5rF3Q8WRgCscigy8nHsvqRy
cpDpdx2sbCXh4dYqAb0OUsIlas+Iu/xahlu/vvWhJg2s2SQhM319LuJgAf8sEJ7X
XkmtvuM3q3FqAMXaIbmVSCo8bKHa5bZCY2BGFIPkCxE4uGZ4RcDt2dQHvv4alWq/
43chRCnLrzlZlJ3c5f5J+rPbS5qWmDdCeylPoxDA6T61i1DVn2A=
=juh7
-----END PGP SIGNATURE-----

--lzfUsh6qR7gklPXt--
