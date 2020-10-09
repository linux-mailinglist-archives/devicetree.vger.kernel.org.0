Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 52E0928860D
	for <lists+devicetree@lfdr.de>; Fri,  9 Oct 2020 11:38:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1733141AbgJIJip (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Oct 2020 05:38:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36550 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1733113AbgJIJip (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Oct 2020 05:38:45 -0400
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com [IPv6:2a00:1450:4864:20::143])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DCF02C0613D2
        for <devicetree@vger.kernel.org>; Fri,  9 Oct 2020 02:38:44 -0700 (PDT)
Received: by mail-lf1-x143.google.com with SMTP id u8so10025803lff.1
        for <devicetree@vger.kernel.org>; Fri, 09 Oct 2020 02:38:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=wQZ85dJNsIyQtNjnJDTR2ihKmDYZl4o1wc+cD1p5Uys=;
        b=EyBXWCuKn5Qfulspno0TqkUKWkmtsntf2WZ6aTm0tZypLd4Ah6UVqvyBZrfYrw6GC3
         WIp1BqHp+4ACn92mT/zB7PHor5fdbk56BcW0Wj5dS6nelhlcD9LhtS9/8wSPEA7TQ0Za
         23lJuLKWC6liqUXNRsqMQPBbZJ60Fd7YQW+SmmzHV1U93+juESSYcLseBKjKvTAMdMDa
         owpSj+DJNBIOKN6aCuSWx4yPgN5rn7npeYJ6htvg9+kZTIy9j4gQG4DCOi4q/PLRGx7b
         9ofFF7x+4XNaJK5r7q+Zi29ZhFqRf36GnKv6VWrvmwUH5oIRRhjFIIqIMTlLahRYR/cO
         fWbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=wQZ85dJNsIyQtNjnJDTR2ihKmDYZl4o1wc+cD1p5Uys=;
        b=ob0FYKeSCNnfjAHZ4mSk+OSLOkdrWHBnymYTc7sfRMzuhJjFcwQA7ARUBK2dxpWEBH
         azMOHzC8FIay7IJg+oIgphjr5CH+MNFIUbFRl6ZqwUFEI/ZIqnEG23s7Pvcv/bCPPd0x
         8Y/0M/b5WXphPc68Sqd6j2m3+k1WoaYzp71qqZYfPMB/8jSwhkyyEdQA1YexGZmsIbrG
         EoamQOFGcjBhapon/psJ9Ciy0fuVpBDA7XVgFp1cCH5/1iFKB+LRIe4xWBr78xAZVDrd
         0EwPKnpzrBHkonjFtpOdaSsaz7CzIDkh8chXDX2Tj1tDMQZc72JD9+3vs+7XBhnid0Z/
         UJ4w==
X-Gm-Message-State: AOAM532/pbwJKvgoWtFOo+2GrrWhQet0w5VMfw3fd3Tgh2Ev8QYJARhr
        xFBbpoBW47u2onhalSGsWoIf8aKURiYiubyETPkAXg==
X-Google-Smtp-Source: ABdhPJw1Hr+9bP5FQEtUOU0p0RHYUw+Mo6ABI9TPDkRcxw0lXEEjdHuU++zVBajvD6EFYP2r4SQStnlEK25XtpZ3UuI=
X-Received: by 2002:ac2:42d8:: with SMTP id n24mr3660836lfl.502.1602236323336;
 Fri, 09 Oct 2020 02:38:43 -0700 (PDT)
MIME-Version: 1.0
References: <20201006142532.2247515-1-lars.povlsen@microchip.com>
 <20201006142532.2247515-3-lars.povlsen@microchip.com> <CACRpkda+OSgma3E0XxXUk8a2yrn5Hpu3a47cBN50rOkoSMkiwQ@mail.gmail.com>
 <87ft6px9wc.fsf@soft-dev15.microsemi.net>
In-Reply-To: <87ft6px9wc.fsf@soft-dev15.microsemi.net>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 9 Oct 2020 11:38:32 +0200
Message-ID: <CACRpkdYqKqqM8D0vrBWbo0=7OFthU2kcK2tjd45dD7DxEkaYWg@mail.gmail.com>
Subject: Re: [RESEND PATCH v3 2/3] pinctrl: pinctrl-mchp-sgpio: Add pinctrl
 driver for Microsemi Serial GPIO
To:     Lars Povlsen <lars.povlsen@microchip.com>
Cc:     Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Lars,

I'm overall mostly happy with the latest posting (not the one I respond to here)

On Thu, Oct 8, 2020 at 12:57 PM Lars Povlsen <lars.povlsen@microchip.com> wrote:
> > On Tue, Oct 6, 2020 at 4:25 PM Lars Povlsen <lars.povlsen@microchip.com> wrote:

> >> +       gc->of_xlate            = microchip_sgpio_of_xlate;
> >> +       gc->of_gpio_n_cells     = 3;
> >
> > So I'm sceptical to this.
> >
> > Why can't you just use the pin index in cell 0 directly
> > and avoid cell 1?
> >
>
> You scepticism has surfaced before :-). The (now) 2 indices relates to
> how the hardware address signals.
>
> Each signal/pin is addressed by port, bit number and direction. We now
> have the direction encoded in the bank/phandle.

I'm sorry but I just don't get it, I suppose. To me it is pretty
straight-forward
that the cells indicate the pin and then the flags. I do understand you
need the port at all, since this is implicit from the reg property
of the DT node. Are these two different things?

Yours,
Linus Walleij
