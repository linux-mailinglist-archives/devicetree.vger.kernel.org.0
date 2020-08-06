Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 15CD723D92C
	for <lists+devicetree@lfdr.de>; Thu,  6 Aug 2020 12:14:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729287AbgHFKNf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Aug 2020 06:13:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38402 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729334AbgHFKMe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Aug 2020 06:12:34 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0BC17C061575
        for <devicetree@vger.kernel.org>; Thu,  6 Aug 2020 03:12:34 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id 3so9118234wmi.1
        for <devicetree@vger.kernel.org>; Thu, 06 Aug 2020 03:12:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=sVXbFojH/0R1sh5NGJY6hM5Fv6yHchdFYqFYRJiPcsk=;
        b=RCqGu7txZxmTvjk8hFf9VCO6P0oOQtU9w1qLjI9bgEqPurJEc5ppShIfh23PTPqZOF
         Rx4V3jSS2vqgcGVkhDFvZIr71G3bon5/yAvpGu8v4V3+H8kAyNOvxjumBbk9gU8dCboq
         XiuD6bY5nCpwm0ePducl8RnH1HsiCdyzM5SwY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=sVXbFojH/0R1sh5NGJY6hM5Fv6yHchdFYqFYRJiPcsk=;
        b=pUBzcD/qIvfwBvyd8YnVc+9GmmwWTErx5EyVLdSevZ3ppmt7toWHJyzNGJYL04gP04
         FZjf4CEELvOVWBlAESyMJj7ACajC8d09JgQFgIXLdr2e1MbH2VVy0OyNHPqT5UP3vfHG
         z5q/6O33Igo3RxLzEY4snD1W9iXdGMbMHW2Gr9GGmecUv8XabrAXXi6rbMVetP7QR8Zk
         mxplsxqQ9Lqgkq610sqOX0TXUJtcU26VADCbbE2Ai+uu3wO5wGSjbYkt0U1YA0y/Odih
         aui1ofGctgzwYvS6WrsHsVa2Ii1kbOaukDqXT1QGEywDhWzjZIm91YbCmY0uGUrlS+JX
         ZnTg==
X-Gm-Message-State: AOAM533huf9DJMXaiDMEkcptnuqD/Aj46IjmhB7qpGFdm48joA0UKZSm
        dQk+gkfAC/M8XAcvTDK+2rXTQiEtxiU5lqEoC1qgkQ==
X-Google-Smtp-Source: ABdhPJzlXXZln0onZBt7l5va/GB6ImScyHaiS3RfhGoDY/VOeSuREACSW8Vh6oIT4OB38N29lX47wSMOiyyn3mPjIOY=
X-Received: by 2002:a1c:2646:: with SMTP id m67mr7719681wmm.137.1596708752740;
 Thu, 06 Aug 2020 03:12:32 -0700 (PDT)
MIME-Version: 1.0
References: <20200803062214.24076-1-mark-pk.tsai@mediatek.com>
In-Reply-To: <20200803062214.24076-1-mark-pk.tsai@mediatek.com>
From:   Daniel Palmer <daniel@0x0f.com>
Date:   Thu, 6 Aug 2020 19:12:21 +0900
Message-ID: <CAFr9PX=Gk9h6ASi6saBLhoZ45g-WqCzDQo2XWT033fJykFSY_g@mail.gmail.com>
Subject: Re: [PATCH 0/2] irqchip: irq-mt58xx: Add mt58xx series interrupt
To:     Mark-PK Tsai <mark-pk.tsai@mediatek.com>
Cc:     yj.chiang@mediatek.com, alix.wu@mediatek.com, tglx@linutronix.de,
        jason@lakedaemon.net, Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        linux-kernel@vger.kernel.org, DTML <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Mark-PK,

Your driver seems to be for the same interrupt controller IP that is
present in MStar's TV and camera SoCs and now SigmaStar's SoCs.
I sent a series[0] for a driver very similar to yours but for the
MStar SoCs. Do you know if it would be possible to confirm if they are
the
same thing? MediaTek bought MStar a few years ago so it seems likely
but I have no hard information.

If they are the same thing could we work on making one series that
supports both use cases?
It's also possible that if the interrupt controller is the same some
other things like the SPI NOR controller etc are also common and
working
on a single driver for those would save us both time.

[0] - https://lore.kernel.org/linux-arm-kernel/20200805110052.2655487-1-daniel@0x0f.com/
