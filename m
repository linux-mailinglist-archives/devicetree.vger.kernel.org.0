Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 600D22C2C19
	for <lists+devicetree@lfdr.de>; Tue, 24 Nov 2020 16:56:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390054AbgKXP4T (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Nov 2020 10:56:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56708 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730760AbgKXP4S (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Nov 2020 10:56:18 -0500
Received: from mail-yb1-xb43.google.com (mail-yb1-xb43.google.com [IPv6:2607:f8b0:4864:20::b43])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 905E1C061A4D
        for <devicetree@vger.kernel.org>; Tue, 24 Nov 2020 07:56:16 -0800 (PST)
Received: by mail-yb1-xb43.google.com with SMTP id v92so19708227ybi.4
        for <devicetree@vger.kernel.org>; Tue, 24 Nov 2020 07:56:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=S2P83nucK526s4MeAO3ef03SmJgQO9NwAX+ho/0bpag=;
        b=LEiwANAT5RKxUwb530+GU3ngUHfpY4CcH/7rZbALhW6cVviuWshxGFiHTP+cl0CdRW
         Pls7iBNclidkQ5F04YYBuCVqnF9fohJH7zAu0kaOtMBIJaGPq3uPW6BUzQKgEOQoenUu
         AbN7w68UNr6flX4vz+agTyomqgPJYU0EkrBkNjxOBnJ0oL2AnZ+ZnidxKLBmC1ranT4L
         ooj3sv+Eh3pe8uy+14LYseKtBe+c91Kt1w+ZFoP8xebYef9yzUqJTcLf0qWZWX9gF6qt
         rqKFYKccZtfNV818+JRRz/40qHqcMaDBfoET3sqoC2YeKIomy8e6vrAJ49mBQbNCS16V
         XoSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=S2P83nucK526s4MeAO3ef03SmJgQO9NwAX+ho/0bpag=;
        b=ftjAQEPuiv+kOQEr/GNm5w4FA5WgXbL9Hj5mfXrensQB0KW+7WbgrBN+E0qRqSeI1T
         sLYLDC/34kr/STNLzeTZPE9D6GIuReTbJpZLWS+BHlyd3qhidMbyPG2xNiggCYPetz6T
         9ooe6Y/OEdhmt4mKp3i8tYNMeMPAN9xPbOcWeonDReLAh+vqjwcRNj4wZCZkBbCMFnbT
         hiYMwYUkBpCKIK1DUDlegvyybU1EroRAuERUP0d5pp3+FaLl+uToDzNdRPOkxuWrVlvQ
         Y6Y++NHkcjFhJn32AjjN7KMe0uu9Lr4tYD6yw+O+5pYL3/nbSrARUOwnJWULI53hk5CS
         6Rpg==
X-Gm-Message-State: AOAM533iD9hdJ2dvmhe9c1qD4h2fp1pB6rJxNAxniV3H0lvcxtLaz0Er
        Vd+cB0f8Z06JqM3BmwReh8+tZcZ7vOdFpn5eOnI59g==
X-Google-Smtp-Source: ABdhPJw0wHy+GWOIUwTLlmESRTmLRZ/Jnp1OSuSOAtoxUCEZYv5ocbmTHY84rAlt1NUxwHAItTPdwVgoCeM1V0Ar0sY=
X-Received: by 2002:a25:7481:: with SMTP id p123mr6036490ybc.167.1606233375845;
 Tue, 24 Nov 2020 07:56:15 -0800 (PST)
MIME-Version: 1.0
References: <5b07a7be8d136392dc7f93933a7ee68e@codeaurora.org>
In-Reply-To: <5b07a7be8d136392dc7f93933a7ee68e@codeaurora.org>
From:   Amit Pundir <amit.pundir@linaro.org>
Date:   Tue, 24 Nov 2020 21:25:40 +0530
Message-ID: <CAMi1Hd2vY0OaD=_3E_JBTCPkLGHq9CFOrOQ=OM9eVg=dJ6hbZg@mail.gmail.com>
Subject: Re: [Freedreno] [PATCH 3/3] drm/msm/dpu: add support for clk and bw
 scaling for display
To:     Kalyan Thota <kalyan_t@codeaurora.org>
Cc:     Rob Clark <robdclark@gmail.com>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Krishna Manikandan <mkrishn@codeaurora.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        Raviteja Tamatam <travitej@codeaurora.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        Douglas Anderson <dianders@chromium.org>,
        nganji@codeaurora.org, Sean Paul <seanpaul@chromium.org>,
        John Stultz <john.stultz@linaro.org>,
        "Kristian H. Kristensen" <hoegsberg@chromium.org>,
        freedreno <freedreno@lists.freedesktop.org>,
        Jeykumar Sankaran <jsanka@codeaurora.org>,
        Georgi Djakov <georgi.djakov@linaro.org>,
        abhinavk@codeaurora.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Kalyan,

On Tue, 24 Nov 2020 at 18:27, <kalyan_t@codeaurora.org> wrote:
>
> On 2020-11-08 23:25, Amit Pundir wrote:
> > On Tue, 4 Aug 2020 at 21:09, Rob Clark <robdclark@gmail.com> wrote:
> >>
> >> On Thu, Jul 16, 2020 at 4:36 AM Kalyan Thota <kalyan_t@codeaurora.org>
> >> wrote:
> >> >
> >> > This change adds support to scale src clk and bandwidth as
> >> > per composition requirements.
> >> >
> >> > Interconnect registration for bw has been moved to mdp
> >> > device node from mdss to facilitate the scaling.
> >> >
> >> > Changes in v1:
> >> >  - Address armv7 compilation issues with the patch (Rob)
> >> >
> >> > Signed-off-by: Kalyan Thota <kalyan_t@codeaurora.org>
> >>
> >> Reviewed-by: Rob Clark <robdclark@chromium.org>
> >>
> >
> > Hi Kalyan, Rob,
> >
> > This patch broke the display on the PocoF1 phone
> > (sdm845-xiaomi-beryllium.dts) running AOSP.
> > I can boot to UI but the display is frozen soon after that and
> > dmesg is full of following errors:
> >
> > [drm:dpu_core_perf_crtc_update:397] [dpu error]crtc-65: failed to
> > update bus bw vote
> > [drm:dpu_core_perf_crtc_check:203] [dpu error]exceeds bandwidth:
> > 7649746kb > 6800000kb
> > [drm:dpu_crtc_atomic_check:969] [dpu error]crtc65 failed performance
> > check -7
> > [drm:dpu_core_perf_crtc_check:203] [dpu error]exceeds bandwidth:
> > 7649746kb > 6800000kb
> > [drm:dpu_crtc_atomic_check:969] [dpu error]crtc65 failed performance
> > check -7
> > [drm:dpu_core_perf_crtc_check:203] [dpu error]exceeds bandwidth:
> > 7649746kb > 6800000kb
> > [drm:dpu_crtc_atomic_check:969] [dpu error]crtc65 failed performance
> > check -7
> >
> > Here is the full dmesg https://pastebin.ubuntu.com/p/PcSdNgMnYw/.
> > Georgi pointed out following patch but it didn't help,
> > https://lore.kernel.org/dri-devel/20201027102304.945424-1-dmitry.baryshkov@linaro.org/
> > Am I missing any other followup fix?
> >
> > Regards,
> > Amit Pundir
> > __
>
> Hi Amit,
>
> Apologies for the delay.

No worries at all.

>
> I have gone through the logs and referred to the below panel file for
> the timings.
> https://github.com/Matheus-Garbelini/Kernel-Sphinx-Pocophone-F1/blob/master/arch/arm64/boot/dts/qcom/dsi-panel-tianma-fhd-nt36672a-video.dtsi
>
> if the above is correct file, then below could be the possible root
> cause.
>
> The panel back porch and pw is less and it is causing the prefill bw
> requirement to shoot up per layer as currently we are not considering
> front porch in the calculation. can you please try the attached patch in
> the email as a solution and provide me the feedback, i'll post it as a
> formal change.

The attached patch worked for me. Thanks a lot for looking closely
into this issue.

Regards,
Amit Pundir

>
> Thanks,
> Kalyan
>
> _____________________________________________
> > Freedreno mailing list
> > Freedreno@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/freedreno
