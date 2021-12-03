Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AFA10467595
	for <lists+devicetree@lfdr.de>; Fri,  3 Dec 2021 11:50:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244562AbhLCKyO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Dec 2021 05:54:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59258 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244032AbhLCKyO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Dec 2021 05:54:14 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E445AC06173E
        for <devicetree@vger.kernel.org>; Fri,  3 Dec 2021 02:50:48 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id a9so4791674wrr.8
        for <devicetree@vger.kernel.org>; Fri, 03 Dec 2021 02:50:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jrtc27.com; s=gmail.jrtc27.user;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=QcF+l5bxXvtlevCx7Zr3XRmHnTSAGcextsc6b2RTbnE=;
        b=REtLPeXKrovJCDXe1uVHNen+AMMqYqS6tOv73PooICV0Gul/ZqoZrBJxPgph99Vk/y
         90QeFD+RPq//ggQZnYAowJ2BZdI67r1KDCeEeeRVKdUXHIFjyNFN81Lg4t3q7gBd3yKh
         GPNgWCB0EaVOJeuXm6TMh8xJSXxib7jvaw+7GAJKggEQEp4BF2uJew3rpq77G//+VA60
         SbBpeMFMCfsHMSygAmb9B5C2lsQ3vXaWQ5T2TEnTYBIF0OG5KeozlZurU5SMoSHjz+Wg
         SIZPmnXET3Fsmb9vZy7ObI7cn5p8s0lTc0dPi6rvHWtZOA9zWbO8W05XvRX+CACCUCO1
         z2Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=QcF+l5bxXvtlevCx7Zr3XRmHnTSAGcextsc6b2RTbnE=;
        b=3bIrF/lGkzb8cEYFglUuooc7cmMCTJ3Kwvk/QrBib40Qh1PHSufWYElCOnqfGZ3We+
         SSD+Qhe8iBC9Y6l8fyW+nFUAff2SBKnuCzQZO9aw45J7GOumrwLsDv2hUWtmqrDRRxOQ
         LAEn0nJzGRYoSBctz4FbL0a3+pFeNIJtTFhVhoFsjVq+pqkCk9fhSchpYibOe5Cfw2Dk
         8i5AO0EQ7xm7BtsOKtcJhVAygyt6EF/6+xHSqIVXdBZgWvEjusqMKbN1aKWBtA6LyPW0
         n1EcckgUxFAfEMpdQFRytqIQS47PXXiCi7rlV1chskyPEM3R2VYdyH5cUXnemTeweuGB
         Zxkg==
X-Gm-Message-State: AOAM530TK8uNHRwglkAevyJwTOblj2nvFr/p9EruIECL3xfF2FptjJiY
        PHOHyZhJXZ0iiZw94iXtSM45DA==
X-Google-Smtp-Source: ABdhPJwtE7MY6B9ILicxX+ipAFjRWWhoqcsyqm9KXIhK6J1ESCTtU6qGOsrgXqzeLU46AdZEjiOiEA==
X-Received: by 2002:a5d:42cf:: with SMTP id t15mr20888702wrr.444.1638528647512;
        Fri, 03 Dec 2021 02:50:47 -0800 (PST)
Received: from smtpclient.apple (global-5-141.nat-2.net.cam.ac.uk. [131.111.5.141])
        by smtp.gmail.com with ESMTPSA id o10sm2897628wri.15.2021.12.03.02.50.46
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Dec 2021 02:50:47 -0800 (PST)
Content-Type: text/plain;
        charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH 1/1] riscv: dts: fu740: Add PDMA node
From:   Jessica Clarke <jrtc27@jrtc27.com>
In-Reply-To: <20211203095744.1717706-2-v.v.mitrofanov@yadro.com>
Date:   Fri, 3 Dec 2021 10:50:46 +0000
Cc:     Rob Herring <robh+dt@kernel.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        David Abdurachmanov <david.abdurachmanov@sifive.com>,
        Yash Shah <yash.shah@sifive.com>,
        Atish Patra <atish.patra@wdc.com>,
        Greentime Hu <greentime.hu@sifive.com>,
        devicetree <devicetree@vger.kernel.org>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        linux-kernel@vger.kernel.org
Content-Transfer-Encoding: quoted-printable
Message-Id: <DC14F9FB-D4E8-48DC-958A-CFEF2115F803@jrtc27.com>
References: <20211203095744.1717706-1-v.v.mitrofanov@yadro.com>
 <20211203095744.1717706-2-v.v.mitrofanov@yadro.com>
To:     "v.v.mitrofanov" <v.v.mitrofanov@yadro.com>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 3 Dec 2021, at 09:57, v.v.mitrofanov <v.v.mitrofanov@yadro.com> =
wrote:
>=20
> HiFive unmatched supports PDMA but is not implemented in DT.
>=20
> Add the PDMA node in SiFive FU740 soc-specific DT file.
>=20
> Signed-off-by: v.v.mitrofanov <v.v.mitrofanov@yadro.com>
> ---
> arch/riscv/boot/dts/sifive/fu740-c000.dtsi | 7 +++++++
> 1 file changed, 7 insertions(+)
>=20
> diff --git a/arch/riscv/boot/dts/sifive/fu740-c000.dtsi =
b/arch/riscv/boot/dts/sifive/fu740-c000.dtsi
> index 64ff2e758336..833fb4f4376b 100644
> --- a/arch/riscv/boot/dts/sifive/fu740-c000.dtsi
> +++ b/arch/riscv/boot/dts/sifive/fu740-c000.dtsi
> @@ -164,6 +164,13 @@ prci: clock-controller@10000000 {
> 			#clock-cells =3D <1>;
> 			#reset-cells =3D <1>;
> 		};
> +		dma: dma@3000000 {
> +			compatible =3D "sifive,fu540-c000-pdma";

I know the PLIC and CGEM devices abuse fu540-specific compatible
strings (which it would be great to fix; FreeBSD is already prepared
for that, though it=E2=80=99d also be nice to introduce a generic =
compatible
string for the SiFive CGEM rather than having just a SoC-specific one
given the FU540 and FU740 have the same interface), but let=E2=80=99s =
not make
things worse. This should say fu740, and there should also be a generic
SiFive PDMA compatible so we don=E2=80=99t need to add a new compatible =
to an
otherwise-unchanged driver every time a new SiFive SoC appears.

Jess

