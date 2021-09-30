Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4D52C41DEB1
	for <lists+devicetree@lfdr.de>; Thu, 30 Sep 2021 18:17:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349632AbhI3QTV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Sep 2021 12:19:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33660 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349206AbhI3QTV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Sep 2021 12:19:21 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37BD5C06176D
        for <devicetree@vger.kernel.org>; Thu, 30 Sep 2021 09:17:38 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id e15so27635048lfr.10
        for <devicetree@vger.kernel.org>; Thu, 30 Sep 2021 09:17:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=9AydplMO/OhchranFJNxsujjEB+Eo9pfrveqj6lBlFg=;
        b=qUffUWOuFP3/0X04i77M7wE7tr9M3z9zUShjb3xRJsb7HIXmRnl2l3AxGvVjar7aFA
         unF5eCBPPT8czCY8/I4w32GSWCvamltkC677hJ2bFllO97iK036m/SlqreWhRTvmPLHQ
         4s2kSLW1ppCmS1NeQY3xYj2+0YKirmOPQhblVrGWGe+t4ZjIGZIP7wSWoJrRdXG7wSuW
         xL48DAlsGwZkwhAl3NEq4/XTb8i9C/M9x0JWQZw1pJ2ii6viWDd/GD+dghS7TTzjTKGa
         cPHyik+7LLS2fCB3XJkPyzqyg53L8yltVZITOkM4M/zR9KPrXiSqbMWZD9JeST//3i11
         9rSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=9AydplMO/OhchranFJNxsujjEB+Eo9pfrveqj6lBlFg=;
        b=ZHstPtpmk6NkqTcqC8tU56YDqOEyHeXI5fvM9E9CuDGeLBaiaNTixgFBpQILCNXmjT
         sXTWAe/loJBOZdF9JjymxwF830StaSiiqnjBUelsP7yTqzlcclxPxEjjGOCG+svFTkwC
         hr/yeAGpawVSLXm1xZv0fr7XJGyNK6SbrpTZdqH0C+27vT4d1GYTi+IFGRP7LZQ6d7tV
         LQDNfmINN36wU4yhMn+0m9XrftiNn64Vj0fFSDSCAuSyx8JVgHJ7Ph2GyV28vAk64Z79
         YUllSccuxYzeXohuqdrhqr78wABa18/T3R/yfbf8VIObaBcfqf67wX1drWK6Sj/nEXlv
         Dhgw==
X-Gm-Message-State: AOAM5316nVqRtNGQaPmczjN3iCH87BhKYgTTiD00Aqa1ucWWsRyu7nBa
        7vb5AbZwb2dtzCcjkBuJaKjeY4Y2Z/B6zdZavx1cxA==
X-Google-Smtp-Source: ABdhPJy+kwam2qnCIJA421Yva4o4+CPlZrt6f87kDQGjhOta3fQWnFUPvQVO3ABPx0RiMmhb2e/ysCCV5bMgqrYfB1A=
X-Received: by 2002:a2e:4e11:: with SMTP id c17mr6598678ljb.19.1633018656196;
 Thu, 30 Sep 2021 09:17:36 -0700 (PDT)
MIME-Version: 1.0
References: <20210930095225.9718-1-jbx6244@gmail.com> <20210930095225.9718-3-jbx6244@gmail.com>
In-Reply-To: <20210930095225.9718-3-jbx6244@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 30 Sep 2021 18:17:24 +0200
Message-ID: <CACRpkdZfzQK4LcwkwY-AbfXUaMssfUpKSa4VOSnuVLQPdapCYg@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: change gpio nodenames
To:     Johan Jonker <jbx6244@gmail.com>
Cc:     =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Sep 30, 2021 at 11:52 AM Johan Jonker <jbx6244@gmail.com> wrote:

> Currently all gpio nodenames are sort of identical to there label.
> Nodenames should be of a generic type, so change them all.
>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Please funnel this through the SoC tree.

Yours,
Linus Walleij
