Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 36F7843BD1F
	for <lists+devicetree@lfdr.de>; Wed, 27 Oct 2021 00:21:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237254AbhJZWX3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Oct 2021 18:23:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51352 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235758AbhJZWX3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Oct 2021 18:23:29 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D058CC061745
        for <devicetree@vger.kernel.org>; Tue, 26 Oct 2021 15:21:04 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id c28so1808367lfv.13
        for <devicetree@vger.kernel.org>; Tue, 26 Oct 2021 15:21:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ZlgtQAxkjTvj8T+NiFuX+YdjQJNoRYDUWGidTE7NktE=;
        b=lP53rE17CXHjyhEcAMjZOKQP2wp23J8OD0vD2MI+vVS5gmf5BOG40rCPxDf/Df4yrG
         WYMorX2dS00+xbiNG0sJAk/KkcOE+JGs2L5jfIpHD/YBcMx5fAUMd7tFu8mYizOm37H8
         iBLShaiht6g6hi6YXbsSpGiyTHgR5DQnI8c4J3cwr/PpwXurJ620Yln3LhiyfRzNDgjM
         Z3hB9aAppPQMG2pEm2yORVZtTuUSUAZGA5DUPA5n6B5VV0FoAtM+zwSJ3fMSRPwPvXep
         kni7KbjAF9g3dfowbMQm5f16qX3aXTlXEp6foIx4vmuS1NIy23Uxf1Qkam96i+sMkZey
         9zJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ZlgtQAxkjTvj8T+NiFuX+YdjQJNoRYDUWGidTE7NktE=;
        b=3yiTTNZDrG7sg2TCxOrNkK7KQO38eqToHZOuaDHf3+k8yn4lEIl44GesT5uGkR6SmW
         2guPcW2ItdxtI7tDhv4Ryz3mYUdjwwLGj2Zikr0CFicLmLp69h6YFlKWnrDWQlZE48PZ
         20HoH9WDtI6mfnmR51erjaFDybBzX3RjOfwWp9+a1rKpW8rU0VZSCUwHkawiWctO7M1j
         EppUBm7ucChWnZZhLYjh183HJtg+rdhM06KAGhD+BaJlYV3iqvYMwb3EkYulqDxjiTgO
         FhD4YsSk4HIQ24KMECTnDoZAImAKNGa3xtpVzzD4Ahj8dg/PR3TavrV2fb7VJ2R/mop7
         MiXA==
X-Gm-Message-State: AOAM530lzBnS6phalbcjTrxChwIlEulNyJE+aCCB5pW3JcvTd98kIFcr
        /4+ftOhvIiDiHTlw5MYXYRy/eBwKqCCbZKGYFxJWUg==
X-Google-Smtp-Source: ABdhPJwiTxeE+wx0gpSVxCZCymLsJYilUf1TwSM2k5kPWFpxVcr09yIRFQMN28eEDKweQL95lAg/hxK7sdqwzIUejR0=
X-Received: by 2002:ac2:5d4a:: with SMTP id w10mr25529349lfd.584.1635286863063;
 Tue, 26 Oct 2021 15:21:03 -0700 (PDT)
MIME-Version: 1.0
References: <20211026175815.52703-1-joey.gouly@arm.com>
In-Reply-To: <20211026175815.52703-1-joey.gouly@arm.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 27 Oct 2021 00:20:51 +0200
Message-ID: <CACRpkdbJM0-epk0D=-VDs9mdVVxarR=K6BA+rowiO2173ScE-Q@mail.gmail.com>
Subject: Re: [PATCH v5 0/5] pinctrl/GPIO driver for Apple SoCs
To:     Joey Gouly <joey.gouly@arm.com>
Cc:     "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Hector Martin <marcan@marcan.st>,
        Marc Zyngier <maz@kernel.org>,
        Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
        Sven Peter <sven@svenpeter.dev>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Mark Kettenis <kettenis@openbsd.org>, nd <nd@arm.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Oct 26, 2021 at 7:58 PM Joey Gouly <joey.gouly@arm.com> wrote:

> Here is the v5 patchset for the Apple pinctrl/GPIO driver.

Excellent. As agreed I have applied patch 1 to an immutable branch:
https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-pinctrl.git/log/?h=ib-gpio-ppid
If Bartosz needs this patch he can pull it into the GPIO subsystem.

Then I have applied patches 2-4 on top of this branch for v5.16.

I leave patch 5 for Marcan so he can minimize MAINTAINERS
collisions.

Thanks for your hard work on this!

If any issues remains to be addressed they can be done with incremental
patches for sure.

Yours,
Linus Walleij
