Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 915C835523F
	for <lists+devicetree@lfdr.de>; Tue,  6 Apr 2021 13:33:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242940AbhDFLdp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Apr 2021 07:33:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60882 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242964AbhDFLdh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Apr 2021 07:33:37 -0400
Received: from mail-il1-x12a.google.com (mail-il1-x12a.google.com [IPv6:2607:f8b0:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3BF6AC061760
        for <devicetree@vger.kernel.org>; Tue,  6 Apr 2021 04:33:27 -0700 (PDT)
Received: by mail-il1-x12a.google.com with SMTP id z9so12750543ilb.4
        for <devicetree@vger.kernel.org>; Tue, 06 Apr 2021 04:33:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=WieXwc6mS+AtUYkNra6+bBu4m3Tu6pHMOzAqHJrznfc=;
        b=QYJFNglHc4lpjNudI/R3Fey6LFOo8gdrDYe3kxhQLJrb0+M+rGQdOW2p+9lFaDnNTs
         q2A+2Ze6SXEJSLdFwh9vIKuB3fmdXRvNjNusXf64VYb7esnp7NMlGqIMY1LM+K9nCdtR
         aKkjPB6U+nnzVl1F3xuGkV5keyoxvBXAYm/JJoO9ILAWzCZ4U5pzJ6uClSE/zZd8Xhe0
         mn1+XIin71hyZffexeG9qjkFUYDwArIBtNwnunLEufNjMlTsVg0R1gWAj0zb4oMpHhjm
         ZrfqS2E249g88C/iIQebCUJbZ90gLWT9wpE1dytgvLpfc0JcvjQuKAR12281VSXLyXRy
         tcUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=WieXwc6mS+AtUYkNra6+bBu4m3Tu6pHMOzAqHJrznfc=;
        b=WlLYX9hX0IqEdZr4lekb4k6e7qAzXxFbFK6hu8enkrwod6oBc0CvkcSieYWjOFFgvH
         01r7jugV2PZthHuadrtLZOrUqwklOUOK+Y8rU+AgCzT50hC12NWwMX/hT8WP2z+9PWUA
         pohA+zwgsGw49bJsLyraF84XbbujChCaFgh6SG9sLW0mrbHLiE3gc6iUk/M6FWvJdXH5
         P1oLnWagvzOPGkwUY7JTt2hXQV6NdzChzRYP68QBscX23//j48dpDApBOlcVRsEjVvTq
         AFZJAjNQtpPExjhbiP4Kp/+Y0LhoE87EyYsrURKIcJHK6SsUQ3jPqDNxVSmffCr2Vw4f
         tFJw==
X-Gm-Message-State: AOAM533SbyTOY+u6SNy0mHxQHsHcQTPyfa3GBAmqzRE6Pof2pNcDC6f0
        ga9YEj8OUXimduG5tvymCtQc+0goGVvB8MX8v6ekng==
X-Google-Smtp-Source: ABdhPJwuT2aSBPHnn1aXEf6nMsd8tqPS91Ogr1ash1axfraDusRzGRBkAcnSY2IANo3i4D/q2nspZkzcmYKas9ccVxc=
X-Received: by 2002:a92:7f03:: with SMTP id a3mr23464910ild.203.1617708806688;
 Tue, 06 Apr 2021 04:33:26 -0700 (PDT)
MIME-Version: 1.0
References: <20210406113243.2665847-1-fparent@baylibre.com>
In-Reply-To: <20210406113243.2665847-1-fparent@baylibre.com>
From:   Fabien Parent <fparent@baylibre.com>
Date:   Tue, 6 Apr 2021 13:33:15 +0200
Message-ID: <CAOwMV_zSU9q71djtit1qK4muV3MDcVeYRmFwmGUvNf=9b_ufiw@mail.gmail.com>
Subject: =?UTF-8?B?UmU6IFtQQVRDSCB2MiAxLzNdIPCfk6QgYXJtNjQ6IGR0czogbWVkaWF0ZWs6IG10ODE2Nw==?=
        =?UTF-8?B?OiBhZGQgbGFyYiBub2Rlcw==?=
To:     Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Mattijs Korpershoek <mkorpershoek@baylibre.com>,
        DTML <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Oops, some unicode character ended up in the patch. Removing them in v3

On Tue, Apr 6, 2021 at 1:32 PM Fabien Parent <fparent@baylibre.com> wrote:
>
> Add larb nodes for MT8167:
> * larb0 is used for display (dsi and hdmi)
> * larb1 is used for camera (csi)
> * larb2 is used for the video hardware decoder
>
> Signed-off-by: Fabien Parent <fparent@baylibre.com>
> ---
>
> Note: This series is based on https://git.kernel.org/pub/scm/linux/kernel/git/matthias.bgg/linux.git/log/?h=v5.12-next/dts64-2
>
> V2:
>         * Removed unneeded mediatek,larb-id property
>
>  arch/arm64/boot/dts/mediatek/mt8167.dtsi | 30 ++++++++++++++++++++++++
>  1 file changed, 30 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8167.dtsi b/arch/arm64/boot/dts/mediatek/mt8167.dtsi
> index 4b951f81db9e..bbddd4b22d3e 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8167.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8167.dtsi
> @@ -140,5 +140,35 @@ smi_common: smi@14017000 {
>                         clock-names = "apb", "smi";
>                         power-domains = <&spm MT8167_POWER_DOMAIN_MM>;
>                 };
> +
> +               larb0: larb@14016000 {
> +                       compatible = "mediatek,mt8167-smi-larb";
> +                       reg = <0 0x14016000 0 0x1000>;
> +                       mediatek,smi = <&smi_common>;
> +                       clocks = <&mmsys CLK_MM_SMI_LARB0>,
> +                                <&mmsys CLK_MM_SMI_LARB0>;
> +                       clock-names = "apb", "smi";
> +                       power-domains = <&spm MT8167_POWER_DOMAIN_MM>;
> +               };
> +
> +               larb1: larb@15001000 {
> +                       compatible = "mediatek,mt8167-smi-larb";
> +                       reg = <0 0x15001000 0 0x1000>;
> +                       mediatek,smi = <&smi_common>;
> +                       clocks = <&imgsys CLK_IMG_LARB1_SMI>,
> +                                <&imgsys CLK_IMG_LARB1_SMI>;
> +                       clock-names = "apb", "smi";
> +                       power-domains = <&spm MT8167_POWER_DOMAIN_ISP>;
> +               };
> +
> +               larb2: larb@16010000 {
> +                       compatible = "mediatek,mt8167-smi-larb";
> +                       reg = <0 0x16010000 0 0x1000>;
> +                       mediatek,smi = <&smi_common>;
> +                       clocks = <&vdecsys CLK_VDEC_CKEN>,
> +                                <&vdecsys CLK_VDEC_LARB1_CKEN>;
> +                       clock-names = "apb", "smi";
> +                       power-domains = <&spm MT8167_POWER_DOMAIN_VDEC>;
> +               };
>         };
>  };
> --
> 2.31.0
>
