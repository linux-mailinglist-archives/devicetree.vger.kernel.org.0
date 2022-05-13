Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0B911526341
	for <lists+devicetree@lfdr.de>; Fri, 13 May 2022 15:52:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231453AbiEMNuD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 May 2022 09:50:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44932 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1382076AbiEMNnW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 May 2022 09:43:22 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 243A926AD2
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 06:43:20 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id ks9so16385825ejb.2
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 06:43:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=OWSeXSH3F3SaHIEtdX7R74ohKdWLZ0h8DQhO+Wcow0w=;
        b=TGvTFxSVVmsEc3R8tVYYfZPGrWW6+ABu75S3UTtbbnTLGRLejRG8DEPWi7HBJDNiRX
         snrZ57KR/vPmOg0RsTfEskBNf6dAnEjS4bAs+2XyKKaeTs7kCAFs+cWvIE8PKqNdC+vH
         S+NVgBta+PCEftq5+psO3lOcA4CPcFYtLzer4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=OWSeXSH3F3SaHIEtdX7R74ohKdWLZ0h8DQhO+Wcow0w=;
        b=Pmuv14WoJDnW1l43+f634gjU6TmIa7nFbQQstG87+J5AB+yok6SjaoTmc5cOAT77TZ
         709TF13Wzp3zaQwRQP3ikIf+tQ0JwwdwVoQ3FS/hCTdLOsI4JWYdVghP29zZt3P54elR
         3Y7ru1SMQCJ5Brr3ovdAnr8lqnfeCqL9C0yOygvtgZeoLrRHA/OTj0ffKASjwlyaXMrq
         9ebr3c5UdqubBpHYSOSaGY/pXAhz1jqPoIGHQ3M5vV9Rx9Sr/8haG8QuLhi9w8ivLhSd
         kE39iz8/M+1smMzwvFSAzZgN4TowojlN+uxg5JPq4oAn7rwaLLOWr2zc93ecMOuCC+vi
         lj9g==
X-Gm-Message-State: AOAM530xO17Oo5mwHRFpS3TN5SlAC2V3UHF4EQA2skVOTbywQM0ZEcZV
        UQE9frgBtsaxQbMzlWxX4ybZon2gYgwkq8n6iUw=
X-Google-Smtp-Source: ABdhPJykrhFcNzFU6Hy718bbEoNLyPnKJhIOGDVhKkjMAhM4eu7+F/9pyCYfYB//Z8rWnHmUFlGq5Q==
X-Received: by 2002:a17:907:2d0e:b0:6f4:e29e:5555 with SMTP id gs14-20020a1709072d0e00b006f4e29e5555mr4380432ejc.552.1652449398495;
        Fri, 13 May 2022 06:43:18 -0700 (PDT)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com. [209.85.128.53])
        by smtp.gmail.com with ESMTPSA id ml22-20020a170906cc1600b006f3ef214e1dsm788674ejb.131.2022.05.13.06.43.16
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 May 2022 06:43:16 -0700 (PDT)
Received: by mail-wm1-f53.google.com with SMTP id q20so4838878wmq.1
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 06:43:16 -0700 (PDT)
X-Received: by 2002:a05:600c:3d8c:b0:394:6097:9994 with SMTP id
 bi12-20020a05600c3d8c00b0039460979994mr15065402wmb.29.1652449395743; Fri, 13
 May 2022 06:43:15 -0700 (PDT)
MIME-Version: 1.0
References: <20220512090429.1.I9804fcd5d6c8552ab25f598dd7a3ea71b15b55f0@changeid>
 <20220512090429.2.I1318c1ae2ce55ade1d092fc21df846360b15c560@changeid> <1652445201.115225.85852.nullmailer@robh.at.kernel.org>
In-Reply-To: <1652445201.115225.85852.nullmailer@robh.at.kernel.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 13 May 2022 06:43:04 -0700
X-Gmail-Original-Message-ID: <CAD=FV=W1CC8NGFCiUCb-W3i4Z6wYyhmf9JmgbFJ4K+KL6mgvgQ@mail.gmail.com>
Message-ID: <CAD=FV=W1CC8NGFCiUCb-W3i4Z6wYyhmf9JmgbFJ4K+KL6mgvgQ@mail.gmail.com>
Subject: Re: [PATCH 2/3] dt-bindings: arm: qcom: Add / fix sc7280 board bindings
To:     Rob Herring <robh@kernel.org>
Cc:     Rajendra Nayak <quic_rjendra@quicinc.com>,
        Matthias Kaehlcke <mka@chromium.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Andy Gross <agross@kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Alexandru M Stan <amstan@chromium.org>,
        Julius Werner <jwerner@chromium.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "Joseph S . Barrera III" <joebar@chromium.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Stephen Boyd <sboyd@codeaurora.org>,
        Rob Herring <robh+dt@kernel.org>
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

On Fri, May 13, 2022 at 5:33 AM Rob Herring <robh@kernel.org> wrote:
>
> On Thu, 12 May 2022 09:04:46 -0700, Douglas Anderson wrote:
> > This copy-pastes compatibles from sc7280-based boards from the device
> > trees to the yaml file. It also fixes the CRD/IDP bindings which had
> > gotten stale.
> >
> > Signed-off-by: Douglas Anderson <dianders@chromium.org>
> > ---
> >
> >  .../devicetree/bindings/arm/qcom.yaml         | 40 +++++++++++++++----
> >  1 file changed, 33 insertions(+), 7 deletions(-)
> >
>
> Running 'make dtbs_check' with the schema in this patch gives the
> following warnings. Consider if they are expected or the schema is
> incorrect. These may not be new warnings.
>
> Note that it is not yet a requirement to have 0 warnings for dtbs_check.
> This will change in the future.
>
> Full log is available here: https://patchwork.ozlabs.org/patch/
>
>
> /: compatible: 'oneOf' conditional failed, one must be fixed:
[...]
>         arch/arm64/boot/dts/qcom/sc7280-crd.dtb
>         arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r0.dtb

Looking explicitly at these, since sc7280 boards were supposed to have
been fixed.

Ah, I see. herobrine-r0 was removed recently, and the crd compatibles
were rejiggered. ...so this makes sense. I'll expect that it will be
resolved when the current Qualcomm tree makes it to mainline.

-Doug
