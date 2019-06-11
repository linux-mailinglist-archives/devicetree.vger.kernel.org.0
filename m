Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3709F417F4
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2019 00:11:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2405693AbfFKWLw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jun 2019 18:11:52 -0400
Received: from mail-pl1-f196.google.com ([209.85.214.196]:43346 "EHLO
        mail-pl1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2407870AbfFKWLw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Jun 2019 18:11:52 -0400
Received: by mail-pl1-f196.google.com with SMTP id cl9so5686601plb.10
        for <devicetree@vger.kernel.org>; Tue, 11 Jun 2019 15:11:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=8vFvJ8V6ajJREADlkWcQGOvk5dqkkgFT9ytOdn/LZ6s=;
        b=hPfeNzhq51hsmDu/JK7bh3qIFlI5DoZS5suqWw3uFdum9RZoZ2kLpg+CG3WfwtzWqG
         wUsWqTNqS4DVwjG3bZ5K061mHFseBicQAv9ZBnZKQCzCbAd+m0Wm71AVkht6a9BHwRBP
         mH/ugMZuWCy/YaFsK+qaD6od1aOotlirFt6fw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=8vFvJ8V6ajJREADlkWcQGOvk5dqkkgFT9ytOdn/LZ6s=;
        b=hYxyXsq8kgN6cxFUtbCbNLSqydGhFw6BKqkGIvF3A5oU0kuXjI3hU/Q69Z3pCTcAYu
         lyQGKbzM0gquth5vfRKXwx1BKbAOj04wDQGOILz8XfvMN9vSBx4r/nAMmaXND4S44ofy
         gI0209BvChhLc4FbDNLVeMXsJ1v7W9LgGmh4Lr7ZWPo0Kp4Zf/U81wU1nHR/zDWiEGP3
         Nv15ynLtnpQvYYyGQH5TgAIYUMete/9WjYVdnpxbPP7Xd5oEr8b4nH/7GOr6mbIb6oW9
         d+l1Nsp+eZ/r1iPYa7L8GwazjJppqALcbhi/0S+q74pEiYspXqXnCJObcSagSfhom5zz
         kgmA==
X-Gm-Message-State: APjAAAVotIeatGnog2D2Oq3fT2zA/5Y28NMeto9mW2uiMgl3VVl0YCO2
        gl4e0V45Uki5qeYGyVRxj0DlqA==
X-Google-Smtp-Source: APXvYqwEviZoSj03YwFf0xshEB8pQdCuQy4uEVw4wDJoV5zm7LJ8rVpZzWCRBK0Mj4y2Dqy1neX5Aw==
X-Received: by 2002:a17:902:e58b:: with SMTP id cl11mr57462355plb.24.1560291110514;
        Tue, 11 Jun 2019 15:11:50 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
        by smtp.gmail.com with ESMTPSA id u4sm17102828pfu.26.2019.06.11.15.11.48
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 Jun 2019 15:11:49 -0700 (PDT)
Date:   Tue, 11 Jun 2019 15:11:47 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Jacek Anaszewski <jacek.anaszewski@gmail.com>
Cc:     Lee Jones <lee.jones@linaro.org>,
        Daniel Thompson <daniel.thompson@linaro.org>,
        Jingoo Han <jingoohan1@gmail.com>, Pavel Machek <pavel@ucw.cz>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        dri-devel@lists.freedesktop.org, linux-leds@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pwm@vger.kernel.org, linux-fbdev@vger.kernel.org,
        Douglas Anderson <dianders@chromium.org>,
        Brian Norris <briannorris@chromium.org>
Subject: Re: [PATCH 1/2] dt-bindings: pwm-backlight: Add 'max-brightness'
 property
Message-ID: <20190611221147.GG137143@google.com>
References: <20190610233739.29477-1-mka@chromium.org>
 <00220cd7-ed4b-5250-d448-cf83ed4c2012@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <00220cd7-ed4b-5250-d448-cf83ed4c2012@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Jacek,

On Tue, Jun 11, 2019 at 10:02:23PM +0200, Jacek Anaszewski wrote:
> Hi Matthias,
> 
> On 6/11/19 1:37 AM, Matthias Kaehlcke wrote:
> > Add an optional 'max-brightness' property, which is used to specify
> > the number of brightness levels (max-brightness + 1) when the node
> > has no 'brightness-levels' table.
> > 
> > Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> > ---
> >   .../devicetree/bindings/leds/backlight/pwm-backlight.txt       | 3 +++
> >   1 file changed, 3 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/leds/backlight/pwm-backlight.txt b/Documentation/devicetree/bindings/leds/backlight/pwm-backlight.txt
> > index 64fa2fbd98c9..98f4ba626054 100644
> > --- a/Documentation/devicetree/bindings/leds/backlight/pwm-backlight.txt
> > +++ b/Documentation/devicetree/bindings/leds/backlight/pwm-backlight.txt
> > @@ -27,6 +27,9 @@ Optional properties:
> >                               resolution pwm duty cycle can be used without
> >                               having to list out every possible value in the
> >                               brightness-level array.
> > +  - max-brightness: Maximum brightness value. Used to specify the number of
> > +                    brightness levels (max-brightness + 1) when the node
> > +                    has no 'brightness-levels' table.
> 
> In the LED subsystem we have led-max-microamp property which seems to
> better describe hardware capabilities. It says just: this is the current
> level the LED can withstand. max-brightness does not implicitly convey
> this kind of information.
> 
> Why the need for the property at all? If for the reasons other than
> hardware capabilities than it should be more likely handled
> by userspace.

The driver needs to know how many brightness levels to expose to
userspace. It currently uses a heuristic for that which is broken:

https://elixir.bootlin.com/linux/v5.1.9/source/drivers/video/backlight/pwm_bl.c#L234
https://lore.kernel.org/patchwork/patch/1086777/#1282610

In any case it seems the discussion is going into the direction of
fixing the heuristic (apparently using the period as an indicator of
the PWM resolution has more merit than I was initially aware of), if
that moves forward the property wouldn't be needed.
