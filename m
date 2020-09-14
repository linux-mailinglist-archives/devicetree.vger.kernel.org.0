Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8487F2696B6
	for <lists+devicetree@lfdr.de>; Mon, 14 Sep 2020 22:33:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726179AbgINUdl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Sep 2020 16:33:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37948 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726199AbgINUdf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Sep 2020 16:33:35 -0400
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com [IPv6:2607:f8b0:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26637C06178A
        for <devicetree@vger.kernel.org>; Mon, 14 Sep 2020 13:33:33 -0700 (PDT)
Received: by mail-ot1-x342.google.com with SMTP id g96so1081212otb.12
        for <devicetree@vger.kernel.org>; Mon, 14 Sep 2020 13:33:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2Mk3y4QTN6xRvnXKdPBhBHuIkyeIhKX+xzx1HRoc+Og=;
        b=OTIQLfXHW0RjDPV9vcIIYHecMLZb9OV/uMKqh+bsWegXRtYmZtVl7avhDJ6GbPFe5L
         Mydvpa/Xw2S0ui0IpPFqgSxIs1firZ3KdqZFFHaNLRLd7uY0+g196Ra6qF+/qAagO98v
         ZEtZaBlx34trmmHI/utemWOB0m7eevHR3iD8KW1TnUdx8k3lvXOEDDI0bQYsEo1pof0S
         o7MhOSoj7rXUJ0/fgwDRzkJ7LxWl1pQ64nNT5W2VQcrUJVDrrV6hHS71BRRT/to6TkPz
         /iepClQDeyNBUm5MfcWEeF4Eyd99LCyIT7FxiA/KFuBxbSa9rKnLBHzRHY66mttJJ8dE
         rVKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2Mk3y4QTN6xRvnXKdPBhBHuIkyeIhKX+xzx1HRoc+Og=;
        b=uHvnLWrdNG5Pvb4nCD+S2SDju1qB4YxojJMeYE98HJqLAZRMP8eJsB5QP4Vg11uF5u
         DHlG953hrjElPvZljRPP+Xkwd03p6bxVv6tWxwlo1uLts6iOZmUhTaBYVowKHlTvqd89
         b8ihwXRHWv7orhVQpow9ZJrMCUZ+H/nwBZH7gVSim8fd9Y3itWNQlFvyI0gJpjsg1iAH
         WVKl8ohQ6nI3JIFu75zJt2djj8OpojL8t09ZUiYZUhFYQhDlT3L93ReMOOOJD4Ca08yg
         JMlzkIACBFtYm4opcQgDyZo4luuQUM/jxXIv43N1m8DEZixPLbU2q8lkAEV40ioZxb9t
         rDVg==
X-Gm-Message-State: AOAM533D6Qo5RH6nFjVeGrnve7hUwgVK8JrEDJFPdmmLa3nc1KJHm/5r
        QiH1j8rdpCN0EBcX8nJ2hHEpErNJsqN65Y7ULFymQQ==
X-Google-Smtp-Source: ABdhPJxNcyZxLZwBDTQiU7A9JlkrbqGBOA57WFhCgaY6YWrBJ2a42FnksGejlrLgPN53e6O0ZNxIjfqK4RVKFx0Zal4=
X-Received: by 2002:a9d:2d81:: with SMTP id g1mr10112415otb.352.1600115612473;
 Mon, 14 Sep 2020 13:33:32 -0700 (PDT)
MIME-Version: 1.0
References: <20200912125148.1271481-1-maz@kernel.org>
In-Reply-To: <20200912125148.1271481-1-maz@kernel.org>
From:   John Stultz <john.stultz@linaro.org>
Date:   Mon, 14 Sep 2020 13:33:22 -0700
Message-ID: <CALAqxLWKDO49=-Uh+ZYibMP-_8ubJQPWJUTiPFJZRRDxhW42hw@mail.gmail.com>
Subject: Re: [PATCH 0/6] irqchip: Hybrid probing
To:     Marc Zyngier <maz@kernel.org>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, lkml <linux-kernel@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Frank Wunderlich <linux@fw-web.de>,
        Saravana Kannan <saravanak@google.com>,
        Hanks Chen <hanks.chen@mediatek.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        Jason Cooper <jason@lakedaemon.net>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Android Kernel Team <kernel-team@android.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Sep 12, 2020 at 5:52 AM Marc Zyngier <maz@kernel.org> wrote:
>
> A recent attempt at converting a couple of interrupt controllers from
> early probing to standard platform drivers have badly failed, as it
> became evident that although an interrupt controller can easily probe
> late, device drivers for the endpoints connected to it are rarely
> equipped to deal with probe deferral. Changes were swiftly reverted.
>
> However, there is some value in *optionally* enabling this, if only
> for development purposes, as there is otherwise a "chicken and egg"
> problem, and a few people (cc'd) are working on a potential solution.
>
> This short series enables the infrastructure for modular building
> whilst retaining the usual early probing for monolithic build, and
> introduces it to the three drivers that were previously made to probe
> as platform drivers.
>
> As I don't have any of the HW, this series is fully untested and I'd
> welcome some feedback on it.

I've tested this on db845c along with a small follow-on patch I'll
send to you which sets the qcom-pdc as a tristate in the Kconfig, both
as a module and as a built-in.

Tested-by: John Stultz <john.stultz@linaro.org>

thanks
-john
