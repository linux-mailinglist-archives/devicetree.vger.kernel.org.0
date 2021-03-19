Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C24F8342912
	for <lists+devicetree@lfdr.de>; Sat, 20 Mar 2021 00:12:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229723AbhCSXL3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 Mar 2021 19:11:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55178 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229710AbhCSXK6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 Mar 2021 19:10:58 -0400
Received: from mail-qv1-xf2f.google.com (mail-qv1-xf2f.google.com [IPv6:2607:f8b0:4864:20::f2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4BE24C061760
        for <devicetree@vger.kernel.org>; Fri, 19 Mar 2021 16:10:58 -0700 (PDT)
Received: by mail-qv1-xf2f.google.com with SMTP id x27so5877546qvd.2
        for <devicetree@vger.kernel.org>; Fri, 19 Mar 2021 16:10:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7EuZmmo91nl6huegeyFuO2PiUXV9nzZOyWpFg59NAqE=;
        b=TDSloJVVt/I8eDwWDYUXCksx1aBtsUfY+B1qBO9c6yy6IUkL+X3Vk8u3mQ25bRE0sL
         xftu+bGP8qFIT2FgoOfFfKm4dBELCuFE3xnYFkaZff2We+jAYkqFSF9ysPeZjggzset+
         ocPc11dxbFUhsI9gYwJdlvXRYazxvPEkGDaA0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7EuZmmo91nl6huegeyFuO2PiUXV9nzZOyWpFg59NAqE=;
        b=DNJLkbb5xw0BDShU0ufjcwvHNpw3xFnJ8obT2JuQ4QC+xO8A82pHRuu8wFEsrewmpN
         sTaG/cqiWBwVGAA19NKdR2ThY66ADrdu8KxWKlR2JGSz/YcF0yo+qfIVLki6lhUO/XWD
         fltVN7DmCH1iDhL898DwNZToBaBcsJhyjB/JI5wQp+t5+sIuCH4fFhWb/nrxY1No8TES
         suPumhHJ9sGEKwIGHI1/4uHPvdhkY/69t38OHHMvNb3FP64vfiZZLoomXXPXyuCiZBnC
         6qV5f+wMFce8+4FpXv1TANlalD7QDTRvYoOsfiGZ++FBAuKxc09NhEOhZ+VNKk0Ux1Cl
         2V8Q==
X-Gm-Message-State: AOAM531+fJmxERS4pXzaxm8LEGyND3vHdJfTSUX6SKDjXMyQZ/KDyh2G
        LndDcoP1GnsKoACcSbAmb2MlGCuChhyNSw==
X-Google-Smtp-Source: ABdhPJy5ldP95C4+kGdv2MiB93d98GbSrfX38zqqvPIBo5rhMIWzWJoL1tJRN64VzgXTigccff1a2g==
X-Received: by 2002:ad4:472d:: with SMTP id l13mr11583667qvz.17.1616195457040;
        Fri, 19 Mar 2021 16:10:57 -0700 (PDT)
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com. [209.85.219.176])
        by smtp.gmail.com with ESMTPSA id q125sm5584323qkf.68.2021.03.19.16.10.56
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Mar 2021 16:10:56 -0700 (PDT)
Received: by mail-yb1-f176.google.com with SMTP id 133so7903907ybd.5
        for <devicetree@vger.kernel.org>; Fri, 19 Mar 2021 16:10:56 -0700 (PDT)
X-Received: by 2002:a25:ab54:: with SMTP id u78mr10033101ybi.276.1616195455835;
 Fri, 19 Mar 2021 16:10:55 -0700 (PDT)
MIME-Version: 1.0
References: <1616158446-19290-1-git-send-email-kalyan_t@codeaurora.org>
In-Reply-To: <1616158446-19290-1-git-send-email-kalyan_t@codeaurora.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 19 Mar 2021 16:10:43 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XdBOZYuCVUjhAnEu0sKOmEHaCpA69v=BjQoM9gGQFjTg@mail.gmail.com>
Message-ID: <CAD=FV=XdBOZYuCVUjhAnEu0sKOmEHaCpA69v=BjQoM9gGQFjTg@mail.gmail.com>
Subject: Re: [v1] drm/msm/disp/dpu1: fix display underruns during modeset.
To:     Kalyan Thota <kalyan_t@codeaurora.org>
Cc:     y@qualcomm.com, dri-devel <dri-devel@lists.freedesktop.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        freedreno <freedreno@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        Rob Clark <robdclark@gmail.com>, mkrishn@codeaurora.org,
        Stephen Boyd <swboyd@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Mar 19, 2021 at 5:54 AM Kalyan Thota <kalyan_t@codeaurora.org> wrote:
>
> During crtc disable, display perf structures are reset to 0
> which includes state varibles which are immutable. On crtc
> enable, we use the same structures and they don't refelect
> the actual values
>
> 1) Fix is to avoid updating the state structures during disable.
> 2) Reset the perf structures during atomic check when there is no
> modeset enable.
>
> Signed-off-by: Kalyan Thota <kalyan_t@codeaurora.org>
> ---
>  drivers/gpu/drm/msm/disp/dpu1/dpu_core_perf.c | 1 -
>  drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c      | 1 +
>  2 files changed, 1 insertion(+), 1 deletion(-)

I think Stephen was the one who originally noticed this and reported it, so:

Reported-by: Stephen Boyd <swboyd@chromium.org>

Seems to work for me. I got into the state where it was doing a
modeset at reboot (could see the underflow color for a period of time
when this happened). I added your patch and it looks better.

Tested-by: Douglas Anderson <dianders@chromium.org>
