Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EFDCD2EB4DF
	for <lists+devicetree@lfdr.de>; Tue,  5 Jan 2021 22:27:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728023AbhAEV1S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Jan 2021 16:27:18 -0500
Received: from mout.gmx.net ([212.227.17.21]:42137 "EHLO mout.gmx.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726020AbhAEV1R (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 5 Jan 2021 16:27:17 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1609881929;
        bh=G0OVLdbaJsgO8HPhgo/xuHH4VcarVg+GV7RnGJ7YXdM=;
        h=X-UI-Sender-Class:Date:From:To:Cc:Subject:References:In-Reply-To;
        b=Bk4UHtUkaNQN8pmEkgqMXvvlLezQM4/a9/y6BmHYL8NQuM8ESeAjvijTwRtNjw7DE
         lcyul/e3QnYqj+wcfGGH3GWJj0HGo/a1WIh/CI/1+M+yYecYLpC1GsWKx2ybTCdyu7
         9UUMpdHbA1zLZGuTW0jPllLuVHOdv5p12ne0rb7Q=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from longitude ([37.201.215.57]) by mail.gmx.com (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MFbRm-1klMik3YaM-00H7Wo; Tue, 05
 Jan 2021 22:25:28 +0100
Date:   Tue, 5 Jan 2021 22:25:25 +0100
From:   Jonathan =?utf-8?Q?Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>
To:     conor.dooley@microchip.com
Cc:     robh+dt@kernel.org, damien.lemoal@wdc.com,
        jassisinghbrar@gmail.com, aou@eecs.berkeley.edu,
        paul.walmsley@sifive.com, palmer@dabbelt.com,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        lewis.hanly@microchip.com, cyril.jean@microchip.com,
        daire.mcnamara@microchip.com, atish.patra@wdc.com,
        anup.patel@wdc.com, david.abdurachmanov@gmail.com,
        j.neuschaefer@gmx.net
Subject: Re: [PATCH v3 4/5] dt-bindings: add bindings for polarfire soc
 system controller
Message-ID: <X/TZRXPQv0wXvT+0@latitude>
References: <20201223163247.28923-1-conor.dooley@microchip.com>
 <20201223163316.29186-1-conor.dooley@microchip.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="FMJAI3Xpdhqt2MKs"
Content-Disposition: inline
In-Reply-To: <20201223163316.29186-1-conor.dooley@microchip.com>
X-Provags-ID: V03:K1:Gf17oAsiy5iz7mpMhRYz4egNe5BoH7WNT/wUW88YtCqDXne5g+C
 e2uaohiym9EwmEtwsMV2r2FkbRo8kvy+9YvPbO74LgZoX6VlHOczciuwcqPr5bJqZGEpKgQ
 lXbNdzOCwN+tT3UVQm5dOIsVD8oLKPGxVJRKtBbw5qXhqDXYAlnPafZUgiRxQW3NUjRv1pK
 9iS9vTqNZ/h9MTKIsLCKw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:k1IA2ttbA+I=:Nzv6Ro/7yo7NnjwXZwfMM/
 CctYuJ+TcwhItd0GMsOBXv7X6SPHbY+raN4/J83K2RV8uFUyr+LMkfrpJxUstl61JDnXOq+P4
 oa0mRTQt5T5nUqhmIPsAAfvmUCDknPWxMxageQ6bkxeQPpbW1LS9GC++tTRR/YRoOnDdmvvxP
 M/XPnwo/HSCAz6eN57aGLgcpgjAkm+r/UHsy4A6BfHIjDbE/A9cSJZgIJvkBYGSwCA9b3Sba7
 uYVgYU1SYH7y5FX8Z4/zI2hPt0xmKHgpvyqwBqAc2Qm/4n0TN8IW/QhnH5oKUSKahOWcOgb8Y
 wV6eEnHaXbAU5f93jdvaVWXqzFsPj6s3Cub8jdtPGFLfrMpX7hYYFrcaOfcthLtxik18tQL2u
 ISY3GN7Grnv4VF0x3Ul98kL1abnod2X5fq9a/XHG941k1b7D8X88x9CH74qy4n4rqsS7B+FGS
 4PsMU7ZAR0eUTA6IRpD8HdraEbBQfio9eT/Jw64DuRpM2v9F5Zk8RRXX6vQFvF0ZRv3vb+QfH
 RarMais8KR6GgSXq7qxJM5zGv0QMz6GbA9RXG1V2IRxAkdhSSY2dTazLttQpZdWRZhwRkjm00
 Pb57d+hK3Udq2wKxgkuQKdtn4fm0m+uxObHM2+uHxN219Xl5YhiHxINZWn5TPgo+qyQ7ZZhPU
 TYnNnMO+MvezBP0HHyTILOei+E0Nq4gJqORbENQ2ssNvrUPeFZ5mFYWlUMTvohmj9a/gRmaJw
 26DJNb/rKncJL0q44zfLdSC6KIBES5huHTMn4w7816LWZS9f8WeUAn+h3THVDc+jzhQsbpt0l
 tB3ZUGER19700IONLAuQ+QP1XbcrrdRJ1UTsgmaaMEz9sOk0PsWfi+knyvJdDZLlxUMyfALmw
 txbgTSeI9dWou15a5b+w==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--FMJAI3Xpdhqt2MKs
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Dec 23, 2020 at 04:33:16PM +0000, conor.dooley@microchip.com wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
>=20
> Add device tree bindings for the MSS system controller on
> the Microchip PolarFire SoC.

"MSS" doesn't appear below, so perhaps an expansion in parentheses would
be nice, e.g.: "MSS (microprocessor subsystem)"

>=20
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  .../microchip,mpfs_sys_controller.yaml        | 34 +++++++++++++++++++
>  1 file changed, 34 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/soc/microchip/micro=
chip,mpfs_sys_controller.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/soc/microchip/microchip,mp=
fs_sys_controller.yaml b/Documentation/devicetree/bindings/soc/microchip/mi=
crochip,mpfs_sys_controller.yaml
> new file mode 100644
> index 000000000000..60fde1925910
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/soc/microchip/microchip,mpfs_sys_=
controller.yaml
> @@ -0,0 +1,34 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/soc/microchip/microchip,mpfs_sys_con=
troller.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Microchip PolarFire SoC (MPFS) system controller
> +
> +maintainers:
> +  - Conor Dooley <conor.dooley@microchip.com>
> +
> +properties:
> +  compatible:
> +    const: microchip,polarfire-soc-sys-controller

The file name and compatible string are inconsistent in phrasing
(mpfs- vs. polarfire-soc-). If possible, please align them.

> +
> +  mboxes:
> +    $ref: '/schemas/types.yaml#/definitions/phandle-array'
> +    description: |
> +      phandle and index of the mailbox controller device node.
> +      See: ../mailbox/mailbox.txt for more information.
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - "mboxes"

Quotation marks are unnecessary here, because there are no special
characters in "mboxes".

> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    syscontroller: syscontroller {
> +      compatible =3D "microchip,polarfire-soc-sys-controller";
> +      mboxes =3D <&mbox 0>;
> +    };
> --=20


Best regards,
Jonathan Neusch=C3=A4fer

--FMJAI3Xpdhqt2MKs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEvHAHGBBjQPVy+qvDCDBEmo7zX9sFAl/02T0ACgkQCDBEmo7z
X9sWYQ/7Bwcca3EgLofiNd2r0011OLx1t8Jw8k38CkgtkY4Gu/0aAWbNK1ZiGncW
Uf2sqJw9jU/pqHMhPBbq3WhBMxIZ8mJRLNxaDkcywMCjLlaV3UsSh4J7iU70Odo3
JgLdybDMOdVZRX8e/k0LjZ6evJSGkgwKQuRqgqWc6N30zRBeINo2DTzYYgLY9j9d
QZY/679R0Olf2V4LgHkYRsvElxYOgj0HIqFtVB0yADv0MdxGpdIJzpjDCwfL6POy
356gORm8um+fywEBCZ1h3TKD6adfulFMdTVAAsky+Py1px8eFyPvbD5ln1a5+q1U
kyQgvJ5ZQqZ2y13+3emdUZJslZSSxaqfKvqzESorrii1cfvMLmoArtBf4hJ+OHNb
QVUT+9Y9IEEEEDVa3asjppkB64RxENNBVvjQfjAuN9gHE6ZMElAFrhNG/mWZiwI5
hLpRN8iy80bOKT1RrreMSdoIT2spFQNY2HZGXAJtJNAEyIcjl3W7ZASJuRyr1Xxo
95EF4WV8MQzNUNoz3aoyAa3oMcpe44xY3T9ac6gVeD3iYL3KoA49lC2f0EWpp2gt
SkSrKRmXqjBNx2cvgsMEFuWUuAPw/VeR7lpBeiRN5KM6DOzn0hMxYBIy0gK8e5dq
BMlWjrdiPcDhcvucwnf1CyLfwjoihMimxblN0bLqSkbR80O/+nY=
=vass
-----END PGP SIGNATURE-----

--FMJAI3Xpdhqt2MKs--
