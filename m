Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 79FF6776E17
	for <lists+devicetree@lfdr.de>; Thu, 10 Aug 2023 04:32:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231178AbjHJCcB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Aug 2023 22:32:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47792 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229730AbjHJCb5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Aug 2023 22:31:57 -0400
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com [IPv6:2607:f8b0:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E9DDD1BD9
        for <devicetree@vger.kernel.org>; Wed,  9 Aug 2023 19:31:52 -0700 (PDT)
Received: by mail-pg1-x529.google.com with SMTP id 41be03b00d2f7-51b4ef5378bso379111a12.1
        for <devicetree@vger.kernel.org>; Wed, 09 Aug 2023 19:31:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691634712; x=1692239512;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=adYp7Yi+tb0hdpvnd7Q2BwMbK4WKJ/u6tOMIQOUt4Ns=;
        b=hA6CwAaOYxAc/wJscB3ROxGz3TykiGk62t086Tqp+pVaeIWBN4daa+XMM8ifX9p+yP
         OyybJ6fRgp91sx8s0SRwPN4ve2PRwY1r+1uMjP4UNK/b/URwNOHHQ/hBYJJ42sW2wuZM
         j21L0qUrYXkQEv8uhJ44xosHUVCLwewQFSmT7YASZoptfn6FRwDZ+Xxv+qi/Oxp0pgdx
         9xPz31L+4mpIlm22sT8V4iD70Q0ant7DLPd3U6HmG3ZIGws1XGKXgmoPkvdGxQEJCTEk
         IWz95+qNEbCnh26C83FuJG0aG/6kn99wBw9L8PnHhaR4Vj5eXwzXxO0GFPI40XXjOB2m
         /EyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691634712; x=1692239512;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=adYp7Yi+tb0hdpvnd7Q2BwMbK4WKJ/u6tOMIQOUt4Ns=;
        b=AKGrYQNGSxmhQ7LWLkRSp0iAtYRemKO6McOvibiSUVMDu/4llodG8vM78gIhQykIsh
         cSRW7/bFO2g2v6Oq1LfJMpqJOniMyBiIGsVJ0PVwW0wq4o0cz0mhMVB21SlJmcQ7peT6
         OgUoqHs7SdLNKpJGATGUbXkUx3ECFTu6LupC9KVYKIC16NSXV3VDGxWw9FoqyZELtIQd
         E5HoxY2g/QNx0mv17eN6d6HU7AA80qor6iUget4EKJn7t4tp6giO4vjrOIOKWYySy9oR
         er7dWkYDY5tQAtrCkBAxsY6fp+00YNM5rXZBEPXHxFXyEugIUklpRHwq/4BQTMaHgmWs
         A3kQ==
X-Gm-Message-State: AOJu0YxERYP/6zMIhVi46GbcBuAGMtGG47e5OvL51t2jZqJA9bW+Nc/V
        0Jbxa5pJxQffzs/DWeSg5yhRQ0sOePFioxWCmLc=
X-Google-Smtp-Source: AGHT+IGgR8cAvsJrLzz2rJanEMjr4oJkhKP4QUKUmXzzB2Ls4w2beRjwxLYpMFnvQz1TYI72fH9UqowGdgtt0/9Ns6w=
X-Received: by 2002:a17:90a:ba92:b0:268:300b:ee82 with SMTP id
 t18-20020a17090aba9200b00268300bee82mr990041pjr.19.1691634712175; Wed, 09 Aug
 2023 19:31:52 -0700 (PDT)
MIME-Version: 1.0
References: <20230810001320.626744-1-marex@denx.de>
In-Reply-To: <20230810001320.626744-1-marex@denx.de>
From:   Adam Ford <aford173@gmail.com>
Date:   Wed, 9 Aug 2023 21:31:40 -0500
Message-ID: <CAHCN7x+j-6Bi9CQfuhbNKotczRBXrkU2oHLXBHGrkchMO_oSZw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8mp: Improve VPU clock configuration
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Frank Li <Frank.Li@nxp.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Aug 9, 2023 at 7:13=E2=80=AFPM Marek Vasut <marex@denx.de> wrote:
>
> Update VPU clock according to reference manual to improve performance.
> i.MX 8M Plus Applications Processor Reference Manual, Rev. 1, 06/2021
>
> Table 5-1. Clock Root Table (continued) reads as follows:
> Clock Root ............... Max Freq (MHz)
> VPU_BUS_CLK_ROOT ......... 800
> VPU_G1_CLK_ROOT .......... 800
> VPU_G2_CLK_ROOT .......... 700
>
> 5.1.5.1 Input Clocks
> Input Clock .............. Frequency (MHz)
> VPU_PLL_CLK .............. 800
>
> The VPU G1 and VPU bus is now supplied from PLL1 which provides 800 MHz
> on one of its outputs, the VPU G2 is supplied from VPU PLL with 700 MHz
> which is a perfect fit for this setup. This also matches the NXP kernel
> fork configuration.
>
> Signed-off-by: Marek Vasut <marex@denx.de>

LGTM.
Reviewed-by: Adam Ford <aford173@gmail.com>

adam
> ---
> Cc: Adam Ford <aford173@gmail.com>
> Cc: Alexander Stein <alexander.stein@ew.tq-group.com>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Frank Li <Frank.Li@nxp.com>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: Marek Vasut <marex@denx.de>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: Peng Fan <peng.fan@nxp.com>
> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> Cc: Richard Cochran <richardcochran@gmail.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> ---
>  arch/arm64/boot/dts/freescale/imx8mp.dtsi | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/=
dts/freescale/imx8mp.dtsi
> index 6f2f50e1639c3..77974bd6da63a 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> @@ -1928,8 +1928,8 @@ vpu_g1: video-codec@38300000 {
>                         interrupts =3D <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
>                         clocks =3D <&clk IMX8MP_CLK_VPU_G1_ROOT>;
>                         assigned-clocks =3D <&clk IMX8MP_CLK_VPU_G1>;
> -                       assigned-clock-parents =3D <&clk IMX8MP_VPU_PLL_O=
UT>;
> -                       assigned-clock-rates =3D <600000000>;
> +                       assigned-clock-parents =3D <&clk IMX8MP_SYS_PLL1_=
800M>;
> +                       assigned-clock-rates =3D <800000000>;
>                         power-domains =3D <&vpumix_blk_ctrl IMX8MP_VPUBLK=
_PD_G1>;
>                 };
>
> @@ -1939,8 +1939,8 @@ vpu_g2: video-codec@38310000 {
>                         interrupts =3D <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
>                         clocks =3D <&clk IMX8MP_CLK_VPU_G2_ROOT>;
>                         assigned-clocks =3D <&clk IMX8MP_CLK_VPU_G2>;
> -                       assigned-clock-parents =3D <&clk IMX8MP_SYS_PLL2_=
1000M>;
> -                       assigned-clock-rates =3D <500000000>;
> +                       assigned-clock-parents =3D <&clk IMX8MP_VPU_PLL_O=
UT>;
> +                       assigned-clock-rates =3D <700000000>;
>                         power-domains =3D <&vpumix_blk_ctrl IMX8MP_VPUBLK=
_PD_G2>;
>                 };
>
> @@ -1956,8 +1956,8 @@ vpumix_blk_ctrl: blk-ctrl@38330000 {
>                                  <&clk IMX8MP_CLK_VPU_VC8KE_ROOT>;
>                         clock-names =3D "g1", "g2", "vc8000e";
>                         assigned-clocks =3D <&clk IMX8MP_CLK_VPU_BUS>, <&=
clk IMX8MP_VPU_PLL>;
> -                       assigned-clock-parents =3D <&clk IMX8MP_VPU_PLL_O=
UT>;
> -                       assigned-clock-rates =3D <600000000>, <600000000>=
;
> +                       assigned-clock-parents =3D <&clk IMX8MP_SYS_PLL1_=
800M>;
> +                       assigned-clock-rates =3D <800000000>, <700000000>=
;
>                         interconnects =3D <&noc IMX8MP_ICM_VPU_G1 &noc IM=
X8MP_ICN_VIDEO>,
>                                         <&noc IMX8MP_ICM_VPU_G2 &noc IMX8=
MP_ICN_VIDEO>,
>                                         <&noc IMX8MP_ICM_VPU_H1 &noc IMX8=
MP_ICN_VIDEO>;
> --
> 2.40.1
>
