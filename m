Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id F033E29020
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2019 06:40:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725851AbfEXEkj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 May 2019 00:40:39 -0400
Received: from mail-lj1-f194.google.com ([209.85.208.194]:46448 "EHLO
        mail-lj1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725710AbfEXEkh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 May 2019 00:40:37 -0400
Received: by mail-lj1-f194.google.com with SMTP id m15so7402137ljg.13
        for <devicetree@vger.kernel.org>; Thu, 23 May 2019 21:40:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=rRM8a/2TtZzcDJu40/I1y3WAHnEd2NwaRkAkmAY7Pbs=;
        b=JYahaxVjVRWEcKQda8kVjGL2wDABM1W5WBX/QUgmobVeLwQojkfjKb9PRxyYNXasrg
         IKej1xeUqkWYvs8MSxYCSz2eckUPl9QYwVSvU9wIDRISXtICeXlDoiN8N5l+n9PUMdzU
         jxo0/kvTMRTgRSQG2nCCRK/khQNCwkVsaJo0TvU366iBxlTUum4/OG6jeY6R7y1xnM8M
         jfDFyOi6F+NaxhkHh/GSZ+AqLwXaMAKvGFRB29mD574459O/mnCaBIFERL+Bvdpd5PVv
         neMNBP/zkzT8R+0AoYdaWMtzS5azRHDPF82fbyGymiIy5PMglmcEksZZk0V1OaqWE80l
         rqrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rRM8a/2TtZzcDJu40/I1y3WAHnEd2NwaRkAkmAY7Pbs=;
        b=XOy8ucW6negR9m3FqbcMKoGUuNYyOBX8bj11P6TVHqbLCcnfoVfOsX0nqSMSIiJX6J
         m9lnG28JuUUMy+Wi+1Gg83N9w1iJ8xNxwuPv916MU95jH2fyEnXRFmrq3xbD93dFNw7D
         p62xvnY9znYrbyjRc46qq2R2hIpPCYYgMVmM5rkUlA2zgXIzr/cfelGvh0DsnIvZ5Lwh
         eaiLxwUr8QdJdcm8fnXfHIlLVEjThp5ak9o/YzTNnzEQ+/1AH2cUrdosVKU7sO3KfN1f
         GfHZ32llj3qYRhiLx5SIPlyulXxyS0oZup25w1LNCsXxANOhqq+hITj/1Xt1FN73XesU
         tMGg==
X-Gm-Message-State: APjAAAUhpK0JuJcC2TBTxJniM7N4LCEfBosOBLtoayelp0B8NTkyqYT+
        pwYyp0FVQPVlCYKN0JSsyWSXnxUv1x2z7gswyAUlBA==
X-Google-Smtp-Source: APXvYqyPMrr+pems5snP2y5pBVnjhlfmJgkwgMVDQOSPLPyKkA9ga7l8hVA6NbIaTAmeEBPJ+euWW69CwomX7WDRnxs=
X-Received: by 2002:a2e:82c5:: with SMTP id n5mr15440974ljh.175.1558672835426;
 Thu, 23 May 2019 21:40:35 -0700 (PDT)
MIME-Version: 1.0
References: <1558611952-13295-1-git-send-email-yash.shah@sifive.com> <mvmwoihfi9f.fsf@suse.de>
In-Reply-To: <mvmwoihfi9f.fsf@suse.de>
From:   Yash Shah <yash.shah@sifive.com>
Date:   Fri, 24 May 2019 10:09:58 +0530
Message-ID: <CAJ2_jOEr5J7_-81MjUE63OSFKL-p9whEZ_FDBihojXP2wvadVg@mail.gmail.com>
Subject: Re: [PATCH 0/2] net: macb: Add support for SiFive FU540-C000
To:     Andreas Schwab <schwab@suse.de>
Cc:     davem@davemloft.net, netdev@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        mark.rutland@arm.com, nicolas.ferre@microchip.com,
        Palmer Dabbelt <palmer@sifive.com>, aou@eecs.berkeley.edu,
        ynezz@true.cz, Paul Walmsley <paul.walmsley@sifive.com>,
        Sachin Ghadi <sachin.ghadi@sifive.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Andreas,

On Thu, May 23, 2019 at 6:19 PM Andreas Schwab <schwab@suse.de> wrote:
>
> On Mai 23 2019, Yash Shah <yash.shah@sifive.com> wrote:
>
> > On FU540, the management IP block is tightly coupled with the Cadence
> > MACB IP block. It manages many of the boundary signals from the MACB IP
> > This patchset controls the tx_clk input signal to the MACB IP. It
> > switches between the local TX clock (125MHz) and PHY TX clocks. This
> > is necessary to toggle between 1Gb and 100/10Mb speeds.
>
> Doesn't work for me:
>
> [  365.842801] macb: probe of 10090000.ethernet failed with error -17
>

Make sure you have applied all the patches needed for testing found at
dev/yashs/ethernet branch of:
https://github.com/yashshah7/riscv-linux.git

In addition to that, make sure in your kernel config GPIO_SIFIVE=y
In v2 of this patch, I will add this select GPIO_SIFIVE config in the
Cadence Kconfig file.

- Yash
