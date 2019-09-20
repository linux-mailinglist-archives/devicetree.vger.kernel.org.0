Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D7699B997B
	for <lists+devicetree@lfdr.de>; Sat, 21 Sep 2019 00:07:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727710AbfITWHi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Sep 2019 18:07:38 -0400
Received: from mail-vs1-f67.google.com ([209.85.217.67]:47024 "EHLO
        mail-vs1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727811AbfITWHi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 Sep 2019 18:07:38 -0400
Received: by mail-vs1-f67.google.com with SMTP id z14so5673130vsz.13
        for <devicetree@vger.kernel.org>; Fri, 20 Sep 2019 15:07:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=03nfbfvsWWjjBwaHeiInD+GImNWbMhv6TdWghMdfSkE=;
        b=Fg0uHGtz9xrUmln9AWbT87mBPHsSYrvhbyp/Z2l6q5JCSTHmZmnE9NH9JbgABUqdaG
         gUjQSZgrNY0gvGOAiTX28wb9Vj6Rd+qUyBxBIQ2L4UWajRAzETrapZfKgVIt8Hf+QitM
         wGvL/Do5izdrq3ar6vEU5LHT87nhE2ihqb9u+Uq3pHX34e51aW7KNC4EOeo31piZB68x
         Y9wasNwm7hMgASdBb+p7pBu0h6BWMY324irB5UQC6fqLt7K6GZqYYQvAnmSJ35AZW6/0
         eR7lupLa5YgTGE75XoBK0N+zZaOjCC15N58CwMSQRmjdbBHrvl9QAY1J4zoC1tN0XTH9
         g/jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=03nfbfvsWWjjBwaHeiInD+GImNWbMhv6TdWghMdfSkE=;
        b=VtObGx4xWNNlErVhe66a4tOkGeww8ZJC5XJnKEthzI2uKEcOV+Z5mIqFxo1EPLukDc
         /QYuM/scO9oNGFleL2yGCqUhuEMOlZRUT+HDu/V5hezCSLi4xjiiJ+lY56OixPu51AQH
         J7m4Vzl5Z1Zw80TcxIs1n55CsAuUY6mnxjKsMtCm05/1Ma4TOunmInxI74whQ7AV3clU
         UaycCSuFpvUgqhK0Ep3zOxi4NMZE4ePXNr8+GE0tFZSv7wo3hvPtrzOs6Qfa3PNcLvo/
         8HsJKPrTgINS9SZ58pPa9yltEICtz007Rl2NMlK92a+OtHwCcYwzSTvlOZ7AYyANZ6K3
         8j2A==
X-Gm-Message-State: APjAAAUe8bWfV/5mew1CJg7l5/FswYFlpEzZWSWNKoO7qfKud4HwZ4mE
        kNmcfROalH1cbqADCtPCpJjtYy4F9g6hkko6pfpCpw==
X-Google-Smtp-Source: APXvYqyqthmZ/2dM7Axc4UDmIh60LcEGo84Gs0A+ZlbPDaKhFus8SJNw2ooezgIRH2f6v083XtEVhrMYLS8fTXPWU4w=
X-Received: by 2002:a67:f058:: with SMTP id q24mr4000012vsm.27.1569017256934;
 Fri, 20 Sep 2019 15:07:36 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1569015835.git.amit.kucheria@linaro.org>
 <f627e66c455f52b5662bef6526d7c72869808401.1569015835.git.amit.kucheria@linaro.org>
 <5d854c82.1c69fb81.66e1f.96ab@mx.google.com>
In-Reply-To: <5d854c82.1c69fb81.66e1f.96ab@mx.google.com>
From:   Amit Kucheria <amit.kucheria@linaro.org>
Date:   Fri, 20 Sep 2019 15:07:25 -0700
Message-ID: <CAHLCerPqEK2sSGGtDj85DH+qCzgtWi4ainuQv8BgQ3-Dgi93BQ@mail.gmail.com>
Subject: Re: [PATCH v4 09/15] arm64: dts: msm8996: thermal: Add interrupt support
To:     Stephen Boyd <swboyd@chromium.org>
Cc:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Eduardo Valentin <edubezval@gmail.com>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        Brian Masney <masneyb@onstation.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Sep 20, 2019 at 3:02 PM Stephen Boyd <swboyd@chromium.org> wrote:
>
> Quoting Amit Kucheria (2019-09-20 14:52:24)
> > Register upper-lower interrupts for each of the two tsens controllers.
> >
> > Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
> > ---
> >  arch/arm64/boot/dts/qcom/msm8996.dtsi | 60 ++++++++++++++-------------
> >  1 file changed, 32 insertions(+), 28 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
> > index 96c0a481f454..bb763b362c16 100644
> > --- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
> > @@ -175,8 +175,8 @@
> >
> >         thermal-zones {
> >                 cpu0-thermal {
> > -                       polling-delay-passive = <250>;
> > -                       polling-delay = <1000>;
> > +                       polling-delay-passive = <0>;
> > +                       polling-delay = <0>;
>
> I thought the plan was to make this unnecessary to change?

IMO that change should be part of a different series to the thermal
core. I've not actually started working on it yet (traveling for the
next 10 days or so) but plan to do it.

Regards,
Amit
