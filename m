Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7EA9C500160
	for <lists+devicetree@lfdr.de>; Wed, 13 Apr 2022 23:49:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234010AbiDMVvh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Apr 2022 17:51:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48646 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234068AbiDMVvg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Apr 2022 17:51:36 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D909A47AE1
        for <devicetree@vger.kernel.org>; Wed, 13 Apr 2022 14:49:13 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id bg10so6604137ejb.4
        for <devicetree@vger.kernel.org>; Wed, 13 Apr 2022 14:49:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=gMs2rmBWWmIoOW18P1m2w3YjRnMa95bN+gWj8N2yU/k=;
        b=lR2kiAbTOIdBj36E6Dy3mUbmR3oIHehaxz1cxShoZAzI4SPRU42Lbk1A2VS8PzepLj
         rHTlIFE9fqY5EXevEnSfLxM9WrqG6wbvR/j6kKHiQ8Nl2zxWPc+w1cTDj+eSK3O+9TbO
         Qo8+zpSh7Zt9GI07IFP4eK7xk+76Xmxnto0b8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gMs2rmBWWmIoOW18P1m2w3YjRnMa95bN+gWj8N2yU/k=;
        b=akCpqMVf3pLqBuSgZksabkIJqwq0CBro9t52kQorJn9UnjEmBvm2jwySlpOaXKsLMs
         HvrXk3l+H86dK9bpdFPRKhuYcwnyMW5IoITgqy0btuc9eVWTytYzHAH8/ZJAn01mlLUT
         +/mkL+URHaJGZ1WlPwRmxw2aSgAGiw705zlYb80uYTUH1CY3WtjbBvnismRrUQSGmMcQ
         fB/wa2TEOQ73J2csb7zw/vT+0b5UV95yCyrueoGOHxmx2pyfHP8cu4ATHpJxi58XO/lS
         qT0GV197NA62tzHl5ogD0mHriTHCAsB70947TK5lwUvcmgZqnN1cH7dmayUJ/mcOHtx4
         oQLg==
X-Gm-Message-State: AOAM532cYLFNiHDWWLOS1DDOB2fYQSTviza8/k0Jhqonbl2T2evelJWk
        W1H9e3woQ6nUmL6pK8Ksj1ni+sKuM2hHYNc6
X-Google-Smtp-Source: ABdhPJwKsh9eLwuzSeh0xxmxWzH+kL1hswlUD2HZ+sB12HnoarWQW2KfQ2v3sK6AzCiUPgWDj74LQQ==
X-Received: by 2002:a17:907:3e03:b0:6da:8c5a:6d4a with SMTP id hp3-20020a1709073e0300b006da8c5a6d4amr41621303ejc.585.1649886552011;
        Wed, 13 Apr 2022 14:49:12 -0700 (PDT)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com. [209.85.128.53])
        by smtp.gmail.com with ESMTPSA id x4-20020a170906b08400b006e493cb583esm41178ejy.47.2022.04.13.14.49.11
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Apr 2022 14:49:11 -0700 (PDT)
Received: by mail-wm1-f53.google.com with SMTP id o20-20020a05600c511400b0038ebbbb2ad8so2019138wms.0
        for <devicetree@vger.kernel.org>; Wed, 13 Apr 2022 14:49:11 -0700 (PDT)
X-Received: by 2002:a05:600c:3ca4:b0:38e:54d0:406d with SMTP id
 bg36-20020a05600c3ca400b0038e54d0406dmr119391wmb.199.1649886550796; Wed, 13
 Apr 2022 14:49:10 -0700 (PDT)
MIME-Version: 1.0
References: <20220330090947.9100-1-chenxiangrui@huaqin.corp-partner.google.com>
 <a0eb6bf9-256a-29b1-2211-496df710f531@linaro.org>
In-Reply-To: <a0eb6bf9-256a-29b1-2211-496df710f531@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 13 Apr 2022 14:48:57 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UjyLofXZqnj=bL89fza5JS6O5Np9W-A4V4WK+na0hdrw@mail.gmail.com>
Message-ID: <CAD=FV=UjyLofXZqnj=bL89fza5JS6O5Np9W-A4V4WK+na0hdrw@mail.gmail.com>
Subject: Re: [PATCH] CHROMIUM: arm64: dts: qcom: Add sc7180-gelarshie
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Mars Chen <chenxiangrui@huaqin.corp-partner.google.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>
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

Hi,

On Wed, Mar 30, 2022 at 10:25 AM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 30/03/2022 11:09, Mars Chen wrote:
> > Initial attempt at Gelarshie device tree.
> >
> > BUG=b:225756600
> > TEST=emerge-strongbad chromeos-kernel-5_4
> >
> > Signed-off-by: Mars Chen <chenxiangrui@huaqin.corp-partner.google.com>
> > ---
> >  arch/arm64/boot/dts/qcom/Makefile             |   1 +
> >  .../dts/qcom/sc7180-trogdor-gelarshie-r0.dts  |  15 +
> >  .../dts/qcom/sc7180-trogdor-gelarshie.dtsi    | 304 ++++++++++++++++++
> >  3 files changed, 320 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/qcom/sc7180-trogdor-gelarshie-r0.dts
> >  create mode 100644 arch/arm64/boot/dts/qcom/sc7180-trogdor-gelarshie.dtsi
> >
> > diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> > index f9e6343acd03..cf8f88b065c3 100644
> > --- a/arch/arm64/boot/dts/qcom/Makefile
> > +++ b/arch/arm64/boot/dts/qcom/Makefile
> > @@ -57,6 +57,7 @@ dtb-$(CONFIG_ARCH_QCOM)     += sc7180-trogdor-coachz-r1.dtb
> >  dtb-$(CONFIG_ARCH_QCOM)      += sc7180-trogdor-coachz-r1-lte.dtb
> >  dtb-$(CONFIG_ARCH_QCOM)      += sc7180-trogdor-coachz-r3.dtb
> >  dtb-$(CONFIG_ARCH_QCOM)      += sc7180-trogdor-coachz-r3-lte.dtb
> > +dtb-$(CONFIG_ARCH_QCOM)      += sc7180-trogdor-gelarshie-r0.dtb
> >  dtb-$(CONFIG_ARCH_QCOM)      += sc7180-trogdor-homestar-r2.dtb
> >  dtb-$(CONFIG_ARCH_QCOM)      += sc7180-trogdor-homestar-r3.dtb
> >  dtb-$(CONFIG_ARCH_QCOM)      += sc7180-trogdor-homestar-r4.dtb
> > diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-gelarshie-r0.dts b/arch/arm64/boot/dts/qcom/sc7180-trogdor-gelarshie-r0.dts
> > new file mode 100644
> > index 000000000000..027d6d563a5f
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-gelarshie-r0.dts
> > @@ -0,0 +1,15 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +/*
> > + * Google Gelarshie board device tree source
> > + *
> > + * Copyright 2022 Google LLC.
> > + */
> > +
> > +/dts-v1/;
> > +
> > +#include "sc7180-trogdor-gelarshie.dtsi"
> > +
> > +/ {
> > +     model = "Google Gelarshie (rev0+)";
> > +     compatible = "google,gelarshie", "qcom,sc7180";
>
> Missing bindings. Please document the compatible.

I'm actually kinda curious: is there really a good reason for this? I
know I haven't been adding things to
`Documentation/devicetree/bindings/arm/qcom.yaml` for Qualcomm
Chromebooks.  Ironically, it turns out that the script I typically use
to invoke checkpatch happens to have "--no-tree" as an argument and
that seems to disable this check. Doh!

That being said, though, I do wonder a little bit about the value of
enumerating the top-level compatible like this in a yaml file.
Certainly the yaml schema validation in general can be quite useful,
but this top-level listing seems pure overhead. I guess it makes some
tools happy, but other than that it seems to provide very little
value...

-Doug
