Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A123E5C140
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2019 18:39:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729361AbfGAQjU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Jul 2019 12:39:20 -0400
Received: from mail-io1-f65.google.com ([209.85.166.65]:39198 "EHLO
        mail-io1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729348AbfGAQjU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Jul 2019 12:39:20 -0400
Received: by mail-io1-f65.google.com with SMTP id r185so30260689iod.6
        for <devicetree@vger.kernel.org>; Mon, 01 Jul 2019 09:39:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=kppcviH+BoC+77/HRSzA2CtnCng6H6sR34sahxlv0iM=;
        b=l8cPKTj8ipi85OjiSdxsurBNgqkamorQzNfjx/xqkapjGRKCzoSEN1wrf0A0alRim5
         pqp047CPO1eIRcvQYOHaZ7kUNhu1N2LjG8SdFidYjiFofK4vUs9GcAZvA63g4wWTZ/CL
         zedE5gR5JSyeesKh8hGIk4cLkNCN36WaOwVAY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=kppcviH+BoC+77/HRSzA2CtnCng6H6sR34sahxlv0iM=;
        b=tdVzT5Pi8enfh4qcWmQr3wd1b3JeIvXrDFI2+vHlLH9od6zj+ERqHDHJIT8j89Drly
         8+nfDYpLIiPDcu23PfWlzC+dxgsIRE4T8j1CNj7e3+ZfKmYvOWsM+Tc2tfG+bEeeA7CY
         +PO3XmtCvcnSplisQV9j1uRbIeWsSUUqORyMsX76e815LB/QRRdWfhsSumpTYAp6ULsb
         xM/r22lSpxm1VD66FQ18JXHtw3+CvLtLmDjuSx25d2OeBes8fgLb5YmIkynld7bT2D+6
         6pqy8YEkwQTn/V7AqRD5HCw5+hkrsTrBEKNqgt6iimeE0zDVG2ES9unyr/UqJsC/TamB
         0xYw==
X-Gm-Message-State: APjAAAWjnu9xQQBzO2Whpc5G/zDuSN1EE5S3OjWXupN3jDWJ5Usl40Uw
        Z/yDuWlJzTGG50Hsf9TtBDsU8com6+A=
X-Google-Smtp-Source: APXvYqwS7DLG+AwEnRpCO1YB40yuQwUAOIE4Xjkg39nE7qbvDWhxqwhoD97JHjB3ffkK1pURklpQ8g==
X-Received: by 2002:a02:bca:: with SMTP id 193mr30099481jad.46.1561999159700;
        Mon, 01 Jul 2019 09:39:19 -0700 (PDT)
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com. [209.85.166.50])
        by smtp.gmail.com with ESMTPSA id a1sm9285143ioo.5.2019.07.01.09.39.19
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Jul 2019 09:39:19 -0700 (PDT)
Received: by mail-io1-f50.google.com with SMTP id e3so30203532ioc.12
        for <devicetree@vger.kernel.org>; Mon, 01 Jul 2019 09:39:19 -0700 (PDT)
X-Received: by 2002:a02:6597:: with SMTP id u145mr30862693jab.26.1561999159046;
 Mon, 01 Jul 2019 09:39:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190401171724.215780-1-dianders@chromium.org>
 <20190401171724.215780-3-dianders@chromium.org> <20190630202246.GB15102@ravnborg.org>
 <20190630205514.GA17046@ravnborg.org>
In-Reply-To: <20190630205514.GA17046@ravnborg.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 1 Jul 2019 09:39:06 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WH4kmhQA0kbKcAUx=oOeqTZiQOFCXYpVWwq+mG7Y7ofA@mail.gmail.com>
Message-ID: <CAD=FV=WH4kmhQA0kbKcAUx=oOeqTZiQOFCXYpVWwq+mG7Y7ofA@mail.gmail.com>
Subject: Re: [PATCH v5 2/7] drm/panel: simple: Add ability to override typical timing
To:     Sam Ravnborg <sam@ravnborg.org>
Cc:     devicetree@vger.kernel.org, David Airlie <airlied@linux.ie>,
        Jeffy Chen <jeffy.chen@rock-chips.com>,
        LKML <linux-kernel@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sean Paul <seanpaul@chromium.org>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        Boris Brezillon <boris.brezillon@collabora.com>,
        =?UTF-8?Q?Enric_Balletb=C3=B2?= <enric.balletbo@collabora.com>,
        =?UTF-8?Q?St=C3=A9phane_Marchesin?= <marcheu@chromium.org>,
        Ezequiel Garcia <ezequiel@collabora.com>,
        Matthias Kaehlcke <mka@chromium.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Sun, Jun 30, 2019 at 1:55 PM Sam Ravnborg <sam@ravnborg.org> wrote:
>
> Hi Douglas.
>
> > > +
> > > +   /* Only add timings if override was not there or failed to validate */
> > > +   if (num == 0 && panel->desc->num_timings)
> > > +           num = panel_simple_get_timings_modes(panel);
> > > +
> > > +   /*
> > > +    * Only add fixed modes if timings/override added no mode.
> >
> > This part I fail to understand.
> > If we have a panel where we in panel-simple have specified the timings,
> > and done so using display_timing so with proper {min, typ, max} then it
> > should be perfectly legal to specify a more precise variant in the DT
> > file.
> > Or what did I miss here?
>
> Got it now.
> If display_mode is used for timings this is what you call "fixed mode".
> Hmm, if I got confused someone else may also be confused by this naming.

The name "fixed mode" comes from the old code, though I guess in the
old code it used to refer to a mode that came from either the
display_timing or the display_mode.

How about if I call it "panel_simple_get_from_fixed_display_mode"?
...or if you have another suggestion feel free to chime in.

NOTE: Since this feedback is minor and this patch has been outstanding
for a while (and is blocking other work), I am assuming that the best
path forward is for Heiko to land this patch with Thierry's Ack and
I'll send a follow-up.  Please yell if you disagree.  I'll respond to
each of your emails separately and then wait for your response before
sending the follow-up series.


-Doug
