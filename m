Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A7353358F61
	for <lists+devicetree@lfdr.de>; Thu,  8 Apr 2021 23:41:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232532AbhDHVl2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Apr 2021 17:41:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34120 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232544AbhDHVl1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Apr 2021 17:41:27 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 77233C061762
        for <devicetree@vger.kernel.org>; Thu,  8 Apr 2021 14:41:10 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id n138so6437698lfa.3
        for <devicetree@vger.kernel.org>; Thu, 08 Apr 2021 14:41:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=lovVRYDMCrmQr35MOmEQNArT8X6dRKP4z/7vuxFftj8=;
        b=Zl5gQV8vF/H2Up0OGisn1jZyzmSAQmBLAyCjJr58ywKU6drNqMtx+3vFyntbkafr+J
         sgHHVjhHlavHKCObbH3PxF6AD24N1bfVNLKsHtW2H+ZZL07kKug3XKtLjuUH/eOc+h8U
         UD/MQe5/uXeasF1f6QPIYPhQ12wdQvvZLK6RZ9Ciwgz9Vs4r4++AU3BjvLBaUyhE0+F9
         hNIGevuyRZtuq9H4ei+LL2Fa8zIiT3agwDB5NYVtX8xOg09gPydQH8iexb21QAr/Y6Wv
         Ty6ueBC3Da/WiHdkvaC6Njdf0Ujbl4LqeBxHaycG/INaUdxKqKr9HXiLt03+JXb51s74
         72EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=lovVRYDMCrmQr35MOmEQNArT8X6dRKP4z/7vuxFftj8=;
        b=XbZpAcmgqaJ4YkOtlmxb7uhbAnRqRYg0eLcByscse2T4SuvpUEvcEPRhyfdg9NP6Tm
         KPxY/ZOyuQQFq/tVdNMFGwR98NOxVMtpKAvXGnoxj0xsXyjejKV/jnHuYMx2QrCGNxpf
         4sEVggzrkuSur+eC0IGoQzYYihYFTCPakBTNgOn32oC+NYKyb2fbYFlTIPc/ABdQcf4b
         LKPAAU6nH4YoZjiBkQNrm1RE2tfOHMHk07/6aAMCFN17QOklfjj98hfDHJqcbM3tYGEo
         L3iqiPB+Ws71/V8crTglSMrWvFWpoSz0HG3mjYF9qyhrzpaXj1/FlTX2bTAgcksB68Pl
         85tQ==
X-Gm-Message-State: AOAM530c26T4QjAPCBVprgDJx2z+k1V6RVsoec+ok0ifHIObisYsg6sW
        jV6aEmtZnIGa8iV7vQ52w2gZfbEBnBJsnA1g1G4iyA==
X-Google-Smtp-Source: ABdhPJxcGrzxNuMjWggN3LPX6qCyslPcVVy5TwyjrTf/E9/lbetDAeYjzYqp6RtE5WF3xgPZlLpT9B3d3HVmYJ4HGpk=
X-Received: by 2002:a19:ef19:: with SMTP id n25mr792331lfh.157.1617918068947;
 Thu, 08 Apr 2021 14:41:08 -0700 (PDT)
MIME-Version: 1.0
References: <20210405200259.23525-1-petr.vorel@gmail.com> <20210405225222.GD904837@yoga>
 <CACRpkdZQ8qiqFPa0X8deVjZ7nLn_E6s8fmJdr5Ji8AuyJms1ug@mail.gmail.com>
 <YG9TWEJlpDmNeeit@pevik> <ea376d51-cd6c-0028-9602-d007c2bba71e@gmail.com>
In-Reply-To: <ea376d51-cd6c-0028-9602-d007c2bba71e@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 8 Apr 2021 23:40:58 +0200
Message-ID: <CACRpkdb249pKC7VvM6HxRKgwF36_9Qp8G9sD6Troa22fYznuXQ@mail.gmail.com>
Subject: Re: [PATCH 1/1] arm64: dts: qcom: msm8994: Reserve gpio ranges
To:     Konrad Dybcio <konradybcio@gmail.com>
Cc:     Petr Vorel <petr.vorel@gmail.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        MSM <linux-arm-msm@vger.kernel.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Ricardo Ribalda <ribalda@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Apr 8, 2021 at 10:05 PM Konrad Dybcio <konradybcio@gmail.com> wrote:

> On Qualcomm boards GPIOs that are used for "secure" (duh) peripherals,
> like a fingerprint scanner, are not allowed to be controlled from Linux (the "non-secure world").
> Trying to do so causes an immediate reboot due to "attempting to violate the security".

OK I see. Yeah HW security is pretty neat, making it cause a reboot
seems like maybe not the best choice, but hey we know for sure what
is wrong when it happens so it gives a good feeling of having everything
fully inder control. Which is nice, despite the annoyance.

> The GPIOs seem to all be iterated over on boot, except for the ones specified in
> "gpio-reserved-ranges".
(...)
> So, why did it work before!?

We do things like read all direction registers to check if GPIO lines are set up
as input or output. If that causes reset then, well.

> As a result, if such "secure" GPIOs are not declared in the DT, the board essentially dies on TLMM (pinctrl) probe
> (which happens veeeery early - so that all other peripherals can set the pins as they see fit)
> and that's very unpleasant to debug. Without this patch, Petr's device will simply not boot.

In a way specifying it is a very correct thing to do.

When they were registered with the GPIO subsystem before they were,
well registered with the GPIO subsystem which means they are supposedly
available for general-purpose input-output. Which they were not.
They seem highly special-purpose to me. So
reserving them is the right thing to do.

Yours,
Linus Walleij
