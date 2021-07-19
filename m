Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 76DB33CD63B
	for <lists+devicetree@lfdr.de>; Mon, 19 Jul 2021 15:58:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240808AbhGSNRY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Jul 2021 09:17:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44770 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237309AbhGSNRY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Jul 2021 09:17:24 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 92EE1C061762
        for <devicetree@vger.kernel.org>; Mon, 19 Jul 2021 06:21:48 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id b26so30355166lfo.4
        for <devicetree@vger.kernel.org>; Mon, 19 Jul 2021 06:58:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=xMR+FiaO8Rs1484UuuHPsjL4a0zU33jNG86OHueG8dc=;
        b=DaNVkz69krx3VN/WiJvQDEG0lQ+qlxMGJuTe6ifmhDDowAfn/19Z7WUik2ipqjjYiI
         kJfyjnf21aRZ5FRUpq29uYp/52meYcuHz2pawQkfrDgbkcagC8GNjPentpKkn8kVGqcz
         6RqDRgGjnV6WeZVQnVpwUuQXeRnXHyk2BGTmSyTEL/bp0m0mM6aAH06VHMMfL8v29cnR
         VWWoT6VP+NvWkeCnozTw6W+Nnmzf/y86hxo+zo++DdK+P+BuvSvCdRtvse/5ELvJ68B2
         ObA8DiJ9PRd/JzAT/TXVlYh7ECFQumjDBuWBQ6hJ2x6VBUThfHbKjFFMaCiUWUnJTE22
         K+vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=xMR+FiaO8Rs1484UuuHPsjL4a0zU33jNG86OHueG8dc=;
        b=sIZv8LP1iMB8HuxSBDGOasEd6A+hxNmM1UCqvVM0MwzVFBihNgL2XWv6pOgpbkZKP/
         bgPWczrcxeVwDOwR7qAtymn+dfLYybUey4Be4iewcVRc/EN8W/JA8zBXOjboBkx2VksW
         7Grs/Gad6Z4GAV33DweeBqxAwkDaEq4XgLI0w8KtLBLK59FaOxTFW75ysDpzUyfQ8O4+
         demxS8Amp8PeLQokPESiDi6aghf9bH28qvad752XOER82xYisPNJ/lArX3yWKopRPSDY
         /4wJrJPgxC3FspL1Kpz2ZukKJc27QXEt++57dxzRd0WkKfN+2CZl7Z8J/PolwvShoUSS
         8U1A==
X-Gm-Message-State: AOAM530BTE4XaIme81zDBulyfDv4yQ/80lpZoNAIjYOj2Kn+BUhjyJhM
        LPkJB+bk9fLuM6ze3hxkXCjLKvmM/I/JcvGY6tenCg==
X-Google-Smtp-Source: ABdhPJyaFX+ZGC8F2KDK2CyhH7RMO7NbFKuBkyf5i+PbLzyM2aPN7F4IIk6B9OeMq4gSa/FrWCNpVWfzTfk7Am49MkQ=
X-Received: by 2002:a05:6512:3696:: with SMTP id d22mr18797582lfs.586.1626703081118;
 Mon, 19 Jul 2021 06:58:01 -0700 (PDT)
MIME-Version: 1.0
References: <20210719112156.27087-1-stephan@gerhold.net> <20210719112156.27087-2-stephan@gerhold.net>
In-Reply-To: <20210719112156.27087-2-stephan@gerhold.net>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 19 Jul 2021 15:57:50 +0200
Message-ID: <CACRpkdYtOvJ-37yTxaoZC63aBn56v4C41MC6HAD7_KgfWbbZgQ@mail.gmail.com>
Subject: Re: [PATCH 1/4] dt-bindings: iio: accel: bma255: Add interrupt-names
To:     Stephan Gerhold <stephan@gerhold.net>
Cc:     Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Rob Herring <robh+dt@kernel.org>,
        linux-iio <linux-iio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Hans de Goede <hdegoede@redhat.com>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS
        <devicetree@vger.kernel.org>, Hans de Goede <hdegoede@redhat.com>, Andy
        Shevchenko <andy.shevchenko@gmail.com>," 
        <~postmarketos/upstreaming@lists.sr.ht>,
        Nikita Travkin <nikita@trvn.ru>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 19, 2021 at 1:26 PM Stephan Gerhold <stephan@gerhold.net> wrote:

> The binding already allows specifying both interrupt pins, but there
> is currently no way to describe a board where (for whatever reason)
> only INT2 is connected. Make it possible to use "interrupt-names"
> to make it explicit which interrupt pin is meant in the interrupts.
>
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
