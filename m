Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2885B2CFFA3
	for <lists+devicetree@lfdr.de>; Sun,  6 Dec 2020 00:10:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726023AbgLEXKn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 5 Dec 2020 18:10:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57016 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725973AbgLEXKn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 5 Dec 2020 18:10:43 -0500
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com [IPv6:2a00:1450:4864:20::141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C22B7C0613CF
        for <devicetree@vger.kernel.org>; Sat,  5 Dec 2020 15:10:02 -0800 (PST)
Received: by mail-lf1-x141.google.com with SMTP id u9so7240330lfm.1
        for <devicetree@vger.kernel.org>; Sat, 05 Dec 2020 15:10:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=L4dh8REGOcY3mSsdjWtW61gFhpeRq7e/rh4UNS/HtWs=;
        b=kWFaTEtG7vzSIUnVscs0yrMiGM74TzDtNz5KZB8Zp8eMiW38SCyLlPXQC0Yz/Mn8DJ
         YwLmcUu2VRDStp5VnkBJQFfO3+hgJkzJc3LBxV49djXdfPPvXAcbtUfl8kYNd4UK1Zs6
         P4x2bIuLbYrAEQ/1rSeAPVa5qHwVDqIiuo1FBET6sIU53NEisWFOlSdzDIWESRlKjkg0
         eFcj3RiDttwq/oqovE0VH6EJ7zVDEgjZDAhx63oD6GSe8KBDYrYndVWy3eUQ+omCXqSl
         9kd9/XeyxCYbw2TQ3yi2PiR5WYbie5eE43LqaeduKWitriLH0FSeWF0rxEwM+l3V+08K
         P6Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=L4dh8REGOcY3mSsdjWtW61gFhpeRq7e/rh4UNS/HtWs=;
        b=YRhSfdGRUZMQvzC4grmtI9CGYXtf4S9W9ygVTvun2cbAeRNL867WwF6hknZZTaJwZc
         wXQdeKfKOyuoaqoG6/pmtvTDDMwGCPPiwtl8NSQumFkVGy3nQjCyH02tYxRZ4rTlzgMA
         YJQWFWpk3AbyleMCJgg+kJO+dVCWch3rxhFc/XSdRM8AKj7Q+0IoYemzJLSA0hHhqTga
         75AGPYjn17qfeHNVZSoSHKyCX3JYUVQ94zwGNVfkKHEXZEDtrFeiMrsncmotYB0XKi36
         z8PMIgD0BSeOO7ocICHySE7jajJqxWEPVHOwSmM8mvBQklQguU4CLzpGI0BqG2kerKiS
         qXaQ==
X-Gm-Message-State: AOAM530d2XzxZ05eBwghRO7caYbMWUTU4GdLC1SpFo5M5wK4OCqPkdQY
        JF5a1+8AI7GEqgFn4B0VX7tEHri+YDlT0WJ8wuW6WA==
X-Google-Smtp-Source: ABdhPJy233SEVPqebAfOtTTGE/Erqfl6WucP3n7epmMvF3mdGMv8xEZT98JCM2Pf4IlavisqYdqQ5QYbqRr47p+yhB8=
X-Received: by 2002:a05:6512:3e7:: with SMTP id n7mr5417111lfq.585.1607209801250;
 Sat, 05 Dec 2020 15:10:01 -0800 (PST)
MIME-Version: 1.0
References: <20201203131242.44397-1-stephan@gerhold.net> <20201203131242.44397-2-stephan@gerhold.net>
In-Reply-To: <20201203131242.44397-2-stephan@gerhold.net>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 6 Dec 2020 00:09:50 +0100
Message-ID: <CACRpkdadiyYK5i8+TaLqxjmp4mUJ8eTiyZkgPXp-Qa2+CD8DrA@mail.gmail.com>
Subject: Re: [PATCH 2/3] dt-bindings: Input: tm2-touchkey - document vddio-supply
To:     Stephan Gerhold <stephan@gerhold.net>
Cc:     Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Linux Input <linux-input@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Dec 3, 2020 at 2:13 PM Stephan Gerhold <stephan@gerhold.net> wrote:

> The Samsung touchkey controllers are often used with external pull-up
> for the interrupt line and the I2C lines, so we might need to enable
> a regulator to bring the lines into usable state. Otherwise, this might
> cause spurious interrupts and reading from I2C will fail.
>
> Document support for a "vddio-supply" that is enabled by the tm2-touchkey
> driver so that the regulator gets enabled when needed.
>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

> +  vddio-supply:
> +    description: |
> +      Optional regulator that provides digital I/O voltage,
> +      e.g. for pulling up the interrupt line or the I2C pins.

I think the funny pipe | us only needed when you want something to be
fixed-width like ASCII art or ASCII tables. But no big deal I suppose.

Yours,
Linus Walleij
