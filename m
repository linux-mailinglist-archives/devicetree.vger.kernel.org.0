Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 17A85555592
	for <lists+devicetree@lfdr.de>; Wed, 22 Jun 2022 22:57:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234750AbiFVU5Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Jun 2022 16:57:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39242 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230253AbiFVU5X (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Jun 2022 16:57:23 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB0BC18E17
        for <devicetree@vger.kernel.org>; Wed, 22 Jun 2022 13:57:21 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id eo8so25674625edb.0
        for <devicetree@vger.kernel.org>; Wed, 22 Jun 2022 13:57:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=kxnuHmLGyITyuJDC4SS30IEft3M8dZ4Ya6gP8MJhMNg=;
        b=QFSFaEaeJQxCaHLKIP2QqHitJCIMZXiIsfGS1ifVx/IfRhI7Tkpengt7pNtBzu3mLg
         6WJw0biLZF/o031nUuEOuDsgWl1zKjsSSJC7fzYjAE1Jq3QhY2HYgkgihpTWUPq1zkbH
         +xVK+tDAjIKhEcS96aqjzvEUOnT6hrAa3Zk0Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=kxnuHmLGyITyuJDC4SS30IEft3M8dZ4Ya6gP8MJhMNg=;
        b=VmJsHEm8h5JsMxRf/2ucXPpn66y0bLpBZZpGanmHr0uM0JTOZIxdtH6tsMiBmKSfHb
         MX9Ej6+82I+Z7aS5mDPv2R293A4UGW8XiwUWG9SoDmkUlIIryYkOM1uo+xgMTFNsYsSQ
         ftgwd5StkstvDciFAUY5LyfKnrI9eSe/1svSvUOPjzmAUP+5Rf6KLGAlmYbR6QjnxCbC
         4wFGlj81mV+JHF9vz+Rpg+gfDrqKZoGEsRH0L/2OUwji/gIqD+BgiTKfcd7c1q3PUJrE
         Zf81V/M2sWTRn8Qz1zAqVslXnzCU6hNnEpA03pnFJnTpLu+1hUibfvlsPeojcf66ve3f
         3t3Q==
X-Gm-Message-State: AJIora8U2Egzcpl1FFA59svcQooesbDS0Q/zqAjjZUEXRdmtyVf5F3g0
        0pqOkIls6VMvGPdzmDGPGwRkBd7oYiEefSeGA6k=
X-Google-Smtp-Source: AGRyM1txzKIVaNJkoA1fb943/BpNC4NWTqrE8RjRzM3sDbmYe2TsZwQw9vuNRhs+6aE9iC3QB/bsvw==
X-Received: by 2002:a05:6402:274a:b0:435:9807:7752 with SMTP id z10-20020a056402274a00b0043598077752mr6442062edd.63.1655931440212;
        Wed, 22 Jun 2022 13:57:20 -0700 (PDT)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com. [209.85.221.45])
        by smtp.gmail.com with ESMTPSA id g13-20020aa7c84d000000b004357b717a96sm9281855edt.85.2022.06.22.13.57.18
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Jun 2022 13:57:19 -0700 (PDT)
Received: by mail-wr1-f45.google.com with SMTP id m1so17333640wrb.2
        for <devicetree@vger.kernel.org>; Wed, 22 Jun 2022 13:57:18 -0700 (PDT)
X-Received: by 2002:adf:fb12:0:b0:20c:79b2:a200 with SMTP id
 c18-20020adffb12000000b0020c79b2a200mr5248141wrr.617.1655931438474; Wed, 22
 Jun 2022 13:57:18 -0700 (PDT)
MIME-Version: 1.0
References: <20220621053351.650431-1-joebar@chromium.org> <20220620223345.v9.4.I41e2c2dc12961fe000ebc4d4ef6f0bc5da1259ea@changeid>
In-Reply-To: <20220620223345.v9.4.I41e2c2dc12961fe000ebc4d4ef6f0bc5da1259ea@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 22 Jun 2022 13:57:06 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WS0dQyNe6X3+baCztM2bZbYBzdRoAir09Ad1otWtz9ag@mail.gmail.com>
Message-ID: <CAD=FV=WS0dQyNe6X3+baCztM2bZbYBzdRoAir09Ad1otWtz9ag@mail.gmail.com>
Subject: Re: [PATCH v9 4/5] arm64: dts: qcom: sc7180: Add pazquel dts files
To:     "Joseph S. Barrera III" <joebar@chromium.org>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Alexandru M Stan <amstan@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, Jun 20, 2022 at 10:35 PM Joseph S. Barrera III
<joebar@chromium.org> wrote:
>
> Pazquel is a trogdor-based board. These dts files are unchanged copies
> from the downstream Chrome OS 5.4 kernel.
>
> Signed-off-by: Joseph S. Barrera III <joebar@chromium.org>
> ---
>
> Changes in v9:
> - Restore two lines accidentally removed from ap_sar_sensor.
> - Simplify trackpad enabling (51d30402be75).
>
> Changes in v7:
> - Only include sc7180.dtsi in sc7180-trogdor.dtsi (19794489fa24).
> - Simplify spi0/spi6 labeling (d277cab7afc7).
> - Remove #include of <arm/cros-ec-keyboard.dtsi>.
> - Accidentally removed two lines from ap_sar_sensor.
>
> Changes in v6:
> - Copy changes to ap_sar_sensor from v5.4.
> - Add #include of <arm/cros-ec-keyboard.dtsi>.
>
> Changes in v4:
> - Fix description (no downstream bits removed).
> - Add missing version history.
>
> Changes in v3:
> - First inclusion in series.
>
>  arch/arm64/boot/dts/qcom/Makefile             |   4 +
>  .../sc7180-trogdor-pazquel-lte-parade.dts     |  22 ++
>  .../qcom/sc7180-trogdor-pazquel-lte-ti.dts    |  22 ++
>  .../qcom/sc7180-trogdor-pazquel-parade.dts    |  17 ++
>  .../dts/qcom/sc7180-trogdor-pazquel-ti.dts    |  17 ++
>  .../boot/dts/qcom/sc7180-trogdor-pazquel.dtsi | 221 ++++++++++++++++++
>  6 files changed, 303 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/sc7180-trogdor-pazquel-lte-parade.dts
>  create mode 100644 arch/arm64/boot/dts/qcom/sc7180-trogdor-pazquel-lte-ti.dts
>  create mode 100644 arch/arm64/boot/dts/qcom/sc7180-trogdor-pazquel-parade.dts
>  create mode 100644 arch/arm64/boot/dts/qcom/sc7180-trogdor-pazquel-ti.dts
>  create mode 100644 arch/arm64/boot/dts/qcom/sc7180-trogdor-pazquel.dtsi
>
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index 5cfd6316768c..dc26704dfe34 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -79,6 +79,10 @@ dtb-$(CONFIG_ARCH_QCOM)      += sc7180-trogdor-mrbland-rev0-auo.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        += sc7180-trogdor-mrbland-rev0-boe.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        += sc7180-trogdor-mrbland-rev1-auo.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        += sc7180-trogdor-mrbland-rev1-boe.dtb
> +dtb-$(CONFIG_ARCH_QCOM)        += sc7180-trogdor-pazquel-lte-parade.dtb
> +dtb-$(CONFIG_ARCH_QCOM)        += sc7180-trogdor-pazquel-lte-ti.dtb
> +dtb-$(CONFIG_ARCH_QCOM)        += sc7180-trogdor-pazquel-parade.dtb
> +dtb-$(CONFIG_ARCH_QCOM)        += sc7180-trogdor-pazquel-ti.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        += sc7180-trogdor-pompom-r1.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        += sc7180-trogdor-pompom-r1-lte.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        += sc7180-trogdor-pompom-r2.dtb
> diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-pazquel-lte-parade.dts b/arch/arm64/boot/dts/qcom/sc7180-trogdor-pazquel-lte-parade.dts
> new file mode 100644
> index 000000000000..ecedab8d1662
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-pazquel-lte-parade.dts
> @@ -0,0 +1,22 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Google Pazquel board device tree source
> + *
> + * Copyright 2021 Google LLC.
> + */
> +
> +/dts-v1/;
> +
> +#include "sc7180.dtsi"

Repeating my comment from v8:

This is not good and was an important part of "Simplify!" sc7180.dtsi
should only be included by sc7180-trogdor.dtsi.


> diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-pazquel.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor-pazquel.dtsi
> new file mode 100644
> index 000000000000..5485f50f89ad
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-pazquel.dtsi
> @@ -0,0 +1,221 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Google Pazquel board device tree source
> + *
> + * Copyright 2021 Google LLC.
> + */
> +
> +#include "sc7180-trogdor.dtsi"
> +
> +&ap_sar_sensor {
> +       compatible = "semtech,sx9324";
> +       semtech,ph0-pin = <1 3 3>;
> +       semtech,ph1-pin = <3 1 3>;
> +       semtech,ph2-pin = <1 3 3>;
> +       semtech,ph3-pin = <0 0 0>;
> +       semtech,ph01-resolution = <1024>;
> +       semtech,ph23-resolution = <1024>;
> +       semtech,startup-sensor = <1>;
> +       semtech,ph01-proxraw-strength = <3>;
> +       semtech,ph23-proxraw-strength = <1>;
> +       semtech,avg-pos-strength = <128>;
> +       semtech,input-analog-gain = <0>;
> +       semtech,cs-idle-sleep = "gnd";
> +
> +       /delete-property/ svdd-supply;
> +       vdd-supply = <&pp1800_prox>;
> +};
> +
> +/delete-node/&trackpad;
> +&ap_tp_i2c {

You need status = "okay"; here since Stephen's "Simplify!" patch
series means that the i2c node itself is now disabled by default.


> +       trackpad: trackpad@15 {
> +               status = "okay";

You _don't_ need the status = "okay"; here.


-Doug
