Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B5E463C957
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2019 12:49:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387513AbfFKKtS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jun 2019 06:49:18 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:40091 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728825AbfFKKtS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Jun 2019 06:49:18 -0400
Received: by mail-wm1-f65.google.com with SMTP id v19so2359096wmj.5
        for <devicetree@vger.kernel.org>; Tue, 11 Jun 2019 03:49:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Wke+zJP5dCswbWV/u/esh55NqtZ1D4txLFIezrnYzvc=;
        b=PxrxDslAIz/rFntDtsnZky+pHhSb0tuqmviueUjKiknFy3QJVo2pNovpjuqynjBoGd
         qtC0oufRU8IFFy4PaVjl3NH0rTHHabLnMJaUsqLuDXlAymNfwNtQPp3ihtWZHKluO7Xy
         z9IfrFxDUpcndgECSycZq4t6Cy+HMu5B6Y/ptdeljIhskZk6C2LaFXn63jevymcITGtn
         H0QyEVT1kKoirxc+XNQ1cZS21cx3Cgzfa5rPqgn/ZxFP7csu2xNhNH2yUGoQavy2XQBu
         51QgvqpImw7EcwhPnRjvcJfA9xQkdPDiHY4WV+QUFC6GLuLPxqWrNlDE9XUAu1/W8PMc
         uDiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Wke+zJP5dCswbWV/u/esh55NqtZ1D4txLFIezrnYzvc=;
        b=Sdpc6C0s3UJNp7qZDFowBItdO8QiPsctHYytBqv36Q9qL4PmVsPxJ97ZWnPUFgFsR8
         SKQkeNayFoS7uhpt5DDN/qR7nryONB/ZzoSkce5Fn8WJHvz0xESMl+/tKCooUzGKj/Wm
         RyKKkPEmAZoVfYo4gkWoOvhOnZZ8IVSl0DSRI44IVVOV/tZWwMYnIXWjxNHuy1vOBCu7
         +6wYBVR0RaquS7aSny/NrVWy5LV13PkGhY2fMzr1lDRYMPZFS1lTqw8dU44mhHIMq+GQ
         jn9ODyQ0SoY5sdugnfFTRblwvLSFp8oK/BPuLD2D3CypTlZc85KrFO2043v27uDzv4r8
         wbZA==
X-Gm-Message-State: APjAAAU0RANcTSA1p69UQqfV6sCNPMSYh7GTVgw2vhng2/xCtBo683OF
        aWmelOhi27iZ0j6IzeWIUlTNuQ==
X-Google-Smtp-Source: APXvYqyVEdeJXtwm61rHWGiItQER4fYOS3J8J0oDLkfvh49Af3An58cPZ73GF11X36CTWlidhej42w==
X-Received: by 2002:a1c:a7c6:: with SMTP id q189mr17676575wme.146.1560250156070;
        Tue, 11 Jun 2019 03:49:16 -0700 (PDT)
Received: from holly.lan (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net. [86.9.19.6])
        by smtp.gmail.com with ESMTPSA id s9sm2336429wmc.11.2019.06.11.03.49.14
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 11 Jun 2019 03:49:15 -0700 (PDT)
Date:   Tue, 11 Jun 2019 11:49:13 +0100
From:   Daniel Thompson <daniel.thompson@linaro.org>
To:     Matthias Kaehlcke <mka@chromium.org>
Cc:     Pavel Machek <pavel@ucw.cz>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Doug Anderson <dianders@google.com>,
        Rob Herring <robh+dt@kernel.org>,
        Jingoo Han <jingoohan1@gmail.com>,
        Richard Purdie <rpurdie@rpsys.net>,
        Jacek Anaszewski <jacek.anaszewski@gmail.com>,
        Brian Norris <briannorris@google.com>,
        Guenter Roeck <groeck@google.com>,
        Lee Jones <lee.jones@linaro.org>,
        Alexandru Stan <amstan@google.com>, linux-leds@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        kernel@collabora.com
Subject: Re: [PATCH v3 3/4] backlight: pwm_bl: compute brightness of LED
 linearly to human eye.
Message-ID: <20190611104913.egsbwcedshjdy3m5@holly.lan>
References: <20180208113032.27810-1-enric.balletbo@collabora.com>
 <20180208113032.27810-4-enric.balletbo@collabora.com>
 <20190607220947.GR40515@google.com>
 <20190608210226.GB2359@xo-6d-61-c0.localdomain>
 <20190610205233.GB137143@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190610205233.GB137143@google.com>
User-Agent: NeoMutt/20180716
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jun 10, 2019 at 01:52:33PM -0700, Matthias Kaehlcke wrote:
> Hi Pavel,
> 
> On Sat, Jun 08, 2019 at 11:02:26PM +0200, Pavel Machek wrote:
> > Hi!
> > 
> > > > +	 * Note that this method is based on empirical testing on different
> > > > +	 * devices with PWM of 8 and 16 bits of resolution.
> > > > +	 */
> > > > +	n = period;
> > > > +	while (n) {
> > > > +		counter += n % 2;
> > > > +		n >>= 1;
> > > > +	}
> > > 
> > > I don't quite follow the heuristics above. Are you sure the number of
> > > PWM bits can be infered from the period? What if the period value (in
> > > ns) doesn't directly correspond to a register value? And even if it
> > > did, counting the number of set bits (the above loops is a
> > > re-implementation of ffs()) doesn't really result in the dividers
> > > mentioned in the comment. E.g. a period of 32768 ns (0x8000) results
> > > in a divider of 1, i.e. 32768 brighness levels.
> > > 
> > > On veyron minnie the period is 1000000 ns, which results in 142858
> > > levels (1000000 / 7)!
> > > 
> > > Not sure if there is a clean solution using heuristics, a DT property
> > > specifying the number of levels could be an alternative. This could
> > > also be useful to limit the number of (mostly) redundant levels, even
> > > the intended max of 4096 seems pretty high.
> > > 
> > > Another (not directly related) observation is that on minnie the
> > > actual brightness at a nominal 50% is close to 0 (duty cycle ~3%). I
> > > haven't tested with other devices, but I wonder if it would make
> > > sense to have an option to drop the bottom N% of levels, since the
> > > near 0 brightness in the lower 50% probably isn't very useful in most
> > > use cases, but maybe it looks different on other devices.
> > 
> > Eye percieves logarithm(duty cycle), mostly, and I find very low brightness
> > levels quite useful when trying to use machine in dark room.
> 
> I realized that the brightness level display on Chrome OS (= my test
> device) is non-linear, and it isn't actually the lower 50% of levels
> that is near 0 brightness, but 'only' about 20%.
> 
> > But yes, specifying if brightness is linear or exponential would be quite
> > useful.
> 
> Agreed, this could help userspace with displaying a reasonable
> brightness level.

This is a long standing flaw in the backlight interfaces. AFAIK generic
userspaces end up with a (flawed) heuristic.

Basically devices with a narrow range of choices can be assumed to be
logarithmic (since anything linear with a narrow range of choices is
junk anyway and the slider will never feel right).

On the other side though we can only really make a guess.

Systems are coming along that allow us to animate the change of
brightness (part of the reason for interpolated tables is to
permit smooth animation rather than because the user explicitly wants
to set the brightness to exactly 1117). These systems are often
logarithmic but with a wide range of values.


Daniel.
