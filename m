Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 42F4C375249
	for <lists+devicetree@lfdr.de>; Thu,  6 May 2021 12:26:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234400AbhEFK1o (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 May 2021 06:27:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49034 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234375AbhEFK1n (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 May 2021 06:27:43 -0400
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EDEA1C061574
        for <devicetree@vger.kernel.org>; Thu,  6 May 2021 03:26:44 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id w4so6375123ljw.9
        for <devicetree@vger.kernel.org>; Thu, 06 May 2021 03:26:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=q7Lt8jBe6wv03L7Ev9R6s3zonVps5OT2POfrWhLS1O0=;
        b=NFJsPlS4lkvyLn3LRx72UHEDMNshTOZzxwz0yMZzQM6RudpaF5F5pOomw4noNlH8dy
         reociugEQom2ZHSOMYToiAPYZdzIJO/p8iL9V5JcvEJH9qsqf/wq7jrSTNKNIMD3T7Ld
         Uf6ZntZVT3+DdZ4u5NHcPdG/4UmvQWRE12E5GxaYNuVob8DwmjsDnbyrGsa69KccIcKT
         WWJ6pFdJtiJjnqHni4xcUxmZ4pQnJPX4UvBwrFvh5npNzgcNKa2lnh+DgpP/1S9x3EdP
         vinGZfVu/Dm2a6PBStO/6vI4c4a8O7ijr0qWEy65WJnaGUpeYh0oue0/LPAUxPNS70pA
         egFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=q7Lt8jBe6wv03L7Ev9R6s3zonVps5OT2POfrWhLS1O0=;
        b=QiV7zuZt3bUvs02Vx9Eu9xXuIeIBPvgSCKuMdczth1AmJ4W5iJCiiLhE/u9UbKK+L3
         VaBNIpkjFc0UlN8BO7fCIhnL39JMW+YWgbqNEdVgsN4wtvvnJ2lpB0D+ZvOVT3Kf4Ro9
         nGe2gKKqzN0yIeFu0MmrtbX8jXi8J+WVRNVt2gm31yOYiIh33iX9tssbVU2wqRgVvjE6
         xvfjIyw+9X/bMeB2SSiUAQr00roNaqBsa0G3VKRYSsCFdJ4OtKPSTMQ8MA3ZBR45oZxm
         hF/6aT0r2nn/Wzp3ViCfYjT28z0tOftzD747eIolqBg12xL6PNnRMkVjJM2QkqcDYQxC
         1g1g==
X-Gm-Message-State: AOAM531viDKrO7rohtXs1T0YfQuTkJf0f6vGzgA+t/Doh82bfbUezVSj
        uNAJ99q6i8HVl92bOqEsfKRMLKMaecRkMlLQMOkzKw==
X-Google-Smtp-Source: ABdhPJxci8zA6ho0aB6xDVxMD+TN9K2noCf9jKls117BIuDpVHkP+exwEZFomfQiAE5eaq4sUwzXLRUcJth0e2ZqDP8=
X-Received: by 2002:a2e:81d0:: with SMTP id s16mr2938854ljg.74.1620296803490;
 Thu, 06 May 2021 03:26:43 -0700 (PDT)
MIME-Version: 1.0
References: <20210428175503.3692090-1-clabbe@baylibre.com>
In-Reply-To: <20210428175503.3692090-1-clabbe@baylibre.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 6 May 2021 12:26:32 +0200
Message-ID: <CACRpkdY43=Uh+EVSOPHqNgrhVfgpubZNtXRzO5nW335R6aJGbg@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: gemini: rename to nand-controller
To:     Corentin Labbe <clabbe@baylibre.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Hans Ulli Kroll <ulli.kroll@googlemail.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Apr 28, 2021 at 7:55 PM Corentin Labbe <clabbe@baylibre.com> wrote:

> We must use nand-controller instead of flash.
>
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>

Hm, this flash memory isn't NAND, it is just memory-mapped
NOR flash.

The example for CFI NOR flash in
Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml
clearly uses the node name "flash@"

There is however a real NAND and serial flash memory
controller at 0x65000000, but I haven't seen a platform
that uses it.

The extra compatible string "cortina,gemini-flash"
turns on some Gemini-specific checks, but it
goes into the global system controller, not the NAND
controller, as the system controller confusingly have
some registers for detecting NOR memory config.
drivers/mtd/maps/physmap-gemini.c

Yours,
Linus Walleij
