Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3903632CEDF
	for <lists+devicetree@lfdr.de>; Thu,  4 Mar 2021 09:53:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236911AbhCDIxR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Mar 2021 03:53:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46638 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236863AbhCDIwp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 Mar 2021 03:52:45 -0500
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F977C061761
        for <devicetree@vger.kernel.org>; Thu,  4 Mar 2021 00:52:05 -0800 (PST)
Received: by mail-lj1-x236.google.com with SMTP id u18so18697726ljd.3
        for <devicetree@vger.kernel.org>; Thu, 04 Mar 2021 00:52:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=+0XMK2C3jkeiWB9VzQQQ0cOj8xpFdNqQrK20xkK9i1A=;
        b=lSyQGH2WdOfmSXrtbCsBPnVj//cGCUNzQNd2nr1iLgsYdyeZ2UROgyYVda1T5m9WZv
         jA2MSnC5sCaprR0fPW8ymMXHYN2M6dEqr2RPA8gAtydmewhOZ2GJHpCyWdQbdYAyultX
         tneNhjNhyv3tFI63o9bv/6LGmMb3e3ExnfPvMR89aqyP8c3o6KiFKCku6legmwk0p2OO
         UbIEc/1a1Mm6ldokUTB431l3fFt5z0lXZfiwu6LEzJiNxn+m8bhju8ijAn3XefLCtWvu
         yMho7AlweWK+1JmlcbjdAANchs2FW3KyRGkcZxqaxQsDp5xnSQgI1upmqresIJZc7Pwq
         /OIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+0XMK2C3jkeiWB9VzQQQ0cOj8xpFdNqQrK20xkK9i1A=;
        b=e5Z1iDxoLruNotKhxNrSbgpGN7uwAWRzNd0jOE/Yp0MK3uGpD9pUKeYPC+KsqsbVLM
         m1BwkJo8rR6Jz/7TgvBf9/6DQpqg/7AFNx9GsCIjUIWVHU49S+7KeiwvOy7nJG1nRSe+
         qRFNI/twcZln22fcWxRDJVH5NJHXxXv9/eTqxjllEj6BjH7aAhlUK/NxoQsgfKQJQF7d
         Q3EsBqukcCloI5e2vAbjqiOlX7PCAHSbgwjmkfvtF3CkHXyObI0hqpr+/hGcr1W7f3j2
         hB8u5DnHU4sRi5yYHmjNl1PazRNv5hd4x57JMG5jgQy14w0uKw1oT9UmeZSudL8liIWb
         BJOw==
X-Gm-Message-State: AOAM533hh2RdDYyLe2oqqCQ/NUL/HOM+tJu8qNfBRLSJP+GlQHY33MEB
        ENcAKM5RVM1wyktLE9s+mYWj/Kd3rUqx0GE8ovq/Cw==
X-Google-Smtp-Source: ABdhPJzbb++Rp2hEA6RLGpqIxuh+P7Z4Bnbc7cEOCh/2DXY+1S8b4BFA/vD6pDDcq1594E0+HBqctMM4/DGjkb4ej40=
X-Received: by 2002:a2e:1649:: with SMTP id 9mr1838007ljw.74.1614847923518;
 Thu, 04 Mar 2021 00:52:03 -0800 (PST)
MIME-Version: 1.0
References: <20210304034141.7062-1-brad@pensando.io> <20210304034141.7062-8-brad@pensando.io>
In-Reply-To: <20210304034141.7062-8-brad@pensando.io>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 4 Mar 2021 09:51:52 +0100
Message-ID: <CACRpkdZr8qrQ+b15z_zRP3wAntQeW7T0Z515sUv6e2gL9GzDyg@mail.gmail.com>
Subject: Re: [PATCH 7/8] arm64: dts: Add Pensando Elba SoC support
To:     Brad Larson <brad@pensando.io>
Cc:     Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Arnd Bergmann <arnd@arndb.de>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Mark Brown <broonie@kernel.org>,
        Serge Semin <fancer.lancer@gmail.com>,
        Adrian Hunter <adrian.hunter@intel.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Olof Johansson <olof@lixom.net>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        linux-spi <linux-spi@vger.kernel.org>,
        linux-mmc <linux-mmc@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Mar 4, 2021 at 4:42 AM Brad Larson <brad@pensando.io> wrote:

> Add Pensando common and Elba SoC specific device nodes
> and corresponding binding documentation.
>
> Signed-off-by: Brad Larson <brad@pensando.io>
(...)
>  .../bindings/gpio/pensando,elba-spics.txt     |  24 ++

Please use YAML schema for this.

See Documentation/devicetree/writing-schema.rst
for instructions, you need to install some python pip packages
to test your schema.

Yours,
Linus Walleij
