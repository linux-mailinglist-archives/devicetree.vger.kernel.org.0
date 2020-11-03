Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AC52B2A37F2
	for <lists+devicetree@lfdr.de>; Tue,  3 Nov 2020 01:42:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725940AbgKCAmV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Nov 2020 19:42:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60184 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725883AbgKCAmV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Nov 2020 19:42:21 -0500
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com [IPv6:2607:f8b0:4864:20::e44])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 03E89C0617A6
        for <devicetree@vger.kernel.org>; Mon,  2 Nov 2020 16:42:20 -0800 (PST)
Received: by mail-vs1-xe44.google.com with SMTP id u7so8513580vsq.11
        for <devicetree@vger.kernel.org>; Mon, 02 Nov 2020 16:42:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=inHX6bFfbXo/rqCNZibX/SoGds+Oh6m2ZoC9dpKySuk=;
        b=cIBtkV3rfYlpJdRmlM5S5gzfFC3gEqaAv+xn3S/pWzIBl/UZeMNKdLEc9zbYw3XzmT
         SnfKp5pu0dJOr+/aK2AYfwcPdDbM6Vni0GB33DXOVAWpzF3nwTuZHzHfxG4O7ANp9J90
         w9HGKNSxw1+Zd1sfs4sY/NnfNlJjtzPwDIxmQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=inHX6bFfbXo/rqCNZibX/SoGds+Oh6m2ZoC9dpKySuk=;
        b=cusjdnbysKkR5fUDXV+YHE4RYO9H23Mj41bMLC62H4y4pFPYf4jHOZZkqeE6Xv8p72
         6vgK1begRKZUUALJMV7ayrqhz7Ur81qmToCIdyWgdY9U+2o9inzcak5xRGE3kP7cCgI1
         ezZV12LygsNdvhbZRhOCG2AR7i44OzG+VKklhzunBzKKXWVotMVQNk3f202HUdS5Y3Iz
         WzhXwFlcnOZJ06sZuYpURpvxyb7xpk7DGUTNBa2pD3lMPjnH6SxoRxsnZWp63yOHgCFk
         39FgQy1V2NtjulcBuVgnzPGgVHB+xdtu4fCoPaKS2sSW+UsuhQCPiYrgJzkv0fey4rLP
         8GGw==
X-Gm-Message-State: AOAM5311Dsj4kUwwPD27EbbH6Wlx+ZWhqN7yh/kKN3PVRBBJsZ7x/+di
        T1+2olFfqiRFEJjFsTbpzsfaeS3EC5SNqw==
X-Google-Smtp-Source: ABdhPJw5bOhV38L2qlcohGegEy4DNSs3KDHvVc0y+TV9aUGmo77dqDE2h7z2i9/KYqNRyEDvDtCp2Q==
X-Received: by 2002:a05:6102:a1a:: with SMTP id t26mr15413317vsa.37.1604364139092;
        Mon, 02 Nov 2020 16:42:19 -0800 (PST)
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com. [209.85.217.41])
        by smtp.gmail.com with ESMTPSA id k1sm2063566vke.25.2020.11.02.16.42.17
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Nov 2020 16:42:18 -0800 (PST)
Received: by mail-vs1-f41.google.com with SMTP id b129so8545083vsb.1
        for <devicetree@vger.kernel.org>; Mon, 02 Nov 2020 16:42:17 -0800 (PST)
X-Received: by 2002:a67:ef98:: with SMTP id r24mr2239428vsp.37.1604364137278;
 Mon, 02 Nov 2020 16:42:17 -0800 (PST)
MIME-Version: 1.0
References: <20201019140601.3047-1-lukasz.luba@arm.com> <d3c64655-dc31-73dc-8483-bf5805a9d389@arm.com>
 <20201102135449.GE2221764@google.com>
In-Reply-To: <20201102135449.GE2221764@google.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 2 Nov 2020 16:41:57 -0800
X-Gmail-Original-Message-ID: <CAD=FV=VDCbWU4ukYwJUsTKMfEz9+55rmdLL1a39JWcPzjUmZCQ@mail.gmail.com>
Message-ID: <CAD=FV=VDCbWU4ukYwJUsTKMfEz9+55rmdLL1a39JWcPzjUmZCQ@mail.gmail.com>
Subject: Re: [PATCH v3 0/4] Clarify abstract scale usage for power values in
 Energy Model, EAS and IPA
To:     Quentin Perret <qperret@google.com>
Cc:     Lukasz Luba <lukasz.luba@arm.com>,
        LKML <linux-kernel@vger.kernel.org>,
        Linux PM <linux-pm@vger.kernel.org>,
        Linux Doc Mailing List <linux-doc@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Amit Kucheria <amitk@kernel.org>,
        Jonathan Corbet <corbet@lwn.net>,
        Dietmar Eggemann <Dietmar.Eggemann@arm.com>,
        morten.rasmussen@arm.com, Matthias Kaehlcke <mka@chromium.org>,
        Rajendra Nayak <rnayak@codeaurora.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>, Nishanth Menon <nm@ti.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, Nov 2, 2020 at 5:54 AM Quentin Perret <qperret@google.com> wrote:
>
> On Monday 02 Nov 2020 at 08:54:38 (+0000), Lukasz Luba wrote:
> > Gentle ping to Quentin and Daniel for sharing opinion on this patch set.
> > If you are OK, then I could use this as a base for next work.
>
> One or two small nits, but overall this LGTM. Thanks Lukasz.
>
> > As you probably know I am working also on 'sustainable power' estimation
> > which could be used when there is no DT value but it comes from FW.
> > That would meet requirement from Doug, when the DT cannot be used,
> > but we have sustainable levels from FW [1].
>
> Cool, and also, I'd be happy to hear from Doug if passing the sustained
> power via sysfs is good enough for his use-case in the meantime?

It does sound like sysfs could be made to work for us, but it's
definitely a workaround.  If the normal way to set these values was
through sysfs then it would be fine, but I think most people expect
that these values are just setup properly by the kernel.  That means
anyone using our board with a different userspace (someone running
upstream on it) would need to figure out what mechanism they were
going to use to program them.  There's very little advantage here
compared to a downstream patch that just violates official upstream
policy by putting something bogoWatts based in the device tree.

My current plan of record (which I don't love) is basically:

1. Before devices are in consumer's hands, accept bogoWatts numbers in
our downstream kernel.

2. Once devices are in consumers hands, run the script I sent out to
generate some numbers and post them upstream.

If, at some point, there's a better solution then I'll switch to it,
but until then that seems workable even if it makes me grumpy.


-Doug
