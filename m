Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6440632EF38
	for <lists+devicetree@lfdr.de>; Fri,  5 Mar 2021 16:43:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230319AbhCEPnL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Mar 2021 10:43:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50182 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229493AbhCEPmv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Mar 2021 10:42:51 -0500
Received: from mail-qv1-xf2c.google.com (mail-qv1-xf2c.google.com [IPv6:2607:f8b0:4864:20::f2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D62F6C061756
        for <devicetree@vger.kernel.org>; Fri,  5 Mar 2021 07:42:50 -0800 (PST)
Received: by mail-qv1-xf2c.google.com with SMTP id n4so1183251qvl.4
        for <devicetree@vger.kernel.org>; Fri, 05 Mar 2021 07:42:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=0yV7w8lFfqbTYmvCeqaDZrkMh+QKf4ua1fYumR1UcKc=;
        b=F6SAI2tnULetz3th26nEFSei84A+5/Gay++NqJcsy0GFDLlWIIsqXy2OuBCr6X8SVj
         h02R5IOAhuvDQDalhmwrws3iQJJy8gPPXxshlmBbcXT2B/ebFBdjA9NbXyyWfw7w0SMA
         ZWTCuEb+r5LYLR8gJj/5R8u3QTTfBfmFq33iw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0yV7w8lFfqbTYmvCeqaDZrkMh+QKf4ua1fYumR1UcKc=;
        b=R8RCJQMhjSZOhEIQsQdrOXpT4F1B25E+MkwPi2REctdF4H9fL/Ocfs6R88PK6DRdbJ
         vxyhMk6cLmKODDFmslxDQrNtgI3lcq+XOwE8qCA3GF+rmyYR76xkxkUdR0bfxH7yVbwZ
         +5ew8ISJRhrcvyJDowi7VAs7g5CJcU+3HxIfBAd/YiDfDlNb93S1mgoyk9JDf1lKFEhA
         U8qToHLzNvM5/EM7bUQYxjQssNo+OKtoag4RXoUZsFMh+3QI2oq3thVziv3CJwF8JmZS
         RYJDGtb6P1oBfAuGOhrKIP77hFTBaztlPDBIF2At1Ke6Wk0/1KT91/+xFK8P96MV6tqt
         tbBg==
X-Gm-Message-State: AOAM531JETqpd6ABDigJZfFJpuYgPSeF/N7QJaxVBDCNEvtF5z3Nxgqn
        AUlIxJ33tj0ps6DI6UAxkmlg01r6zsGa7Q==
X-Google-Smtp-Source: ABdhPJznq4FTG1g7A4ARkodPL16IN/v5DdoX8sIuouVdxSyW/87CTTWA7mzpIXB01IrySd3KEMLrEA==
X-Received: by 2002:ad4:542b:: with SMTP id g11mr9760929qvt.47.1614958969740;
        Fri, 05 Mar 2021 07:42:49 -0800 (PST)
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com. [209.85.219.181])
        by smtp.gmail.com with ESMTPSA id 18sm2069928qkr.90.2021.03.05.07.42.47
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Mar 2021 07:42:48 -0800 (PST)
Received: by mail-yb1-f181.google.com with SMTP id u3so2397133ybk.6
        for <devicetree@vger.kernel.org>; Fri, 05 Mar 2021 07:42:47 -0800 (PST)
X-Received: by 2002:a25:ab54:: with SMTP id u78mr15215866ybi.276.1614958967269;
 Fri, 05 Mar 2021 07:42:47 -0800 (PST)
MIME-Version: 1.0
References: <20210115224420.1635017-1-dianders@chromium.org>
In-Reply-To: <20210115224420.1635017-1-dianders@chromium.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 5 Mar 2021 07:42:35 -0800
X-Gmail-Original-Message-ID: <CAD=FV=Vwgd0FeKThVRHQjne9npRjojAWpkY4O4nXr=_vDcEK9g@mail.gmail.com>
Message-ID: <CAD=FV=Vwgd0FeKThVRHQjne9npRjojAWpkY4O4nXr=_vDcEK9g@mail.gmail.com>
Subject: Re: [PATCH v2 0/5] drm/panel-simple: Patches for N116BCA-EA1
To:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>
Cc:     Rob Clark <robdclark@chromium.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi folks,

On Fri, Jan 15, 2021 at 2:44 PM Douglas Anderson <dianders@chromium.org> wrote:
>
> This series is to get the N116BCA-EA1 panel working. Most of the
> patches are simple, but on hardware I have in front of me the panel
> sometimes doesn't come up. I'm still working with the hardware
> manufacturer to get to the bottom of it, but I've got it working with
> retries. Adding the retries doesn't seem like an insane thing to do
> and makes some of the error handling more robust, so I've gone ahead
> and included those patches here. Hopefully they look OK.
>
> Changes in v2:
> - Set the "unprepared_time" so if we retry we give the proper delay.
> - ("drm/panel-simple: Don't wait longer for HPD...") new for v2.
> - ("drm/panel-simple: Retry if we timeout waiting for HPD") new for v2.
> - ("dt-bindings: dt-bindings: display: simple: Add N116BCA-EA1") new for v2.
> - ("drm/panel-simple: Add N116BCA-EA1") new for v2.
>
> Douglas Anderson (5):
>   drm/panel-simple: Undo enable if HPD never asserts
>   drm/panel-simple: Don't wait longer for HPD than hpd_absent_delay
>   drm/panel-simple: Retry if we timeout waiting for HPD
>   dt-bindings: dt-bindings: display: simple: Add N116BCA-EA1
>   drm/panel-simple: Add N116BCA-EA1
>
>  .../bindings/display/panel/panel-simple.yaml  |  2 +
>  drivers/gpu/drm/panel/panel-simple.c          | 84 +++++++++++++++++--
>  2 files changed, 80 insertions(+), 6 deletions(-)

While this isn't massively urgent, I'm hoping to get some confirmation
that it's still in someone's queue to look at.  A quick "it's still in
my queue" would be much appreciated!  :-)  If I don't hear anything
then I guess next week I'll see if I can find other ways to poke folks
or find a different route to land this series.  Thanks!

-Doug
