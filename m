Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 120F55E82E1
	for <lists+devicetree@lfdr.de>; Fri, 23 Sep 2022 22:04:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229515AbiIWUDm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Sep 2022 16:03:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54994 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232310AbiIWUDc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Sep 2022 16:03:32 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 42070121E67
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 13:03:30 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id a26so2890258ejc.4
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 13:03:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=jEaPBG1IC+/XPK/ijTwNeqSw17NMJSv4EKXgqD1q2pw=;
        b=LHNy0VFxvXUFMDB9/KtoYhJwi4diPwS0xXF1GDDxdZsd4cazeA3L/6ZWJdnkiueBVy
         1dMOAXQmNrtYpq3JDpoF95sLlvxw2128Af4ypzhVmHC4F19ledvHf2IvdpVtGEmM/O0i
         Pu2A2+LhhDUpnrk/zezkDwi5T6I3K0eLyK6Qc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=jEaPBG1IC+/XPK/ijTwNeqSw17NMJSv4EKXgqD1q2pw=;
        b=l3cEEpEZ33azykE+lUJIeCs9l/okbsBwyNAZzgOTpDSsPrjfw/bb0qk5gm1J57VoZr
         Godnti5Mc4+ulfSYYRtciTuiXarnekn3aRxAusvzftyZ44+fhkfzwgQqLWJgntYimlQy
         JbnFSLqVhU41IxGXPxdwCpS8vthlDS/v3hANgnD3e2LhQQuxwHounQ3VmXPfxCWREw+J
         L0Puuc3z+/jHZ3+LS3Q1ZCpJMo3H72/pjqEJwa7oqpH+8+yZ8nOv1nNlzQDse2Gny4lh
         5tOjSVuBbSuUZ0/WE98aa4TaEXcCxH0Ta53kVZOJRxYAkCbbnvvhz1aRkhFCqynWMlVU
         P0xA==
X-Gm-Message-State: ACrzQf2ZA3pc+/Gbq7gPP+kYUslFPa4k9vu/quTsFv1NOJbOLGpFxDTp
        8LVq52PJm2WkW+j5dP/PGnNT4aPz+G9snjFG
X-Google-Smtp-Source: AMsMyM74K2yg/89ofFZ10iX4bZk6lVZpWRl1JaYD7faiXO/PtFcfmsJbysbzP6rfUK6v/OuA//EwTA==
X-Received: by 2002:a17:906:4fcc:b0:782:e248:c8a8 with SMTP id i12-20020a1709064fcc00b00782e248c8a8mr988811ejw.717.1663963408474;
        Fri, 23 Sep 2022 13:03:28 -0700 (PDT)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com. [209.85.221.48])
        by smtp.gmail.com with ESMTPSA id d13-20020a17090648cd00b00770880dfc4fsm4395919ejt.29.2022.09.23.13.03.26
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Sep 2022 13:03:27 -0700 (PDT)
Received: by mail-wr1-f48.google.com with SMTP id t14so1508452wrx.8
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 13:03:26 -0700 (PDT)
X-Received: by 2002:a5d:522f:0:b0:228:dc7f:b9a8 with SMTP id
 i15-20020a5d522f000000b00228dc7fb9a8mr6470044wra.617.1663963406024; Fri, 23
 Sep 2022 13:03:26 -0700 (PDT)
MIME-Version: 1.0
References: <20220923094242.4361-1-sheng-liang.pan@quanta.corp-partner.google.com>
 <20220923174224.v3.2.I1454364ac3d8ecc64677884d6b7d2f3e334e4b4a@changeid>
In-Reply-To: <20220923174224.v3.2.I1454364ac3d8ecc64677884d6b7d2f3e334e4b4a@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 23 Sep 2022 13:03:14 -0700
X-Gmail-Original-Message-ID: <CAD=FV=W3BDr5FQrV024JyvajxnT7ka8RwnJbn9cbpppin6-5TA@mail.gmail.com>
Message-ID: <CAD=FV=W3BDr5FQrV024JyvajxnT7ka8RwnJbn9cbpppin6-5TA@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: Add LTE SKU for sc7280-evoker family
To:     Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.google.com>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Sep 23, 2022 at 2:43 AM Sheng-Liang Pan
<sheng-liang.pan@quanta.corp-partner.google.com> wrote:
>
> evoker have wifi/lte sku, add different dts for each sku.
>
> Signed-off-by: Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.google.com>
> ---
>
> (no changes since v1)
>
>  arch/arm64/boot/dts/qcom/Makefile             |  3 ++-
>  .../dts/qcom/sc7280-herobrine-evoker-lte.dts  | 14 ++++++++++
>  .../boot/dts/qcom/sc7280-herobrine-evoker.dts | 16 ++++++++++++
>  ...er-r0.dts => sc7280-herobrine-evoker.dtsi} | 26 +++++--------------
>  4 files changed, 39 insertions(+), 20 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/qcom/sc7280-herobrine-evoker-lte.dts
>  create mode 100644 arch/arm64/boot/dts/qcom/sc7280-herobrine-evoker.dts
>  rename arch/arm64/boot/dts/qcom/{sc7280-herobrine-evoker-r0.dts => sc7280-herobrine-evoker.dtsi} (93%)
>
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index d7669a7cee9f7..76390301a76c0 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -104,7 +104,8 @@ dtb-$(CONFIG_ARCH_QCOM)     += sc7180-trogdor-wormdingler-rev1-boe-rt5682s.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        += sc7180-trogdor-r1.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        += sc7180-trogdor-r1-lte.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        += sc7280-herobrine-crd.dtb
> -dtb-$(CONFIG_ARCH_QCOM)        += sc7280-herobrine-evoker-r0.dtb
> +dtb-$(CONFIG_ARCH_QCOM)        += sc7280-herobrine-evoker.dtb
> +dtb-$(CONFIG_ARCH_QCOM)        += sc7280-herobrine-evoker-lte.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        += sc7280-herobrine-herobrine-r1.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        += sc7280-herobrine-villager-r0.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        += sc7280-herobrine-villager-r1.dtb
> diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine-evoker-lte.dts b/arch/arm64/boot/dts/qcom/sc7280-herobrine-evoker-lte.dts
> new file mode 100644
> index 0000000000000..3af9224a7492e
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine-evoker-lte.dts
> @@ -0,0 +1,14 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Google Evoker board device tree source
> + *
> + * Copyright 2022 Google LLC.
> + */
> +
> +#include "sc7280-herobrine-evoker.dts"
> +#include "sc7280-herobrine-lte-sku.dtsi"
> +
> +/ {
> +       model = "Google Evoker with LTE";
> +       compatible = "google,evoker-sku512", "qcom,sc7280";
> +};
> diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine-evoker.dts b/arch/arm64/boot/dts/qcom/sc7280-herobrine-evoker.dts
> new file mode 100644
> index 0000000000000..f490b2bb26df8
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine-evoker.dts
> @@ -0,0 +1,16 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Google Evoker board device tree source
> + *
> + * Copyright 2022 Google LLC.
> + */
> +
> +/dts-v1/;
> +
> +#include "sc7280-herobrine-evoker.dtsi"
> +
> +/ {
> +       model = "Google Evoker";
> +       compatible = "google,evoker", "qcom,sc7280";
> +};
> +

When I apply your patch, git complains here:

new blank line at EOF.
+
warning: 1 line adds whitespace errors.



> diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine-evoker-r0.dts b/arch/arm64/boot/dts/qcom/sc7280-herobrine-evoker.dtsi
> similarity index 93%
> rename from arch/arm64/boot/dts/qcom/sc7280-herobrine-evoker-r0.dts
> rename to arch/arm64/boot/dts/qcom/sc7280-herobrine-evoker.dtsi
> index ccbe50b6249ab..561bb1ee77eee 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280-herobrine-evoker-r0.dts
> +++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine-evoker.dtsi
> @@ -5,15 +5,8 @@
>   * Copyright 2022 Google LLC.
>   */
>
> -/dts-v1/;
> -
>  #include "sc7280-herobrine.dtsi"
>
> -/ {
> -       model = "Google Evoker";
> -       compatible = "google,evoker", "qcom,sc7280";
> -};
> -
>  /*
>   * ADDITIONS TO FIXED REGULATORS DEFINED IN PARENT DEVICE TREE FILES
>   *
> @@ -30,16 +23,15 @@ ap_tp_i2c: &i2c0 {
>         status = "okay";
>         clock-frequency = <400000>;
>
> -       trackpad: trackpad@2c {
> -               compatible = "hid-over-i2c";
> -               reg = <0x2c>;
> +       trackpad: trackpad@15 {
> +               compatible = "elan,ekth3000";
> +               reg = <0x15>;

The trackpad change should be a separate patch.


>                 pinctrl-names = "default";
>                 pinctrl-0 = <&tp_int_odl>;
>
>                 interrupt-parent = <&tlmm>;
>                 interrupts = <7 IRQ_TYPE_EDGE_FALLING>;
>
> -               hid-descr-addr = <0x20>;
>                 vcc-supply = <&pp3300_z1>;
>
>                 wakeup-source;
> @@ -50,18 +42,15 @@ ts_i2c: &i2c13 {
>         status = "okay";
>         clock-frequency = <400000>;
>
> -       ap_ts: touchscreen@10 {
> -               compatible = "elan,ekth6915";
> -               reg = <0x10>;
> -               pinctrl-names = "default";
> -               pinctrl-0 = <&ts_int_conn>, <&ts_rst_conn>;
> +       touchscreen: touchscreen@5d {
> +               compatible = "goodix,gt7375p";
> +               reg = <0x5d>;

The touchscreen change should be a separate patch.


>                 interrupt-parent = <&tlmm>;
>                 interrupts = <55 IRQ_TYPE_LEVEL_LOW>;
>
>                 reset-gpios = <&tlmm 54 GPIO_ACTIVE_LOW>;
> -
> -               vcc33-supply = <&ts_avdd>;
> +               vdd-supply = <&ts_avdd>;
>         };
>  };
>
> @@ -90,7 +79,6 @@ &pcie1 {
>         status = "okay";
>  };
>
> -/* For nvme */

Not sure why you're touching this line in the patch. I'd say leave it alone.

-Doug
