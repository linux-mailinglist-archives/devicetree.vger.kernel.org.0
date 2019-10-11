Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AB8FBD3FFB
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2019 14:54:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728034AbfJKMy1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Oct 2019 08:54:27 -0400
Received: from mail-ed1-f67.google.com ([209.85.208.67]:36526 "EHLO
        mail-ed1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728033AbfJKMy0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Oct 2019 08:54:26 -0400
Received: by mail-ed1-f67.google.com with SMTP id h2so8594298edn.3
        for <devicetree@vger.kernel.org>; Fri, 11 Oct 2019 05:54:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=VB5PXtky0g8ZyMip1yIij1zZJANnrDg5gXGmPu6B4XQ=;
        b=muRCUkwo1/2MrQzLrtRl0Hlf8VJCnDG9vA6jfcTiMNpv+71sO66/XfcS9rCvk0RxJN
         GaIL3Avc5HkSH/g0qJEUHGZGyCrkmfLfXb4XefICdXsdqrfZ0Hci5S6IQ01Nm9UzOyMk
         WQuPZfPVENWSun0GXjvbUuyPdF+yRyA2rJu2LcquXpThyPfS49gSYJoeMo7XrptQZ5om
         yIbEHS+d43zfauaZXzxNtu+ZiH2Vyn5fmHoVwZjqNxzl3lyyQLpIHjkKxl8qDg26qG6S
         31hpoR2Ukyuts+0cFj2yAmoieYqDvzvoMQvrfimSYhY0E4bqDAJnsJ5B0i6tcXE9DfCF
         ks5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=VB5PXtky0g8ZyMip1yIij1zZJANnrDg5gXGmPu6B4XQ=;
        b=oL/9inx8wwntHRZor+tllvnj6LqxRGS3GHVUj73rnR5Xs/f2wo58zpXh6yXvmlnLrO
         RIk/28txcPo7SkvlycgBav6kfUnGVAjOdyzmSqYTlrWvZooxd8nQAFebeYS/4P9930j3
         nJxtwmYmL/gGBseS1clqjiBSL61SslXbU7+FBNtkPB1Ltmi0KCWz6Tg1//n0tQUQGhb5
         QJxE1XCTsJ5qiKHHe8k3WlutMyDHgqzWfTWNRUUlT2irXlU7OMJz/h5bLSBjU21pjFeZ
         GOBN+E/+c0I2DK3uFezVChsLEqtbdDLeKzyYlUP1DVLQbHaSeCokGrMCXyLJ3AZoT66y
         cvIA==
X-Gm-Message-State: APjAAAU9LPMGuuREEvwvwtFN5MH/JJM6BfjGTlQ8Ivde9dn2/xyV6nTq
        Fwq15GTR3H7OK2gWDPIIDQHlgeknHkZZqJh5j1AKBg==
X-Google-Smtp-Source: APXvYqx/nJBk+Zxun6XQLRloac4RpzOQd//wxFc7fKDaL8kDgZn+RMal2maskvxPhw+k9dU6QT3ByfvsqfYuAKpCDlg=
X-Received: by 2002:a17:906:519:: with SMTP id j25mr13561662eja.65.1570798464353;
 Fri, 11 Oct 2019 05:54:24 -0700 (PDT)
MIME-Version: 1.0
References: <1544634806-1037-1-git-send-email-loic.poulain@linaro.org>
 <8c92dc30-cfbe-00e2-ae70-243455549ecd@codeaurora.org> <CAMZdPi8-9d11FXKJinpJkJyhi8fcysbYVDjG8aDwbY3s=mLarw@mail.gmail.com>
 <aea60b4c-f651-5e5a-c363-f7da9a8ed838@codeaurora.org> <CAD=FV=WeS5h6SEe01ey8zEOs=1DqO5-31iZWazARtrp4xM3wkA@mail.gmail.com>
In-Reply-To: <CAD=FV=WeS5h6SEe01ey8zEOs=1DqO5-31iZWazARtrp4xM3wkA@mail.gmail.com>
From:   Loic Poulain <loic.poulain@linaro.org>
Date:   Fri, 11 Oct 2019 14:55:48 +0200
Message-ID: <CAMZdPi8VpY82JWT1pstsgPV=P3ZuXnX7P=oTdTVJGdYr+DzBKA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: apq8096-db820c: Increase load on l21 for SDCARD
To:     Doug Anderson <dianders@chromium.org>,
        Andy Gross <andy.gross@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     jhugo@codeaurora.org, David Brown <david.brown@linaro.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        devicetree <devicetree@vger.kernel.org>,
        Paolo Pisati <p.pisati@gmail.com>,
        Brian Masney <masneyb@onstation.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Andy, Rob,

Could any of you take this patch?

On Thu, 13 Dec 2018 at 20:14, Doug Anderson <dianders@chromium.org> wrote:
>
> Hi,
>
> On Thu, Dec 13, 2018 at 6:46 AM Jeffrey Hugo <jhugo@codeaurora.org> wrote:
> >
> > On 12/13/2018 12:55 AM, Loic Poulain wrote:
> > > Hi Jeffrey,
> > >
> > >
> > > On Wed, 12 Dec 2018 at 18:23, Jeffrey Hugo <jhugo@codeaurora.org
> > > <mailto:jhugo@codeaurora.org>> wrote:
> > >
> > >     On 12/12/2018 10:13 AM, Loic Poulain wrote:
> > >      > In the same way as for msm8974-hammerhead, l21 load, used for SDCARD
> > >      > VMMC, needs to be increased in order to prevent any voltage drop
> > >     issues
> > >      > (due to limited current) happening with some SDCARDS or during
> > >     specific
> > >      > operations (e.g. write).
> > >      >
> > >      > Fixes: 660a9763c6a9 (arm64: dts: qcom: db820c: Add pm8994
> > >     regulator node)
> > >      > Signed-off-by: Loic Poulain <loic.poulain@linaro.org
> > >     <mailto:loic.poulain@linaro.org>>
> > >      > ---
> > >      >   arch/arm64/boot/dts/qcom/apq8096-db820c.dtsi | 2 ++
> > >      >   1 file changed, 2 insertions(+)
> > >      >
> > >      > diff --git a/arch/arm64/boot/dts/qcom/apq8096-db820c.dtsi
> > >     b/arch/arm64/boot/dts/qcom/apq8096-db820c.dtsi
> > >      > index 104cad9..c15e2c0 100644
> > >      > --- a/arch/arm64/boot/dts/qcom/apq8096-db820c.dtsi
> > >      > +++ b/arch/arm64/boot/dts/qcom/apq8096-db820c.dtsi
> > >      > @@ -634,6 +634,8 @@
> > >      >                               l21 {
> > >      >                                       regulator-min-microvolt =
> > >     <2950000>;
> > >      >                                       regulator-max-microvolt =
> > >     <2950000>;
> > >      > +                                     regulator-allow-set-load;
> > >      > +                                     regulator-system-load =
> > >     <200000>;
> > >      >                               };
> > >      >                               l22 {
> > >      >                                       regulator-min-microvolt =
> > >     <3300000>;
> > >      >
> > >
> > >     I'm curious, why not update sdhci-msm to set the load on the regulator?
> > >
> > >
> > > Yes you're right, and I saw that there is ongoing work:
> > > https://patchwork.kernel.org/patch/10630731/
> > >
> > > Howerver I thought this change would be a quicker fix and easier to
> > > backport in stable trees.
> > > I assume all the device-tree vmmc loads will be removed at some point
> > > when driven from sdhci.
> > >
> >
> > I hadn't seen that.  Ok, seems good to me.
>
> NOTE: I'm personally not convinced that adding the "set_load" calls
> into the SDHCI driver actually makes any sense.  I believe it adds
> complexity for no benefit.  The only time you ever need to should ever
> be fiddling with "set_load" calls is if the rail you're controlling
> has some hope of being able to run at a lower power mode.  If there's
> no hope of it being at a lower power mode then the constraints on the
> rail should just force it to high power mode and be done with it.  The
> patch here (using regulator-system-load) is one way to force it to a
> high power mode and seems fine, but there are other ways.  See a
> previous discussion [1].
>
> NOTE: IIRC the "ongoing work" patch you pointed at always sets the
> load to a fixed level to turn it to "high power mode" when the
> regulator is turned on and undoes that set_load when the regulator is
> turned off.  That's no longer needed as of commit 5451781dadf8
> ("regulator: core: Only count load for enabled consumers").  If
> someone comes up with a case where it's useful to keep the SD card
> rail turned on but in "low power mode" _then_ we should actually
> consider adding set_load to the SD card driver.
>
> [1] https://lkml.kernel.org/r/CAD=FV=V4WFYoKLQ72pico4HCGgLDTae7xougivv6VWOSoPhLpg@mail.gmail.com
>
> -Doug
