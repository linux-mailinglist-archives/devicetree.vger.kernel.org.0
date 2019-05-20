Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B8C49242C2
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2019 23:21:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726879AbfETVVE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 May 2019 17:21:04 -0400
Received: from mail-pg1-f195.google.com ([209.85.215.195]:35207 "EHLO
        mail-pg1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726761AbfETVVD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 May 2019 17:21:03 -0400
Received: by mail-pg1-f195.google.com with SMTP id t1so5959385pgc.2
        for <devicetree@vger.kernel.org>; Mon, 20 May 2019 14:21:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=ancjtzq6elCyj2UruyD0ZmMo8pzIwOlqJRkQDWD0+Q4=;
        b=Ra1/NDHLCkHjBDWAQ/jViNFoVW0b3IxT96gXTCODELWtAKgg1lkNuII+jnLv5j4Teo
         640nloVeyk2sSL3B0cPg5gaPNrgeMGAbytdo8Np/1g/H8h5KBoIZIphwZ4GQcFi9BSlb
         9o3GTLE3vFvoqjaPr2B41+y0m6SfPg5hGYHkg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=ancjtzq6elCyj2UruyD0ZmMo8pzIwOlqJRkQDWD0+Q4=;
        b=ZJnwjgk2Syx6NE35jVaWZT32C4qb41n+r3QxfoUn4a+fE/8gxkvZ4lM1PxsvfRjwgQ
         B2CgP8+gLG8v1KixCDagPWWOIUrcXcFUfmA4Dt+mPBeHxy20U7eljZV3fxEaQ8zcfH4W
         xDh/5wT9iRrmRXq6zKavkddr7opRflVUVug83BfvZhTgV4ijf/PNJXa940kFlqJa7Nkp
         ncBwrIM6dcAW9PnCVUj5XlQ4vgzHjzZdd4plnqG76I9DY/ixzF7vkZkPc69h9IAgmjwv
         ebVC4u5Yq+qgjDOpiGdGnaUsMVN29U3MUbHjmWesb1hdBaApVh9ziJvOgedl09MRegJc
         NUWg==
X-Gm-Message-State: APjAAAX3Zc5lbLlQQntQcGsW3wAwjop2BHJidpb7JurQhkrex2XE4XLI
        uNV2MELJ9c7ZPdY057+eQ3BIrw==
X-Google-Smtp-Source: APXvYqw9S1yPYrd1SlaEZuoSglSNY/CGY6wMOXe8ZG9S0Iy0ayQfjzKwK/uXFS+P+TQk+jsW4OUzLA==
X-Received: by 2002:a63:6dca:: with SMTP id i193mr75790021pgc.353.1558387263271;
        Mon, 20 May 2019 14:21:03 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
        by smtp.gmail.com with ESMTPSA id a26sm34931443pfl.177.2019.05.20.14.21.02
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 20 May 2019 14:21:02 -0700 (PDT)
Date:   Mon, 20 May 2019 14:21:02 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Doug Anderson <dianders@chromium.org>
Cc:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        devicetree@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 2/2] ARM: dts: rockchip: Configure the GPU thermal zone
 for mickey
Message-ID: <20190520212102.GH40515@google.com>
References: <20190520170132.91571-1-mka@chromium.org>
 <20190520170132.91571-2-mka@chromium.org>
 <CAD=FV=Vr2thgHYTH_khqka27_SdGcSEShpSRp+u2E=O5eyxLMQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAD=FV=Vr2thgHYTH_khqka27_SdGcSEShpSRp+u2E=O5eyxLMQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 20, 2019 at 01:21:33PM -0700, Doug Anderson wrote:
> Hi,
> 
> On Mon, May 20, 2019 at 10:01 AM Matthias Kaehlcke <mka@chromium.org> wrote:
> >
> > mickey crams a lot of hardware into a tiny package, which requires
> > more aggressive thermal throttling than for devices with a larger
> > footprint. Configure the GPU thermal zone to throttle the GPU
> > progressively at temperatures >= 60°C. Heat dissipated by the
> > CPUs also affects the GPU temperature, hence we cap the CPU
> > frequency to 1.4 GHz for temperatures above 65°C. Further throttling
> > of the CPUs may be performed by the CPU thermal zone.
> >
> > The configuration matches that of the downstram Chrome OS 3.14
> 
> s/downstram/downstream

ack

> 
> > +       cooling-maps {
> > +               /* After 1st level throttle the GPU down to as low as 400 MHz */
> > +               gpu_warmish_limit_gpu {
> > +                       trip = <&gpu_alert_warmish>;
> > +                       cooling-device = <&gpu THERMAL_NO_LIMIT 1>;
> 
> As per my comment in patch #1, you are probably ending up throttling
> to 500 MHz, not 400 MHz.  Below will all have similar problems unless
> we actually delete the 500 MHz operating point.

Thanks for pointing that out. As per disussion on patch #1 we'll
disable the 500 MHz OPP to stay in sync with downstream and avoid
problems in case someone decides to re-purpose NPLL.

> > +               };
> > +
> > +               /*
> > +                * Slightly after we throttle the GPU, we'll also make sure that
> > +                * the CPU can't go faster than 1.4 GHz.  Note that we won't
> > +                * throttle the CPU lower than 1.4 GHz due to GPU heat--we'll
> > +                * let the CPU do the rest itself.
> > +                */
> > +               gpu_warm_limit_cpu {
> > +                       trip = <&gpu_alert_warm>;
> > +                       cooling-device = <&cpu0 4 4>;
> 
> Shouldn't you list cpu1, cpu2, and cpu3 too?  That'd match what
> upstream did elsewhere in this file?

ack, should have noticed, I 'yelled' at others before for not doing this ...
