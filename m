Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 36E1024E582
	for <lists+devicetree@lfdr.de>; Sat, 22 Aug 2020 06:48:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725917AbgHVEs2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 22 Aug 2020 00:48:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35724 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725863AbgHVEs1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 22 Aug 2020 00:48:27 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B914CC061574
        for <devicetree@vger.kernel.org>; Fri, 21 Aug 2020 21:48:26 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id k8so3615440wma.2
        for <devicetree@vger.kernel.org>; Fri, 21 Aug 2020 21:48:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8EpfXuOfl5Lc4X03a/2NthXamDtm3ZTxJlpaERf1P2M=;
        b=E04jO1XaLwTEoC5F7ckK/3aQt1ozC0Fcmt/b8GJiWlnGHUdQBoV46zHaqX8lhyuA6t
         61+o8lWe+YunryUin42fuZz646fxNWnJy0TAxA/h6js4kvJ1SF9qesCf7SuIuuoB8HGl
         AVSzLN/Orw0rBpLQpmsY/cxB9ued9UHWTnUR4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8EpfXuOfl5Lc4X03a/2NthXamDtm3ZTxJlpaERf1P2M=;
        b=U3NNo3iieo8krqTPjmGbMwGPGbBt5conEbJUtgWRRtzXMhzIojhGidybRB6rbUYoqF
         ga1k4PU6vPbjUloleMt/myxgptK4eWJl7m/Z8h3GGayOSq/+q6QPaQ/N7iSi3t54Ygfy
         r+5FuNznWDWGryzCeGc7ZF1LxtIu+Fc67ZKz4KQ8nVPf86fekDtzO7tYIevCzrt3YOZu
         8EJyE3UkwJhqD9zyXXeQlECgdIFySWlPMoxMAYCPlzTnJPGvi5afmOrbDfZqAp7E2bJb
         yZD/RYcIfwZwix9TA508RhDIltDqT7fyHPwQAbB0mo9rDSIUBjo0k6vAsLhMlxaDsW/E
         tiSw==
X-Gm-Message-State: AOAM5306hR9jvN9HecYjULMQzZ8TWk+fAhygUw0TyvljubBdkjJKCQA/
        PgT9epCQuBXoKsA9Xg4dayvyTezTyOR3OAQYhqWWxg==
X-Google-Smtp-Source: ABdhPJw7xCkJoXDkG4cyA0Eab/W2Nf7VdU8EymJP8iNVywtv1/Z8GU515lX7IbfzvyLf86zSlVJwlLuih6meBwQ3rx0=
X-Received: by 2002:a7b:c10d:: with SMTP id w13mr6535376wmi.2.1598071704261;
 Fri, 21 Aug 2020 21:48:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200819034231.20726-1-mark-pk.tsai@mediatek.com> <20200819153757.28993-1-mark-pk.tsai@mediatek.com>
In-Reply-To: <20200819153757.28993-1-mark-pk.tsai@mediatek.com>
From:   Daniel Palmer <daniel@0x0f.com>
Date:   Sat, 22 Aug 2020 13:48:13 +0900
Message-ID: <CAFr9PXni=BmDY6_iuJPnYb3d6XB1VrxE6WP3YtSBxT6NciZMMA@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] irqchip: irq-mst: Add MStar interrupt controller support
To:     Mark-PK Tsai <mark-pk.tsai@mediatek.com>
Cc:     Marc Zyngier <maz@kernel.org>, alix.wu@mediatek.com,
        DTML <devicetree@vger.kernel.org>,
        Jason Cooper <jason@lakedaemon.net>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>, yj.chiang@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Mark-PK,

On Thu, 20 Aug 2020 at 00:38, Mark-PK Tsai <mark-pk.tsai@mediatek.com> wrote:
>
> Add MStar interrupt controller support using hierarchy irq
> domain.
>
> Signed-off-by: Mark-PK Tsai <mark-pk.tsai@mediatek.com>

I've integrated this version into my MStar/SigmaStar tree and tested
on an MStar MSC313E
based board (BreadBee) and I'm happy to say it seems to be working:

$ cat /proc/interrupts
          CPU0
17:       1219     GIC-0  29 Level     arch_timer
18:          0     GIC-0  30 Level     arch_timer
21:          0     GIC-0  42 Level     arm-pmu
24:          0  mst-intc  44 Level     1f002400.rtc
30:          0  mst-intc   2 Level     1f006000.wdt
31:          0  mst-intc   0 Level     1f006040.timer
32:          0  mst-intc   1 Level     1f006080.timer
33:          0  mst-intc  12 Level     1f0060c0.timer
34:          0  mst-intc  40 Level     1f200400.bdma
35:       3977  mst-intc  41 Level     1f200400.bdma
37:        196  mst-intc  34 Level     ttyS0
40:          0  mst-intc  30 Level     soc:usbphy@0
<snip>

So here's my tested by:

Tested-by: Daniel Palmer <daniel@thingy.jp>

I don't think your series contained an update to MAINTAINERS.
If/when you add this could you add my address above as a reviewer so
I'm in the loop if anyone makes changes to this going forward?

Thanks,

Daniel
