Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D73CA56564
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2019 11:11:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726891AbfFZJLA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jun 2019 05:11:00 -0400
Received: from mail-io1-f67.google.com ([209.85.166.67]:37591 "EHLO
        mail-io1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726131AbfFZJK7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Jun 2019 05:10:59 -0400
Received: by mail-io1-f67.google.com with SMTP id e5so304238iok.4
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2019 02:10:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Sno8Ge+rHMIdDtzIc8dnl34qGNRf0feu0UyAZSnI4mg=;
        b=Bi6GewvMVw3/YibnpaewlUpeDadIoCMTgCZXgDZCC0T1ddx1CCk6oedQAwY+9Dqp2p
         rvjlH/huHtMUx7CvabwZ2TMZDTZdGg64iMT71dioEjyLeu4pq1o86RLLZCuMKmI/HJVA
         l0Aiuwyrdq1BqL5ZFBTMw/zuvSw2SZ3Trs0lK81iDFvQPcKoAKsMW9827XDmLCeCl2Ix
         zCY4eJ2Sq7crCzXcasod7zL9BycVXALQnXX95diymI0ol5tGwMICw7F+udWs9D671qJn
         QCSrL1H19PDQsg8pVd2qT/YRvu6h6ayjy0URcTYRMCgpUEZxHkWZ0hq1f58hVIdCSc7w
         Csrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Sno8Ge+rHMIdDtzIc8dnl34qGNRf0feu0UyAZSnI4mg=;
        b=kEJQUiZufn5W3BHMYmKdASVt1is2TesUv51X392Ua8AljScI+j1fPYXpurnxwW2ldF
         uav80AwPHmNeWQhH95K7C+k02wp1RNxuUy+y4m9DLsKE5Rlro2U52YhUerLxOMAcVdgP
         94z95jUqjuipkwkgQOBiB7gqI5DpUhs9m2FJZ5sOuKtX822SZmyPNDmDdZTSg2dBZa+D
         u5o51dezIjOTNzH/+wsXmdoFffS52i3ayrps9aucoQha2yOaAF87R68YHhToGnvmHZYP
         lUx2cMs1+jxj6FZWLvaeiyHIclQg60tHXSju0n+1EbcN2vwa0el5j1rW8dBTIusuoM4I
         5WDQ==
X-Gm-Message-State: APjAAAV4h+u0kQ9lhBjurYtn0gNvaTup9vzmHR1grb9mi16aciceIbxQ
        UHM2foy6f95/0amPLGwQ28j6Xe3mTWFyaqAe2R5eJA==
X-Google-Smtp-Source: APXvYqyp3VOv+KPURb+KoDDpojB8TjqXw4jTuOzIoV1yCakDUsaxF/3kVvaBFKPGrZ0qD06iylhlFA3tH5NcrgMZ65Y=
X-Received: by 2002:a5e:8518:: with SMTP id i24mr3690057ioj.149.1561540258934;
 Wed, 26 Jun 2019 02:10:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190625164733.11091-1-jorge.ramirez-ortiz@linaro.org>
 <20190625164733.11091-14-jorge.ramirez-ortiz@linaro.org> <CAHYWTt37Q1E_bggbKb8VdcHRj_YYubqaoVHNN7+1kcr8+XMX0g@mail.gmail.com>
In-Reply-To: <CAHYWTt37Q1E_bggbKb8VdcHRj_YYubqaoVHNN7+1kcr8+XMX0g@mail.gmail.com>
From:   Niklas Cassel <niklas.cassel@linaro.org>
Date:   Wed, 26 Jun 2019 11:10:47 +0200
Message-ID: <CAHYWTt2bHqR5aP4-zJ==txGvzuhAa=+q=5Qpag7ucMEEnM1dZg@mail.gmail.com>
Subject: Re: [PATCH v3 13/14] arm64: dts: qcom: qcs404: Add DVFS support
To:     Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
Cc:     Stephen Boyd <sboyd@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        David Brown <david.brown@linaro.org>, jassisinghbrar@gmail.com,
        Mark Rutland <mark.rutland@arm.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Will Deacon <will.deacon@arm.com>, arnd@arndb.de,
        horms+renesas@verge.net.au, heiko@sntech.de,
        Sibi Sankar <sibis@codeaurora.org>,
        enric.balletbo@collabora.com,
        Jagan Teki <jagan@amarulasolutions.com>, olof@lixom.net,
        Vinod Koul <vkoul@kernel.org>,
        Georgi Djakov <georgi.djakov@linaro.org>,
        Amit Kucheria <amit.kucheria@linaro.org>,
        devicetree <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-clk <linux-clk@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        Khasim Syed Mohammed <khasim.mohammed@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Perhaps I should look at the recipient list next time before posting :)

Kind regards,
Niklas

On Wed, 26 Jun 2019 at 11:08, Niklas Cassel <niklas.cassel@linaro.org> wrote:
>
> I actually think that it makes sense to squash this patch with the
> [PATCH v3 10/14] arm64: dts: qcom: qcs404: Add OPP table
> patch.
>
> But that might be a personal preference.
>
> Either way, I think this series in ready for the real mailing list.
>
>
>
>
> On Tue, 25 Jun 2019 at 18:48, Jorge Ramirez-Ortiz
> <jorge.ramirez-ortiz@linaro.org> wrote:
> >
> > Support dynamic voltage and frequency scaling on qcs404.
> >
> > Co-developed-by: Niklas Cassel <niklas.cassel@linaro.org>
> > Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
> > Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
> > ---
> >  arch/arm64/boot/dts/qcom/qcs404.dtsi | 12 ++++++++++++
> >  1 file changed, 12 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/qcs404.dtsi b/arch/arm64/boot/dts/qcom/qcs404.dtsi
> > index 9569686dbc41..4b4ce0b5df76 100644
> > --- a/arch/arm64/boot/dts/qcom/qcs404.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/qcs404.dtsi
> > @@ -34,6 +34,9 @@
> >                         enable-method = "psci";
> >                         cpu-idle-states = <&CPU_SLEEP_0>;
> >                         next-level-cache = <&L2_0>;
> > +                       clocks = <&apcs_glb>;
> > +                       operating-points-v2 = <&cpu_opp_table>;
> > +                       cpu-supply = <&pms405_s3>;
> >                 };
> >
> >                 CPU1: cpu@101 {
> > @@ -43,6 +46,9 @@
> >                         enable-method = "psci";
> >                         cpu-idle-states = <&CPU_SLEEP_0>;
> >                         next-level-cache = <&L2_0>;
> > +                       clocks = <&apcs_glb>;
> > +                       operating-points-v2 = <&cpu_opp_table>;
> > +                       cpu-supply = <&pms405_s3>;
> >                 };
> >
> >                 CPU2: cpu@102 {
> > @@ -52,6 +58,9 @@
> >                         enable-method = "psci";
> >                         cpu-idle-states = <&CPU_SLEEP_0>;
> >                         next-level-cache = <&L2_0>;
> > +                       clocks = <&apcs_glb>;
> > +                       operating-points-v2 = <&cpu_opp_table>;
> > +                       cpu-supply = <&pms405_s3>;
> >                 };
> >
> >                 CPU3: cpu@103 {
> > @@ -61,6 +70,9 @@
> >                         enable-method = "psci";
> >                         cpu-idle-states = <&CPU_SLEEP_0>;
> >                         next-level-cache = <&L2_0>;
> > +                       clocks = <&apcs_glb>;
> > +                       operating-points-v2 = <&cpu_opp_table>;
> > +                       cpu-supply = <&pms405_s3>;
> >                 };
> >
> >                 L2_0: l2-cache {
> > --
> > 2.21.0
> >
