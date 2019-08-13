Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 865208B093
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2019 09:20:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727435AbfHMHUX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Aug 2019 03:20:23 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:43362 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726789AbfHMHUX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Aug 2019 03:20:23 -0400
Received: by mail-wr1-f66.google.com with SMTP id y8so816771wrn.10
        for <devicetree@vger.kernel.org>; Tue, 13 Aug 2019 00:20:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=jh+u0/5C9sC+jh4TIlKIxaJHuXDdftZDgr4L90RCuIA=;
        b=hEFcVJVzbO+JRAcIntpp/zkyNlS7/GvdeEjrweS18w0t6brHWY49x4M06TnFdZSwxW
         GGaQNP7MUgT/naNeXacrDjPlReBWjvfVLRj+jwnfOSnzi0OUNk5l34AoZpS5DnvuLpDl
         7cNl0BEt+sVJKtQ+LT++mw33Dm284lEGuMdRBBrFKcyC4hjm0k0kVy/4G26aCy6Fo+oY
         uRsQzWvgL5XujoH7taBtmR3FwWDy8klSb77UV1u2YiYIN/RaktD6HE0sLCjVhZ3gWcxT
         6MHB9kBjCkdbPzg7uohM0ruCkgjKBGkq74L2O7ondbwMC4ypfOyxsU8N6t9D74MVit5m
         sEVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=jh+u0/5C9sC+jh4TIlKIxaJHuXDdftZDgr4L90RCuIA=;
        b=svTE0d+xsgYvM4paP2uBejhO4slv+3KkzXQCokCTA5vkNNpx9x0CLvFIznHAKAFcGZ
         rlwINVVujbHcJTUYsFoMxpduCnO7ZU0qAfMW4gh1gcwyCY/msBY9K1+BJO/FV/Kb8y+R
         E0Rvg3rYPKkKmQF4MRhqSGLRq+FPQXtMJd0IugQOVZyIjFFXtaNJnp0oOAt60nA6PPKQ
         0pEYZQCfWVGrGwGU+R+PAyLprfYfEd9aNILyE9LwfiP3BPim2cRZa7JCuf260TcXiyw1
         ACFQ5AwR/QLqY5DJPnMi1/TslSzC51i/bjLlXrK0QOekh8fCAf80M2MgcRwjC/lQLhqI
         M7XQ==
X-Gm-Message-State: APjAAAXrwS7RChJs3PC6QFW5zYan98Pj3orajBQH9tTg7ylWDMMCPoDN
        QiPsUAAS0fVqyn0cdM1/VTknWw==
X-Google-Smtp-Source: APXvYqwQjf7fTO6Udq8hrYKQOuwTwlMrSM8lymQq+3WwhEOVys4N9qu95PdOanYcKCvd51L3ufdJRQ==
X-Received: by 2002:adf:fe12:: with SMTP id n18mr38762652wrr.105.1565680821103;
        Tue, 13 Aug 2019 00:20:21 -0700 (PDT)
Received: from dell ([2.27.35.255])
        by smtp.gmail.com with ESMTPSA id k1sm14475486wru.49.2019.08.13.00.20.19
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 13 Aug 2019 00:20:20 -0700 (PDT)
Date:   Tue, 13 Aug 2019 08:20:18 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc:     Frank Wunderlich <frank-w@public-files.de>,
        Alessandro Zummo <a.zummo@towertech.it>,
        Allison Randal <allison@lohutok.net>,
        "David S. Miller" <davem@davemloft.net>,
        devicetree@vger.kernel.org, Eddie Huang <eddie.huang@mediatek.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Jonathan Cameron <Jonathan.Cameron@huawei.com>,
        Kate Stewart <kstewart@linuxfoundation.org>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-mediatek@lists.infradead.org, linux-pm@vger.kernel.org,
        linux-rtc@vger.kernel.org, Mark Rutland <mark.rutland@arm.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Richard Fontana <rfontana@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sean Wang <sean.wang@mediatek.com>,
        Sebastian Reichel <sre@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        "Tianping . Fang" <tianping.fang@mediatek.com>,
        Josef Friedl <josef.friedl@speed.at>
Subject: Re: [PATCH v5 03/10] rtc: mt6397: move some common definitions into
 rtc.h
Message-ID: <20190813072018.GZ26727@dell>
References: <20190812121511.4169-1-frank-w@public-files.de>
 <20190812121511.4169-4-frank-w@public-files.de>
 <20190812151128.GV26727@dell>
 <20190812153856.GR3600@piout.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20190812153856.GR3600@piout.net>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 12 Aug 2019, Alexandre Belloni wrote:

> On 12/08/2019 16:11:29+0100, Lee Jones wrote:
> > On Mon, 12 Aug 2019, Frank Wunderlich wrote:
> > 
> > > From: Josef Friedl <josef.friedl@speed.at>
> > > 
> > > move code to separate header-file to reuse definitions later
> > > in poweroff-driver (drivers/power/reset/mt6323-poweroff.c)
> > > 
> > > Suggested-by: Frank Wunderlich <frank-w@public-files.de>
> > > Signed-off-by: Josef Friedl <josef.friedl@speed.at>
> > > Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> > > ---
> > > changes since v4: none
> > > changes since v3: none
> > > changes since v2: add missing commit-message
> > > ---
> > >  drivers/rtc/rtc-mt6397.c       | 55 +-------------------------
> > >  include/linux/mfd/mt6397/rtc.h | 71 ++++++++++++++++++++++++++++++++++
> > 
> > include/linux/rtc/mt6397.h?
> > 
> 
> It's just a bunch of registers and bit definitions so it may as well
> stay close to include/linux/mfd/mt6397/registers.h

Sure.  It was a weak preference.

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
