Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 904AD421C36
	for <lists+devicetree@lfdr.de>; Tue,  5 Oct 2021 03:51:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230298AbhJEBxh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Oct 2021 21:53:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39356 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230271AbhJEBxh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Oct 2021 21:53:37 -0400
Received: from mail-ot1-x32d.google.com (mail-ot1-x32d.google.com [IPv6:2607:f8b0:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 986BAC061749
        for <devicetree@vger.kernel.org>; Mon,  4 Oct 2021 18:51:47 -0700 (PDT)
Received: by mail-ot1-x32d.google.com with SMTP id l16-20020a9d6a90000000b0053b71f7dc83so23972859otq.7
        for <devicetree@vger.kernel.org>; Mon, 04 Oct 2021 18:51:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=/dkkNpzviYCaFJdQwMp6k08JJ4wijyXvlqLTqGJ1jh0=;
        b=KZCmz7fxQrAK4JnFowRP+/GRUfcb8L4k8Iu9g8CaERdWmvQsS+RiyhmrNv9SvQFEVD
         T6AKEugQqWmsk78/vMnUt2wqQclXISFFYi59AYl7vZ2GtZoJF0OQYJwQVjb2P9mQb/U/
         e3SbW7IIiKTlDvh5hbg3VYgXdxMEdU2XdcDCQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=/dkkNpzviYCaFJdQwMp6k08JJ4wijyXvlqLTqGJ1jh0=;
        b=aOKun4O2ZgAZCx4lQPUIVt2C5wJcMCAdQEs2Kpt/SWvxJC1t479UMGNPodndjsIyoA
         BeE4PwAZg3d7qVPQhWMfURbtxlNRVvqQmjEboSvI3Dwr47tO/mAOeDJBjKTHC3gA279L
         TuwTQcI4ejsVgOW35roilkLrAWeA57Pm7cq9FQZoNy2Ixjn+xlEr2JhS918zJP6oC/S/
         tBGRnFt1iYy0Lsyj/cH1hwdczo9kxOSc/mLkNcssET88xnFUdx8+OXNfEP7Xb20FlPKf
         wvyHWZaLrM7HdYWy/QO4xj8ShbfTH5fc3Sq9yivjtnHSYZkZC+Z6AD+fY7uNipSmrwiI
         NUPQ==
X-Gm-Message-State: AOAM532Q1PZ6+6sEWQYE//XzBMX+ZxuYYnQOkjW4GIeyAx5j1MGnd4FP
        kjy+DFyqhZK/D1yWh7j4ZiNomtZaLsdSNL5qu3hVgA==
X-Google-Smtp-Source: ABdhPJzWLCe5J9N4NEvFccqk7qSekAwNhX8l0RI/XU9tNyqKDe6UT1+tzQun6F9V3idqi29P8qX/SPyM7+msx2mkAW4=
X-Received: by 2002:a9d:6a0f:: with SMTP id g15mr12435757otn.126.1633398707037;
 Mon, 04 Oct 2021 18:51:47 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 4 Oct 2021 21:51:46 -0400
MIME-Version: 1.0
In-Reply-To: <8f344213978f31c04e80b804a931db56@codeaurora.org>
References: <1629282424-4070-1-git-send-email-mkrishn@codeaurora.org>
 <1629282424-4070-2-git-send-email-mkrishn@codeaurora.org> <CAE-0n50b=pX=1MFwGPDvDR=O03tUAkAgyMonGm2+SXBft=16KQ@mail.gmail.com>
 <5adf2ab2c2a162272509d253bd797721@codeaurora.org> <CAE-0n53kQU=8pdcWR0OZap1wDgxxwed0qvfaGruc71YT5Cj1iA@mail.gmail.com>
 <8f344213978f31c04e80b804a931db56@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Mon, 4 Oct 2021 21:51:46 -0400
Message-ID: <CAE-0n53wqdo7NBZn4UMRZDtc3MrF6JdvZpjcfGapJT1s5iV2jQ@mail.gmail.com>
Subject: Re: [PATCH v1 2/4] arm64: dts: qcom: sc7280: add display dt nodes
To:     mkrishn@codeaurora.org
Cc:     devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, kalyan_t@codeaurora.org,
        sbillaka@codeaurora.org, abhinavk@codeaurora.org,
        robdclark@gmail.com, bjorn.andersson@linaro.org,
        khsieh@codeaurora.org, rajeevny@codeaurora.org,
        freedreno@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
        robh+dt@kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting mkrishn@codeaurora.org (2021-09-30 23:39:07)
> On 2021-09-30 23:28, Stephen Boyd wrote:
> > Quoting mkrishn@codeaurora.org (2021-09-30 04:56:59)
> >> On 2021-08-19 01:27, Stephen Boyd wrote:
> >> > Quoting Krishna Manikandan (2021-08-18 03:27:02)
> >> >> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> >> >> b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> >> >> index 53a21d0..fd7ff1c 100644
> >> >> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> >> >> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> >> >> +
> >> >> +                       status = "disabled";
> >> >> +
> >> >> +                       mdp: mdp@ae01000 {
> >> >
> >> > display-controller@ae01000
> >>
> >> Stephen,
> >>     In the current driver code, there is a substring comparison for
> >> "mdp"
> >> in device node name as part of probe sequence. If "mdp" is not present
> >> in the node name, it will
> >>     return an error resulting in probe failure. Can we continue using
> >> mdp
> >> as nodename instead of display controller?
> >>
> >
> > Can we fix the driver to not look for node names and look for
> > compatible
> > strings instead? It took me a minute to find compare_name_mdp() in
> > drivers/gpu/drm/msm/msm_drv.c to understand what you're talking about.
> > Perhaps looking for qcom,mdp5 in there will be sufficient instead of
> > looking at the node name.
>
> Sure Stephen. I will make the necessary changes in msm_drv.c to look for
> compatible string instead of node name.
> Can I include these two changes (changing mdp--> display controller and
> msm_drv.c changes) in a separate series ?
>

Sure. So you'll send the drm driver change now and we'll get the DT
change after that with the more generic node name?
