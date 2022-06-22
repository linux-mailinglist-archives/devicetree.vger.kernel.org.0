Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7CD2C556F12
	for <lists+devicetree@lfdr.de>; Thu, 23 Jun 2022 01:29:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1359870AbiFVX2K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Jun 2022 19:28:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41156 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243455AbiFVX2J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Jun 2022 19:28:09 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCECA42496
        for <devicetree@vger.kernel.org>; Wed, 22 Jun 2022 16:27:50 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id sb34so8395821ejc.11
        for <devicetree@vger.kernel.org>; Wed, 22 Jun 2022 16:27:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=VK59ppvNAiJ/BqQDWjHs5kPlL+7VW+la85t9HxpGspw=;
        b=i79Ewbh/MDWrhPMU0J8coICO1Xbq4hjGXjKOc7ZiNonZM7LPBBTUFC/CnSroH6Kjp/
         GZiX71vF89+3xiRP9xru0LcTft7EN0+UYSG87kQIUvwd8+eM/eZCP81zLU1k5LkyQesB
         52JxZ1gqstIcdDxHongWFc8Z3jjHjo3vM7N1A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=VK59ppvNAiJ/BqQDWjHs5kPlL+7VW+la85t9HxpGspw=;
        b=fyywLKYhE7h7tgKp3U64maQS4gzs1QEbQWUWJNqiGeb2Rqhu5E9ABVbSB6wuwTt60K
         ziqWCRqU5g9mcg1LjblqCRMlImeqzAdN/vCHo1GConTtlpPt5mm6AGJKnTH+agn2JCPr
         LNiXCpex9reD23snMz6/u9vNrGBu8WxQ6bsnPhS0ndYg9Q3dvIaKl4KCOF2zpVFiDD/y
         ruxd3uHnZ7QKs1tzSlZ11E3H8MZqIb3U2Ui8Y1i8ok5ZzHoMHepDEqo+DJC9K8jhSv8l
         DiE3CFL8Htz+MoadgZ+WAe+TX4zPoZ+U0PNilQ2BGNYAmakXuqSGpUDW3TeJ0VcOzCgF
         XNZQ==
X-Gm-Message-State: AJIora9QkeA53k8S/j9D300Nq+eGp3Za+zjCbQx7j3Hql6f/0e4G/HGd
        p7t7gk3Fs169huPw02InWMTIT4pbQ1mZGmKaHL0=
X-Google-Smtp-Source: AGRyM1uYUWzHOjE2zs6ocXCSqxDkL72eDSZa1SpHgFq7wwlC/7PidHnsnKW2SfCaBC6z4g7H3jBDfw==
X-Received: by 2002:a17:907:8a03:b0:711:f3c3:71a6 with SMTP id sc3-20020a1709078a0300b00711f3c371a6mr5628326ejc.659.1655940469178;
        Wed, 22 Jun 2022 16:27:49 -0700 (PDT)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com. [209.85.221.47])
        by smtp.gmail.com with ESMTPSA id l9-20020a056402254900b0042de3d661d2sm16612271edb.1.2022.06.22.16.27.48
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Jun 2022 16:27:48 -0700 (PDT)
Received: by mail-wr1-f47.google.com with SMTP id o8so25519613wro.3
        for <devicetree@vger.kernel.org>; Wed, 22 Jun 2022 16:27:48 -0700 (PDT)
X-Received: by 2002:a5d:4046:0:b0:21a:3a12:239e with SMTP id
 w6-20020a5d4046000000b0021a3a12239emr5552466wrp.138.1655940467275; Wed, 22
 Jun 2022 16:27:47 -0700 (PDT)
MIME-Version: 1.0
References: <20220622215805.1121982-1-joebar@chromium.org> <20220622145717.v10.4.I41e2c2dc12961fe000ebc4d4ef6f0bc5da1259ea@changeid>
In-Reply-To: <20220622145717.v10.4.I41e2c2dc12961fe000ebc4d4ef6f0bc5da1259ea@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 22 Jun 2022 16:27:34 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Wqv92G2Op8pf8+5BUcO12kXCzAWKhiPH5D6xYa9tfS_A@mail.gmail.com>
Message-ID: <CAD=FV=Wqv92G2Op8pf8+5BUcO12kXCzAWKhiPH5D6xYa9tfS_A@mail.gmail.com>
Subject: Re: [PATCH v10 4/5] arm64: dts: qcom: sc7180: Add pazquel dts files
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

On Wed, Jun 22, 2022 at 2:59 PM Joseph S. Barrera III
<joebar@chromium.org> wrote:
>
> Pazquel is a trogdor-based board. These dts files are unchanged copies
> from the downstream Chrome OS 5.4 kernel.
>
> Signed-off-by: Joseph S. Barrera III <joebar@chromium.org>
> ---
>
> Changes in v10:
> - Remove 'include sc7180.dtsi' from *all* sc7180-trogdor-pazquel* files.
> - Move "okay" for ap_tp_i2c to proper location.
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
>  .../sc7180-trogdor-pazquel-lte-parade.dts     |  21 ++
>  .../qcom/sc7180-trogdor-pazquel-lte-ti.dts    |  21 ++
>  .../qcom/sc7180-trogdor-pazquel-parade.dts    |  16 ++
>  .../dts/qcom/sc7180-trogdor-pazquel-ti.dts    |  16 ++
>  .../boot/dts/qcom/sc7180-trogdor-pazquel.dtsi | 221 ++++++++++++++++++
>  6 files changed, 299 insertions(+)
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
> index 000000000000..407adca19652
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-pazquel-lte-parade.dts
> @@ -0,0 +1,21 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Google Pazquel board device tree source
> + *
> + * Copyright 2021 Google LLC.
> + */
> +
> +/dts-v1/;
> +
> +#include "sc7180-trogdor-parade-ps8640.dtsi"
> +#include "sc7180-trogdor-pazquel.dtsi"
> +#include "sc7180-trogdor-lte-sku.dtsi"

The includes are still not correct as far as I can tell. If you look
at Stephen's solution in "Simplify!" plus his fixup that your series
is based on, AKA ("arm64: dts: qcom: Remove duplicate sc7180-trogdor
include on lazor/homestar") then I believe the correct thing to do
here is:

1. Go back to v9

2. Remove the include of "sc7180-trogdor.dtsi" from the pazquel and
kingoftown .dtsi files.

3. Every place in pazquel and kingoftown that has an include of
"sc7180.dtsi" replace that with "sc7180-trogdor.dtsi"


I'm curious: did you try compiling your patches? Do they work? They
don't seem to for me. It's expected that when you post patches that
you have, at the very least, compile tested them. Given how much of
trogdor works upstream I'd also expect you to have actually boot
tested as many of the boards that you have hardware for.

-Doug
