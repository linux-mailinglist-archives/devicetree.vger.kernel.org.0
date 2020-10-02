Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BCE09281D09
	for <lists+devicetree@lfdr.de>; Fri,  2 Oct 2020 22:42:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725562AbgJBUmP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Oct 2020 16:42:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56066 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725283AbgJBUmP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Oct 2020 16:42:15 -0400
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com [IPv6:2607:f8b0:4864:20::e44])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D0D3C0613D0
        for <devicetree@vger.kernel.org>; Fri,  2 Oct 2020 13:42:15 -0700 (PDT)
Received: by mail-vs1-xe44.google.com with SMTP id r24so1223655vsp.8
        for <devicetree@vger.kernel.org>; Fri, 02 Oct 2020 13:42:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=PyTBFVa3qeZA7kgpm5KMRvZPLGIjXaEZxCGTPzBm8AM=;
        b=WulWpA1VQK5XnHxFm6BjaZBFSyC5nWp45+BE2BA1U+iQCLy45rOVwBwCNohf/ZSV+f
         qCW7JmmisW/jA113crFSXVFLFwfsCJNRsfn1vbwz2J2aTIvj2fmdlUv9zF/MFFwkPKMK
         T8aruwThdjnWsBObai0IHqsXB30sj6jxY6QmY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=PyTBFVa3qeZA7kgpm5KMRvZPLGIjXaEZxCGTPzBm8AM=;
        b=l//7t0sG7h5N3TK/vzeGAgf8ZwT4L7OB4ITq0xonySnMUn3iB2iE1GgcxwX1aOChSz
         d97AadkN+oItl/5yd2rngPk/JjRpXAhW9DyijrzDPTbXll+0VqwRIqbeKh/gIXOoehFl
         V97rS1q4LBWf5pd4RVd8zRLs5LcyUTeot02EQXOYZawBUhBazJgEQuFI69yxxqGmp4mn
         U7X+OcI/yKH2bT6rAyuvwPkxI1N61x7JlR/F+Ov5Jgg/PULcZ3gwyuFkVuEnkJgJgFsj
         /CMPAkh32SIaPziZRmx76dYGCKH8ivx86AUTR43ggrD9j1pJ2jME1I/c7q5DgAcI4v0p
         +NUQ==
X-Gm-Message-State: AOAM530E38Qbz7WAvwsdgNXvGAmbncOO8m+jPbT0CK34arMl6Gz0MY2T
        q3qtwC8AJeu+DDXVxQsrEGwi30EpKjcQbw==
X-Google-Smtp-Source: ABdhPJyDVUM/OkL0vD9QjFtvzXue4mHzXTrPvq/gQTrftWsz0/bd5l+0za4hCwYJU0QHFnJUSXYTYw==
X-Received: by 2002:a67:ec89:: with SMTP id h9mr2406212vsp.55.1601671334091;
        Fri, 02 Oct 2020 13:42:14 -0700 (PDT)
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com. [209.85.222.45])
        by smtp.gmail.com with ESMTPSA id p2sm402248vkp.34.2020.10.02.13.42.12
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Oct 2020 13:42:12 -0700 (PDT)
Received: by mail-ua1-f45.google.com with SMTP id z1so732095uaa.6
        for <devicetree@vger.kernel.org>; Fri, 02 Oct 2020 13:42:12 -0700 (PDT)
X-Received: by 2002:ab0:4542:: with SMTP id r60mr2415711uar.90.1601671332224;
 Fri, 02 Oct 2020 13:42:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200930223532.77755-1-bjorn.andersson@linaro.org> <20200930223532.77755-2-bjorn.andersson@linaro.org>
In-Reply-To: <20200930223532.77755-2-bjorn.andersson@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 2 Oct 2020 13:42:00 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Unu-PH_RThi3xRF1HUADN2PqcVAOin0O0yo0gcGRWCDQ@mail.gmail.com>
Message-ID: <CAD=FV=Unu-PH_RThi3xRF1HUADN2PqcVAOin0O0yo0gcGRWCDQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: drm/bridge: ti-sn65dsi86: Replace #pwm-cells
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Sep 30, 2020 at 3:40 PM Bjorn Andersson
<bjorn.andersson@linaro.org> wrote:
>
> While the signal on GPIO4 to drive the backlight controller indeed is
> pulse width modulated its purpose is specifically to control the
> brightness of a backlight.

I'm a bit on the fence about this.  I guess you're doing this because
it avoids some -EPROBE_DEFER cycles in Linux?  It does seem to have a
few downsides, though.

1. It means a bit of re-inventing the wheel.  It's not a very big
wheel, though, I'll give you.  ...but it's still something.

2. I'm not sure why you'd want to, but in theory one could use this
PWM for some other purposes.  It really is just a generic PWM.  Your
change prevents that.



> Drop the #pwm-cells and instead expose a new property to configure the
> granularity of the backlight PWM signal.
>
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---
>  .../devicetree/bindings/display/bridge/ti,sn65dsi86.yaml | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi86.yaml b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi86.yaml
> index f8622bd0f61e..e380218b4646 100644
> --- a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi86.yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi86.yaml
> @@ -66,9 +66,12 @@ properties:
>        1-based to match the datasheet.  See ../../gpio/gpio.txt for more
>        information.
>
> -  '#pwm-cells':
> -    const: 1
> -    description: See ../../pwm/pwm.yaml for description of the cell formats.
> +  ti,backlight-scale:
> +    description:
> +      The granularity of brightness for the PWM signal provided on GPIO4, if
> +      this property is specified.
> +    minimum: 0
> +    maximum: 65535

A few issues here:

1. Maybe call this "num-steps" instead of backlight-scale.  That's
essentially what it is, right?  Saying how many discrete steps you're
allowing in your backlight?

2. IMO you need the PWM frequency specified, since it can actually
matter.  NOTE: once you have the PWM frequency specified, you could
imagine automatically figuring out what "num-steps" was.  Really you'd
want it to be the largest possible value you could achieve with your
hardware at the specified frequency.  There's no advantage (is there?)
of providing fewer steps to the backlight client.

3. Some backlights are specified inverted.  It looks like this maps
nicely to the bridge chip, which has a bit for it.  Probably nice to
expose this?

Of course, if we were just exposing the PWM directly to Linux we could
just use the PWM backlight driver and it'd all magically work.  ;-)


-Doug
