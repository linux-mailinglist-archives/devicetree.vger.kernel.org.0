Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0C2D16DCD3D
	for <lists+devicetree@lfdr.de>; Tue, 11 Apr 2023 00:03:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229780AbjDJWDt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Apr 2023 18:03:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47020 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229701AbjDJWDs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Apr 2023 18:03:48 -0400
Received: from mail-yb1-xb32.google.com (mail-yb1-xb32.google.com [IPv6:2607:f8b0:4864:20::b32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C6851BCE
        for <devicetree@vger.kernel.org>; Mon, 10 Apr 2023 15:03:47 -0700 (PDT)
Received: by mail-yb1-xb32.google.com with SMTP id 72so6225866ybe.6
        for <devicetree@vger.kernel.org>; Mon, 10 Apr 2023 15:03:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681164226;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gonmadpJiz7vDQBbBMJgStyxiOMmKUV5aqE1rLom+i0=;
        b=tXZjrUsIrgj6yHapA7bCU6CUurdcsV7l4BThTxjlCa4ds+Oge3e/7Rc3jiPy7LTqQR
         Ni1i0azeF4v9hr1QADOvQUCPTva/na7CsK/SRQuT4O9XDUy3S+clSX/CIPgSKJ/p0OCV
         OLImCONongy9VZyqCjiMGS7PzHbF9gcpVITNFe+O3xCGw8U7GohL9Ysh3B5oPJokOMnC
         sgUCGjcObDO7bBJ8AYAnxZa0a11H3OT6FOTzZhkSrpmepfA5oq3E0q50BhkNgfb0u2lx
         sxdJX6OWgeKLEk7hNnaMVGnIa4IaYb6veOfCpnWaJ+N2qUcdeq8ZAKgYiSrHMn5v7vLN
         Tq7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681164226;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gonmadpJiz7vDQBbBMJgStyxiOMmKUV5aqE1rLom+i0=;
        b=L7A0hPuSzoUSweigvYExSL+Hy18nPoXbIOlIIVE1EqG5tz1eYJCjmrAQkPgZZTQ4Pq
         dqkE5Vpk9N0BHardC6FKsLwfcD3g+MENQJEKWqWNJ+LxSuxkXhMqgY3SFLL+MzrOkalM
         9e0YNCZrpmydUgaXiH41mvI8/+x2xltKYy3N1E8vcydyXQP65/e2Yd9VsU/rDDWXJzNs
         VXAeAX5Wi1mUXLaAWOEGvPFlcK/Z97plKQksQ1WDRhOmpHezZv91SpzQbkhMKx0qLH4n
         mpOd65jSrWr/cfVgUUr/mBaTbT8StQu7f4WqHccVym94b6C18XkVCf81hKEubnTMZqFY
         HnUA==
X-Gm-Message-State: AAQBX9e0MAFuPr3h2BaJsRksEGveZUwKG4lQJ8624FOhVT8DaY9GMLmt
        qT1rGBd/EVQlhWxHsXftqT2T8dSR0jPdSY5WYjgYaw==
X-Google-Smtp-Source: AKy350YnwAqoK+Qr/Ms8tC4pdwnZLuaBcI3cWECw5wAm3u/Sy8KK73q1WklHDUiuOZMFGUP8l861SzX9BkmMga/k7HI=
X-Received: by 2002:a25:d994:0:b0:b8e:fbcb:d6ef with SMTP id
 q142-20020a25d994000000b00b8efbcbd6efmr2623661ybg.4.1681164226298; Mon, 10
 Apr 2023 15:03:46 -0700 (PDT)
MIME-Version: 1.0
References: <20230407162504.1683422-1-festevam@gmail.com>
In-Reply-To: <20230407162504.1683422-1-festevam@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 11 Apr 2023 00:03:35 +0200
Message-ID: <CACRpkdaF7jy0anwVYZVJaEzVgu5BfCO62k47r6cxcwq=LUurzQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: nomadik: Replace deprecated spi-gpio properties
To:     Fabio Estevam <festevam@gmail.com>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Fabio Estevam <festevam@denx.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Apr 7, 2023 at 6:25=E2=80=AFPM Fabio Estevam <festevam@gmail.com> w=
rote:

> From: Fabio Estevam <festevam@denx.de>
>
> As stated in Documentation/devicetree/bindings/spi/spi-gpio.yaml,
> 'gpio-mosi' and 'gpio-sck' are deprecated properties.
>
> Use the recommeded 'mosi-gpios' and 'sck-gpios' instead.
>
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Patch applied and forwarded to the SoC tree.

Yours,
Linus Walleij
