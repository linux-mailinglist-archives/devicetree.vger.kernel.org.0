Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 34012437E98
	for <lists+devicetree@lfdr.de>; Fri, 22 Oct 2021 21:25:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234077AbhJVT1i (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Oct 2021 15:27:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37120 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234017AbhJVT1i (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Oct 2021 15:27:38 -0400
Received: from mail-il1-x12a.google.com (mail-il1-x12a.google.com [IPv6:2607:f8b0:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70105C061766
        for <devicetree@vger.kernel.org>; Fri, 22 Oct 2021 12:25:20 -0700 (PDT)
Received: by mail-il1-x12a.google.com with SMTP id i6so5357030ila.12
        for <devicetree@vger.kernel.org>; Fri, 22 Oct 2021 12:25:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=IFA4wQlK8CaJ1hsur/1XKvwpvXwy3gkeKIlN9LvzEXo=;
        b=rLomiKzN1fvLTUesFN4FsINXNm+w/LrB2o5/eWt84mtqPWqYwdzh/K2yIhZXhq60v5
         jZq7ZhN8IHFdFn6ymywqjTysXCp6H7KF0WPorpOWZJn/A0QZ9xCJDC2etyOaV9oAomTs
         +QdYrypKZwRsuzxTyhdqlZnFNfAqZ+508z+85OkGoBFUJI4khVGEfHYIEMGDSvm6RYVT
         rY984v4bEqJsQQIvvfBkmOMva/I9A+gkPdxO4Ls/SaajWH1gOnawzN/Kr7SJpv3Ffd3U
         apdsb38aqGg6FUCQH2BondlgVJRZEe7JTJ5KU+r/b2IGuor4mCtZx5Qw35qfNgpbCn2P
         ZrzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=IFA4wQlK8CaJ1hsur/1XKvwpvXwy3gkeKIlN9LvzEXo=;
        b=B/qQY1wwp7SCL8aR0Olq8asrDw150jPbl72MGo8LiqF0BrGg5BQWYDryd9QrR5fCNI
         Ejr4L0n/qvqt5KHAYc975mGx7bKbb+vMdoxGLNpDPz1wdeIDGTkw2V4uApr/HuFFS1X+
         +oVuvErvbBUYYDwiAtcNEhQVmeGLepskYR86GfGKfPnFuWrOUXPAJfgLLnRvHxVW3A4Z
         HOR+1jN6p08j74i45XyVSy3ozhOfKSg92Mv5/U0Ofs8kHZi6+b6V8IsuY7A0D3rlstfK
         G84rvtHJIU3Us1g23PHmp+MyRSlCKHWZqxc6Q8JXAgUyOzvHWVB0x0vvkdVyykgqmiy7
         xIlw==
X-Gm-Message-State: AOAM530V/1VKzduNQoKGA4m5s/vQast9+3ho33PMb0wa1GVDSNUcWE0r
        N4U6HvPflWoVIC9PuZIftwNx3Jc2mi0gEU9izEa69Q==
X-Google-Smtp-Source: ABdhPJwvWnJcpi9p4Iog2ilpcyx5pHCQ1DxE1z9y9o1svoDRBNloCTdriMWufTsRJesTGutghF0pvYQAlf/QVGTOqaE=
X-Received: by 2002:a05:6e02:120f:: with SMTP id a15mr1159054ilq.109.1634930719824;
 Fri, 22 Oct 2021 12:25:19 -0700 (PDT)
MIME-Version: 1.0
References: <20211014135410.4136412-1-dmitry.baryshkov@linaro.org>
 <3af41112-7ccd-5da8-c189-3ed8d22273c0@linaro.org> <CAA8EJprjoEX4BDHOHevQQ=TMwM21xZSHuqYm8yNJ=L6GiovQYA@mail.gmail.com>
In-Reply-To: <CAA8EJprjoEX4BDHOHevQQ=TMwM21xZSHuqYm8yNJ=L6GiovQYA@mail.gmail.com>
From:   Amit Pundir <amit.pundir@linaro.org>
Date:   Sat, 23 Oct 2021 00:54:43 +0530
Message-ID: <CAMi1Hd15Qb=xitFax-0OrL47reZnkpg-=Tvu3w=rKtwBk00JuQ@mail.gmail.com>
Subject: Re: Revert "arm64: dts: qcom: sm8250: remove bus clock from the mdss
 node for sm8250 target"
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <abhinavk@codeaurora.org>,
        Rob Herring <robh+dt@kernel.org>,
        Jonathan Marek <jonathan@marek.ca>,
        Stephen Boyd <sboyd@kernel.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        "open list:DRM DRIVER FOR MSM ADRENO GPU" 
        <linux-arm-msm@vger.kernel.org>,
        "open list:DRM DRIVER FOR MSM ADRENO GPU" 
        <dri-devel@lists.freedesktop.org>,
        freedreno <freedreno@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 15 Oct 2021 at 02:53, Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> On Thu, 14 Oct 2021 at 19:54, Vladimir Zapolskiy
> <vladimir.zapolskiy@linaro.org> wrote:
> >
> > Hi Dmitry,
> >
> > On 10/14/21 4:54 PM, Dmitry Baryshkov wrote:
> > > From: Amit Pundir <amit.pundir@linaro.org>
> > >
> > > This reverts commit 001ce9785c0674d913531345e86222c965fc8bf4.
> > >
> > > This upstream commit broke AOSP (post Android 12 merge) build
> > > on RB5. The device either silently crashes into USB crash mode
> > > after android boot animation or we see a blank blue screen
> > > with following dpu errors in dmesg:
> > >
> > > [  T444] hw recovery is not complete for ctl:3
> > > [  T444] [drm:dpu_encoder_phys_vid_prepare_for_kickoff:539] [dpu error]enc31 intf1 ctl 3 reset failure: -22
> > > [  T444] [drm:dpu_encoder_phys_vid_wait_for_commit_done:513] [dpu error]vblank timeout
> > > [  T444] [drm:dpu_kms_wait_for_commit_done:454] [dpu error]wait for commit done returned -110
> > > [    C7] [drm:dpu_encoder_frame_done_timeout:2127] [dpu error]enc31 frame done timeout
> > > [  T444] [drm:dpu_encoder_phys_vid_wait_for_commit_done:513] [dpu error]vblank timeout
> > > [  T444] [drm:dpu_kms_wait_for_commit_done:454] [dpu error]wait for commit done returned -110
> > >
> > > Signed-off-by: Amit Pundir <amit.pundir@linaro.org>
> >
> > your sob tag is missing.
>
> True. I hope this is fine:
>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>

Hi,

Any update on this? I'd really like to see this or a relevant fix to
land in v5.15, because I can't boot AOSP on RB5 otherwise.

Regards,
Amit Pundir

> >
> > > ---
> > >   arch/arm64/boot/dts/qcom/sm8250.dtsi | 3 ++-
> > >   1 file changed, 2 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> > > index 8c15d9fed08f..d12e4cbfc852 100644
> > > --- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
> > > +++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> > > @@ -2590,9 +2590,10 @@
> > >                       power-domains = <&dispcc MDSS_GDSC>;
> > >
> > >                       clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
> > > +                              <&gcc GCC_DISP_HF_AXI_CLK>,
> > >                                <&gcc GCC_DISP_SF_AXI_CLK>,
> > >                                <&dispcc DISP_CC_MDSS_MDP_CLK>;
> > > -                     clock-names = "iface", "nrt_bus", "core";
> > > +                     clock-names = "iface", "bus", "nrt_bus", "core";
> > >
> > >                       assigned-clocks = <&dispcc DISP_CC_MDSS_MDP_CLK>;
> > >                       assigned-clock-rates = <460000000>;
> > >
> >
> > --
> > Best wishes,
> > Vladimir
>
>
>
> --
> With best wishes
> Dmitry
