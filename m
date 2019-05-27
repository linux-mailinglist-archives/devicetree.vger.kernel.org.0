Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 072742B395
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2019 13:53:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726988AbfE0LxH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 May 2019 07:53:07 -0400
Received: from mail-lf1-f68.google.com ([209.85.167.68]:36018 "EHLO
        mail-lf1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726974AbfE0LxH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 May 2019 07:53:07 -0400
Received: by mail-lf1-f68.google.com with SMTP id y10so11870043lfl.3
        for <devicetree@vger.kernel.org>; Mon, 27 May 2019 04:53:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=jkQ2P05r0CbW3f6Nc/yL+6alMJG9tn6Pn2kcFIlii5k=;
        b=PY1QXMvsBTT+5wZ1zSM7J7vMW6SN5avLhjy0/VrAQXYgaBJepG9Ai4IZ/9tWCgloPb
         5xoxs4mx7F5kZPxhU3rUcPkDpijDA9VjFDacr8eNWaOUIU5yI6kgqzOhfVP+ULykludC
         He0tYpJwaEdc4JONkqP5w9LM5tG8VEM3OzMINepLjOyPzHVkiTktZ0Ed0vAlNnSry+2S
         dZKMWNzwPUdZtF1lir4/GU4Y1GAInSuerD9TN6xfBKjuLkEC3P2XI88cOPHMn1zfmIxt
         xqZ3rLR/SQ2mRuEsRVRa5AMAZgJB6SHjXkonmWx0l6JizB3g8egqrBx24T+iwRjey04U
         IwNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=jkQ2P05r0CbW3f6Nc/yL+6alMJG9tn6Pn2kcFIlii5k=;
        b=XgGrI4kRidieBd0TUayTBx0QDC9AkkVIr8Z1PulyFFRkTeRiUQL8BhlXEo+eKxrq0i
         NPKkCEG8wnsFiHZwR1wD9EpjhWtUU/niJK+swyXrbIOjPeT2rMjlJ+Qr2CaZ1iGRPG61
         N91H0U/evkKSPwue8WAjDBEK0HA35IzAOsaSmX7f/3R4f3TocKRzN5PIkBBLNwFjTwzj
         j6bhfROF4pbE/Z/lWqo9eJZkAA15zli9FtF7HhUYpczx6qO7V/Tg+8kLMlBVbAmOR8eA
         ilSvrlnUCgmEkQjmRgMMfw6V8Zy3Ld1pQXedGSt8hrq5VDIww7CUkIpVkv59WLXvC0y1
         t8RQ==
X-Gm-Message-State: APjAAAWfysL3dOmIxOisagveRKNfzRq971tvOHQ6uz+CiTqsC23RHVnL
        ScKDTC4YDGtoWlGE+VPsCvAkw+5zoQm0eR8ldoauOw==
X-Google-Smtp-Source: APXvYqxDK35ZwKMDb6RKZtyYMyBWL/UKHxLG0Pbv1KKjE1/wwOJP3jgzEapl8KPojM3oi55l5N4mhmwF2CTmPtxOxGE=
X-Received: by 2002:ac2:4209:: with SMTP id y9mr19510582lfh.83.1558957985935;
 Mon, 27 May 2019 04:53:05 -0700 (PDT)
MIME-Version: 1.0
References: <1558611952-13295-1-git-send-email-yash.shah@sifive.com>
 <mvmwoihfi9f.fsf@suse.de> <CAJ2_jOEr5J7_-81MjUE63OSFKL-p9whEZ_FDBihojXP2wvadVg@mail.gmail.com>
 <mvm36l0fhm3.fsf@suse.de>
In-Reply-To: <mvm36l0fhm3.fsf@suse.de>
From:   Yash Shah <yash.shah@sifive.com>
Date:   Mon, 27 May 2019 17:22:27 +0530
Message-ID: <CAJ2_jOH344oH=mvo1n9RJDPjT4ArMNBaogqy0dLCOwCcY7Fwuw@mail.gmail.com>
Subject: Re: [PATCH 0/2] net: macb: Add support for SiFive FU540-C000
To:     Andreas Schwab <schwab@suse.de>
Cc:     David Miller <davem@davemloft.net>,
        netdev <netdev@vger.kernel.org>, linux-kernel@vger.kernel.org,
        linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Palmer Dabbelt <palmer@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Sachin Ghadi <sachin.ghadi@sifive.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 27, 2019 at 1:34 PM Andreas Schwab <schwab@suse.de> wrote:
>
> On Mai 24 2019, Yash Shah <yash.shah@sifive.com> wrote:
>
> > Hi Andreas,
> >
> > On Thu, May 23, 2019 at 6:19 PM Andreas Schwab <schwab@suse.de> wrote:
> >>
> >> On Mai 23 2019, Yash Shah <yash.shah@sifive.com> wrote:
> >>
> >> > On FU540, the management IP block is tightly coupled with the Cadence
> >> > MACB IP block. It manages many of the boundary signals from the MACB IP
> >> > This patchset controls the tx_clk input signal to the MACB IP. It
> >> > switches between the local TX clock (125MHz) and PHY TX clocks. This
> >> > is necessary to toggle between 1Gb and 100/10Mb speeds.
> >>
> >> Doesn't work for me:
> >>
> >> [  365.842801] macb: probe of 10090000.ethernet failed with error -17
> >>
> >
> > Make sure you have applied all the patches needed for testing found at
> > dev/yashs/ethernet branch of:
>
> Nope, try reloading the module.

Yes, I could see the error on reloading the module.
Thanks for the catch. I will fix this in the next version of this patch.

- Yash
