Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3CCDE16449
	for <lists+devicetree@lfdr.de>; Tue,  7 May 2019 15:10:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726404AbfEGNKs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 May 2019 09:10:48 -0400
Received: from mail-ot1-f68.google.com ([209.85.210.68]:45620 "EHLO
        mail-ot1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726328AbfEGNKs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 May 2019 09:10:48 -0400
Received: by mail-ot1-f68.google.com with SMTP id a10so14801177otl.12
        for <devicetree@vger.kernel.org>; Tue, 07 May 2019 06:10:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=pAgdAjAQ41e+k9RIOAaf7UwVPbjN19zPzB9CqtCyi8o=;
        b=S8yvcDyHGUuySevVVbPrSHU3t8AKRaaUF6KGBJy+P2dAJmiCw3ZklE01rjGliEZPW4
         C2yMlpkmHc1FHLb2I0w5+p1/BEmwSl2dl/i+CsulO4YWdZcu/KtbaktRVu7wpNNzIGXI
         zbFYwyoJyeynlp/9dqdvyIh1uQnz4KrRNOPaI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=pAgdAjAQ41e+k9RIOAaf7UwVPbjN19zPzB9CqtCyi8o=;
        b=EbX/a4PUxdsjoKYJ3Xsrl0PGC2/f7UhJoXD8RDpRfO9X3fcTBtE2RTfOfjqjB+gjxu
         ZNKp432al/XtUFlS7eUHWqbs/35l90gtU5pWs8Z+90BOs3XC3iOHRnUt33lLmssSjVOv
         z3NZwTZLY8oRtxqFPeAw27izZr4U85IKzuEqBvoNhCG2Y9QcZZG8a3WlN4HphbrHT2GQ
         hGgvaZekVgv5h/IvupktFNuqmc1nThYAiUgkdLS7jJ8cyps8IEtJ+dGIOe2BirJx+v98
         X6Ykp0Cvz3JTcDf+PXx4g6rKj/N8xMFfUbn6sbEthCyGnV2qpKplzle46t9xyIiDXzFF
         Q57w==
X-Gm-Message-State: APjAAAXdruiZ/+c97Qy73kDEdZ4FwZ5pyNYOp1DPyYRHUXlO6zq3zXHd
        h3PhGq5upECsYzxOfl5MBbAryWpduob7z5l7jR6iFg==
X-Google-Smtp-Source: APXvYqyq6Oa3R9ujCSp5aX2pGJv5ioCCjL3fBgrFeYLXZnoYKeISsxqO4YXczAuWqNLSXAJntbNAN0ExsIJit4gfVno=
X-Received: by 2002:a05:6830:111:: with SMTP id i17mr4016302otp.322.1557234647846;
 Tue, 07 May 2019 06:10:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190501121448.3812-1-jagan@amarulasolutions.com>
 <20190501193429.GA9075@ravnborg.org> <CAMty3ZAfwVyvmAmenhrQHJcy3eq-Yb61a4WLop_8jS-7vM940A@mail.gmail.com>
 <CAL_Jsq+mYy1JF_cM7sD82aLuUSnZnwsSD6-Q-W1uTp+_oSdRmg@mail.gmail.com>
In-Reply-To: <CAL_Jsq+mYy1JF_cM7sD82aLuUSnZnwsSD6-Q-W1uTp+_oSdRmg@mail.gmail.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Tue, 7 May 2019 18:40:36 +0530
Message-ID: <CAMty3ZBpRABe4u26ZN91JRB+vVF4Z96k-LDoe37d6EdVDkfJsg@mail.gmail.com>
Subject: Re: [PATCH 1/2] drm/panel: simple: Add FriendlyELEC HD702E 800x1280
 LCD panel
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Sam Ravnborg <sam@ravnborg.org>, Heiko Stuebner <heiko@sntech.de>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        devicetree <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        linux-amarula <linux-amarula@amarulasolutions.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 6, 2019 at 8:34 PM Rob Herring <robh+dt@kernel.org> wrote:
>
> On Mon, May 6, 2019 at 4:56 AM Jagan Teki <jagan@amarulasolutions.com> wrote:
> >
> > Hi Sam,
> >
> > On Thu, May 2, 2019 at 1:04 AM Sam Ravnborg <sam@ravnborg.org> wrote:
> > >
> > > Hi Jagan
> > >
> > > On Wed, May 01, 2019 at 05:44:47PM +0530, Jagan Teki wrote:
> > > > HD702E lcd is FriendlyELEC developed eDP LCD panel with 800x1280
> > > > resolution. It has built in Goodix, GT9271 captive touchscreen
> > > > with backlight adjustable via PWM.
> > > >
> > > > Add support for it.
> > > >
> > > > Cc: Thierry Reding <thierry.reding@gmail.com>
> > > > Cc: Sam Ravnborg <sam@ravnborg.org>
> > > > Cc: David Airlie <airlied@linux.ie>
> > > > Cc: Daniel Vetter <daniel@ffwll.ch>
> > > > Cc: dri-devel@lists.freedesktop.org
> > > > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > >
> > > Please submit the binding in a separate patch as per
> > > Documentation/devicetree/bindings/submitting-patches.txt
> >
> > Hmm.. prepared like this initially but few of my patches were combined
> > earlier even-though I sent it separately. anyway let me separate it
> > again.
>
> For what subsystem? All the maintainers that I was aware of doing that
> have stopped.

May be it was recent, Dmitry combined by previous dt and driver changes.

https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=ae97fb589648cd5558f1ceea317404a639307501
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=a5f50c501321249d67611353dde6d68d48c5b959
