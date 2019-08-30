Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id F1B77A3B10
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2019 17:55:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727922AbfH3Pzg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Aug 2019 11:55:36 -0400
Received: from mail-qt1-f194.google.com ([209.85.160.194]:38627 "EHLO
        mail-qt1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727883AbfH3Pzg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Aug 2019 11:55:36 -0400
Received: by mail-qt1-f194.google.com with SMTP id b2so4614825qtq.5
        for <devicetree@vger.kernel.org>; Fri, 30 Aug 2019 08:55:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=OPS60ZvUrPKWZtl+RkrjFYWAeesWeeFgHOMOIR73Nrs=;
        b=jsdOLh3/Y7V/4TNK7iiR+NorbT7xmO3Yb7idUWb32Hj4NRV+G3z7ipJAFFFNGhJ2Sj
         VUCyNOTQrJgxIBWADs5bmO/IXZWTJgWNg2+v/6g4SJb/mucF0fVwZGKCeErqIl83KaKp
         LQKf8BZrx1VeJezWJb67KIXGIxJdZ/KZGBcRSnfIgRv+0fJV1ah9dHMYG4pOsHM1AZ19
         lFcr9UyJ4KAD2+Kwb9FNPkiopH3H6f3SuToPTSzq+OGG/9syMMAlNSq0CmC7Hle8qSdJ
         FN9YUoXp2y4nT6klrf90raaUD/33Stf+Raq8czonlnPltwuKqH/Qt5ghzSKdb+SuzN4N
         2u7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=OPS60ZvUrPKWZtl+RkrjFYWAeesWeeFgHOMOIR73Nrs=;
        b=CCGdmsRBjqNoimFiiiubE8dwfyx2M/Q6npBuwNayJ1HESmnJd+GxaFX2bUXSttdbK8
         GyUr118c9SyUkUdQuGtoqdL/UBtUXHLI1E1Ooikr/Udk6jIbALaE7yzvFbJyTX/HTCC1
         aOQXyHI9jECthGnfIvw41cfzDcvZmOM0aGj3OikepKT0HnKIiyo7br4e4lHrKnZRFAqy
         FxoELnJFrIJCW6eUVRXcZYpkpsWGAoovedpszlADyjWNNy2l+4MDxe9lCfVT3fZvM+jb
         9uhsUTDL0bOxWuOg8ny3vLyQ3RGjLjTnkUpLosL2qHaDFjrXWmt5BwjjfbKVjRrcBuAG
         EbXw==
X-Gm-Message-State: APjAAAVmFoi9kFd7iyijsdKbeWBuZ3j2UyLbxDNd7UysXOjqI+dLTkgM
        mj2FFoh2/hBab9G2cjq6iizE6pRoow3Xjn27pFGiLw==
X-Google-Smtp-Source: APXvYqxU+VEducGjRU5qhT6UzP+NhwGXWdV4SMeO0UgP4d5AxSR4Faioub2YVECETchjsX4oyNK4tXmIMps8yFhnp/0=
X-Received: by 2002:aed:3f47:: with SMTP id q7mr16074268qtf.209.1567180535102;
 Fri, 30 Aug 2019 08:55:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190830150302.20551-1-geert+renesas@glider.be>
In-Reply-To: <20190830150302.20551-1-geert+renesas@glider.be>
From:   Amit Kucheria <amit.kucheria@linaro.org>
Date:   Fri, 30 Aug 2019 21:25:23 +0530
Message-ID: <CAP245DUWP6+2CyV2QA-Awo8JOUFjzjZmPHjM1On8XOyDbKGSHw@mail.gmail.com>
Subject: Re: [PATCH 0/5] dt-bindings: arm: idle-states: Miscellaneous improvements
To:     Geert Uytterhoeven <geert+renesas@glider.be>
Cc:     Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Nicolas Pitre <nico@linaro.org>,
        Sebastian Capella <sebcape@gmail.com>,
        DTML <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Aug 30, 2019 at 8:33 PM Geert Uytterhoeven
<geert+renesas@glider.be> wrote:
>
>   - Replace abbreviations "eg" and "ie" by "e.g." resp. "i.e.",
>   - Correct references to wake-up delay,
>   - Correct "constraints guarantees" to "constraint guarantees",
>   - Add punctuation marks to improve readability,
>   - Move exit-latency-us explanation to exit-latency-us section.
>
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

This improves the readability of the doc. So for the series, feel free to add

Reviewed-by:  Amit Kucheria <amit.kucheria@linaro.org>

> ---
> Split to ease review.
> Feel free to squash into a single commit.
>
> Geert Uytterhoeven (5):
>   dt-bindings: arm: idle-states: Use "e.g." and "i.e." consistently
>   dt-bindings: arm: idle-states: Correct references to wake-up delay
>   dt-bindings: arm: idle-states: Correct "constraint guarantees"
>   dt-bindings: arm: idle-states: Add punctuation to improve readability
>   dt-bindings: arm: idle-states: Move exit-latency-us explanation
>
>  .../devicetree/bindings/arm/idle-states.txt   | 32 +++++++++----------
>  1 file changed, 16 insertions(+), 16 deletions(-)
>
> --
> 2.17.1
>
> Gr{oetje,eeting}s,
>
>                                                 Geert
>
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
>
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                                             -- Linus Torvalds
