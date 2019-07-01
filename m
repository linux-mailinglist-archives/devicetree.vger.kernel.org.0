Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0329F488F0
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2019 18:30:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725863AbfFQQag (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Jun 2019 12:30:36 -0400
Received: from mail-pg1-f169.google.com ([209.85.215.169]:34584 "EHLO
        mail-pg1-f169.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726509AbfFQQad (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Jun 2019 12:30:33 -0400
Received: by mail-pg1-f169.google.com with SMTP id p10so6127393pgn.1
        for <devicetree@vger.kernel.org>; Mon, 17 Jun 2019 09:30:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=MZrjut71NWNNaKlLd3kxdXdldXiQAJyc0Qxm4bxHoDY=;
        b=CPHtJ2By0lXch1LgQEpHWMooMYGBDG2ewjy5cFlf67lYX9MHcxSYLY29NJuImhdguf
         /+igoGJC4XV5ibOc1FOAUdO6E0/P1MSwn86hbG9Z79eHYo6+WNHqw75pV4imKh2vrtm9
         eBeLhPIORJTD+D/nevbhWZqjiS6LMYN8AQvCg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=MZrjut71NWNNaKlLd3kxdXdldXiQAJyc0Qxm4bxHoDY=;
        b=KilsSqtUNjSJxGdCWc3h7WHgrasBeacIqLL3VKNuZAJ7Tr9kI8IicUq88ph7agpxV6
         uimnz3t1bg2HvhNrxPktixDorIYsHkPX6Z1EwTxAWqgweM8jfP5rYEg4WXMrc6o3O5NO
         v9GbVyS+OOAsMXEWytL7tEwPwSmBh5I8KtV+wEHsMdqoJeYbUkT6UljoiH/svb6dkF+I
         /WtqbzuWFYfxFF/A8pxeDnwznExZnXtslp8wbqLbYbqQr6L/daJA/sYEIBLxmOa4cNoa
         6uksdw68GLMDZ5WAhUlMKdoQQK+LsrR85Sjn+gEr52Xw2nlPADX6xSMxXTul+5c784B2
         YZEQ==
X-Gm-Message-State: APjAAAXMgPqPq4VqeNjPXhTQlbjpNVCf+p7Qmn3clXd2Tt2MA4f+vyyF
        A+LKNt9ltmt9Kg8NXccsuonSxg==
X-Google-Smtp-Source: APXvYqyeGb12otld5CDA+Wx17m4Ieywv4C5/6/QbfVQQ946V3lEKoBfvkyLivdI7EXj5RHu0cN6fug==
X-Received: by 2002:a17:90a:9289:: with SMTP id n9mr27273064pjo.35.1560789032483;
        Mon, 17 Jun 2019 09:30:32 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
        by smtp.gmail.com with ESMTPSA id ci15sm8076407pjb.12.2019.06.17.09.30.31
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Jun 2019 09:30:32 -0700 (PDT)
Date:   Mon, 17 Jun 2019 09:30:30 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Enric Balletbo i Serra <enric.balletbo@collabora.com>
Cc:     Pavel Machek <pavel@ucw.cz>, Heiko Stuebner <heiko@sntech.de>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH] Revert "ARM: dts: rockchip: set PWM delay backlight
 settings for Minnie"
Message-ID: <20190617163030.GS137143@google.com>
References: <20190614224533.169881-1-mka@chromium.org>
 <20190616154143.GA28583@atrey.karlin.mff.cuni.cz>
 <c88619de-45f4-9ba7-cfdc-0cedb764f6f4@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <c88619de-45f4-9ba7-cfdc-0cedb764f6f4@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Enric,

On Mon, Jun 17, 2019 at 12:08:25PM +0200, Enric Balletbo i Serra wrote:
> Hi,
> 
> On 16/6/19 17:41, Pavel Machek wrote:
> > Hi!
> > 
> >> This reverts commit 288ceb85b505c19abe1895df068dda5ed20cf482.
> >>
> >> According to the commit message the AUO B101EAN01 panel on minnie
> >> requires a PWM delay of 200 ms, however this is not what the
> >> datasheet says. The datasheet mentions a *max* delay of 200 ms
> >> for T2 ("delay from LCDVDD to black video generation") and T3
> >> ("delay from LCDVDD to HPD high"), which aren't related to the
> >> PWM. The backlight power sequence does not specify min/max
> >> constraints for T15 (time from PWM on to BL enable) or T16
> >> (time from BL disable to PWM off).
> >>
> 
> Hmm, clearly we are not looking at the same datasheet, because in the one I have
> I don't see any reference to T15/T16 or LCDVDD. And, I assume I am probably
> wrong because you might have better access to the specific panel specs for minnie.
> 
> I looked at my archive and the datasheet I have is similar to this [1]. In page
> 21, Section 6.5 Power ON/OFF Sequence, there are two delays T3 and T4, it is
> *min* time between the pwm signal and the bl_en and it is 200 ms. That's the
> delay the patch was adding.
> 
> [1] http://www.yslcd.com.tw/docs/product/B101EAN01.1.pdf
> 
> >> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> >> ---
> >> Enric, if you think I misinterpreted the datasheet please holler!
> > 
> > Was this tested? Was previous patch tested?
> > 
> 
> IIRC, It was tested measuring the backlight power on timing (although I am not
> sure if I tested this on minnie or another board with better access to the pins)
> 
> > Does patch being reverted actually break anything? If so, cc stable?
> > 
> > 								Pavel
> > 								
> > 
> 
> Probably will not break anything, I don't remember the reverted patch as a fix
> of any specific issue. IIRC it was more a fear to be out of specs but I'll not
> be surprised if the datasheet lies and this delay is not needed at all.

Indeed, we are looking at different datasheets. It turns out that
'B101EAN01' is an underspecification, minnie uses the 'B101EAN01.8'
(eDP interface), your datasheet describes the 'B101EAN01.1' (LVDS
interface).

> Matthias, are you reverting this to solve any problem?

With the patch there is a user perceptible delay between switching on
the LCD and the backlight. Not necessarily a big problem, but better
avoid it if the delay is not needed.

> Could you share your datasheet?

http://www.yslcd.com.tw/docs/product/B101EAN01.8.pdf (the server seems
to be down currently).

Thanks

Matthias
