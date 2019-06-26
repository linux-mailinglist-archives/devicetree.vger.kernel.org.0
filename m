Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AD65357496
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2019 00:56:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726387AbfFZW41 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jun 2019 18:56:27 -0400
Received: from mail-pf1-f195.google.com ([209.85.210.195]:44978 "EHLO
        mail-pf1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726379AbfFZW41 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Jun 2019 18:56:27 -0400
Received: by mail-pf1-f195.google.com with SMTP id t16so173222pfe.11
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2019 15:56:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=IuI6M4VGf1cjQTUKZW+l4CbPnBlOyXj2+eIKebMch1k=;
        b=PkX050BpppH3H/7xYIywyS+Db9gQLAlPfiWuw1cGsyQZ+YKibWRElZhD+84sVsUSU4
         1E/w5nwSOoby0+/SDXrA61D0g/IS1aMnxZCOMTDSwtiArIylZ2mxQdb7Hki56EuRiFRd
         DKOTP6SJn52T4RzoGRJhl5q9+Wn0GLrQzS178=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=IuI6M4VGf1cjQTUKZW+l4CbPnBlOyXj2+eIKebMch1k=;
        b=DhOTvsyMamnGvxd7sGkAhJOI6+SpVs2fSKAfk6JgE4dCQoa1RXsBaJnKqV1dqj89Xr
         TEwFPfY3P750UNLTyEjlvx0tGFUBflg7ZD9UQF3ZIyXxNc18jKI/5E6PfMLA+UznsH4d
         4lITSsjwaVfQXQpu3O2OjlgSV3NpDLlpDNwe7C2YtLIQcaAFGqOtnKriUtEVkQEz5Hos
         VEVvrhaFQb0xLiqf73siF5w8gcNcxdEOz7AQg16wEceApNAxbIi1pD49os+jcMKBTKjn
         /p4kGtO5AWg69ajh5ImamS9d56B267WQ/uEchlcTVgYCAsbWF89NC6De8YaUNnUXWnMx
         wOCw==
X-Gm-Message-State: APjAAAVmXa17Z37x4ZxrSnvZrRwESRnTq7HqhbnKigdN/5NIsHO2LyVq
        yHxltcigbpgPP8AZsx5BOINDE0ryDdI=
X-Google-Smtp-Source: APXvYqyx8pJF4J/wTCH99KCJF8FrgEcnvbR4pUyscuGINJgi0EniQVKfjOWyJ2HNdG0cgwESpM13NA==
X-Received: by 2002:a17:90a:2385:: with SMTP id g5mr1954277pje.12.1561589786991;
        Wed, 26 Jun 2019 15:56:26 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
        by smtp.gmail.com with ESMTPSA id f88sm3487343pjg.5.2019.06.26.15.56.26
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 26 Jun 2019 15:56:26 -0700 (PDT)
Date:   Wed, 26 Jun 2019 15:56:24 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Heiko Stuebner <heiko@sntech.de>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Douglas Anderson <dianders@chromium.org>,
        enric.balletbo@collabora.com
Subject: Re: [PATCH 1/2] ARM: dts: rockchip: move rk3288-veryon display
 settings into a separate file
Message-ID: <20190626225624.GC137143@google.com>
References: <20190625222629.154619-1-mka@chromium.org>
 <2418036.tTYI8lUvN5@phil>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <2418036.tTYI8lUvN5@phil>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jun 27, 2019 at 12:19:27AM +0200, Heiko Stuebner wrote:
> Hi Matthias,
> 
> Am Mittwoch, 26. Juni 2019, 00:26:28 CEST schrieb Matthias Kaehlcke:
> > The chromebook .dtsi file contains common settings for veyron
> > Chromebooks with eDP displays. Some veyron devices with a display
> > aren't Chromebooks (e.g. 'tiger' aka 'AOpen Chromebase Mini'), move
> > display related bits from the chromebook .dtsi into a separate file
> > to avoid redundant DT settings.
> > 
> > The new file is included from the chromebook .dtsi and can be
> > included by non-Chromebook devices with a display.
> > 
> > Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> > ---
> > This series is based on v5.3-armsoc/dts32 (f497ab6b4bb8 "ARM:
> > dts: rockchip: Configure BT_HOST_WAKE as wake-up signal on
> > veyron") plus the display timing patches from Doug:
> 
> the display-timing patches are still stuck on panel-review.
> 
> But while we wait for that to get resolved, you could also check if
> the veyron panels could use Enric's fanzy new automatic calculation
> of brightness-leves in the pwm-backlight driver, so that we possibly
> could get rid of the long table of levels.

We could get rid of the tables after "backlight: pwm_bl: Fix heuristic
to determine number of brightness levels"
(https://lore.kernel.org/patchwork/patch/1087809/) lands.

Ideally we would also have something like this series
https://lore.kernel.org/patchwork/project/lkml/list/?series=399607 ,
to provide userspace information about the brightness scale. Currently
Chrome OS would interpret Enric's table as being linear and adjust the
brightness slider incorrectly.
