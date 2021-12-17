Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1117247869D
	for <lists+devicetree@lfdr.de>; Fri, 17 Dec 2021 10:00:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233957AbhLQJAN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Dec 2021 04:00:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50582 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229812AbhLQJAM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Dec 2021 04:00:12 -0500
Received: from mail-ua1-x930.google.com (mail-ua1-x930.google.com [IPv6:2607:f8b0:4864:20::930])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5CDF1C061574
        for <devicetree@vger.kernel.org>; Fri, 17 Dec 2021 01:00:12 -0800 (PST)
Received: by mail-ua1-x930.google.com with SMTP id a14so3182827uak.0
        for <devicetree@vger.kernel.org>; Fri, 17 Dec 2021 01:00:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=1IH63Q90oG2/sG9LVJYEHCd1u9C2HmHeMsRBX0qtkUo=;
        b=qIE8qNdqXPTUkGC9i0YDDZP2+Z4Mb1MUWzSefMskqX5QKqkuhfmvD+G2br+RJjGAkb
         pwQV/bFp+oXMsVJz7aJ2VZZKZc56eqRznRccK/sPEaCf3N7vtXruXVAfTjRM9T6KS93f
         ArrgpUzKYZNiH+O8EQTXEsW6LyZUpPZXPsZCA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=1IH63Q90oG2/sG9LVJYEHCd1u9C2HmHeMsRBX0qtkUo=;
        b=XP4YpkQV9mgqkKcSbwuOE9r89ywj1rLwiY2Da1ea5HISd/q7J0yOoz5vENqeegAcTK
         lrPYGJ9c5UZ+jVIs7sClB4BoOjRf3GIrfvS5Cus2MIDDmCb+JbLrIsQg/jvGrSxqMjy0
         IORu+RrnEH/xyzLIE71wkEpCBUKPRypECvKF/zpRuLgedNWC2aUnGzsTE+p2qkMJuaiC
         2I1gCIsmH854mKv73v2tNkqVYD2tt/GTv2hUr6wP+6/wPBH2lpMNCII+01odF0mK7L6+
         ocMei1uNLAuaJ/l4SEdiYrCMcSZFHKKRmjMeEcFDCVVIxK+/wE49u/XvZskygtSJnNPc
         2MqQ==
X-Gm-Message-State: AOAM532UQGcCEdNjw1LEob22CYH3R9sGDoDVyPxmPU+Yid543r2y3K5z
        O+O152o2GNoCieGnOrVDUdvmMo5kqJurGn2sS9NLOQ==
X-Google-Smtp-Source: ABdhPJzBtMbh27J6qJpt+5sIKjlVPbdSyfevk8+JF4+f8w0xH2iu5rDghZD+yfHmIAyZww+PpPzT4a+7O3u35rmyL2U=
X-Received: by 2002:a67:17c6:: with SMTP id 189mr629048vsx.71.1639731611453;
 Fri, 17 Dec 2021 01:00:11 -0800 (PST)
MIME-Version: 1.0
References: <20211212181906.94062-1-romain.perier@gmail.com>
 <20211212181906.94062-3-romain.perier@gmail.com> <CAFr9PXki8LVdjQC_4eDSuB1dmEmv2K00bWOy92cOXENEoEyeqw@mail.gmail.com>
 <CABgxDoLtD6fAj-c_+gcjJBoe9HLQYxrhSZZdjEC0YJqDssP6SA@mail.gmail.com>
In-Reply-To: <CABgxDoLtD6fAj-c_+gcjJBoe9HLQYxrhSZZdjEC0YJqDssP6SA@mail.gmail.com>
From:   Daniel Palmer <daniel@0x0f.com>
Date:   Fri, 17 Dec 2021 18:00:00 +0900
Message-ID: <CAFr9PXkvJzpFU5x=syR8dXwOuLXPurQoTnDEvmJ-+FrWn5F+ZA@mail.gmail.com>
Subject: Re: [PATCH v2 2/6] clocksource: msc313e: Add support for
 ssd20xd-based platforms
To:     Romain Perier <romain.perier@gmail.com>
Cc:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Russell King <linux@armlinux.org.uk>,
        DTML <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Romain,

On Fri, 17 Dec 2021 at 03:18, Romain Perier <romain.perier@gmail.com> wrote:
>
> Hi Daniel,
>
> What do you think about the following description ?  :  "
>     clocksource: msc313e: Add support for ssd20xd-based platforms
>

>
>     Signed-off-by: Romain Perier <romain.perier@gmail.com>

I looked at the disassembly of the bootrom again and it doesn't look
like it's set there.
I think it's the hardware default for the register.

I'm thinking something like this:

On SSD20X family SoCs the timers are connected to a 432MHz clock
instead of 12MHz that all the previous chips used.
There is no way to reduce or divide these clocks in the clktree yet as
we don't know exactly where the 432MHz clock comes from but it's
enabled at boot.

The SSD20X timers have an input clock divider within the timer itself
to configure the frequency.
timer0 is preconfigured at power up to run at 12MHz so it is backwards
compatible and doesn't need special handling right now.
timer1 and timer2 run at 432Mhz at power up so are not backward compatible.

This commit adds support for the input clock divider register and sets
timer1 and timer2 to run at 48Mhz for clockevents.

Cheers,

Daniel
