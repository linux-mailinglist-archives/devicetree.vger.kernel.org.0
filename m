Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2A0043814F1
	for <lists+devicetree@lfdr.de>; Sat, 15 May 2021 03:30:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234784AbhEOBb0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 May 2021 21:31:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58384 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234783AbhEOBbZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 May 2021 21:31:25 -0400
Received: from mail-vk1-xa2c.google.com (mail-vk1-xa2c.google.com [IPv6:2607:f8b0:4864:20::a2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F3F39C06174A
        for <devicetree@vger.kernel.org>; Fri, 14 May 2021 18:30:12 -0700 (PDT)
Received: by mail-vk1-xa2c.google.com with SMTP id 15so83015vkn.11
        for <devicetree@vger.kernel.org>; Fri, 14 May 2021 18:30:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=xnKdVLmA6JV4gVRXBLAZ9YZgzU3RbAwYHw7sjvnZr2M=;
        b=VwV6MZUCTsR/21K6Nf4JfACfINmxMfGCBHGmn98b0KfWsmCZrSQ2JpyT8Bdp68jt86
         sDNDN7SbuawvPtvhjP9wKtwRygwgJzn0tfMmDDcZ+h4vVw6XJcnXLyVLstDDSixUw5Wg
         a/R/uOdLzy1G4+2g8s+miyc6pGFSjC8j19gPQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=xnKdVLmA6JV4gVRXBLAZ9YZgzU3RbAwYHw7sjvnZr2M=;
        b=NY/MiYrR+l6IHAFOznxaIAXBvkmAyoouTqSQ6M7kOUUZdCCmWB7ezpZdtKzISYm0vz
         hunfflTOuNQFi7zVpE2evzgZukb/lJxjTNNAuxKxuWc00vx0GKh11k5FeRsAWdxVj7Yi
         ij4IRnu+XPrgBSmO/d37dUzSDjz0VpakANiX6Y+5uRT6tJWOgThHPIdMvzssv0M8mzwv
         Ur/dA/m4eVMX6MyfKppPYhL6FZs2jPY7qt6HaSsLtDLMxqwaT8DHELyV+OQkI3Ohurof
         RuOmkVY+QaOCI0Pnyci3dd6Ewjs00Ot0slPZ9sCxPAjqrowwi3i6/dUQQSxEOatU9TX2
         E4UQ==
X-Gm-Message-State: AOAM530n3YzctrNgiOFA7RoBszSqq53RDVQ5kvAAXtDA1S96AvpiRMF+
        su/f6BBltkw+j41VuXxGBOEc+tTJB/WQYC/J9WaHjw==
X-Google-Smtp-Source: ABdhPJx3fj4K/0hK+tGEFHOV0fBGKfWSZTp6om4TbcQ6XfQmzQb1l75qCqJGUbHXGY2nyNG5LbOZQsO3ewg/M0mqnt4=
X-Received: by 2002:a1f:c704:: with SMTP id x4mr2701192vkf.9.1621042210632;
 Fri, 14 May 2021 18:30:10 -0700 (PDT)
MIME-Version: 1.0
References: <20210421052855.1279713-1-drinkcat@chromium.org>
 <c91746ce-88b6-5612-74a5-74600c7761e8@baylibre.com> <CAAEAJfD3i+L4w1NuE5pUkMuH=R3CfBztDn-ZLcYR=onkcZ4Gxg@mail.gmail.com>
 <373d0803-8658-9413-2f51-1e9804c39126@baylibre.com> <ce401ca2-e285-4fcf-0583-c1dae94dba6a@arm.com>
In-Reply-To: <ce401ca2-e285-4fcf-0583-c1dae94dba6a@arm.com>
From:   Nicolas Boichat <drinkcat@chromium.org>
Date:   Sat, 15 May 2021 09:29:59 +0800
Message-ID: <CANMq1KDwVdhw+4UnshoG8Ex5Axyhk1d2WeUxbL=mJTGRsAMJGA@mail.gmail.com>
Subject: Re: [PATCH v13 0/4] drm/panfrost: Add support for mt8183 GPU
To:     Steven Price <steven.price@arm.com>
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
        Rob Herring <robh@kernel.org>,
        Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
        devicetree <devicetree@vger.kernel.org>,
        Tomeu Vizoso <tomeu.vizoso@collabora.com>,
        Fei Shao <fshao@chromium.org>, David Airlie <airlied@linux.ie>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Boris Brezillon <boris.brezillon@collabora.com>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Kristian Kristensen <hoegsberg@chromium.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, May 14, 2021 at 11:27 PM Steven Price <steven.price@arm.com> wrote:
> [snip]
> >>> Seems this version is ready to be applied if we get a review on the DT ?
> >>>
> >>> Mathias ? could you have a look ?
> >>>
> >>
> >> Given Rob has Acked the DT bindings, I think it's OK to apply patches
> >> 1, 3 and 4 via drm-misc, letting Mediatek people sort out the DT changes.
> >>
> >> My two unsolicited cents :-)
>
> You make a convincing point - and if everyone is happy for the DT
> changes to be handled separately I don't see a reason for the other
> patches to be held up.
>
> > Yeah sure, is there a panfrost maintainer in the room ? I can apply them if you ack me.
>
> I seem to be applying most Panfrost changes these days, so I'll save you
> the effort and push 1,3,4 to drm-misc-next.

Thanks Steve!!

>
> Thanks,
>
> Steve
