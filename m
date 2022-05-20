Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0617452F481
	for <lists+devicetree@lfdr.de>; Fri, 20 May 2022 22:38:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353499AbiETUid (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 May 2022 16:38:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37568 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235788AbiETUid (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 May 2022 16:38:33 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8835D029C
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 13:38:31 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id rs12so5910306ejb.13
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 13:38:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=rbQPTM72ehryL5FYoSB2A2iBAshky0xebXkx4czYmNQ=;
        b=IPxznzUvQHNK+9WYxlWPVLNwNj8TMm7NjtzE+16cNKZ7k1Cf1JV3GKzDx5ZrujI/QS
         pR+FSDdXdcSJ/Xwso2HdPJSioY6htXGkjVUEHNZOzb6syjEJTudTxwgdBS4pCtkJ/1OJ
         9KRXQpOW9LNh2cpV3Uk4IEODtoEFlosdmyXC0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rbQPTM72ehryL5FYoSB2A2iBAshky0xebXkx4czYmNQ=;
        b=o/M4ymBxywMs6I1zAKwCrSMo/zhK7SnsvfN5ieXSXH/5ABdPs2OVTISVQ3RgQVt6UF
         EDBE+PesgTMJKk2EaYC47rqZPEWcLg9KdIW9/TzHDIh8mUrBrqFj58urTMB/tsQo+JZf
         HFtHsJ7hIK4QnbdhQ1FhXvAqiRl4HyxGaYaJjJH45QBsQ9f4v33yoDU+uGXnTn7wRtUA
         KD2AW78FwK5rAL3959vEB5Q1rDwkXV5Gy4HRFwnXwG/RZr0jAETWtGvsAeOMz6CKJQEP
         f9d7qfum1ACNZ5E8tOX9JxzingMzwOVy0FHXN9T1+xFcQK6qA17fXHFkoCP6slQp+Zm1
         ZT1g==
X-Gm-Message-State: AOAM532Nt4Uor/ywknX1W+ztWEeLyFSUnwLDT02/5px5tDnnNdcoADo7
        u37vaXyGdwICgktkXKY7xwghqVwqR0aszoxZ7Io=
X-Google-Smtp-Source: ABdhPJzdc2N8UyEdxDpCczgN3AEVuwwMUaPu3qM5KSmruZ7k+UMGk1SZ/7yQ2U/+tHC4iLHdD9awUg==
X-Received: by 2002:a17:906:d550:b0:6f4:abbd:d033 with SMTP id cr16-20020a170906d55000b006f4abbdd033mr10227284ejc.200.1653079110001;
        Fri, 20 May 2022 13:38:30 -0700 (PDT)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com. [209.85.221.51])
        by smtp.gmail.com with ESMTPSA id s27-20020a170906221b00b006f3ef214e73sm3470996ejs.217.2022.05.20.13.38.28
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 May 2022 13:38:29 -0700 (PDT)
Received: by mail-wr1-f51.google.com with SMTP id h14so12960583wrc.6
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 13:38:28 -0700 (PDT)
X-Received: by 2002:a5d:5009:0:b0:20d:846:f4da with SMTP id
 e9-20020a5d5009000000b0020d0846f4damr9841738wrt.301.1653079108326; Fri, 20
 May 2022 13:38:28 -0700 (PDT)
MIME-Version: 1.0
References: <20220520124834.1.I7c51c6255bb53086a82c5b3f4fafffcc5ccbc4ae@changeid>
 <CAD=FV=X4GBLoTuOcHetAFXWLQKFF0yn=E5yv0ExTg8Mwrw1iUw@mail.gmail.com> <Yof6MeM1Ohthe7Fq@google.com>
In-Reply-To: <Yof6MeM1Ohthe7Fq@google.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 20 May 2022 13:38:15 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VKqnTWDP9vkxhsR_QVj5rXNXNNwjTaQX431J1JQBTSqA@mail.gmail.com>
Message-ID: <CAD=FV=VKqnTWDP9vkxhsR_QVj5rXNXNNwjTaQX431J1JQBTSqA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sc7280: Enable keyboard backlight for villager
To:     Matthias Kaehlcke <mka@chromium.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, May 20, 2022 at 1:29 PM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> On Fri, May 20, 2022 at 12:57:50PM -0700, Doug Anderson wrote:
> > Hi,
> >
> > On Fri, May 20, 2022 at 12:48 PM Matthias Kaehlcke <mka@chromium.org> wrote:
> > >
> > > Villager has a backlit keyboard, enable support for the backlight.
> > >
> > > Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> > > ---
> > >
> > >  arch/arm64/boot/dts/qcom/sc7280-herobrine-villager-r0.dts | 8 ++++++++
> > >  arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi            | 2 +-
> > >  2 files changed, 9 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine-villager-r0.dts b/arch/arm64/boot/dts/qcom/sc7280-herobrine-villager-r0.dts
> > > index d3d6ffad4eff..b6a6a1454883 100644
> > > --- a/arch/arm64/boot/dts/qcom/sc7280-herobrine-villager-r0.dts
> > > +++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine-villager-r0.dts
> > > @@ -58,6 +58,10 @@ &ap_sar_sensor1 {
> > >         status = "okay";
> > >  };
> > >
> > > +&keyboard_backlight {
> > > +       status = "okay";
> > > +};
> >
> > Instead of doing this, can you just get rid of the status = "disabled"
> > in herobrine.dtsi? I don't think there's any benefit to having two
> > levels of "disabled" in the herobrine device tree.
>
> Sure.
>
> I guess the 'disabled' status was put as a micro-optimization to avoid
> probing the 'pwm-leds' driver on boards that don't have any such LEDs. In
> practical terms it shouldn't really make a difference in terms of memory
> or CPU.

Just to be clear, I was suggesting leaving the "disabled" at the
pwm-leds level but removing the one at the "keyboard_backlight" level.
I don't expect us to have any pwm_leds on herobrine devices that
aren't for the keyboard backlight. If/when we do we can always add the
two-levels of disabled back in...

-Doug
