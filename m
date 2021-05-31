Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 77083396765
	for <lists+devicetree@lfdr.de>; Mon, 31 May 2021 19:48:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232683AbhEaRtl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 May 2021 13:49:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58726 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232543AbhEaRtZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 May 2021 13:49:25 -0400
Received: from mail-qv1-xf34.google.com (mail-qv1-xf34.google.com [IPv6:2607:f8b0:4864:20::f34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E781C061373
        for <devicetree@vger.kernel.org>; Mon, 31 May 2021 10:29:08 -0700 (PDT)
Received: by mail-qv1-xf34.google.com with SMTP id ee9so5836416qvb.8
        for <devicetree@vger.kernel.org>; Mon, 31 May 2021 10:29:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=tlJYeynpem95GlivsS9mo23qyjeyOx4+nRXtzT2rN2Y=;
        b=s4wv2tTLDH82DV92z8R2Bl5VwluiOFIRuiYrCkvxLA5NZbIu6SzQp8EzJPnhAVBcW8
         74stT22ivUiSh1SEOB6XAQKYrQGdzXAqXZ3w73PRMb0D6mSb0BsCI0E0xr1c8KSdQZdg
         qpRfoJjsHc8vmpHrYX4q+e9G/Bx5pUBme2uvW41asTo04qmHGlm1hHxC8Maqkds/r3C0
         xdOGL0dh6BWyoBtiYWjMACnbY2ndmUIERFspcrsfWhznkukwAJZaqn0BYKeGqpuDy9rG
         cdU/1i5wSKeT3ogiMo2M3Jmf3oeq4vcn9cJzfifEPtiKq7WLgqxBdK8EC8RQgQEyLgv6
         8qlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=tlJYeynpem95GlivsS9mo23qyjeyOx4+nRXtzT2rN2Y=;
        b=r6ehLNxWvPLEvHlIm2sLHaFHXM982aUqJdo8Y1bbBkzJft2nWi5SFjvFja68hgTyDD
         rdHEDL4d0evCWhC40qrSY2tgy5pepJ9LBBFawbqgHqLW5O6iFJ1NqnS3GqFrqrDGLgXA
         C5E4IXE2l9xLCqVRb8iJZ2CDZzVY0N9zSwbLMy2Gw0NyYdd8HthUBdMVYIvy/rbJJWCa
         b6BS+J6m6Rcd1qUKzcM1+pEhw8smQlmyAc4R2Jb4JvTWg/vUCG9dYy9mXig2BBIO+MdD
         YVFGI8NLFMVjbX0L5QmO8p7VsC+3QsvMxCKofYmKeEQDPncI/Oeo0cZ+rkbWm8Ttv/3A
         9SXg==
X-Gm-Message-State: AOAM533GPvHAesSA4C5QvPuVtx1jr540GyKKgnh6WREIBdlyVdh57wBD
        WnI06qTtv9t57Y4RysqgppmOpL3i+y4WKgPJNGgbQA==
X-Google-Smtp-Source: ABdhPJww25osANxF+wuj9r9EKSJM610gXxVGDaByN1ywimNNxznUIv9NYrcRVbPYupEHXG79B8VOcPxJeDHndpzElyU=
X-Received: by 2002:ad4:450f:: with SMTP id k15mr18267932qvu.4.1622482147698;
 Mon, 31 May 2021 10:29:07 -0700 (PDT)
MIME-Version: 1.0
References: <20210407150157.801210-1-dmitry.baryshkov@linaro.org>
 <20210407150157.801210-5-dmitry.baryshkov@linaro.org> <YLT5gGKP3lUkpmG8@builder.lan>
In-Reply-To: <YLT5gGKP3lUkpmG8@builder.lan>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Mon, 31 May 2021 20:28:56 +0300
Message-ID: <CAA8EJpqeaLdqT6OpGN7hceL09nLVa9AaUSOu46_g-Cyq6g_RkA@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] arm64: dts: sm8250: move bus clock to mdp node for
 sm8250 target
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Andy Gross <agross@kernel.org>, Rob Clark <robdclark@gmail.com>,
        Sean Paul <sean@poorly.run>, Rob Herring <robh+dt@kernel.org>,
        Jonathan Marek <jonathan@marek.ca>,
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

On Mon, 31 May 2021 at 17:58, Bjorn Andersson
<bjorn.andersson@linaro.org> wrote:
>
> On Wed 07 Apr 10:01 CDT 2021, Dmitry Baryshkov wrote:
>
> > Move the bus clock to mdp device node,in order to facilitate bus band
> > width scaling on sm8250 target.
> >
> > The parent device MDSS will not vote for bus bw, instead the vote will
> > be triggered by mdp device node. Since a minimum vote is required to
> > turn on bus clock, move the clock node to mdp device from where the
> > votes are requested.
> >
>
> This commit message makes sense for the other commit, where you move the
> "bus" into the mdp. Do you mind me changing this to:
>
> The bus clock is voted by the DPU, so remove it from the MDSS node.

I don't mind, please update the commit message as you see fit.

>
> Regards,
> Bjorn
>
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >  arch/arm64/boot/dts/qcom/sm8250.dtsi | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> > index 394973e778f7..60fe2eaf06c5 100644
> > --- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> > @@ -2294,10 +2294,9 @@ mdss: mdss@ae00000 {
> >                       power-domains = <&dispcc MDSS_GDSC>;
> >
> >                       clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
> > -                              <&gcc GCC_DISP_HF_AXI_CLK>,
> >                                <&gcc GCC_DISP_SF_AXI_CLK>,
> >                                <&dispcc DISP_CC_MDSS_MDP_CLK>;
> > -                     clock-names = "iface", "bus", "nrt_bus", "core";
> > +                     clock-names = "iface", "nrt_bus", "core";
> >
> >                       assigned-clocks = <&dispcc DISP_CC_MDSS_MDP_CLK>;
> >                       assigned-clock-rates = <460000000>;
> > --
> > 2.30.2
> >



-- 
With best wishes
Dmitry
