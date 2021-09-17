Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EBD854101DE
	for <lists+devicetree@lfdr.de>; Sat, 18 Sep 2021 01:45:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235860AbhIQXqq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Sep 2021 19:46:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49526 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233569AbhIQXqo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Sep 2021 19:46:44 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A76FC061766
        for <devicetree@vger.kernel.org>; Fri, 17 Sep 2021 16:45:21 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id i25so39834053lfg.6
        for <devicetree@vger.kernel.org>; Fri, 17 Sep 2021 16:45:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Adpjj8eb9qPefLqJjlRRH4Z+UTglNnbz6imJOtpowtE=;
        b=Stu4Yvcx+jZlQ6bo4SsaVgSClupIVtykd85F8zGJwqrRts+FNZKGCFRHGGl/XECWkG
         F9ceDrRBFlGqgZoQ6Ro8gV1Ip44OxLU7jAJ8prtT6k4BUAx+NwH/Xp81ioV+o3QUYC52
         LPzi4M8ehhgEOcyl4/4wqcrQZjedLbviqQKZ6MNPcNbSLRaetIZMhcsL9Zvh/JyttAtG
         gcfm4hdIKFBeRTjVl6zUTB8mzTG55FQ+hsNogyDh7ZK9ME8jFvqcND6CLG1i7ZEDogID
         xrxJQhuQvKImxHbaGmUJWoahxq6WwUdESY32n6tpsr7dznrHmSaWcdXRxdNh+oRIo2kq
         L02A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Adpjj8eb9qPefLqJjlRRH4Z+UTglNnbz6imJOtpowtE=;
        b=uUeNFBlUxGahdsa5Pb7Fp6V9cGL994QvfYZQYlDtPnlVOPhwAnVwV9GP2t1B4/A417
         iP0C/hWraxONyo5i4QGy7asCv3jHbzvd+QBUl2Mj2QKUrwsg+qb7Ny5pjIMSX0h8/qns
         CkjQdpcK+sXAlLgvVN7K8btAxW6GNz3xGrXcQu+u0LIpaY4A4ygM0pLVHppXG3t6M0aE
         WfvANvb6hVgjD0JvHxSSCO2tQ6A+38KMHcNXd4w/p2OBdJ+MazWIoYiwn4mc41m8026K
         Oyh/vzZza5v9qoStHVx2j7Lm7H9cLoPlxIMyG8Y2OXz+UnujFEXrAkclfXgKTGoaOSk+
         kUWw==
X-Gm-Message-State: AOAM531pafxlq0Cd+psrWRNAt+p4amkMxv3CrubbGc+2gizhFFMzmrge
        LeGT8MyEMsVHbgPRqONfVKwU2tAJ/UNW/KbsQijA+Q==
X-Google-Smtp-Source: ABdhPJySPdlC4kFGb/uPqpNRVO7RsaaNmYQ7Dsfc4dTO/WXhWAE1PedasJyvgTCKrCA5g+mA2q9H0CQsy0ibTumhe7A=
X-Received: by 2002:ac2:4651:: with SMTP id s17mr5137396lfo.584.1631922319876;
 Fri, 17 Sep 2021 16:45:19 -0700 (PDT)
MIME-Version: 1.0
References: <20210913192816.1225025-1-robh@kernel.org> <20210913192816.1225025-5-robh@kernel.org>
In-Reply-To: <20210913192816.1225025-5-robh@kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sat, 18 Sep 2021 01:45:09 +0200
Message-ID: <CACRpkdb5ZOyaoVg74ByFDqv9Da-=zaBwD_4uTnd7ZTe875dY3Q@mail.gmail.com>
Subject: Re: [PATCH v2 4/8] dt-bindings: clock: arm,syscon-icst: Use 'reg'
 instead of 'vco-offset' for VCO register address
To:     Rob Herring <robh@kernel.org>
Cc:     Stephen Boyd <sboyd@kernel.org>, Pavel Machek <pavel@ucw.cz>,
        Liviu Dudau <liviu.dudau@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-clk <linux-clk@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Linux LED Subsystem <linux-leds@vger.kernel.org>,
        Michael Turquette <mturquette@baylibre.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Sep 13, 2021 at 9:28 PM Rob Herring <robh@kernel.org> wrote:

> 'reg' is the standard property for defining register banks/addresses. Add
> it to use for the VCO register address and deprecate 'vco-offset'. This
> will also allow for using standard node names with unit-addresses.
>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-clk@vger.kernel.org
> Cc: Michael Turquette <mturquette@baylibre.com>
> Signed-off-by: Rob Herring <robh@kernel.org>

Yeah this is better, dunno why I did it like that. I guess
it was the Wild West of DT bindings back then.
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
