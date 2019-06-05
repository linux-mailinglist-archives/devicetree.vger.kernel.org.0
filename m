Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 29979366CA
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2019 23:24:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726556AbfFEVY3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Jun 2019 17:24:29 -0400
Received: from mail-pg1-f196.google.com ([209.85.215.196]:36055 "EHLO
        mail-pg1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726555AbfFEVY3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Jun 2019 17:24:29 -0400
Received: by mail-pg1-f196.google.com with SMTP id a3so50739pgb.3
        for <devicetree@vger.kernel.org>; Wed, 05 Jun 2019 14:24:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=5JsaaeOZ5jEkTZ+CQbpEkrv4dv3aPXsi9a1U9ZyHnWY=;
        b=Bc7m2lT8121T8y0BgV5ppFoVa+gTNbe8caW8/6FSqqVnPL3VNfAQQgQPJp3cHpvvjF
         6r5gPNbwx1Ymku5cSrDwzAdgqoIC2UPtydUfLSsijaxsGBsps5esDIwsGlFZ6C5ln361
         oJeALyzPlvtZ+vSvFaBd2lmlPimux8u8wYJGc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=5JsaaeOZ5jEkTZ+CQbpEkrv4dv3aPXsi9a1U9ZyHnWY=;
        b=eSuFEkTnzvrTcCX0NUU+8wqiP1SDbrx2OOmxDzCiohHlqhWWlaCNzEACsmpfagWOAo
         98czI7ap7N+veEb8qIs4366rjrttXwpt0fkHgyzqnLV49nS04kGymDt3+QGaae8qZtGL
         rBB7skAyeHNShkg5YtW42oIS4RvAyoLoxcqHM5knCnhNrbalCznDYNxGCxEY5fO2eFey
         f0/J9rkT3HJe+8jrlBL1vrNfE8Eo5S+qbRnUD8rNMbAQYRihI8AwdXQcAHBckQcGyOdT
         ctTRWzjVYQfCkmd4pewOWLr03vOd6bsENuwuqyDl+Y1cV0+4fO8yI0XeEbKukDzNG/Zx
         SWhA==
X-Gm-Message-State: APjAAAWw4Hw27ouKqGd6/WXiOdCH7w1mjN7OEMGINcFnymXLEUBKhGH8
        oylgHSnZM+zsttKB/TD7l8LF1Q==
X-Google-Smtp-Source: APXvYqxhvfnBdnZg/Zs5AZJlWFyZ5sCBAfZb9xNeRH8QSl/Dzc/pRaTLtaX+thEqgOMLfVR0DiUjJQ==
X-Received: by 2002:aa7:8248:: with SMTP id e8mr9797660pfn.155.1559769868467;
        Wed, 05 Jun 2019 14:24:28 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
        by smtp.gmail.com with ESMTPSA id h19sm3148232pfn.79.2019.06.05.14.24.27
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 05 Jun 2019 14:24:27 -0700 (PDT)
Date:   Wed, 5 Jun 2019 14:24:27 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Douglas Anderson <dianders@chromium.org>,
        Brian Norris <briannorris@chromium.org>
Subject: Re: [PATCH 2/2] ARM: dts: rockchip: Configure BT_HOST_WAKE as
 wake-up signal on veyron
Message-ID: <20190605212427.GP40515@google.com>
References: <20190605204320.22343-1-mka@chromium.org>
 <20190605204320.22343-2-mka@chromium.org>
 <3079472.D8Re4Zsj2W@diego>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3079472.D8Re4Zsj2W@diego>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jun 05, 2019 at 11:11:12PM +0200, Heiko Stübner wrote:
> Am Mittwoch, 5. Juni 2019, 22:43:20 CEST schrieb Matthias Kaehlcke:
> > This enables wake up on Bluetooth activity when the device is
> > suspended. The BT_HOST_WAKE signal is only connected on devices
> > with BT module that are connected through UART.
> > 
> > Signed-off-by: Douglas Anderson <dianders@chromium.org>
> > Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> 
> Housekeeping question, with the two Signed-off-by lines, is Doug the
> original author, or was this Co-developer-by?

Good question, it's derived from Doug's patch for CrOS 3.14 and
https://crrev.com/c/1575556 also from Doug. Let's say I did the
porting to upstream, but I'm pretty sure Doug spent more time on it.

Maybe I should resend it with Doug as author and include the original
commit message, which has more information.
