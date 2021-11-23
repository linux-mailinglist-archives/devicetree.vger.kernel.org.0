Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7394A45A256
	for <lists+devicetree@lfdr.de>; Tue, 23 Nov 2021 13:17:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234953AbhKWMUc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Nov 2021 07:20:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60374 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229939AbhKWMUb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Nov 2021 07:20:31 -0500
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com [IPv6:2607:f8b0:4864:20::102a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA97EC061714
        for <devicetree@vger.kernel.org>; Tue, 23 Nov 2021 04:17:23 -0800 (PST)
Received: by mail-pj1-x102a.google.com with SMTP id gx15-20020a17090b124f00b001a695f3734aso2771519pjb.0
        for <devicetree@vger.kernel.org>; Tue, 23 Nov 2021 04:17:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=mkEq4BmUEoVljcEckgSBMpnauvpC1UPUMHZm4B1fp+I=;
        b=VcGYHHbDRnrUAfaRRo4xGBGFhB4Jot3nXPuT9mY1IOGqyooi3Wcys0ovFy7Bzu4Qp9
         cYOH+EvjG00zSGBgIH/8Z/kS9vhIXf7KXvoL2KoDZJ8WjF0si+ZFXU+djPWMJSNjkqi+
         OxiIV13I6hfCfNPRT39/KrbxiRS/hykVkcTrDrfxRZ8yYd8THK6qRTT8fizqep+XJazk
         Qv5K9NG6G+FDo1XgIa56/uyYRUCOvOJksbeNYMtnguwFwlezGqQwMpvwLFEhfivF0Cnn
         LvVv5JBaBHp8TmHLb1C3BkgmIYptvOgtwZrC1cZSIBdvXzrNDW0+jLB/TcIbhkdVMeR7
         rEmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=mkEq4BmUEoVljcEckgSBMpnauvpC1UPUMHZm4B1fp+I=;
        b=gsQYi0DVj1p0Gacy1gpQQsVQR5qMgv/7E3JV4Knf7izefK/Bn6wXSh20t6rl9W5/0F
         l5dfWn76N+sHrCLzKsfhlaJmxvB6Us7OJVdtWYAfK70+WqPsNez1jjoz5w8qT8u8EFO9
         30fuHirFafXcdUahky1iIzGGNokLfL9mKlTxGs5T9wexWzqoCRrqbwhpRPLvI1keJ4eb
         BuSQ77loOOMIx11pRuuqBIKHszFja0GU3fFBY9uJ1Ybj/+T6qk6ITc1TC32ImbO2dYzI
         IBpEW4GsxM4/p98Tc0CGpRU/Cr17jsQ+fgxJcpil7q4AEP9xQreqMtAAw5NIIIByAdCj
         ZL/A==
X-Gm-Message-State: AOAM5333tBWj98K72BweyAFe0mloKijifG6GfyR6gJdWieGaDKKjSF5t
        y2IO8J4gVyWHpfb/WiwfwAU5opiM3qHTFBMD0sIhPw==
X-Google-Smtp-Source: ABdhPJyIfpk0+b2S4AFQbfbs8J2OvaMrtsZs+urGdBeIzgn6P66p2hhrcO2Z6+mIMMcpBsNQdZSqHDlNIky/ZACRHgg=
X-Received: by 2002:a17:90b:390a:: with SMTP id ob10mr2371927pjb.216.1637669843320;
 Tue, 23 Nov 2021 04:17:23 -0800 (PST)
MIME-Version: 1.0
References: <20210921071807.30978-1-narmstrong@baylibre.com>
 <20210921071807.30978-2-narmstrong@baylibre.com> <YV1UdSVOrZ3B9pq/@atomide.com>
In-Reply-To: <YV1UdSVOrZ3B9pq/@atomide.com>
From:   Yongqin Liu <yongqin.liu@linaro.org>
Date:   Tue, 23 Nov 2021 20:17:10 +0800
Message-ID: <CAMSo37UN78k=WE0CwRyNNV3P9kau+JzVZ7mHOMMvh5Bn=+=jAQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/1] ARM: dts: dra7: add entry for bb2d module
To:     Tony Lindgren <tony@atomide.com>
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        linux-omap@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Gowtham Tammana <g-tammana@ti.com>,
        Jyri Sarha <jsarha@ti.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi, Neil, Tony

# sorry for the confusion if you have received the mail which I sent
before, which is not in plain text mode.

We have one out of tree change to enable the SGX544 gpu for the
beagleboard-X15 Android build,
    https://android-review.linaro.org/c/kernel/common/+/20521/11/arch/arm/boot/dts/dra7.dtsi

and that seems to conflict with this BB2D enabling change,
Could you please help give some suggestions on how we should update our patch
to make it work with BB2D, without the revert of this change?

On Wed, 6 Oct 2021 at 15:47, Tony Lindgren <tony@atomide.com> wrote:
>
> * Neil Armstrong <narmstrong@baylibre.com> [210921 10:18]:
> > From: Gowtham Tammana <g-tammana@ti.com>
> >
> > BB2D is a Vivante GC 2D Accelerator.
> > This adds the node to the dts file within a target module node.
> > Crossbar index number is used for interrupt mapping.
>
> Thanks applying into omap-for-v5.16/dt.
>
> Tony

-- 
Best Regards,
Yongqin Liu
---------------------------------------------------------------
#mailing list
linaro-android@lists.linaro.org
http://lists.linaro.org/mailman/listinfo/linaro-android
