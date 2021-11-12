Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 29A0F44EB68
	for <lists+devicetree@lfdr.de>; Fri, 12 Nov 2021 17:32:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235397AbhKLQfH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Nov 2021 11:35:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41778 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235421AbhKLQfH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Nov 2021 11:35:07 -0500
Received: from mail-il1-x130.google.com (mail-il1-x130.google.com [IPv6:2607:f8b0:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6498FC061767
        for <devicetree@vger.kernel.org>; Fri, 12 Nov 2021 08:32:16 -0800 (PST)
Received: by mail-il1-x130.google.com with SMTP id h2so9490836ili.11
        for <devicetree@vger.kernel.org>; Fri, 12 Nov 2021 08:32:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=WZQU60Xp18Hdsmtr7VDsvNRYsO9Fr9Pv2XyHmxjj+mM=;
        b=KuCqVetYf798pzMpcifYfYBDXK7mJj8RA51iDj8N5l+Hr6lkTUxdpghhQ5jIk36Mth
         wl4kFkIE3mufICbUYUMyO5l9GhOWg2rrWnFEOtLxzTSdv7cJuUBFXVOo/o8RLBg3Siw8
         LyHz6ZvZjh2sGHFGCifhnNbxYDuwOX6YT1ZVEMevpd7LFwXs1Rmu9k8DS/5n1pBmSMTT
         GjeArjcZePLAIQdrnN+IKo11faF3a5gjiLW7Px3vgI8g53ptQX9AJvBHmsU4ZWDM1zfv
         DQ4Nyq7pXqwd9oFi+UH9P7wsxxQIPhTb4a23Fea4vkvRAKmOI1GxAlJ7R/uy8IamChq4
         Yhsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=WZQU60Xp18Hdsmtr7VDsvNRYsO9Fr9Pv2XyHmxjj+mM=;
        b=0I7TvibVVR+JkhrXo0UOyLY0Djwn/DYLwr/9WEM/ggRc7A/pmXytuIJXT3KfJ/oprh
         KEXsSSjkHp0Eo0Y50sd74otYibHO+niRHhhN/YetP71klOyLVzN3BcKQ/ZofKxzH0Q18
         12Fm0WsKnGOATaD791h3auUc9kCXEfIaRLhoz7kkzX2dHe/nYbX2JmEUg9Rzcgbvkwt2
         r8ILa4JXLJrpV28GLleVE5hbrflYPnfVcG5TgXkvlloE22d8kpYrBM5FaSzSvsCpgkLS
         PYXqF8f9ZSRbqZ9nthFRMUcqqq2uFuEWfpBv0/As87ym6qy2SnZKkKnsNoswS1ZMtcNn
         yp3g==
X-Gm-Message-State: AOAM533XY2DyNcX3LypfYCqrZ1fl5rJ34BgGGq7qDwppQ1uXA4gOrwNG
        /S4aSf/PeH64DwcrGOEDD6SjD0CaQOnEKutVyKp+KA==
X-Google-Smtp-Source: ABdhPJx2vazsN9hiP4Pi5PPRhbKghUbvJI/jrMtOuxA3B6w+bLX6dIBky+qiit4PlBLgRfNrY9wQl1QF0SBSxiEolaQ=
X-Received: by 2002:a05:6e02:144e:: with SMTP id p14mr9934206ilo.180.1636734735453;
 Fri, 12 Nov 2021 08:32:15 -0800 (PST)
MIME-Version: 1.0
References: <20211112084302.2447931-1-yangcong5@huaqin.corp-partner.google.com>
In-Reply-To: <20211112084302.2447931-1-yangcong5@huaqin.corp-partner.google.com>
From:   Doug Anderson <dianders@google.com>
Date:   Fri, 12 Nov 2021 08:32:04 -0800
Message-ID: <CAD=FV=XWdA5kC5VpRPNWzCQDJjmDg5s7bP=sa7yVuqnRcxWf+w@mail.gmail.com>
Subject: Re: [PATCH] drm/bridge: parade-ps8640: Fix additional suspend/resume
 at bootup
To:     yangcong <yangcong5@huaqin.corp-partner.google.com>
Cc:     swboyd@chromium.org, robert.foss@linaro.org,
        narmstrong@baylibre.com, laurent.pinchart@ideasonboard.com,
        jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@linux.ie,
        daniel@ffwll.ch, a.hajda@samsung.com, philipchen@chromium.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Nov 12, 2021 at 12:43 AM yangcong
<yangcong5@huaqin.corp-partner.google.com> wrote:
>
> Through log and waveform, we can see that there will be additional
> suspend/resume when booting. This timing does not meet the ps8640 spec.
> It seems that the delay of 500ms does not satisfied drm_panel_get_modes.
> I increased it to 900ms and it seems that this problem can be solved.
> To be safe, I'd just round up to a full 1000.

Do be clear: I'm still not convinced that the old 500 ms actually
causes any real problems. I think someone is just measuring with a
scope and upset that they see the device power on and then power off
again. In any case, if we can avoid an extra power cycle at boot then
that seems sane to me. Since this is a tiny change, I'll plan to merge
it some time next week unless someone yells.

Reviewed-by: Douglas Anderson <dianders@chromium.org>
