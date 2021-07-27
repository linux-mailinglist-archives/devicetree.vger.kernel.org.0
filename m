Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C3B313D8240
	for <lists+devicetree@lfdr.de>; Wed, 28 Jul 2021 00:06:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232289AbhG0WGG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Jul 2021 18:06:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41308 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231814AbhG0WGG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Jul 2021 18:06:06 -0400
Received: from mail-io1-xd32.google.com (mail-io1-xd32.google.com [IPv6:2607:f8b0:4864:20::d32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE95CC061757
        for <devicetree@vger.kernel.org>; Tue, 27 Jul 2021 15:06:05 -0700 (PDT)
Received: by mail-io1-xd32.google.com with SMTP id n19so625637ioz.0
        for <devicetree@vger.kernel.org>; Tue, 27 Jul 2021 15:06:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=engleder-embedded-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=24fNvdDqc9wRqbTVQ35UG+1S1PudTFZXO0uh9mrYHA4=;
        b=sLexgjU7FGdCpOaJn94ehHaz//zF8YcCjdTf438kAAd+yXU8/VeNw2ygeKeShJ84fF
         GAKrEWNWij/LjRY0e4kRswpOfhJnHUHuVaw9/3gggO0RJUXSZ1fkhGo+iZTMDY3Rb4eL
         hxQAPFOWWuMVLpCASXjxByrZZloYng5t1MbRlyjRJCY6QGer4b/+424VseMXCSK3fMU8
         ap9DQvkYNojLxzhZs+cxI0BB1BZokQS7+KVfvkhP0xc5EZu1Oz8eVPWOxUSOmPHq8JHE
         9f0RCAQDY3jcaZpD5c05X6Ls1yEVk5mJxI8zxCpYrJXAtdNawhZrlxM5BgozC19htp00
         mtaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=24fNvdDqc9wRqbTVQ35UG+1S1PudTFZXO0uh9mrYHA4=;
        b=HEhZkOsWfdCUDAdjiQxcXgc7I/kMP31UPFVDKnYjHP7VreC4XBkyjj6xLCO4q7wrqT
         ShegC2dr6ouJDgBzX7nnKRmo8LrHhoJPXW+aaaCfokiBQfpqUGqyv9GhPgghSVu2FNAT
         zMPhYEevLS3/mkOKn8hGhW6q1pU/Em+I87dD0+sZjnycxBkzq0u+8ujbQNBsCMehufZQ
         R25rgvRIJ/ZnaBCHuaAc9cPkL5dQ2UONF4fhzN6GkETNxOpZ8N4VD+rW4yPCGAZT1YTc
         9B6A1dCYc8VnEif6LBz3RLWvPK5lFKsfN0NH9nyhadpqIYg6wI8wN1WT/Vw95oYGsHsg
         njAg==
X-Gm-Message-State: AOAM530F3xkivEpoFmdOMeBs0DZGKMZ/lMfFugOy+gr9QSNm1F2rWF78
        y6YlPUAE6Q49KLKeBPRJ4bCuW6OZ/yvaF2guip+kWQ==
X-Google-Smtp-Source: ABdhPJw1JBbt2TZFpNM518pCAlLevcCsqKZQXWByinHGUOJjOLxcEL10+ZVRwDya6cjszCYWzBaD8U2qzvctvqkiTSE=
X-Received: by 2002:a05:6638:538:: with SMTP id j24mr23110989jar.59.1627423565166;
 Tue, 27 Jul 2021 15:06:05 -0700 (PDT)
MIME-Version: 1.0
References: <20210726194603.14671-1-gerhard@engleder-embedded.com>
 <20210726194603.14671-5-gerhard@engleder-embedded.com> <YP8pM+qD/AfuSCcU@lunn.ch>
In-Reply-To: <YP8pM+qD/AfuSCcU@lunn.ch>
From:   Gerhard Engleder <gerhard@engleder-embedded.com>
Date:   Wed, 28 Jul 2021 00:05:54 +0200
Message-ID: <CANr-f5y7eVbAf_NK3puJa3AcnkLXMbhzfwwmZ+r2KuWMbDhhsA@mail.gmail.com>
Subject: Re: [PATCH net-next 4/5] tsnep: Add TSN endpoint Ethernet MAC driver
To:     Andrew Lunn <andrew@lunn.ch>
Cc:     David Miller <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>,
        netdev <netdev@vger.kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> > This driver provides a driver specific interface in tsnep_stream.c for
> > direct access to all but the first TX/RX queue pair. There are two
> > reasons for this interface. First: It enables the reservation or direct use
> > of TX/RX queue pairs by real-time application on dedicated CPU cores or
> > in user space.
>
> Hi Gerhard

Hi Andrew,

> I expect you will get a lot of push back with a character device in
> the middle of an Ethernet driver. One that mmap the Tx/Rx queue is
> going to need a lot of review to make sure it is secure. Maybe talk to
> the XDP/AF_XDP people, there might be a way to do it through that?

I also expect some discussion about this feature. Mapping device specific
TX/RX queues to user space is not done in mainline Linux so far. It is done
out-of-tree for real-time communication since years. It enables interrupt free
(hard and soft IRQ) zero copy communication without any context switch
between kernel space and user space. This is ideal for real-time. It is similar
to UIO, but with DMA support and only for some TX/RX queues and not for
the whole device.

If the mmap of TX/RX queue can be done by any user space program, then
it might not be secure. The mmap of TX/RX queue will be done by the
real-time application and the real-time application needs to be privileged
anyway (SCHED_FIFO, mlock, ...). So for the real-time use case I don't see
any security problem.

There are some reasons for not using XDP/AF_XDP:
- XDP/AF_XDP does not support timed transmission and this device has
  a very special style of timed transmission (schedule with relative timings
  for DMA start and transmit time within descriptor ring, the relative timings
  define the timing of the _next_ descriptor/frame)
- XDP/AF_XDP requires Linux and the additional TX/RX Queues of this
  device are designed to be used also by other CPU cores which do not run
  Linux
- XDP/AF_XDP needs hard and/or soft IRQ processing

> So i strongly suggest your drop tsnep_stream.c for the moment. Get the
> basic plain boring Ethernet driver merged. Then start a discussion
> about a suitable API for exporting rings to user space.

I will follow your suggestion and drop tsnep_stream.c for the moment.
Any early comments about this feature are welcome, because the direct
use of additional TX/RX queues for real-time communication is the main
feature of this device.

Gerhard
