Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E94A64C3E5C
	for <lists+devicetree@lfdr.de>; Fri, 25 Feb 2022 07:25:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237811AbiBYGZS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Feb 2022 01:25:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57190 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237822AbiBYGZR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Feb 2022 01:25:17 -0500
Received: from mail-yb1-xb2f.google.com (mail-yb1-xb2f.google.com [IPv6:2607:f8b0:4864:20::b2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5155F2692A0
        for <devicetree@vger.kernel.org>; Thu, 24 Feb 2022 22:24:44 -0800 (PST)
Received: by mail-yb1-xb2f.google.com with SMTP id d21so3938391yba.11
        for <devicetree@vger.kernel.org>; Thu, 24 Feb 2022 22:24:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=yVErL5BXpVYFWwiUvRawxwR6PFXMIK5xqnqJZ55Rgb0=;
        b=XmE7UpgnQpoJGhC/2gFIBcT+RMbqvPSlqn9j0UKh/WSY9uvDusR9m1Elyq6l5v+5Ua
         00rzDtw04bMSB55lIb1244zHJDDqTLSuEyiGqpyarE3E00hzeH58wGhR903r1zyJsGkz
         Ih9YgmOecHBvfuLIxhDU0iCVDD9zHHU9Xsf3Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=yVErL5BXpVYFWwiUvRawxwR6PFXMIK5xqnqJZ55Rgb0=;
        b=c6TkaBkdHdu9ZXRHz1nzfIHJS3BWNqHrTPByxqW/89omDK9+4TIk1wZScKOJr0QRjK
         s2I4N45tn46PPwqGqCi5fbe77wRYd7nII7vSNpYWu/lVdYYPzteNoWHrnu2VjlEkFF3T
         sBJVKh1cD7+jUGKU/4n7vOLH/xtMMS7HJif0eAP8IGLCkQUzxoxBJlNagA9PdMPLIMBp
         EHP1Ws9U0TFSidnTvevMMxNc5APm+963RDxpdSi//6zmxILGqs7j5wAGgOIO1aSUI28D
         8NqmbyKRVnqUnjUqqqH12LSPWElfRjoiBfe06hjVncZP5sqXc6848OLypkCSt1yNgQIJ
         VwBw==
X-Gm-Message-State: AOAM531nru9BiyZtsx554sjfrgn0TCqPPb0B0Kw/ewoKRHRFMJ/xvGMl
        7DU3cEok3Vjn2qjqw89ZadMUbnG42t8XTYa0+SfDEw==
X-Google-Smtp-Source: ABdhPJzWfnGNVTyCGVYdEUrXi45nmrzDGrJy9lh7/pSxfL0Tlne7k66FcfP/s2FsXb7a75H34hUNJzW1uPbrMDHRAzQ=
X-Received: by 2002:a25:dad7:0:b0:61d:aca6:dff8 with SMTP id
 n206-20020a25dad7000000b0061daca6dff8mr5931648ybf.582.1645770283504; Thu, 24
 Feb 2022 22:24:43 -0800 (PST)
MIME-Version: 1.0
References: <1645003971-16908-1-git-send-email-xinlei.lee@mediatek.com> <1645003971-16908-2-git-send-email-xinlei.lee@mediatek.com>
In-Reply-To: <1645003971-16908-2-git-send-email-xinlei.lee@mediatek.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Fri, 25 Feb 2022 14:24:32 +0800
Message-ID: <CAGXv+5EQ5SzzHm9r0wPuE2+J=V4s8f5AopC0xFK1Eaqx_MzyhQ@mail.gmail.com>
Subject: Re: [v2, 1/4] dt-bindings: pwm: Convert pwm-mtk-disp.txt to mediatek,
 pwm-disp.yaml format
To:     xinlei.lee@mediatek.com
Cc:     thierry.reding@gmail.com, u.kleine-koenig@pengutronix.de,
        lee.jones@linaro.org, robh+dt@kernel.org, matthias.bgg@gmail.com,
        jitao.shi@mediatek.com, allen-kh.cheng@mediatek.com,
        linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        Xinlei Lee <xinlei.lee@mediatek.corp-partner.google.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Feb 16, 2022 at 5:43 PM <xinlei.lee@mediatek.com> wrote:
>
> From: Xinlei Lee <xinlei.lee@mediatek.corp-partner.google.com>
>
> Convert pwm-mtk-disp.txt to mediatek,pwm-disp.yaml format as suggested by maintainer
>
> Signed-off-by: Xinlei Lee <xinlei.lee@mediatek.corp-partner.google.com>
> ---
>  .../bindings/pwm/mediatek,pwm-disp.yaml       | 71 +++++++++++++++++++
>  .../devicetree/bindings/pwm/pwm-mtk-disp.txt  | 44 ------------
>  2 files changed, 71 insertions(+), 44 deletions(-)
>  create mode 100755 Documentation/devicetree/bindings/pwm/mediatek,pwm-disp.yaml
>  delete mode 100644 Documentation/devicetree/bindings/pwm/pwm-mtk-disp.txt
>
> diff --git a/Documentation/devicetree/bindings/pwm/mediatek,pwm-disp.yaml b/Documentation/devicetree/bindings/pwm/mediatek,pwm-disp.yaml
> new file mode 100755
> index 000000000000..edf2a2e9ea72
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pwm/mediatek,pwm-disp.yaml
> @@ -0,0 +1,71 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/pwm/mediatek,pwm-disp.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Mediatek PWM Controller Device Tree Bindings
> +
> +maintainers:
> +  - Jitao Shi <jitao.shi@mediatek.com>
> +  - Xinlei Lee <xinlei.lee@mediatek.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - mediatek,mt2701-disp-pwm
> +      - mediatek,mt6595-disp-pwm
> +      - mediatek,mt8173-disp-pwm
> +      - mediatek,mt8183-disp-pwm

mt8183 was not in the original text file binding. Please split this out.
Also, the combination "mediatek,mt8167-disp-pwm", "mediatek,mt8173-disp-pwm"
is missing.

ChenYu

> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  "#pwm-cells":
> +    description:
> +      Number of cells in a PWM specifier.
> +
> +  clocks:
> +    items:
> +      - description: Main Clock
> +      - description: Mm Clock
> +
> +  clock-names:
> +    items:
> +      - const: main
> +      - const: mm
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - power-domains
> +  - "#pwm-cells"
> +  - clocks
> +  - clock-names
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/mt8183-clk.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    #include <dt-bindings/power/mt8183-power.h>
> +
> +    pwm: pwm@1100e000 {
> +        compatible = "mediatek,mt8183-disp-pwm";
> +        reg = <0x1100e000 0x1000>;
> +        interrupts = <GIC_SPI 128 IRQ_TYPE_LEVEL_LOW>;
> +        power-domains = <&spm MT8183_POWER_DOMAIN_DISP>;
> +        #pwm-cells = <2>;
> +        clocks = <&topckgen CLK_TOP_MUX_DISP_PWM>,
> +                 <&infracfg CLK_INFRA_DISP_PWM>;
> +        clock-names = "main", "mm";
> +    };
> diff --git a/Documentation/devicetree/bindings/pwm/pwm-mtk-disp.txt b/Documentation/devicetree/bindings/pwm/pwm-mtk-disp.txt
> deleted file mode 100644
> index 902b271891ae..000000000000
> --- a/Documentation/devicetree/bindings/pwm/pwm-mtk-disp.txt
> +++ /dev/null
> @@ -1,44 +0,0 @@
> -MediaTek display PWM controller
> -
> -Required properties:
> - - compatible: should be "mediatek,<name>-disp-pwm":
> -   - "mediatek,mt2701-disp-pwm": found on mt2701 SoC.
> -   - "mediatek,mt6595-disp-pwm": found on mt6595 SoC.
> -   - "mediatek,mt8167-disp-pwm", "mediatek,mt8173-disp-pwm": found on mt8167 SoC.
> -   - "mediatek,mt8173-disp-pwm": found on mt8173 SoC.
> - - reg: physical base address and length of the controller's registers.
> - - #pwm-cells: must be 2. See pwm.yaml in this directory for a description of
> -   the cell format.
> - - clocks: phandle and clock specifier of the PWM reference clock.
> - - clock-names: must contain the following:
> -   - "main": clock used to generate PWM signals.
> -   - "mm": sync signals from the modules of mmsys.
> - - pinctrl-names: Must contain a "default" entry.
> - - pinctrl-0: One property must exist for each entry in pinctrl-names.
> -   See pinctrl/pinctrl-bindings.txt for details of the property values.
> -
> -Example:
> -       pwm0: pwm@1401e000 {
> -               compatible = "mediatek,mt8173-disp-pwm",
> -                            "mediatek,mt6595-disp-pwm";
> -               reg = <0 0x1401e000 0 0x1000>;
> -               #pwm-cells = <2>;
> -               clocks = <&mmsys CLK_MM_DISP_PWM026M>,
> -                        <&mmsys CLK_MM_DISP_PWM0MM>;
> -               clock-names = "main", "mm";
> -               pinctrl-names = "default";
> -               pinctrl-0 = <&disp_pwm0_pins>;
> -       };
> -
> -       backlight_lcd: backlight_lcd {
> -               compatible = "pwm-backlight";
> -               pwms = <&pwm0 0 1000000>;
> -               brightness-levels = <
> -                         0  16  32  48  64  80  96 112
> -                       128 144 160 176 192 208 224 240
> -                       255
> -               >;
> -               default-brightness-level = <9>;
> -               power-supply = <&mt6397_vio18_reg>;
> -               enable-gpios = <&pio 95 GPIO_ACTIVE_HIGH>;
> -       };
> --
> 2.18.0
>
>
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek
