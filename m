Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5FF962D9476
	for <lists+devicetree@lfdr.de>; Mon, 14 Dec 2020 10:00:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2407185AbgLNI6A (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Dec 2020 03:58:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50328 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2406715AbgLNI6A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Dec 2020 03:58:00 -0500
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com [IPv6:2a00:1450:4864:20::143])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E164C0613D3
        for <devicetree@vger.kernel.org>; Mon, 14 Dec 2020 00:57:19 -0800 (PST)
Received: by mail-lf1-x143.google.com with SMTP id o19so2554328lfo.1
        for <devicetree@vger.kernel.org>; Mon, 14 Dec 2020 00:57:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=PeLskSmDYaVOsZxv9dazYTBEZV4Owe3PpH2dLGUOSKI=;
        b=KWsCICqm5auiKhsRbZlPOGFcRacp9hlIrGS5KIynS4aaQ4DgAkTGJVhw7HGrLsO6oO
         My98Qtyce3BQgZY3NTyROxxZRL7zkL51Syux7ofWkEVIkqBuvZ5QVzgvH05FzJUOhSGl
         hEwQzml6uDxkMxmqyMVdMcaeMvcA1Dt/MuA0v/oieVzcm2gMV0X90yEJwP2BaJSf9X9l
         eP6t4uxbML2qVE2pzH3dJSOf27gtqFcouJFvczJhjcik43RksnkM/gQ9ldsGxZgTiOBK
         CzMjhWm+GFc+ZghGTj6H7LBXFD/Y8ey2eVNXpjVQoO9DRg8yj7Gk7A8GebAoGaut1DvB
         4HQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=PeLskSmDYaVOsZxv9dazYTBEZV4Owe3PpH2dLGUOSKI=;
        b=DK46VrvdSZ2BPK0UHWjfuqYGJO0HCE51sVpVxf/qTphLHDh0Z4DOqNu51Oe2YNUqmc
         PZXR1F4wMIqP6bCFc7XBL6BFTLlIWU/s6PYwfMmZ3noAiQWEkuqqtK6EzbPvVg5Gstkn
         lzMhhgl11DFjPn3LL4cgh+kZRvOLAQkaHqZUBkmw7SFdn7rHrTdrayP7FFXaNEeiYLLe
         +k4EuKzEebeUh3mmKO2eCIUTrDrdDSyBhYa+9Q08/QmxMvdX5tOw15g21P4JF6bTSdvI
         sZxHKSuKrfbzZ724Q60ZVeg3M+xtK46E3sANZ93lCVLM6fhCkhKX5uZcC25No12Rrs8c
         U0Vw==
X-Gm-Message-State: AOAM532TFSTOoFZtYCvHcTiBaI+CJlffCN/uXwOi2rAyA/2NBbsIVRXy
        8aRBY+wWkme5IFqlUAnT+b2jfYJYcMd/e7q3UTSTYg==
X-Google-Smtp-Source: ABdhPJwsHyoU4o37zHEtZOYqmgDKOY1YjMUhOeqiSTQT16Q9804/21EtJ1z7yMpPlKLKYk+6gufMYxW6U48B7xOH69c=
X-Received: by 2002:a19:495d:: with SMTP id l29mr4671485lfj.465.1607936237341;
 Mon, 14 Dec 2020 00:57:17 -0800 (PST)
MIME-Version: 1.0
References: <20201211183815.51269-1-stephan@gerhold.net> <20201211183815.51269-2-stephan@gerhold.net>
In-Reply-To: <20201211183815.51269-2-stephan@gerhold.net>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 14 Dec 2020 09:57:06 +0100
Message-ID: <CACRpkdbEqN95-bYHjo7JEbSrGx9qHNoeW2wHC6KPvwn0sG7isg@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] iio: gyro: bmg160: Add rudimentary regulator support
To:     Stephan Gerhold <stephan@gerhold.net>
Cc:     Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
        Rob Herring <robh+dt@kernel.org>,
        linux-iio <linux-iio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "H . Nikolaus Schaller" <hns@goldelico.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Dec 11, 2020 at 7:39 PM Stephan Gerhold <stephan@gerhold.net> wrote:

> BMG160 needs VDD and VDDIO regulators that might need to be explicitly
> enabled. Add some rudimentary support to obtain and enable these
> regulators during probe() and disable them using a devm action.
>
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
> ---
> Changes in v2:
>   - Do regulator_bulk_enable() immediately after devm_regulator_bulk_get()
>   - Simplify error handling using devm_add_action_or_reset()

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
