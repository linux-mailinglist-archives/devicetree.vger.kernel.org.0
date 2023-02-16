Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 181BF6992E7
	for <lists+devicetree@lfdr.de>; Thu, 16 Feb 2023 12:14:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230407AbjBPLOy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Feb 2023 06:14:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39088 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230236AbjBPLOw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Feb 2023 06:14:52 -0500
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com [IPv6:2607:f8b0:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC9D82DE6E
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 03:14:49 -0800 (PST)
Received: by mail-pg1-x532.google.com with SMTP id x31so1035408pgl.6
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 03:14:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Avjd1bSEYKBQwiRvP4rk5Jz5oyYwjLMshH18syYNq5w=;
        b=q1uY/Gu9ekbGw6hR893QCGaPMNAg9e6rZrsqIVmLBZPMPvMv1e7cvQZnW7ll67JAv9
         qrekBncHqxl/kpnyJY3U1H6RK0ju6WQi+/nbWjntgoHbij22DP6/9r42E5eLJj1tCh9v
         HE/L16XXH2eunjWebl76ACP0flcFcAJRlzHaxtgbyUle7Nc896L3sZ5YrIGNj3sB3kMb
         WLEjWF270rOLYzJAEihSGF4l4kxHZ4pFtkJ3+4Q0+TVWbhJGwO+qfYrbCFHkE57/XzPU
         CgJoLKFrEyAaiXKUcsuSiBR9AMDkmHWNHjN2W6XMwautll89kBNvNG04Yyxab0mYTIPn
         Qy7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Avjd1bSEYKBQwiRvP4rk5Jz5oyYwjLMshH18syYNq5w=;
        b=l+ph4DBVdsxlBcPZd2RC6NH3qSbEMfitUfDQ+csV32X4T6OCuLUWa3b3g8hK4TYsXf
         SnArT27QGZ+Lb+7/yK2v+NU7lq48F1PXRjSS+sQFs4MCp7ookfHQuGpQ6Ui3k2xyV2jn
         dGz04ulk7Srzqiw9oERdYyTwxk/B5AEDxqFfXz4SVm3PbK/aRin5DqAtqyM56T48TKz/
         XRTmIMHZmuHN2nPWAZ2XnSn7HMBeU5vScaQ07+Y38QwC9fvQacdU0t54qfTulf64CZF6
         nON6qK66qFDRjFNnl80QY8OzP3FX58Ptgvxe5MfKXZiBJmOkpM6QZcupS7INhlzYoCUP
         Bsfg==
X-Gm-Message-State: AO0yUKU1QlejnSn3OY7RaCNluHRQpqmDO/wJ8PBQLEBn9UhONgCtBxoR
        SIii73azu7Uew/AyLv5zoSg5zmJjUoR68xC2imvsUA==
X-Google-Smtp-Source: AK7set9jfIQb4YfFa1aI3LxnksHzAibjPxuDbZDPL2EwpTo+AnXmUsqWbePsGPMjqBdeGZEbrI+E1selRjGfj2UlJzE=
X-Received: by 2002:a05:6a02:28c:b0:4f1:cd3a:3e83 with SMTP id
 bk12-20020a056a02028c00b004f1cd3a3e83mr233413pgb.3.1676546089229; Thu, 16 Feb
 2023 03:14:49 -0800 (PST)
MIME-Version: 1.0
References: <15df9ef0-9b73-ca5a-d3cf-0585cd135bc5@gmail.com>
 <CAPDyKFroB-TULOeia4OyXBW6rWMs7e3_Fp4Uw878Q8Gt=TDfag@mail.gmail.com> <48b4a87a-c5e9-c3ec-2492-bb2afb495398@linaro.org>
In-Reply-To: <48b4a87a-c5e9-c3ec-2492-bb2afb495398@linaro.org>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Thu, 16 Feb 2023 12:14:13 +0100
Message-ID: <CAPDyKFoWyPHV2_EgxLrDu8EPVsS1gtTfdd4=QnsEuMr9wvGeJw@mail.gmail.com>
Subject: Re: [PATCH v2 0/3] mmc: support setting card detect interrupt from
 drivers and use it in meson-gx
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Heiner Kallweit <hkallweit1@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 16 Feb 2023 at 10:18, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 15/02/2023 13:48, Ulf Hansson wrote:
> > On Tue, 14 Feb 2023 at 22:39, Heiner Kallweit <hkallweit1@gmail.com> wrote:
> >>
> >> On certain platforms like Amlogic Meson gpiod_to_irq() isn't supported
> >> due to the design of gpio / interrupt controller. Therefore provide an
> >> option for drivers to pass the card detect interrupt number
> >> (retrieved e.g. from device tree) to mmc core.
> >>
> >> v2:
> >> - use another mechanism for passing and storing the cd interrupt
> >> - add patch 2
> >>
> >> Heiner Kallweit (3):
> >>   mmc: core: support setting card detect interrupt from drivers
> >>   dt-bindings: mmc: meson-gx: support specifying cd interrupt
> >>   mmc: meson-gx: support platform interrupt as card detect interrupt
> >>
> >>  .../bindings/mmc/amlogic,meson-gx-mmc.yaml      |  2 +-
> >>  drivers/mmc/core/slot-gpio.c                    | 17 ++++++++++++++++-
> >>  drivers/mmc/host/meson-gx-mmc.c                 |  5 ++++-
> >>  include/linux/mmc/slot-gpio.h                   |  1 +
> >>  4 files changed, 22 insertions(+), 3 deletions(-)
> >>
> >
> > Applied for next, thanks!
>
> A bit too fast. Binding is incorrect - suggests ABI break and makes
> interrupts not described enough.

Sorry! Thanks for pointing this out. Heiner is fixing this with an
incremental patch on top, please help to review.

Kind regards
Uffe
