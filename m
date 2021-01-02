Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CE3FB2E8718
	for <lists+devicetree@lfdr.de>; Sat,  2 Jan 2021 12:32:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726567AbhABLcJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 2 Jan 2021 06:32:09 -0500
Received: from mout.gmx.net ([212.227.17.20]:51945 "EHLO mout.gmx.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726486AbhABLcH (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 2 Jan 2021 06:32:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1609587017;
        bh=m/57QOMlv3IGIwaLNqziIdqqnhLXOo/2igPxxFFjLsY=;
        h=X-UI-Sender-Class:Date:From:To:Cc:Subject:References:In-Reply-To;
        b=BWJ5Bv7sBkGB7JHBHhjTQynSZFjGxzIhJVbRxqIpsSEVm9hdtahd2ckSjolbTPpgm
         7WgkgVGxNNWWKAzHSe/EffTgv4PikzCwy3xlOACbBbbH29U8SNv/ksN/dX5j910lnz
         tQPMq9UTY3cYuD5XlKGyoaFBen9m3TUyIOpYCdCg=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from longitude ([37.201.215.57]) by mail.gmx.com (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1Mdvqg-1kOG6R08xS-00azeU; Sat, 02
 Jan 2021 12:30:17 +0100
Date:   Sat, 2 Jan 2021 12:30:12 +0100
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
Subject: Re: [PATCH v3 2/5] dt-bindings: add bindings for polarfire soc
 mailbox
Message-ID: <X/BZRLWx8vOLzARB@latitude>
References: <20201223163247.28923-1-conor.dooley@microchip.com>
 <20201223163302.29057-1-conor.dooley@microchip.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="lgUL0vHJFSWo4OLl"
Content-Disposition: inline
In-Reply-To: <20201223163302.29057-1-conor.dooley@microchip.com>
X-Provags-ID: V03:K1:a13/NsyMphX1DrLzFr4PvsSYFZnk5qsgcY4tJ/yOqT+uhdWom4q
 PZkryeErLqhtbC79IfVbeTTOT/XGngcn+k8AVmnP/OXaVTpW9I98c3gkfRscB1CGcEkyEIt
 fy/onPuEg8L+tlUWicLCmzNTnUldj1LFVuz6LFBa4CJYWND+rgDxQYYUUMhBsG1ANZ0wkzZ
 JiPo8OwDLHc5jECy0K1wA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:MpRJRrJXoKk=:OIUYE0BmzHgcKKd9lDl1Bq
 4VeWhyB9tRj16g70NO/fN47IrxA7qkg2xhozoF051C7cWMrSyRVVkjh0T5ZYHhcMdDDEjQkYF
 B8fx6s4aQjex+QUCx39hHx27Dz5KZ64ALLmPFQwRYDRhdPwBy3v3ztnhXmH5N480Nw4uR06Nz
 gnUqWbewk4vDZc7G4KWaifeqrOQrTH80usL11+PpVkJZ0wof+efUFQ2ZS/uNMboHa3zIQQMQb
 EKJ8o08s71c4dPC1yPRIWof59GZAjJVQZrnRSEyLNVpEJmw8nl9PpMIUtbhmm/SWco55yl6OV
 KFgqNDMNv39qGNhVRcRsmslulqPHQ5t9N7m+nhn0eJyWoNFak/juJLzPO+NaYVwHacZlYxQJh
 1kF56kU5osIZhO5nvNp9BeZSinz1rtw+82UT+WhW+65kzNk9a6YFAAaVj1rk9I1nfhiaiiS0l
 hGq3c3YcR7LVOyyw3tm5ZkbD8KL2bc1tv0fmd24bB3GX8KdA4GOsJ0AezMtYXh0dnWVUR/xjY
 H3q8xEe0O9uur140bwdo6cH5qzMKKVpbLs6SMFFfVJcez65KL8JwUlDYaiH+INGqJTeJmprrj
 juPSX/c+NjA0DhvwFfdDh8W/4I0Ix3JjnbbDXGBCO589ZKbuXUo/UgypKxs0TCBFVruOsn8P8
 1UZ4FsJX2l5l9QJULKOq3bg3qokFQcKu8t1j+8wHjhIY76xLJkdqKgPp0LQN7XE23iX9wrH61
 aNmtlqaBQkm92Y+amBL8q1RSm5q/d17oyIKjxPL43Hysp/h3FiM2ii12DMbHJfoebs79KtHnF
 TZpccs3sZkn1OjI41p0n7am9jUILa+pWqpTy4lGyfOp+pAojJGUxAmLfcIgKv7pYqnUaegr2G
 qeuDIINjWXwzDKEqAs7w==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--lgUL0vHJFSWo4OLl
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 23, 2020 at 04:33:02PM +0000, conor.dooley@microchip.com wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
>=20
> Add device tree bindings for the MSS system controller mailbox on
> the Microchip PolarFire SoC.
>=20
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
[...]
> +  reg:
> +    items:
> +      - description: mailbox data registers
> +      - description: mailbox int registers

Does "int registers" mean "interrupt registers", i.e. do they control
some aspect of interrupt delivery?

IMHO, it would be good to spell it out, because "int" could mean
different things.


Best regards, happy new year,
Jonathan Neusch=C3=A4fer

--lgUL0vHJFSWo4OLl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEvHAHGBBjQPVy+qvDCDBEmo7zX9sFAl/wWSkACgkQCDBEmo7z
X9vpmBAAsOyUkxx7htYS6UY5pJuUoi6k4x+CExOrVXMXCCJDw3JtcxwuuYtmcUrU
mwXKQzbsHxnisFTfXl1adbTXppH3FVKjVL7mV0YcvMhDAc+aHexft/8KK8I0gckk
NU+Z85oAijNXqJjbBf7mG0ZCMFdtkcIT5QIeuABcRBSIfLtPBmzfSiQ4opf33kbM
nzP1z5DLnwiWWRd0SA12mWI0O2dHFD8CQrawtPeD+N3e+Y1YuSfzxxrKnHQW/T4k
ARTtoaRzO1+lfe4rKvbLFwZ1zZQsOZgDjiIJxByiYsrazCTeYoilAvmB4Th7o2B8
jpEyBPhBaEtKds5ytSRkACFtkcdnNtjWGFe78k+FEtS5CmWB/wU2uesVmt5ir3uO
Dnji9UDFDh2gxyaO4Dln9cCyEyC5Wah0/5Cga9YgcTjILnJZEuPCo2ehArmayHbB
cZ5M8v8wvy8uY+GhT4ZTm8piIpNVsDMzSq4REQQ5DYsoVnjP+vrkEBljI/v/uES1
s4mgvaGqluAhUBTtGrbl/7W0xwx3qnbxLBzMSifc+We0Wp8x9FSpAkYyHDdApU7c
knYIOSGTTScSVkYLrZlcsVqlszg7StYBu4Zz/xqftBMM97/MhBGez9CbKm8qCN2B
Gobc/xRqZozXMkP7mow4D41I+0YpgTTKDVSDFTqkKaqIFONIcCU=
=dd3M
-----END PGP SIGNATURE-----

--lgUL0vHJFSWo4OLl--
