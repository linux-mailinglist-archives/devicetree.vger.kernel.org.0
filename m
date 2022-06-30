Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 51E0F561EAF
	for <lists+devicetree@lfdr.de>; Thu, 30 Jun 2022 17:02:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235452AbiF3PCu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Jun 2022 11:02:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39788 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235459AbiF3PCr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Jun 2022 11:02:47 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 663E7205F4
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 08:02:46 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id cf14so26947842edb.8
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 08:02:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QQUZdryIvAGUEfbuSZ9RcgUBinauPA6CKY/nGGnI/Tc=;
        b=OmSMy9DLYsZsfeGNqiOj5eUckzrgJF30/OyZbA1hLicM+qU7p41yr52k6Cw8V2f3W0
         oADmaa7TM7Z4rDS8rxo8R5jo4BS/zJy63r0lOdjmA1iDTKBTPwf9Dk0FLwlku+O8aTtL
         xdPPQm59KITc4ru8+CbDuqOqySuM4uoXkdIbM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QQUZdryIvAGUEfbuSZ9RcgUBinauPA6CKY/nGGnI/Tc=;
        b=YRVsvByQN2OVpy0iOPPqc0kdxMFEIEk3SzksGWTmKmbtGQ4mxwAwRPABoCY8VbOrz3
         Npf1Q8VstOUoWn1Xmu8gyfgs9M488SXRdp3+iX/T02TqDCacrVZSHrF4LImoN9sRLo3M
         9WzC24X8QdOSLaMPoGTDYHTFaJcsrDho1g9LvITi1VGkZdItV6Vwq8+TvRApKfGS7FYS
         2v2CT0j9pzRImhy2jMogpFzK/Sa21SC6O2LcWp5O8VqGE0tMny3qaZTZ1ixxvlFgM3J3
         2OedZN6sXW9LqaTKHIjfH/QJw2I32K/dp0zopld2CBhUWQHYg2N358WZNIFVGqyoifaY
         Tj5Q==
X-Gm-Message-State: AJIora+alZr3vmq2xqb0E3b6D4ucHicdXz65iSrxpPlAzWp/o4a91JZC
        taDC4x1yAswsHfgsUzCTIBb3fK00/i8eyr5n7n8=
X-Google-Smtp-Source: AGRyM1svlb9E+EyRo9e0pPKbclIVL5VxpgHQwIizY7fTqW3hzyHvjFmIm3iAMBQvnBzh7/KytaJrEw==
X-Received: by 2002:aa7:d296:0:b0:435:7f33:38bc with SMTP id w22-20020aa7d296000000b004357f3338bcmr12352279edq.399.1656601364418;
        Thu, 30 Jun 2022 08:02:44 -0700 (PDT)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com. [209.85.221.51])
        by smtp.gmail.com with ESMTPSA id c11-20020aa7c98b000000b00435a912358dsm13317354edt.30.2022.06.30.08.02.42
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Jun 2022 08:02:42 -0700 (PDT)
Received: by mail-wr1-f51.google.com with SMTP id i1so23239497wrb.11
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 08:02:42 -0700 (PDT)
X-Received: by 2002:a5d:4046:0:b0:21a:3a12:239e with SMTP id
 w6-20020a5d4046000000b0021a3a12239emr9029135wrp.138.1656601361824; Thu, 30
 Jun 2022 08:02:41 -0700 (PDT)
MIME-Version: 1.0
References: <SG2PR03MB5006F091C2016ADE8A9A208ECCBA9@SG2PR03MB5006.apcprd03.prod.outlook.com>
In-Reply-To: <SG2PR03MB5006F091C2016ADE8A9A208ECCBA9@SG2PR03MB5006.apcprd03.prod.outlook.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 30 Jun 2022 08:02:29 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WFYYMNtQmwCKKYQV240-0vds+EOv3=2+N6=i0sX39R0g@mail.gmail.com>
Message-ID: <CAD=FV=WFYYMNtQmwCKKYQV240-0vds+EOv3=2+N6=i0sX39R0g@mail.gmail.com>
Subject: Re: [PATCH] FROMLIST: arm64: dts: qcom: Add LTE SKUs for
 sc7280-villager family
To:     Jimmy Chen <jinghung.chen3@hotmail.com>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Jimmy Chen <jinghung.chen43@yahoo.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Jun 29, 2022 at 11:27 PM Jimmy Chen <jinghung.chen3@hotmail.com> wrote:
>
> From: Jimmy Chen <jinghung.chen43@yahoo.com>
>
> This adds LTE skus for villager device tree files.
>
> Signed-off-by: Jimmy Chen <jinghung.chen43@yahoo.com>
> Signed-off-by: Jimmy Chen <jinghung.chen3@hotmail.com>

Pick one email address and use it. Having two Signed-off-by from the
same person with different email addresses is odd.


>  arch/arm64/boot/dts/qcom/Makefile                 |  3 +++
>  .../arm64/boot/dts/qcom/sc7280-chrome-common.dtsi |  7 -------
>  arch/arm64/boot/dts/qcom/sc7280-herobrine-crd.dts |  1 +
>  .../qcom/sc7280-herobrine-herobrine-r1-lte.dts    | 14 ++++++++++++++
>  .../boot/dts/qcom/sc7280-herobrine-lte-sku.dtsi   | 15 +++++++++++++++
>  .../dts/qcom/sc7280-herobrine-villager-r0-lte.dts | 14 ++++++++++++++
>  .../dts/qcom/sc7280-herobrine-villager-r1-lte.dts | 14 ++++++++++++++
>  arch/arm64/boot/dts/qcom/sc7280-idp.dtsi          |  1 +
>  8 files changed, 62 insertions(+), 7 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r1-lte.dts
>  create mode 100644 arch/arm64/boot/dts/qcom/sc7280-herobrine-lte-sku.dtsi
>  create mode 100644 arch/arm64/boot/dts/qcom/sc7280-herobrine-villager-r0-lte.dts
>  create mode 100644 arch/arm64/boot/dts/qcom/sc7280-herobrine-villager-r1-lte.dts

NOTE: ${SUBJECT} for this patch has "FROMLIST". Please remove that.
That's a prefix that's added when patches are picked from an upstream
mailing list into a downstream Chrome OS tree.

Also note that we've started updating the "bindings" file for boards.
Please update "Documentation/devicetree/bindings/arm/qcom.yaml" as
part of your series. Ideally that will make it a two-part series.
Patch #1 updates the bindings and patch #2 does the device tree
changes.


> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index 2f8aec2cc6db6..ab1066883c468 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -85,7 +85,10 @@ dtb-$(CONFIG_ARCH_QCOM)      += sc7180-trogdor-r1.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        += sc7180-trogdor-r1-lte.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        += sc7280-herobrine-crd.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        += sc7280-herobrine-herobrine-r1.dtb
> +dtb-$(CONFIG_ARCH_QCOM) += sc7280-herobrine-herobrine-r1-lte.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        += sc7280-herobrine-villager-r0.dtb
> +dtb-$(CONFIG_ARCH_QCOM) += sc7280-herobrine-villager-r0-lte.dtb
> +dtb-$(CONFIG_ARCH_QCOM) += sc7280-herobrine-villager-r1-lte.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        += sc7280-idp.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        += sc7280-idp2.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        += sc7280-crd-r3.dtb
> diff --git a/arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi b/arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi
> index 9f4a9c263c351..b1f83ddb4e23a 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi
> @@ -83,13 +83,6 @@ spi_flash: flash@0 {
>         };
>  };
>
> -/* Modem setup is different on Chrome setups than typical Qualcomm setup */
> -&remoteproc_mpss {
> -       status = "okay";
> -       compatible = "qcom,sc7280-mss-pil";
> -       iommus = <&apps_smmu 0x124 0x0>, <&apps_smmu 0x488 0x7>;
> -       memory-region = <&mba_mem>, <&mpss_mem>;
> -};

Please rebase your patch the Qualcomm tree, AKA the "for-next" branch
of git://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git

...when I applied your patch I got a merge conflict here because
upstream has commit 2a77ada5168a ("arm64: dts: qcom: sc7280: Enable
wifi for Chrome OS boards") and commit 1c20d3dbaa67 ("arm64: dts:
qcom: sc7280: Set modem FW path for Chrome OS boards")


>  /* Increase the size from 2.5MB to 8MB */
>  &rmtfs_mem {
> diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine-crd.dts b/arch/arm64/boot/dts/qcom/sc7280-herobrine-crd.dts
> index a4ac33c4fd59a..7aaba5e51af01 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280-herobrine-crd.dts
> +++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine-crd.dts
> @@ -8,6 +8,7 @@
>  /dts-v1/;
>
>  #include "sc7280-herobrine.dtsi"
> +#include "sc7280-herobrine-lte-sku.dtsi"
>
>  / {
>         model = "Qualcomm Technologies, Inc. sc7280 CRD platform (rev5+)";
> diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r1-lte.dts b/arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r1-lte.dts
> new file mode 100644
> index 0000000000000..e37773fd63b3b
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r1-lte.dts

Thinking about this more, I think we _shouldn't_ do this for
herobrine-r1 right now. No herobrine-r1 boards were actually strapped
to tell LTE vs. non-LTE and people just shoved LTE vs. non-LTE qcards
on randomly.

There is still some plan to have the bootloader identify LTE vs. WiFi
qcards and use a different SKU ID bit, so maybe we'll solve this
eventually. ...but for now leave herobrine alone. Personally for now
I'd suggest adding #include "sc7280-herobrine-lte-sku.dtsi" to the
existing "sc7280-herobrine-herobrine-r1.dts" file.


> @@ -0,0 +1,14 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Google Herobrine board device tree source
> + *
> + * Copyright 2022 Google LLC.
> + */
> +
> +#include "sc7280-herobrine-villager-r0.dts"
> +#include "sc7280-herobrine-lte-sku.dtsi"
> +
> +/{
> +       model = "Google Herobrine (rev1+) with LTE";
> +       compatible = "google,herobrine-sku0", "qcom,sc7280";
> +};
> diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine-lte-sku.dtsi b/arch/arm64/boot/dts/qcom/sc7280-herobrine-lte-sku.dtsi
> new file mode 100644
> index 0000000000000..c628910b310d3
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine-lte-sku.dtsi
> @@ -0,0 +1,15 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +  /*
> +   * Google Herobrine dts fragment for LTE SKUs
> +   *
> +   * Copyright 2022 Google LLC.
> +   */

Why is the copyright header comment indented by two spaces? Please fix.

...also please add a blank line here after the header.
