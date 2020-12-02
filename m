Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6A51E2CBC85
	for <lists+devicetree@lfdr.de>; Wed,  2 Dec 2020 13:10:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729620AbgLBMJv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Dec 2020 07:09:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726852AbgLBMJv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Dec 2020 07:09:51 -0500
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com [IPv6:2a00:1450:4864:20::143])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 29265C0613CF
        for <devicetree@vger.kernel.org>; Wed,  2 Dec 2020 04:09:10 -0800 (PST)
Received: by mail-lf1-x143.google.com with SMTP id u18so4272708lfd.9
        for <devicetree@vger.kernel.org>; Wed, 02 Dec 2020 04:09:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8Vw8se40+ZwpHjC4c0VnUFf9R1QwmzeDK7Zkwd9o0xQ=;
        b=OTpxZpqWl+NMvKw8bWRa6FwBMc3zEPZ3xt39draLB4xHmSwLsT+VFFzl7YD2Z9YWFh
         wzGvN2SXAuvQHmKK9IeJfBOX1WbbNu28EyNNWzVqynD/a/OmEjAl4zWDm/U3wM+A0k1n
         PKmuAP85+V3ySN2bT9Tmj3kH6mWBOdTwgoG7WuCjoRWWLzaBGBNoV7IPLGU4ZhbGqGsc
         qc7n/rNwqIWERHY5urXWjxmyX9zEPohbNDgm3WvuWjrrDkjjmPEyftNPpMR9K+GmmCQF
         IhNx0HxWitKcwALDcBVSwsT7hRzUzAwx6xJM1BL4mUA4avWTX5ZVjZperNd1xG27hO8w
         qivQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8Vw8se40+ZwpHjC4c0VnUFf9R1QwmzeDK7Zkwd9o0xQ=;
        b=ils/Z7vtmeJGJDnzJRgvMtsxBdicKgrjR5HsOxbThjY/zXfdMI0J8L1PsaU7KbeQ+V
         UREy0ck72cGV9c7eX9XG9faP8U6NTh2GK2Bo7KYAGIwskvAnfEn7XZ1LzE2NgPbuwvV2
         ecCIqzK8iXcC/OccM+1df3WeKuJGt8VlelMF8mfXtneEam6WbzhaU1j5KRWKFymgarIc
         wC+ujTlx/9AxrBA6kaO/7gZ9ZLoNxSeRxuCsfog2Sq1iUGgeasEw0XOaSkhJBE7wEPmu
         MBg7z68r3TBYpDxrHoaRgsIoGtwPEQq7osRkC7pYYqhu1eGdQi/BkT3SPdgB7Dz2jjdF
         Bl4g==
X-Gm-Message-State: AOAM533OTBA3KRayJPe0ALu2jS9kWjkNYydPIOFSDCO0G5U4nO8f5z5N
        hkm3kbiHdwC8g5kaUGd1eszzc0OLOu0i2sOKPT7SNg==
X-Google-Smtp-Source: ABdhPJy98X2zklHyHmNrWzOgs6AnCCZpoEoW+PrQch8G0MCdLsvzyJrcj25SXLwa5HzRRWIZAEkv8tFlyCA2mxfv+gA=
X-Received: by 2002:a19:8d8:: with SMTP id 207mr1031573lfi.441.1606910948682;
 Wed, 02 Dec 2020 04:09:08 -0800 (PST)
MIME-Version: 1.0
References: <20201202083551.7753-1-stephan@gerhold.net>
In-Reply-To: <20201202083551.7753-1-stephan@gerhold.net>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 2 Dec 2020 13:08:57 +0100
Message-ID: <CACRpkdYu77Tcv9bk8q_BfKmien0S2sRg3Kicd_AeSrzrKD+Ywg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: iio: accel: bma255: Fix bmc150/bmi055 compatible
To:     Stephan Gerhold <stephan@gerhold.net>
Cc:     Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
        Rob Herring <robh+dt@kernel.org>,
        linux-iio <linux-iio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 2, 2020 at 9:36 AM Stephan Gerhold <stephan@gerhold.net> wrote:

> The bmc150-accel-i2c.c driver has an "_accel" suffix for the
> compatibles of BMC150 and BMI055. This is necessary because BMC150
> contains both accelerometer (bosch,bmc150_accel) and magnetometer
> (bosch,bmc150_magn) and therefore "bosch,bmc150" would be ambiguous.
>
> However, the binding documentation suggests using "bosch,bmc150".
> Add the "_accel" suffix for BMC150 and BMI055 so the binding docs
> match what is expected by the driver.
>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Fixes: 496a39526fce8 ("iio: accel: bmc150-accel: Add DT bindings")
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>

I see this pattern elsewhere so by tradition:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

I suppose this is one of those situations where the two parts of the
component are on the same physical I2C bus, and phsycially inside
the same package, but accessed at two different I2C addresses?

These components are kind of ambiguous by nature. Technically
both devices could have the same compatible (by the label on the
package) but then we would need some other property on the node
to say which compatible is for which part of the component,
so tagging on "_function" like bmc150_accel and bmc150_magn
is one way to solve this, and I don't know anything better.

Yours,
Linus Walleij
