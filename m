Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ADFCE30D672
	for <lists+devicetree@lfdr.de>; Wed,  3 Feb 2021 10:39:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233424AbhBCJhx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Feb 2021 04:37:53 -0500
Received: from mail-vs1-f48.google.com ([209.85.217.48]:42990 "EHLO
        mail-vs1-f48.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233421AbhBCJhw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Feb 2021 04:37:52 -0500
Received: by mail-vs1-f48.google.com with SMTP id v19so12742360vsf.9
        for <devicetree@vger.kernel.org>; Wed, 03 Feb 2021 01:37:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=MvldrpsQXbyiISgT1/pCoqDQWmte0DSrfjVAlOcff4s=;
        b=Tj0YYU1LOC/90de6SxKz4hmQBGz+Q9a6vSSOjpdb2qRIo3AMHrcQ4MbLmFDysPpTqj
         PtIIaxKrNSVActt0q28Q7HQuFV4DQ2I1wJC8f8Pj2XDePmGJAUT9u8msbRKTUguFbNLA
         KYlnmSwfvevupn6s7263+nsXy2nLANuE8alKi5Q2mMYMoQv6GlbRQcU8xPt+F2TqJQoW
         EmEBlMG6bu9o9jXiIsEobJrdI4S2YpEkRSIjVQluROzFZnCpoyg6grZyQIPSlsWKThHl
         Sfr1FpUewF/C4iPV8gDTwBCh9WdjIBDUu64zt3tU6F3G2+zKw2pi5pWzoUt/dq9Wgwz7
         9biA==
X-Gm-Message-State: AOAM531Rj8CanEU+0HZU7CJEJurXqkIfh8Qbwnuj3D3m90nydCYB1B32
        rqvhlvSYmY1uD9F6/JGXmLaAIN5vJexBQg==
X-Google-Smtp-Source: ABdhPJyHkf4G/HOPiBw7u8GY/L8CU/Du3TQM7Zaw4yOLIovIrw9BUhb13yTrwtYevgNd5qe8TjllCQ==
X-Received: by 2002:a67:c992:: with SMTP id y18mr1087965vsk.7.1612345031965;
        Wed, 03 Feb 2021 01:37:11 -0800 (PST)
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com. [209.85.217.47])
        by smtp.gmail.com with ESMTPSA id f85sm196852vke.2.2021.02.03.01.37.10
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Feb 2021 01:37:11 -0800 (PST)
Received: by mail-vs1-f47.google.com with SMTP id b10so6663344vsa.8
        for <devicetree@vger.kernel.org>; Wed, 03 Feb 2021 01:37:10 -0800 (PST)
X-Received: by 2002:a05:6102:243:: with SMTP id a3mr1190211vsq.17.1612345030630;
 Wed, 03 Feb 2021 01:37:10 -0800 (PST)
MIME-Version: 1.0
References: <20210127054620.510912-1-geomatsi@gmail.com> <20210203092912.s3wm3y5hfptwirqy@gilmour>
In-Reply-To: <20210203092912.s3wm3y5hfptwirqy@gilmour>
From:   Chen-Yu Tsai <wens@csie.org>
Date:   Wed, 3 Feb 2021 17:36:58 +0800
X-Gmail-Original-Message-ID: <CAGb2v66cskANPS7Zc_atCv9WYRq_aAEUi6Dd6LBrDPODOJ_ueQ@mail.gmail.com>
Message-ID: <CAGb2v66cskANPS7Zc_atCv9WYRq_aAEUi6Dd6LBrDPODOJ_ueQ@mail.gmail.com>
Subject: Re: [PATCH 1/1] ARM: dts: orange-pi-zero-plus2: use fixed mmc indexes
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Sergey Matyukevich <geomatsi@gmail.com>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Feb 3, 2021 at 5:29 PM Maxime Ripard <maxime@cerno.tech> wrote:
>
> Hi,
>
> On Wed, Jan 27, 2021 at 08:46:20AM +0300, Sergey Matyukevich wrote:
> > Driver sunxi-mmc has recently been switched to asynchronous probe.
> > As a result, mmc indexes can be shuffled breaking existing setups
> > where UUIDs are not used for boot devices. Pin mmc indexes to keep
> > running the systems where fixed MMC or eMMC are specified,
> > e.g. root=/dev/mmcblk0p2.
> >
> > Signed-off-by: Sergey Matyukevich <geomatsi@gmail.com>
>
> I'm not sure, really.
>
> That would change the indices once again, and you shouldn't really rely
> on them anyway, there's never been any guarantee on the order of any
> device.

I assume one reason people want stable MMC indices is for setting the
root device. This could be done with UUID or PARTUUID. Another would
be setting the LED trigger to some MMC device, preferably in the DT
so it kicks in when the LED device is created. Though even that isn't
guaranteed since the MMC could probe after the LED. :(

Currently I'm using some shell script to parse the root device then
get the device name and program that as an LED trigger through sysfs.

> And whatever the outcome of that discussion, it definitely shouldn't be
> done for a single board.

I believe this should be done at the SoC level so we would have consistent
MMC indices across the board. However that seems to conflict with the order
swap we currently have in U-boot to support eMMCs seamlessly.

Regards
ChenYu
