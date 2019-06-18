Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8746449A07
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2019 09:12:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727099AbfFRHMg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jun 2019 03:12:36 -0400
Received: from mail-io1-f66.google.com ([209.85.166.66]:46627 "EHLO
        mail-io1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726088AbfFRHMg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Jun 2019 03:12:36 -0400
Received: by mail-io1-f66.google.com with SMTP id i10so27268565iol.13
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2019 00:12:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=HmL++hI8lQoZaDbMBXIiWF1lw21O/uzMRwn2y/O0Xwk=;
        b=iaB9nIVlWH6LV1DMIrnPdNE4Ys6DzvdzS2TdZXtSSCE+E+q//N61iRLXcbqzVqDJaM
         QqF1qJCQwPEafzabEz0t6xWOChZQsyc3weFjZWETylgOH5RD2KFWKbMKG4bLlXxFg9OX
         dq6AUnd4hFcU4o+A0TnJag+k3HkoKHdrN5hKs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=HmL++hI8lQoZaDbMBXIiWF1lw21O/uzMRwn2y/O0Xwk=;
        b=SGClAl1nrTlvGQ3uzfdLsxD2VSI37MlUokiszHHgKedQ6JNf704m99frdZJdaPmcWP
         +/LD7Lz2IchAOTKp2lQtiSNQAccBgh83UyKHknr1vOJk96ncm6uTmp8+8ZYvZQ5e73W1
         fbfA/f57VMQC3ByZAwocXpeADkryGk/eKJKfn0lkTd9DOl1bRW8pSWvop4fLg/DOZoaU
         wtvv3KfuS98ehtic83hZEXHpDqhlk1veNCSIpLQ9wHWQSgRTipGGE2U8mTBMoxwQW6jE
         NiOYs6C/cPqqBFa/00O92lr4SVHlqJ5C2iynyXNm5rQEUBoBRhjodHjM6YFIlEVKzRNT
         p5xQ==
X-Gm-Message-State: APjAAAVxeL2iKKsEARPJW8cfZGQwBfsu++8+aLZlab8F+m7k/aK57R1l
        O+f5TGHl0exWrAAaEfkFpxcFc00Y4RAkKlTUslMSpA==
X-Google-Smtp-Source: APXvYqzNRlDJxCxF6O+3RbQgMZ8Vz5JWFmeOF5YnAqT2HmdW9eHgtOSbGNu6hfDOSRSNCnLlinOQTSXbS6Nte7phh2s=
X-Received: by 2002:a6b:6b14:: with SMTP id g20mr6191396ioc.28.1560841955317;
 Tue, 18 Jun 2019 00:12:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190614164324.9427-1-jagan@amarulasolutions.com>
 <20190614164324.9427-6-jagan@amarulasolutions.com> <20190617114503.pclqsf6bo3ih47nt@flea>
 <CAGb2v66RU=m0iA9VoBiYbake+mDoiiGcd5gGGXvNCBjhY2n+Dw@mail.gmail.com>
In-Reply-To: <CAGb2v66RU=m0iA9VoBiYbake+mDoiiGcd5gGGXvNCBjhY2n+Dw@mail.gmail.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Tue, 18 Jun 2019 12:42:23 +0530
Message-ID: <CAMty3ZA0J+2fSRwX+tS-waJDLMyTOf6UY_1pHjXe0qOk5QuzrQ@mail.gmail.com>
Subject: Re: [linux-sunxi] Re: [PATCH v2 5/9] drm/sun4i: tcon_top: Register
 clock gates in probe
To:     Chen-Yu Tsai <wens@csie.org>
Cc:     Maxime Ripard <maxime.ripard@bootlin.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Michael Trimarchi <michael@amarulasolutions.com>,
        linux-sunxi <linux-sunxi@googlegroups.com>,
        linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jun 17, 2019 at 6:31 PM Chen-Yu Tsai <wens@csie.org> wrote:
>
> On Mon, Jun 17, 2019 at 7:45 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> >
> > On Fri, Jun 14, 2019 at 10:13:20PM +0530, Jagan Teki wrote:
> > > TCON TOP have clock gates for TV0, TV1, dsi and right
> > > now these are register during bind call.
> > >
> > > Of which, dsi clock gate would required during DPHY probe
> > > but same can miss to get since tcon top is not bound at
> > > that time.
> > >
> > > To solve, this circular dependency move the clock gate
> > > registration from bind to probe so-that DPHY can get the
> > > dsi gate clock on time.
> >
> > It's not really clear to me what the circular dependency is?
> >
> > if you have a chain that is:
> >
> > tcon-top +-> DSI
> >          +-> D-PHY
> >
> > There's no loop, right?
>
> Looking at how the DTSI patch structures things (without going into
> whether it is correct or accurate):
>
> The D-PHY is not part of the component graph. However it requests
> the DSI gate clock from the TCON-TOP.
>
> The TCON-TOP driver, in its current form, only registers the clocks
> it provides at component bind time. Thus the D-PHY can't successfully
> probe until the TCON-TOP has been bound.
>
> The DSI interface requires the D-PHY to bind. It will return -EPROBE_DEFER
> if it cannot request it. This in turn goes into the error path of
> component_bind_all, which unbinds all previous components.
>
> So it's actually
>
>     D-PHY -> TCON-TOP -> DSI
>       ^                   |
>       |--------------------
>
> I've not checked, but I suspect there's no possibility of having other
> drivers probe (to deal with deferred probing) within component_bind_all.
> Otherwise we shouldn't run into this weird circular dependency issue.
>
> So the question for Jagan is that is this indeed the case? Does this
> patch solve it, or at least work around it.

Yes, this is what I was mentioned in initial version, since the "dsi"
gate in tcon top is registering during bind, the dphy of dsi
controller won't get the associated clock for "mod" so it is keep on
returning -EPROBE_DEFER. By moving the clock gate registration to
probe, everything bound as expected.
