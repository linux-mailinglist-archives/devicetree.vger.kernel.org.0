Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CAED54F65D9
	for <lists+devicetree@lfdr.de>; Wed,  6 Apr 2022 18:43:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237935AbiDFQle (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Apr 2022 12:41:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59608 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238013AbiDFQlE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Apr 2022 12:41:04 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E7B0208276
        for <devicetree@vger.kernel.org>; Wed,  6 Apr 2022 08:04:42 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id n6so4810492ejc.13
        for <devicetree@vger.kernel.org>; Wed, 06 Apr 2022 08:04:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=K83QqN2TxY26LIsNqPOFqQj4RdSJx9FOQNvgzvuZmLM=;
        b=S76zFo6lTopI23NWz49rYyKL0VY9HmiQIhm0j9JwBS+kwvGWrYzAqNGpqMRGM5+FqU
         IWTebSGm8alAtk80hu+VEVU+NQP60TesndetmIuOCNZSLjMZQ8x6Ta0oOEHl+dD+wViW
         kOXVv6AgQ0JLzjnYy+scqMkHC8RKbF2+IK3+I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=K83QqN2TxY26LIsNqPOFqQj4RdSJx9FOQNvgzvuZmLM=;
        b=cnreWG8Dpz7ec0Ium83zyU6AoDsO8j3gpoTEshgyCPehSsWV8OasKr4DMTNjRq//0G
         nlkvhzc0t+PbCMpoKzD1fWoJz5LLIEXR/+j9MTpoH7xUribhf2L53EPsazdJvkn6LJm9
         GWNcJD1Os51sgeuuFyUaOKK2eiKEVCYWz9JHXlMLabKBkZ7fBcBKjc7YsoMGOnONWldr
         ux1CX1gFqMjY319eZKvWsLD89/VVisX1BKtf4Y3Cr1P3W9NRKSh1tbdJL3SOmVE07y+X
         qkenUNJu6Yrh8dLFcu/qm0yXUnDAuZJF2j0XlcMiilboHtqPe7k8t/fLgvkMZ/D0vYbo
         yjKQ==
X-Gm-Message-State: AOAM530bhGgUcYGyKpW25Jz19gqIk5dCOVtD0dt6HfqwrW2ObEj5yR1q
        6eixr4VrPb7yWhs+MZT8+uYP1dHwGZ14Oo5Q0aU=
X-Google-Smtp-Source: ABdhPJxgviBXpu+Y7CnxNPpA0Z2HtIrDAyuFXXR3m3S3PDIA9NBLxrPoMztY+WWAZoJXmc3BpbD/wA==
X-Received: by 2002:a17:907:62a1:b0:6da:7952:d4d2 with SMTP id nd33-20020a17090762a100b006da7952d4d2mr8594764ejc.260.1649257480517;
        Wed, 06 Apr 2022 08:04:40 -0700 (PDT)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com. [209.85.221.47])
        by smtp.gmail.com with ESMTPSA id bn3-20020a170906c0c300b006e50416e24bsm5895253ejb.98.2022.04.06.08.04.36
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Apr 2022 08:04:39 -0700 (PDT)
Received: by mail-wr1-f47.google.com with SMTP id j12so3674190wrb.5
        for <devicetree@vger.kernel.org>; Wed, 06 Apr 2022 08:04:36 -0700 (PDT)
X-Received: by 2002:a5d:674d:0:b0:206:163c:f70c with SMTP id
 l13-20020a5d674d000000b00206163cf70cmr6914842wrw.679.1649257476052; Wed, 06
 Apr 2022 08:04:36 -0700 (PDT)
MIME-Version: 1.0
References: <1649229362-31183-1-git-send-email-quic_vnivarth@quicinc.com>
In-Reply-To: <1649229362-31183-1-git-send-email-quic_vnivarth@quicinc.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 6 Apr 2022 08:04:24 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XieM5MHMBBV9d7jrbiN+8RVdo6=_XSNf9L-yqEZUTO_Q@mail.gmail.com>
Message-ID: <CAD=FV=XieM5MHMBBV9d7jrbiN+8RVdo6=_XSNf9L-yqEZUTO_Q@mail.gmail.com>
Subject: Re: [V3 0/3] arch: arm64: dts: qcom: Configure cts sleep pinctrl to bias-bus-hold
To:     Vijaya Krishna Nivarthi <quic_vnivarth@quicinc.com>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        krzysztof.kozlowski+dt@linaro.org,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        quic_msavaliy@quicinc.com
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

On Wed, Apr 6, 2022 at 12:16 AM Vijaya Krishna Nivarthi
<quic_vnivarth@quicinc.com> wrote:
>
> WLAN rail was leaking power during RBSC/sleep even after turning BT off.
> Change sleep pinctrl configuration to handle same.
>
> ---
> v3: apply same change to active state and other sc7280*.dts* as well
> v2: used bias-bus-hold as per review comments
> v1: intial patch used bias-disable for sleep pinctrl in sc7280-idp only
> ---
>
> Vijaya Krishna Nivarthi (3):
>   arch: arm64: dts: qcom: Configure cts sleep pinctrl to bias-bus-hold
>   arch: arm64: dts: qcom: Configure cts sleep pinctrl to bias-bus-hold
>   arch: arm64: dts: qcom: Configure cts sleep pinctrl to bias-bus-hold
>
>  arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r0.dts | 12 ++++++------
>  arch/arm64/boot/dts/qcom/sc7280-idp.dtsi                   | 12 ++++++------
>  arch/arm64/boot/dts/qcom/sc7280-qcard.dtsi                 | 13 ++++++++-----
>  3 files changed, 20 insertions(+), 17 deletions(-)

Probably the subject of all the patches should be modified to talk
about what each patch is applying to. Having 3 identically named
patches is not ideal.

I'll let Bjorn chime in on whether he'd rather adjust the subject
himself or whether he'd rather you re-send. In any case, with the
subject modified then for all 3 patches:

Reviewed-by: Douglas Anderson <dianders@chromium.org>
