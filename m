Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C5A5578E084
	for <lists+devicetree@lfdr.de>; Wed, 30 Aug 2023 22:22:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232851AbjH3UWT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Aug 2023 16:22:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49796 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233773AbjH3UWS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Aug 2023 16:22:18 -0400
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A5B0CE60
        for <devicetree@vger.kernel.org>; Wed, 30 Aug 2023 13:21:43 -0700 (PDT)
Received: by mail-yb1-f181.google.com with SMTP id 3f1490d57ef6-d77ad095e5cso6040561276.0
        for <devicetree@vger.kernel.org>; Wed, 30 Aug 2023 13:21:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693426517; x=1694031317; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=O8kGGZ+yYzic7Nawq3DNrmlWB29Qsh1OZYatVeF7GGM=;
        b=mcsi/u0cGWxkvpG1v+kjxcdu6dtNfhqGy+TSzJNih2Y5t8Balaqz+1fWrtv3sKqCZt
         G2xfNjpHijn5OhfMn8QCdnD7c4ef32t0CISj5LaIW3IlPF9qvgat3OEkq90sRrU2GJP1
         VVGkLH3rydfrhltt3k7yuJB1qx/M+xVXOfCVTfeUzPHYzzNHVmU5BcDeXvwJ1+hjaC2Y
         HVOiYF0yh6h1ZCSO895oGKvdF8kMJplP2Cvrs4kbNGtpYIjiY0kMIaEbXsoTV1zyr3ts
         AJzO9MoVQNkiBEOvea1HtwRE+M/yl0/PPsrT4A8LEljR3AdwcPwMBHtv3nxAd1xduZBS
         k+9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693426517; x=1694031317;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O8kGGZ+yYzic7Nawq3DNrmlWB29Qsh1OZYatVeF7GGM=;
        b=E68oZ81BqaddrWqOFGHWS/kPEv7CXFyN/o2Tl6xeRoT7qg/2qIAgyEuCFavP70MO+H
         UIoxr3B/QY2zDhGUJ/Q8Ctwwsk9bdQrvEcNXSPVjTrNHSY8SSv7pDab4moZg+3wHGTRF
         eBCp5JKt3tPv/599PQzphcCmb01h1dRNM5GXKCG/x+hsLyg+8Ki8+/ZHtCaAnaV1z10l
         mf2l1FezLVwGB9Hsm6sAv+9TmgELsaVZn/8VYtLXXH8Y/rjdYNCw1ehwtD7/T1ofLKih
         cW1cZ+VxRa48x05zSjkn2KDYIQrYLKXQ2vtKUbfZWWVfkJb8r2Mm6/VHfKAx9m5+GEeT
         UFdg==
X-Gm-Message-State: AOJu0YwvcTbeuK3HTpc8VAiBun0Gd0UVL+Figqhs8PlLNU/0o5Npwai+
        y8Zhbj6go9pEQ18PupfSKdUkCqs4J7G68VK9N8bY7g==
X-Google-Smtp-Source: AGHT+IHUnyWfOFAYID1o0vf2VVLGaIROgv5s/xgle655lK1ZczFXhZacdesCf6ewIfvbJsm//wQo+EaiCbHfEE/5a8w=
X-Received: by 2002:a25:6b07:0:b0:d78:3047:62c6 with SMTP id
 g7-20020a256b07000000b00d78304762c6mr3414264ybc.21.1693426517530; Wed, 30 Aug
 2023 13:15:17 -0700 (PDT)
MIME-Version: 1.0
References: <20230825093531.7399-1-quic_nsekar@quicinc.com> <20230825093531.7399-5-quic_nsekar@quicinc.com>
In-Reply-To: <20230825093531.7399-5-quic_nsekar@quicinc.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Wed, 30 Aug 2023 23:15:06 +0300
Message-ID: <CAA8EJprLwi3QKgTksTeSWkjmhFL69PO8Zmc=j3VMfAr_UpXJ=g@mail.gmail.com>
Subject: Re: [PATCH 4/5] arm64: dts: qcom: ipq5018: Add USB related nodes
To:     Nitheesh Sekar <quic_nsekar@quicinc.com>
Cc:     agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        gregkh@linuxfoundation.org, quic_srichara@quicinc.com,
        quic_varada@quicinc.com, quic_wcheng@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org,
        Amandeep Singh <quic_amansing@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 25 Aug 2023 at 12:37, Nitheesh Sekar <quic_nsekar@quicinc.com> wrote:
>
> Add USB phy and controller nodes.
>
> Co-developed-by: Amandeep Singh <quic_amansing@quicinc.com>
> Signed-off-by: Amandeep Singh <quic_amansing@quicinc.com>
> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq5018.dtsi | 54 +++++++++++++++++++++++++++
>  1 file changed, 54 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/ipq5018.dtsi b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
> index 9f13d2dcdfd5..ff477923a823 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5018.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
> @@ -238,6 +238,60 @@
>                                 status = "disabled";
>                         };
>                 };
> +
> +               usbphy0: phy@5b000 {
> +                       compatible = "qcom,ipq5018-usb-hsphy";
> +                       reg = <0x0005b000 0x120>;
> +
> +                       clocks = <&gcc GCC_USB0_PHY_CFG_AHB_CLK>;
> +
> +                       resets = <&gcc GCC_QUSB2_0_PHY_BCR>;
> +
> +                       #phy-cells = <0>;
> +
> +                       status = "disabled";
> +               };
> +
> +               usb: usb2@8a00000 {
> +                       compatible = "qcom,ipq5018-dwc3", "qcom,dwc3";
> +                       reg = <0x08af8800 0x400>;
> +
> +                       interrupts = <GIC_SPI 62 IRQ_TYPE_LEVEL_HIGH>;
> +                       interrupt-names = "hs_phy_irq";
> +
> +                       clocks = <&gcc GCC_USB0_MASTER_CLK>,
> +                                <&gcc GCC_SYS_NOC_USB0_AXI_CLK>,
> +                                <&gcc GCC_USB0_SLEEP_CLK>,
> +                                <&gcc GCC_USB0_MOCK_UTMI_CLK>;
> +                       clock-names = "core",
> +                                     "iface",
> +                                     "sleep",
> +                                     "mock_utmi";
> +
> +                       resets = <&gcc GCC_USB0_BCR>;
> +
> +                       qcom,select-utmi-as-pipe-clk;
> +                       #address-cells = <1>;
> +                       #size-cells = <1>;
> +                       ranges;
> +
> +                       status = "disabled";
> +
> +                       usb2_0_dwc: usb@8a00000 {

Could you please remove the `2_0' part of the label?

> +                               compatible = "snps,dwc3";
> +                               reg = <0x08a00000 0xe000>;
> +                               clocks = <&gcc GCC_USB0_MOCK_UTMI_CLK>;
> +                               clock-names = "ref";
> +                               interrupts = <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>;
> +                               phy-names = "usb2-phy";
> +                               phys = <&usbphy0>;
> +                               tx-fifo-resize;
> +                               snps,is-utmi-l1-suspend;
> +                               snps,hird-threshold = /bits/ 8 <0x0>;
> +                               snps,dis_u2_susphy_quirk;
> +                               snps,dis_u3_susphy_quirk;
> +                       };
> +               };
>         };
>
>         timer {
> --
> The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
> a Linux Foundation Collaborative Project
>


-- 
With best wishes
Dmitry
