Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C7A9939AD00
	for <lists+devicetree@lfdr.de>; Thu,  3 Jun 2021 23:36:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229927AbhFCVie (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Jun 2021 17:38:34 -0400
Received: from mail-oo1-f54.google.com ([209.85.161.54]:37615 "EHLO
        mail-oo1-f54.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229620AbhFCVid (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Jun 2021 17:38:33 -0400
Received: by mail-oo1-f54.google.com with SMTP id t6-20020a4ae9a60000b0290245a5133898so1748370ood.4
        for <devicetree@vger.kernel.org>; Thu, 03 Jun 2021 14:36:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=fdGca/qkXtFIrcRqfF9Oz+FtnAgDYxa2k4yJTgHSE9Q=;
        b=DOZw7Gr9pDSoeMVNbsz8uTCNISGH2vhGvbGtWQMr0Fp9rnyxMjCI5vGvl2LpscweQo
         wv3w2GJEXjJOZ2fHsri7XyaJ1qifvbALUJFjnIer/nTrQstULiIub4T0uijaZ348mxJx
         d90Of6OCT5YxhVWGDsFyp9qZ7O7fqFtrg/ElE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=fdGca/qkXtFIrcRqfF9Oz+FtnAgDYxa2k4yJTgHSE9Q=;
        b=Y8pVobldbLZQv2eFUf/0eirGU96Y1k7BP4fSdvZuRnzPTR+li7DSRkLwk1MTiG8ORS
         364Ck50e+P7BnknostRiwSubFSX0yz1aThXPtTSuFypz+ZApJN4nuTpALCN19twUn0RB
         oOwparQeAd8Pstz6I0nF2BOtT4/C7qxa8cEdcxoFlGGvcIPmXKTU9oxnTBmjaf2rjra2
         eeBavh6FQuz0ecO0fkLIv4amlBaqxOmr1opmsgEI/6JaiiK3uZZ3TjKvvjvlUJXXvXFs
         yK2+XjqNMcSjIb5F9wOrzXWt9xBKRCyygyoIwIHxRhlN0epBBuVRoKO9VZ/d3oKUF0nt
         tM9w==
X-Gm-Message-State: AOAM532dvfSWQlch8Kz5XlriJXbSlg0gTP45jdvLy0ql8YYr0QbfNvKG
        NFbl1IZ5wLgGdEgKtdKAGu9MiTPmYbJLz7aDXmXC+lVwiak=
X-Google-Smtp-Source: ABdhPJycnioH5Ed8RBIYP+Bjnktnsogk9MbeJEjp7I2J4ue38o/zYJWTWMH0j6NofP7729BFjMbMBTAF7hmWnC2eYzc=
X-Received: by 2002:a4a:85ca:: with SMTP id u10mr1068395ooh.80.1622756135377;
 Thu, 03 Jun 2021 14:35:35 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 3 Jun 2021 21:35:35 +0000
MIME-Version: 1.0
In-Reply-To: <d3ec375b9cbe72030e240a84a6c7e13d@codeaurora.org>
References: <1622736555-15775-1-git-send-email-khsieh@codeaurora.org>
 <YLkI/6ItCz+SbbuJ@yoga> <d3ec375b9cbe72030e240a84a6c7e13d@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Thu, 3 Jun 2021 21:35:34 +0000
Message-ID: <CAE-0n53B6oa2zUm0h28Z-U4uhdMabZPRFV=h-ffyBKLs_uHZ-Q@mail.gmail.com>
Subject: Re: [PATCH v2] arm64/dts/qcom/sc7180: Add Display Port dt node
To:     Bjorn Andersson <bjorn.andersson@linaro.org>, khsieh@codeaurora.org
Cc:     robdclark@gmail.com, sean@poorly.run, vkoul@kernel.org,
        agross@kernel.org, robh+dt@kernel.org, devicetree@vger.kernel.org,
        abhinavk@codeaurora.org, aravindh@codeaurora.org,
        freedreno@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting khsieh@codeaurora.org (2021-06-03 14:28:37)
> On 2021-06-03 09:53, Bjorn Andersson wrote:
> > On Thu 03 Jun 11:09 CDT 2021, Kuogee Hsieh wrote:
> >
> >> Add DP device node on sc7180.
> >>
> >> Changes in v2:
> >> -- replace msm_dp with dp
> >> -- replace dp_opp_table with opp_table
> >>
> >
> > I'm sorry for those suggestions, I don't like either one of them.
> >
> > And for everything but changes to the DRM code the changelog goes below
> > the --- line, so it's not part of the git history.
> >
> >> Signed-off-by: Kuogee Hsieh <khsieh@codeaurora.org>
> >> ---
> >>  arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi |  9 ++++
> >>  arch/arm64/boot/dts/qcom/sc7180.dtsi         | 78
> >> ++++++++++++++++++++++++++++
> >>  2 files changed, 87 insertions(+)
> >>
> >> diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
> >> b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
> >> index 24d293e..40367a2 100644
> >> --- a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
> >> +++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
> >> @@ -786,6 +786,15 @@ hp_i2c: &i2c9 {
> >>      status = "okay";
> >>  };
> >>
> >> +&dp {
> >> +        status = "okay";
> >> +        pinctrl-names = "default";
> >> +        pinctrl-0 = <&dp_hot_plug_det>;
> >> +        data-lanes = <0 1>;
> >
> > Is it a limitation of the EC in Trogdor that you can only do 2 lanes?
>
> yes,
>

It's not an EC limitation. It's a hardware design decision. We have one
type-c PHY on the sc7180 SoC and we have two type-c ports on the board
so we have decided to only use two lanes for DP and two lanes for USB on
the type-c ports so that both type-c ports work all the time.
