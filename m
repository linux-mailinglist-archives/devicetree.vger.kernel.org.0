Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2B5E9E98E3
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2019 10:10:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726453AbfJ3JKA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Oct 2019 05:10:00 -0400
Received: from mail-io1-f67.google.com ([209.85.166.67]:34278 "EHLO
        mail-io1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726377AbfJ3JJ7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Oct 2019 05:09:59 -0400
Received: by mail-io1-f67.google.com with SMTP id q1so1677612ion.1
        for <devicetree@vger.kernel.org>; Wed, 30 Oct 2019 02:09:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3BXeivFO4X0coYk6B/avMJFt+nMNImCe8Y2eVzRxJFc=;
        b=rgD3YR7uT2D0dkZuQMZgyLiH4b7hPEZWk818ADfeJHzIIEODqIjPi2Vwf4LkxgAJmn
         GugrOnHZ98V0Z5fmecKHMcS4hhuDDgAuQ45STgVaPP8PMGfNK8RQBIkyqnJcuPIbjHpl
         7yMmKCa2oWZjT98EoCyr6Qd1oE0fmu+QDael6BlSgXecboYQs5C6kbhzYZOH1MoZf652
         CMiu/cM0XoYvWCxUEw/QTl/q0/a/x3fI2q5xfQL6mBfYtpOxKH9AXmxUYDTxVIH74NwP
         P7u0BMgZXlVHQDYXTqHqKWo2W12R4VEUMqhCBlZcEmk7Wlxy94ZwfULaTy0x03tOe9Qr
         KxZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3BXeivFO4X0coYk6B/avMJFt+nMNImCe8Y2eVzRxJFc=;
        b=tNRAJhWMDITVymgjwRdx0gM0PUAi4PCuJcTyzW3FCoZRLS/0LyCBIEOwoD1Vg8A2Fj
         2Pl+cbBFQ+aSp9QrITjb0C79ajRtAlHYgZeB/gp3rXCccxz62AdyNccxpk/JevOXriJi
         enqqa20y1K7inDkzTB4oqaFc3Wz7vGUYQZLCuwrSwiDdOhnaUC4iX68wo7uDu97OvF+w
         WZoFM5L4kN4Z2BAtxkRq1UfQc9t1vXYu7EQkhLaPrt8/+Xo6kQvrXKK+XRrUWaMaQcVq
         7qq9jxzBF+HXIL5cl9B4eT0kmOHaIygJSH4gx4Cme2xkuD2zQYTYSm7kqQG8T00vyHRH
         zzlQ==
X-Gm-Message-State: APjAAAVZ2zTy8VcgbToX3BwYZgChZ5V9Tuh3wbeXrJmqmVCc/zOWR8ch
        XKIu8AjllGbcNI7+kP9EUHX4a3eNDsnjK5MFpTlODg==
X-Google-Smtp-Source: APXvYqwsMJgbtEnWJYSgXn3eGjvbOusJ0jj+WPFGATdoFjsdJMwxpkNReWQUMncR1sWsj4rp80BoxS+tjeE5DjoKEvw=
X-Received: by 2002:a02:900a:: with SMTP id w10mr16212181jaf.29.1572426598410;
 Wed, 30 Oct 2019 02:09:58 -0700 (PDT)
MIME-Version: 1.0
References: <20191028071930.145899-1-cychiang@chromium.org> <20191028071930.145899-6-cychiang@chromium.org>
In-Reply-To: <20191028071930.145899-6-cychiang@chromium.org>
From:   Tzung-Bi Shih <tzungbi@google.com>
Date:   Wed, 30 Oct 2019 17:09:46 +0800
Message-ID: <CA+Px+wXAo5EPjudneS+aFEAfBRAQR1Xp6goutdMdYTPeKcfTTA@mail.gmail.com>
Subject: Re: [PATCH v9 5/6] ARM: dts: rockchip: Add HDMI support to rk3288-veyron-analog-audio
To:     Cheng-Yi Chiang <cychiang@chromium.org>
Cc:     Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Jonas Karlman <jonas@kwiboo.se>,
        Hans Verkuil <hverkuil@xs4all.nl>,
        Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Takashi Iwai <tiwai@suse.com>,
        Jaroslav Kysela <perex@perex.cz>,
        Russell King <rmk+kernel@armlinux.org.uk>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Heiko Stuebner <heiko@sntech.de>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Douglas Anderson <dianders@chromium.org>, dgreid@chromium.org,
        Tzung-Bi Shih <tzungbi@chromium.org>,
        ALSA development <alsa-devel@alsa-project.org>,
        dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Mark,

This series has 6 patches.  We noticed you have merged the first 4
patches (includes the DT binding one:
https://mailman.alsa-project.org/pipermail/alsa-devel/2019-October/157668.html).

There are 2 DTS patches are still on the list:
- [PATCH v9 5/6] ARM: dts: rockchip: Add HDMI support to
rk3288-veyron-analog-audio
https://mailman.alsa-project.org/pipermail/alsa-devel/2019-October/157499.html
- [PATCH v9 6/6] ARM: dts: rockchip: Add HDMI audio support to
rk3288-veyron-mickey.dts
https://mailman.alsa-project.org/pipermail/alsa-devel/2019-October/157500.html

Are you waiting for other maintainers' acknowledgement?  Or do we need
to resend them with maybe some modifications?
