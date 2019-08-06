Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0F4E583AAF
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2019 22:52:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725973AbfHFUwi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Aug 2019 16:52:38 -0400
Received: from mail-oi1-f195.google.com ([209.85.167.195]:40310 "EHLO
        mail-oi1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725948AbfHFUwh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Aug 2019 16:52:37 -0400
Received: by mail-oi1-f195.google.com with SMTP id w196so47321542oie.7
        for <devicetree@vger.kernel.org>; Tue, 06 Aug 2019 13:52:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QRKrUd2KqJ4du5nxvXAvlQop3jv0tqBm3byLIAgQWLI=;
        b=SwzrPuuN8fT5umgmdq4EeMXO/yADFmCQB6/jExxNdnyKY/iWPQWRalFZMNkV6hQdmy
         t5hH1tpD3rpgEFV6fivjOr5P6MhN7zWTzaWV3NaaCEjG0QnJtYCDM3+JFuRmPP/15ffG
         +1jOwWQzk50jlHWlFkbI1KQOQcSlZcLScwEeV8Vtl0TegPreJlqMnl3HSSwOuiSgNa97
         BAzDVXy/8QVb7gVj9GZs2MzaoGS82sRqprCGC7gGq9A4ZxRcSB43PjRi6kwtfZQdpCzl
         fqKpudWMGGCWfO/QVTVIibekm2fYDhVuldqTYl1HLTOsCXGTVTMiqtaiGqsll96S4qHc
         96dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QRKrUd2KqJ4du5nxvXAvlQop3jv0tqBm3byLIAgQWLI=;
        b=QSraKUVM/teshaWDhd7aBMbHiC6C95naREx7Ch3YEDgW+edU48xCEuFmCU0L5QAANZ
         guitMsxSo8fUpRFdh4JTt3DuwYRF4gSwTfA7dmW2Bg7s7FkvmpjZwTodtb1jsAqHyHhJ
         8uSyr/51HNUcZ2PI7fgOOxurHSPpPxYl0joEDL2TVYz69tyL3q1i1cWePNpLMqzWmoQg
         vjk8lowl8dzYNhLVZXePfiyWS4ASQgM6PWHS38yT5By4BKq7LNpEBMvGCBneFz8u77e5
         MfJFc9rtq0gppiKt+R5N2ARt8vBGvRfckhv812YKKuGCnFZ06hM6wCVb7jZz3ayXjUnM
         pTYw==
X-Gm-Message-State: APjAAAW6fkaFtmdBGosY0vw0wyXdSll3ZAutVMZaIaBm80o1/P5h7hJf
        +ymT81tthU51ED/ZrcCf+HxjAn/G2lLAl06xWQSvVg==
X-Google-Smtp-Source: APXvYqyVBdLYY9rOvuzFO8SIGfweIFZgDDb91dINNZAADiab7F/YI/FhK8JD/DNqW0aHTRw85VDAH223PiIJmbLw2pw=
X-Received: by 2002:a05:6808:87:: with SMTP id s7mr3925894oic.88.1565124756844;
 Tue, 06 Aug 2019 13:52:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190806140135.4739-1-anarsoul@gmail.com> <89402d22-d432-9551-e787-c8ede16dbe5f@arm.com>
 <CA+E=qVfh7mirJhRsDTeuAVgG55ia936uFSFVKR0N5Pn4GCF1UA@mail.gmail.com> <E1hv5vZ-0000jN-M8@stardust.g4.wien.funkfeuer.at>
In-Reply-To: <E1hv5vZ-0000jN-M8@stardust.g4.wien.funkfeuer.at>
From:   Vasily Khoruzhick <anarsoul@gmail.com>
Date:   Tue, 6 Aug 2019 13:52:47 -0700
Message-ID: <CA+E=qVdHOtebR6xjpwTY_Whp0cHLtv82YULmxLPSEzdLN9TnVg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: allwinner: a64: Drop PMU node
To:     Harald Geyer <harald@ccbib.org>
Cc:     Robin Murphy <robin.murphy@arm.com>,
        Maxime Ripard <maxime.ripard@bootlin.com>,
        Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        arm-linux <linux-arm-kernel@lists.infradead.org>,
        devicetree <devicetree@vger.kernel.org>,
        "Jared D . McNeill" <jmcneill@netbsd.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Aug 6, 2019 at 1:19 PM Harald Geyer <harald@ccbib.org> wrote:
>
> Vasily Khoruzhick writes:
> > On Tue, Aug 6, 2019 at 7:35 AM Robin Murphy <robin.murphy@arm.com> wrote:
> > >
> > > On 06/08/2019 15:01, Vasily Khoruzhick wrote:
> > > > Looks like PMU in A64 is broken, it generates no interrupts at all and
> > > > as result 'perf top' shows no events.
> > >
> > > Does something like 'perf stat sleep 1' at least count cycles correctly?
> > > It could well just be that the interrupt numbers are wrong...
> >
> > Looks like it does, at least result looks plausible:
>
> I'm using perf stat regularly (cache benchmarks) and it works fine.
>
> Unfortunately I wasn't aware that perf stat is a poor test for
> the interrupts part of the node, when I added it. So I'm not too
> surprised I got it wrong.
>
> However, it would be unfortunate if the node got removed completely,
> because perf stat would not work anymore. Maybe we can only remove
> the interrupts or just fix them even if the HW doesn't work?

I'm not familiar with PMU driver. Is it possible to get it working
without interrupts?

>
> Harald
