Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9D482604BC4
	for <lists+devicetree@lfdr.de>; Wed, 19 Oct 2022 17:39:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230284AbiJSPjx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Oct 2022 11:39:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40104 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232763AbiJSPj0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Oct 2022 11:39:26 -0400
Received: from mail-oi1-x232.google.com (mail-oi1-x232.google.com [IPv6:2607:f8b0:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F8021162D5
        for <devicetree@vger.kernel.org>; Wed, 19 Oct 2022 08:35:57 -0700 (PDT)
Received: by mail-oi1-x232.google.com with SMTP id o64so19621088oib.12
        for <devicetree@vger.kernel.org>; Wed, 19 Oct 2022 08:35:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=iQ8VmHN7qtPkB4F77VV8kHrDQD8wfwBZ5ZI5+5i12HE=;
        b=kVIc2PVqYQ5xIrPDdExRLoTO+7RWmYIQwAHxXSM7qcgWFbq4hiUdNXcT70CmfFbsqS
         LxghEXgMZzRKdkFffO6qeCYHy7B+cyLFFR5E3yg4jGAcNxrG6ME0nRe2apalNjiUPywU
         23Y4LmV9c44r98HTHWN6/noE4eye9aah2QELnRZk7hVO0ELO25Y5Hn4m2dEWu2orTquD
         u9LZ8g4NBnf01va9lDJ6KKt/WGubYXNJ4/Vo6MWjkYTvlwUFW4dvT6kteK/NKhyY3VEh
         Jkn2PkFI8bVUipIxFaDUuw3ylnFVnTl5iTo/ZhRNjTPrhmdxI0h1Ub2wzuSvWvZZIacn
         p31A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iQ8VmHN7qtPkB4F77VV8kHrDQD8wfwBZ5ZI5+5i12HE=;
        b=vsSKqVA8+f4EVWNFwo0TQHKGgH0AovivBq1HzzUHB/MRObu27rux4nW5o9RVCju4uH
         PLhdKz/I+wcwUWlCSLkB1udSporDSK6JHuiqp6FhKBtItYu9KEK9ywSCe2cgHQCin17/
         Uo4fHA6/Wjt4rpiCX4C0K+nZapTMOrxf/ea5HiQCe77jYMhOPkMyYfa/B55pZcnx11p1
         2Ctaw49jE1p2RAXu/m0EF3KHfqPnylnc0b2cZXXsp06/8idNlJWXZE/DZtktwDacl2Qa
         NWy2mqyQh7qvsS4wke+gRbjHryIuD9k0781N1GDabc+eEEb89Xe2/gA8gFqLeCoH7ZNw
         jE4w==
X-Gm-Message-State: ACrzQf0D3PM+ibwCYUwzQt7tzZilW1X+x8PmLYF8LFcc0d4MgpmT6EdP
        6f3VSvw64Nogts3gvCtlwkTpyiaqs7wiVx1eEMxbYQ==
X-Google-Smtp-Source: AMsMyM7E+ezbIHFpMfv7yUpG2HtXgaaOjMkGtN4jsGYsd1jdou3iwJj7HDz8WHl1DDw9ex+I4Z6gcSM133eGXW0n4SQ=
X-Received: by 2002:a05:6808:238f:b0:354:ff3e:d964 with SMTP id
 bp15-20020a056808238f00b00354ff3ed964mr14855632oib.18.1666193700152; Wed, 19
 Oct 2022 08:35:00 -0700 (PDT)
MIME-Version: 1.0
References: <20221018145348.4051809-1-amit.pundir@linaro.org> <CAPDyKFoBMB9OMUrcoPCV0of1fj2dimEwPyHGW=ydjJ2M0ubM8Q@mail.gmail.com>
In-Reply-To: <CAPDyKFoBMB9OMUrcoPCV0of1fj2dimEwPyHGW=ydjJ2M0ubM8Q@mail.gmail.com>
From:   Amit Pundir <amit.pundir@linaro.org>
Date:   Wed, 19 Oct 2022 21:04:23 +0530
Message-ID: <CAMi1Hd3LsFYyC3Ywv=uTVB1d07NqBDxwryYBEJz7AqdxYo72wg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: qrb5165-rb5: Disable cpuidle states
To:     Ulf Hansson <ulf.hansson@linaro.org>
Cc:     Sudeep Holla <sudeep.holla@arm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Maulik Shah <quic_mkshah@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        dt <devicetree@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 19 Oct 2022 at 17:28, Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> On Tue, 18 Oct 2022 at 16:53, Amit Pundir <amit.pundir@linaro.org> wrote:
> >
> > Disable cpuidle states for RB5. These cpuidle states
> > made the device highly unstable and it runs into the
> > following crash frequently:
> >
> > [    T1] vreg_l11c_3p3: failed to enable: -ETIMEDOUT
> > [    T1] qcom-rpmh-regulator 18200000.rsc:pm8150l-rpmh-regulators: ldo11: devm_regulator_register() failed, ret=-110
> > [    T1] qcom-rpmh-regulator: probe of 18200000.rsc:pm8150l-rpmh-regulators failed with error -110
> >
> > Fixes: 32bc936d7321 ("arm64: dts: qcom: sm8250: Add cpuidle states")
> > Signed-off-by: Amit Pundir <amit.pundir@linaro.org>
> > ---
> >  arch/arm64/boot/dts/qcom/qrb5165-rb5.dts | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
> > index cc003535a3c5..f936c41bfbea 100644
> > --- a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
> > +++ b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
> > @@ -251,6 +251,14 @@ qca639x: qca639x {
> >
> >  };
> >
> > +&LITTLE_CPU_SLEEP_0 {
> > +       status = "disabled";
> > +};
> > +
> > +&BIG_CPU_SLEEP_0 {
> > +       status = "disabled";
> > +};
> > +
> >  &adsp {
> >         status = "okay";
> >         firmware-name = "qcom/sm8250/adsp.mbn";
> > --
> > 2.25.1
>
> Disabling the CPU idlestates, will revert us back to using only the WFI state.
>
> An option that probably works too is to just drop the idlestate for
> the CPU cluster. Would you mind trying the below and see if that works
> too?

Following change works too for my RB5 setup.
I didn't see any obvious regression in my limited (~10) test runs so far.

Regards,
Amit Pundir

>
> diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi
> b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> index c32227ea40f9..c707a49e8001 100644
> --- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> @@ -700,7 +700,6 @@ CPU_PD7: cpu7 {
>
>                 CLUSTER_PD: cpu-cluster0 {
>                         #power-domain-cells = <0>;
> -                       domain-idle-states = <&CLUSTER_SLEEP_0>;
>                 };
>         };
>
> Kind regards
> Uffe
