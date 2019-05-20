Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C85022407D
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2019 20:36:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726330AbfETSf6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 May 2019 14:35:58 -0400
Received: from mail-vk1-f196.google.com ([209.85.221.196]:34535 "EHLO
        mail-vk1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725601AbfETSf6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 May 2019 14:35:58 -0400
Received: by mail-vk1-f196.google.com with SMTP id d7so4138109vkf.1
        for <devicetree@vger.kernel.org>; Mon, 20 May 2019 11:35:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=rJByBVnGlp63e7yCKsZ7SDuzR3kRoRVQ2u81Jed5J5c=;
        b=SXkXCP1GPoj17g4AfmKPdPV0NMDi4QcPSc930K1MaUzykox1V/AWM7p2qi1vBMUV6A
         59guNLCDAi9jEpOeuMIHyL4RMfZYpZB5w864pCNBczZY7zbrSjAe4aT6y3rUL1H7rohE
         f828A3dpBu61qyr0ohzqi8XBPtXz4sf44/Wug=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=rJByBVnGlp63e7yCKsZ7SDuzR3kRoRVQ2u81Jed5J5c=;
        b=A9pdQFnf2wMxjzqcIPOSjQyu6dSFVmS4Zi/0nHs2S8vEU7GiuHx2pXz2pd1CXut9vb
         6mOx8NanaRV8IDVOle2ep9+P/rr0oqXem3gTQG1AD+5A5xruiXBrxM6GouDm/Rc4qrfe
         Kc7+N63VjWluBKyYiYAPRciwc3/Y9TOkZBuYD1lEdH1ziu3JqmDFNfwYq+VRS+45EsBe
         7dKSb1ZSLNncANku02ty60gf3shSNlA50ySvky5i1PL+Yw7DdhX2iN4p7wpHdJS+m9qI
         kDolBkQBmm0C5b0EtZ3xfyyXmnpeN7kJMAHYGGw8AXewT6uodRapPy8XeKA+7/9oFKiz
         LKuQ==
X-Gm-Message-State: APjAAAUcrf8yNDtqs+GTSPNEwj3anv8t/T7h84Q1RM3HNNg8fcWne9oj
        QuyJWyUdThyHE1lc3iIpTGbbzCcupdg=
X-Google-Smtp-Source: APXvYqys0+f3k6iN/71dUAg9e3zhOqQWTbSZD7jBnOKGUtdmEZUqdycdFXP1lqlXP5lTCYl5nlBuag==
X-Received: by 2002:a1f:ee09:: with SMTP id m9mr8870637vkh.82.1558377357579;
        Mon, 20 May 2019 11:35:57 -0700 (PDT)
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com. [209.85.217.48])
        by smtp.gmail.com with ESMTPSA id n68sm25011773vkd.0.2019.05.20.11.35.55
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 May 2019 11:35:55 -0700 (PDT)
Received: by mail-vs1-f48.google.com with SMTP id x8so5610027vsx.13
        for <devicetree@vger.kernel.org>; Mon, 20 May 2019 11:35:55 -0700 (PDT)
X-Received: by 2002:a67:dd8e:: with SMTP id i14mr31065192vsk.149.1558377354571;
 Mon, 20 May 2019 11:35:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190401171724.215780-1-dianders@chromium.org>
 <20190401171724.215780-2-dianders@chromium.org> <20190408103240.GF6644@ulmo> <CAD=FV=UJXLeEDPRAHY5-f2D4qJ4rq0LmKUDf4MANrb5KOm_x=g@mail.gmail.com>
In-Reply-To: <CAD=FV=UJXLeEDPRAHY5-f2D4qJ4rq0LmKUDf4MANrb5KOm_x=g@mail.gmail.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 20 May 2019 11:35:43 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WKkfhS8q2Wnx6PfHyq8m6oGhu=RideOykdTQ4dJrwfUg@mail.gmail.com>
Message-ID: <CAD=FV=WKkfhS8q2Wnx6PfHyq8m6oGhu=RideOykdTQ4dJrwfUg@mail.gmail.com>
Subject: Re: [PATCH v5 1/7] dt-bindings: Add panel-timing subnode to simple-panel
To:     Thierry Reding <thierry.reding@gmail.com>
Cc:     Heiko Stuebner <heiko@sntech.de>,
        Sean Paul <seanpaul@chromium.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        Boris Brezillon <boris.brezillon@collabora.com>,
        Ezequiel Garcia <ezequiel@collabora.com>,
        =?UTF-8?Q?Enric_Balletb=C3=B2?= <enric.balletbo@collabora.com>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Eric Anholt <eric@anholt.net>,
        Jeffy Chen <jeffy.chen@rock-chips.com>,
        =?UTF-8?Q?St=C3=A9phane_Marchesin?= <marcheu@chromium.org>,
        devicetree@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
        David Airlie <airlied@linux.ie>,
        Mark Rutland <mark.rutland@arm.com>,
        Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Thierry,

On Mon, Apr 8, 2019 at 7:39 AM Doug Anderson <dianders@chromium.org> wrote:
>
> Thierry,
>
> On Mon, Apr 8, 2019 at 3:32 AM Thierry Reding <thierry.reding@gmail.com> =
wrote:
> >
> > On Mon, Apr 01, 2019 at 10:17:18AM -0700, Douglas Anderson wrote:
> > > From: Sean Paul <seanpaul@chromium.org>
> > >
> > > This patch adds a new subnode to simple-panel allowing us to override
> > > the typical timing expressed in the panel's display_timing.
> > >
> > > Changes in v2:
> > >  - Split out the binding into a new patch (Rob)
> > >  - display-timings is a new section (Rob)
> > >  - Use the full display-timings subnode instead of picking the timing
> > >    out (Rob/Thierry)
> > > Changes in v3:
> > >  - Go back to using the timing subnode directly, but rename to
> > >    panel-timing (Rob)
> > > Changes in v4:
> > >  - Simplify desc. for when override should be used (Thierry/Laurent)
> > >  - Removed Rob H review since it's been a year and wording changed
> > > Changes in v5:
> > >  - Removed bit about OS may ignore (Rob/Ezequiel)
> > >
> > > Cc: Doug Anderson <dianders@chromium.org>
> > > Cc: Eric Anholt <eric@anholt.net>
> > > Cc: Heiko Stuebner <heiko@sntech.de>
> > > Cc: Jeffy Chen <jeffy.chen@rock-chips.com>
> > > Cc: Rob Herring <robh+dt@kernel.org>
> > > Cc: St=C3=A9phane Marchesin <marcheu@chromium.org>
> > > Cc: Thierry Reding <thierry.reding@gmail.com>
> > > Cc: devicetree@vger.kernel.org
> > > Cc: dri-devel@lists.freedesktop.org
> > > Cc: linux-rockchip@lists.infradead.org
> > > Signed-off-by: Sean Paul <seanpaul@chromium.org>
> > > Signed-off-by: Douglas Anderson <dianders@chromium.org>
> > > ---
> > >
> > >  .../bindings/display/panel/simple-panel.txt   | 22 +++++++++++++++++=
++
> > >  1 file changed, 22 insertions(+)
> > >
> > > diff --git a/Documentation/devicetree/bindings/display/panel/simple-p=
anel.txt b/Documentation/devicetree/bindings/display/panel/simple-panel.txt
> > > index b2b872c710f2..93882268c0b9 100644
> > > --- a/Documentation/devicetree/bindings/display/panel/simple-panel.tx=
t
> > > +++ b/Documentation/devicetree/bindings/display/panel/simple-panel.tx=
t
> > > @@ -15,6 +15,16 @@ Optional properties:
> > >    (hot plug detect) signal, but the signal isn't hooked up so we sho=
uld
> > >    hardcode the max delay from the panel spec when powering up the pa=
nel.
> > >
> > > +panel-timing subnode
> >
> > Is there any reason why we need the panel- prefix? This is already part
> > of a panel definition, so it's completely redundant. Why not just name
> > the subnode "timing"?
>
> It was a really long time ago since this patch series was idle for a
> while, but you previous had similar feedback in v3 but ended up OK
> with it.  See:
>
> https://patchwork.kernel.org/patch/10207583/
>
> I believe the original node name came out of some back and forth
> between Rob and Sean.  As far as I can tell, the context is back in
> <https://patchwork.kernel.org/patch/10203483/>.  I think Rob wanted it
> to follow other similar node names.
>
>
> That all being said, if you feel strongly about it being called
> "timing" and Rob's OK w/ that too then I'll re-spin the series.

With 5.2-rc1 out, maybe this series is ready to land?  If you'd like
me to change things as per above I can.  ...but it feels like keeping
the already-agreed-upon name might be easiest / best?  Presumably
you'd land patches 1, 2, 4, and 5 and then Heiko could land the dts
patches?

Thanks!

-Doug
