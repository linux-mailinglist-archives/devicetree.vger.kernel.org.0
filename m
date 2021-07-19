Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E8CE93CD63F
	for <lists+devicetree@lfdr.de>; Mon, 19 Jul 2021 15:59:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239433AbhGSNS2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Jul 2021 09:18:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45066 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239421AbhGSNS1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Jul 2021 09:18:27 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75DB0C061762
        for <devicetree@vger.kernel.org>; Mon, 19 Jul 2021 06:22:58 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id f30so30386935lfj.1
        for <devicetree@vger.kernel.org>; Mon, 19 Jul 2021 06:59:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=RyHuYZJtNqy7xvnUOr1zJeEMZoJLRMuwzjRF2sEn+zY=;
        b=u13r3EXlFn0HG9Ezs7i6sct0hpfTmXnNLdS5AgfcgaKgkjFDKNZP3H4EFq7t4kAP8l
         YlvD+xu0a8DmzFAZGUGvS+s1T1pfx9pWqrFKHwgAJHeqml46rGT5kR6jNmnySHObjJ4s
         nf/BWwpgQXgH9+8LQkgf2I/GOsnqCZI8AVMYDHgBxEOVr0pjtueo1S2UfLjm452AOFll
         lznvkuBdN4aUSNNauSJWeleGS+20aE01aZokJs0vnPrF8Cz0gd94XhWROLVLHTK5Qhto
         EfvrUr+CmF2+hSAVVmQJR3P2RorXTUT4KvjbeJLXJtm+jtB9/B+OdlicELZlC6bTaomJ
         Hr5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=RyHuYZJtNqy7xvnUOr1zJeEMZoJLRMuwzjRF2sEn+zY=;
        b=E18xRfQGl4767FahFvpfSq1Kdehk6HUDQ7HVBUSVVJlUNOPYcOiQU3KnBPUoJ4rQXY
         CqJhhq1zIzGUulhdyU056FOGcBheucjyv2n6sjxRTCl3aUJK1/rDt0ahtxrEPia/NuNl
         2jrzfaYWeagoKacj6rU9q7HvJxF0aJGVngR4N5iCL3kAKqyuGBqd83HYExqCuF+dyD4R
         VmdnXm95VKyOMciRDMqSLtYTcJY6wT6U+Ph7eAJ2VqCF5kZBprO6q4DZM452X117Nm2/
         Sd0+MvMrxpoKi6UzKB8Wh7xXHNLphCE9tvq0aneXYMF9KpAVSwYYMXlhz2MqWSpmrGqc
         gM6w==
X-Gm-Message-State: AOAM533E2l7GlLCdLtiWE0ibV6/kMggLASoB5R6HI8I5uwZfdmvVIP32
        LzA/CnSzkBsp2rW7KeNzfPl5g/vsQgcQF8apsnDTLw==
X-Google-Smtp-Source: ABdhPJxk2GK+StELK0+pej5qU1FAujzm7EwkYWB8T8lXNJIVUEGSd7Z9kv/1pts+oZPNJ4Hf4ppSNFJ+ljWA0TBU2Ik=
X-Received: by 2002:a05:6512:b1d:: with SMTP id w29mr18277239lfu.291.1626703145578;
 Mon, 19 Jul 2021 06:59:05 -0700 (PDT)
MIME-Version: 1.0
References: <20210719112156.27087-1-stephan@gerhold.net> <20210719112156.27087-3-stephan@gerhold.net>
In-Reply-To: <20210719112156.27087-3-stephan@gerhold.net>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 19 Jul 2021 15:58:54 +0200
Message-ID: <CACRpkdZpMyvBUFPL8k4Ay__WNozwHoLaAPmYX3zb4gJkpi5Q4g@mail.gmail.com>
Subject: Re: [PATCH 2/4] dt-bindings: iio: accel: bma255: Add bosch,bmc156_accel
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

> BMC156 is very smilar to BMC150, but it has only one accelerometer
> interrupt pin. It would make sense if only INT1 was exposed but someone
> at Bosch was crazy and decided to only have an INT2 pin.
>
> In this case, it does not make sense if the first interrupt pin is
> treated as INT1 (since that pin does not exist). Add a note to the
> bindings that the first interrupt pin is treated as INT2 for BMC156.
>
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
