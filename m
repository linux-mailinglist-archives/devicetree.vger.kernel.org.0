Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DB08712B46B
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2019 13:06:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726927AbfL0MGt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Dec 2019 07:06:49 -0500
Received: from mail-il1-f196.google.com ([209.85.166.196]:42193 "EHLO
        mail-il1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726354AbfL0MGs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Dec 2019 07:06:48 -0500
Received: by mail-il1-f196.google.com with SMTP id t2so6951899ilq.9
        for <devicetree@vger.kernel.org>; Fri, 27 Dec 2019 04:06:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=WmfgYIlZWxDaZizS0/2PUuLY/qX43M07m582qEI148o=;
        b=X98BOIzumlFPEjdZ9sUuhS3iBBqL1VUK/pjvCrlYXSS/VMjrahfV6GK8V4NLfCKstl
         FcnTl8ezBueGukai4CUwLYopsLt6rhnipVOq02y3UOM+V7ta4pYmlEnbudPT6SoSqQ0Q
         Juv11hh4tpO9NcgZfbm1TSYgDn5hSdsHO8H24=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=WmfgYIlZWxDaZizS0/2PUuLY/qX43M07m582qEI148o=;
        b=eifL8ZitLcp3vBA8gtoJG4/qZtri9wO82M/ZiA7SQQcySN8UphERhGDYiIgDHRm3Kc
         4m8oRE8ibC9tzypk8VxV8D8v1Bg64qSMmQ0DeAVJQ0+gMyIDPk3N1Xbw/hVswNhBWRAu
         DmkltbwzCqxuGSs3OuXxYjHwaeuhxn/D+x85hrzGtp7ajNxfginLzTbRzPPNaWRWo6Dj
         /pLo3x8jI2wjfO8ZZt4OEEpbKUYL2H4YA7HpB4lY2UoGlrJ4vFpVxenwCC5qLzFUL9HQ
         mpoHAQx5JgQf3gbMpba19lrTG1dubkngtOn5tJ0by4dFQ8YPy+xYUikIGmP8Sv6si/SW
         r6QQ==
X-Gm-Message-State: APjAAAXYargjo1vmx7hD2vjXon9P6ZWthPJPcFquVM3LgMcoptlX4Uqe
        2LpuJXWkdurFkOWOxIEV8FyfxMtuA3ods0IQ5xlTUg==
X-Google-Smtp-Source: APXvYqz0avfFPQ7KqEa1gHijLD//RP3wLx7cUiHD8+e66tZOfTYRzPwEjDOnRq8Z7uRAutkXR/PIyTrnPMOIPxZ6x2s=
X-Received: by 2002:a92:860f:: with SMTP id g15mr42716158ild.297.1577448407609;
 Fri, 27 Dec 2019 04:06:47 -0800 (PST)
MIME-Version: 1.0
References: <20191222132229.30276-1-jagan@amarulasolutions.com> <20191226093952.i2jttp7tr5hie6jl@hendrix.home>
In-Reply-To: <20191226093952.i2jttp7tr5hie6jl@hendrix.home>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Fri, 27 Dec 2019 17:36:36 +0530
Message-ID: <CAMty3ZA9VBj6OxaLYE21Qt01nnTYGhsS8c2JHc5esDMeWe0qYw@mail.gmail.com>
Subject: Re: [PATCH v14 0/7] drm/sun4i: Allwinner A64 MIPI-DSI support
To:     Maxime Ripard <mripard@kernel.org>
Cc:     Chen-Yu Tsai <wens@csie.org>, David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Michael Trimarchi <michael@amarulasolutions.com>,
        Icenowy Zheng <icenowy@aosc.io>,
        linux-sunxi <linux-sunxi@googlegroups.com>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Dec 26, 2019 at 3:08 PM Maxime Ripard <mripard@kernel.org> wrote:
>
> On Sun, Dec 22, 2019 at 06:52:22PM +0530, Jagan Teki wrote:
> > This is v14 version for Allwinner A64 MIPI-DSI support
> > and here is the previous version set[1]
>
> I applied the patches 1 to 6, and fixed checkpatch warnings in the
> patch 5. Make sure to run it before sending patches.

Looks like I missed this time, sorry but usually I would do. Thanks.
