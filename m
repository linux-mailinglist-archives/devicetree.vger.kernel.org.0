Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1D8256B0687
	for <lists+devicetree@lfdr.de>; Wed,  8 Mar 2023 13:00:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230360AbjCHMAr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Mar 2023 07:00:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39148 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230463AbjCHMAq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Mar 2023 07:00:46 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 006D6A224D
        for <devicetree@vger.kernel.org>; Wed,  8 Mar 2023 04:00:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1678276844; x=1709812844;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=sQZrX009ibCJyc27f7gZBf3x3irgTSpX9dkAR3wxWn0=;
  b=DKSh4YgZwUv5BTgTzMb0sDIx7OFvqz0eAk7Wz8071a6h8jgJSHTA7onO
   wrZNnDbwjba8ZUB760A4jSMCjPWunzO0Ecp4g+uzWm3V9lCQpV3ZJiNzn
   QdeZdJpxkVyo/+Fn++jATOK8qE5A7R/gTlqvBGZCeCjntEr9v35spZymr
   cOSYBY27t2V+MME+RmzGAIASbHbjwFYISx/8oSWbCeaPqJxy2s8/zKNhj
   3pSeAg1acF6Kmg45MvfsvVEf819kXthOmCx6LCHegn1tsbDltbr47YKHL
   1KKU693ZnjDImXaJywqlvYJrKb3YDHKEhGyTyEhSNR+65bqcMS0g5q9Ds
   w==;
X-IronPort-AV: E=Sophos;i="5.98,243,1673910000"; 
   d="scan'208";a="29545858"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 08 Mar 2023 13:00:42 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Wed, 08 Mar 2023 13:00:42 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Wed, 08 Mar 2023 13:00:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1678276842; x=1709812842;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=sQZrX009ibCJyc27f7gZBf3x3irgTSpX9dkAR3wxWn0=;
  b=Xm5Aiu0iWtDwaFpPlDMZV327oFVQ+jC5AnKYOArmvtnkVc/snuA0asuQ
   BilEZy+AMRFvpHZv3A6yNW2wKDWbJfT+9D2VHnQp6y1VTeSkYOVwTqdxp
   bk8bdasbL50aoKdp6nApQKL/v8FFWH0avvOKYxwyHKR2qin4x5fdjEcms
   Wt/98UYc4LJ8Zkzaq6AnKh6VHzoZIKRuI80ImzpUdMjfjRvvBU93QfGLo
   5W5Gr0XeKeE69B+8812otqUq0NBQpG8kR6lz1AjyvNHCu3LmVEkJXzXpf
   +Lna7Vg25CS1Un5ZYFSIS6tT/lCmnwbiJ1Tzc159JcnGhmLyF6zfbQ6uX
   g==;
X-IronPort-AV: E=Sophos;i="5.98,243,1673910000"; 
   d="scan'208";a="29545857"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 08 Mar 2023 13:00:42 +0100
Received: from steina-w.localnet (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id E7681280056;
        Wed,  8 Mar 2023 13:00:41 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Markus Niebel <Markus.Niebel@ew.tq-group.com>
Subject: Re: [PATCH 1/1] arm64: dts: imx93: add missing tpm pwm instances
Date:   Wed, 08 Mar 2023 13:00:41 +0100
Message-ID: <5887137.DvuYhMxLoT@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20230227093846.151474-1-alexander.stein@ew.tq-group.com>
References: <20230227093846.151474-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi everyone,

any feedback on this?

Thanks,
Alexander

Am Montag, 27. Februar 2023, 10:38:46 CET schrieb Alexander Stein:
> TPM1/TPM3 are missing, add them.
>=20
> Signed-off-by: Markus Niebel <Markus.Niebel@ew.tq-group.com>
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
>  arch/arm64/boot/dts/freescale/imx93.dtsi | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/freescale/imx93.dtsi
> b/arch/arm64/boot/dts/freescale/imx93.dtsi index 2076f9c9983a..a30c5d5f4d=
13
> 100644
> --- a/arch/arm64/boot/dts/freescale/imx93.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx93.dtsi
> @@ -153,6 +153,14 @@ system_counter: timer@44290000 {
>  				nxp,no-divider;
>  			};
>=20
> +			tpm1: pwm@44310000 {
> +				compatible =3D "fsl,imx7ulp-pwm";
> +				reg =3D <0x44310000 0x1000>;
> +				clocks =3D <&clk IMX93_CLK_TPM1_GATE>;
> +				#pwm-cells =3D <3>;
> +				status =3D "disabled";
> +			};
> +
>  			tpm2: pwm@44320000 {
>  				compatible =3D "fsl,imx7ulp-pwm";
>  				reg =3D <0x44320000 0x10000>;
> @@ -316,6 +324,14 @@ mu2: mailbox@42440000 {
>  				status =3D "disabled";
>  			};
>=20
> +			tpm3: pwm@424e0000 {
> +				compatible =3D "fsl,imx7ulp-pwm";
> +				reg =3D <0x424e0000 0x1000>;
> +				clocks =3D <&clk IMX93_CLK_TPM3_GATE>;
> +				#pwm-cells =3D <3>;
> +				status =3D "disabled";
> +			};
> +
>  			tpm4: pwm@424f0000 {
>  				compatible =3D "fsl,imx7ulp-pwm";
>  				reg =3D <0x424f0000 0x10000>;


=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/


