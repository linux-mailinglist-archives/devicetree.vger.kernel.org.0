Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CC0F8761923
	for <lists+devicetree@lfdr.de>; Tue, 25 Jul 2023 15:01:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230220AbjGYNBa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jul 2023 09:01:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40668 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229788AbjGYNB3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Jul 2023 09:01:29 -0400
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com [IPv6:2607:f8b0:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1EBC7BC
        for <devicetree@vger.kernel.org>; Tue, 25 Jul 2023 06:01:27 -0700 (PDT)
Received: by mail-pg1-x52a.google.com with SMTP id 41be03b00d2f7-5638180156aso3328739a12.0
        for <devicetree@vger.kernel.org>; Tue, 25 Jul 2023 06:01:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690290086; x=1690894886;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kFPaZsfz9IdOpv1IH5oVxwiKpnJfrTAlReQ7A9Ip42I=;
        b=d5B7aG8sinx+0ckhcGTBo+ZMvzAFn/RFZqVIpwkAy/1MZukdgV66DcoEo/JpdAQqXf
         Bx6RpcnQRoPcRkJw8Om1EqnlhtUxVW4CWBvzuwUGKCuob5AwjOSj9I1BJMQV8OsRxg5n
         6teri7/90bNxgko7ZE8zLaMwgyTCFCgQNRZPmNHryMLPMvNUYh1onlhGePMJdXGey9wQ
         +ilWxJJlSaF+Yz2WNJ0mnilkj6Z2oRN3LL1a728QY7C++QBVen9H89p1xc0UYp18vGjq
         ZGsK7I/MDvIMAx/G5csDMwn1SZ0iw80xp+QtYZtFB+Wzy22tzMFH/EHfhUAYg4dBVdma
         MjJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690290086; x=1690894886;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kFPaZsfz9IdOpv1IH5oVxwiKpnJfrTAlReQ7A9Ip42I=;
        b=Dq+Hw/88WhcN22U5HfOfu3NTYg+0dOWFehfALZ61arv+UHNd4oMlPZ8knBeuR5Ohb9
         llWU8ST1OQuHJld+GCd1CBuyOGbrG9qDzICsuHncmqLDmlv2Ghb2l9wWmMvOOjRj16b6
         aVLg1q0qH8Ey4iAdexTDvmoVOybGjRbYugcs68V/yL0T+hZYFadftJfS5N34fYEYuOA9
         6TXbDIugiAR9GRw0SEFpm6u+dA89tD8UU1mTFRuj8Er0Y638IKCvhXm0qBhZkuHgWfCg
         CS0DGxBPTalDntyWjXVJB3/ntQAg72PMrmkIV9HJuFaq5ZpDTAbooxWD4CtWCics7cxb
         fl3w==
X-Gm-Message-State: ABy/qLbSv+6NXwjv917jf9ssWtxZXE5AAuzvnLUrULbZ8IRLhBSlNRwJ
        hRVYCnrqGBZkgLpB17AWpIm9JTlaREY8WRm5OV0=
X-Google-Smtp-Source: APBJJlGJijYi9BeuAsugPz/JhhEL9o65/wPnOZrnnlptLE6pF8pc3F/azok57R8hD6XDpdHFc8hoAvKZrtD461AgVys=
X-Received: by 2002:a17:90b:19c9:b0:267:8012:b39d with SMTP id
 nm9-20020a17090b19c900b002678012b39dmr12420547pjb.29.1690290086117; Tue, 25
 Jul 2023 06:01:26 -0700 (PDT)
MIME-Version: 1.0
References: <20230724222247.162806-1-marex@denx.de>
In-Reply-To: <20230724222247.162806-1-marex@denx.de>
From:   Adam Ford <aford173@gmail.com>
Date:   Tue, 25 Jul 2023 08:01:14 -0500
Message-ID: <CAHCN7x+_U43Kg5Aj62p3ot3d6MWxJygM3VEtEUGHOAVJfigk0Q@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8mn: Drop CSI1 PHY reference clock configuration
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Conor Dooley <conor+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Li Jun <jun.li@nxp.com>,
        Marco Felsch <m.felsch@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 24, 2023 at 5:22=E2=80=AFPM Marek Vasut <marex@denx.de> wrote:
>
> The CSI1 PHY reference clock are limited to 125 MHz according to:
> i.MX 8M Nano Applications Processor Reference Manual, Rev. 2, 07/2022
> Table 5-1. Clock Root Table (continued) / page 319
> Slice Index n =3D 123 .
>
> Currently those IMX8MN_CLK_CSI1_PHY_REF clock are configured to be
> fed directly from 1 GHz PLL2 , which overclocks them . Instead, drop
> the configuration altogether, which defaults the clock to 24 MHz REF
> clock input, which for the PHY reference clock is just fine.
>
> Fixes: ae9279f301b5 ("arm64: dts: imx8mn: Add CSI and ISI Nodes")
> Signed-off-by: Marek Vasut <marex@denx.de>

Reviewed-by: Adam Ford <aford173@gmail.com>

> ---
> Cc: Adam Ford <aford173@gmail.com>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Li Jun <jun.li@nxp.com>
> Cc: Marco Felsch <m.felsch@pengutronix.de>
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
>  arch/arm64/boot/dts/freescale/imx8mn.dtsi | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/=
dts/freescale/imx8mn.dtsi
> index 9869fe7652fca..aa38dd6dc9ba5 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> @@ -1175,10 +1175,8 @@ mipi_csi: mipi-csi@32e30000 {
>                                 compatible =3D "fsl,imx8mm-mipi-csi2";
>                                 reg =3D <0x32e30000 0x1000>;
>                                 interrupts =3D <GIC_SPI 17 IRQ_TYPE_LEVEL=
_HIGH>;
> -                               assigned-clocks =3D <&clk IMX8MN_CLK_CAME=
RA_PIXEL>,
> -                                                 <&clk IMX8MN_CLK_CSI1_P=
HY_REF>;
> -                               assigned-clock-parents =3D <&clk IMX8MN_S=
YS_PLL2_1000M>,
> -                                                         <&clk IMX8MN_SY=
S_PLL2_1000M>;
> +                               assigned-clocks =3D <&clk IMX8MN_CLK_CAME=
RA_PIXEL>;
> +                               assigned-clock-parents =3D <&clk IMX8MN_S=
YS_PLL2_1000M>;
>                                 assigned-clock-rates =3D <333000000>;
>                                 clock-frequency =3D <333000000>;
>                                 clocks =3D <&clk IMX8MN_CLK_DISP_APB_ROOT=
>,
> --
> 2.40.1
>
