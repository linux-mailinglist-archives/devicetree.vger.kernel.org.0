Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A9FA83DB6FF
	for <lists+devicetree@lfdr.de>; Fri, 30 Jul 2021 12:12:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238551AbhG3KMx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Jul 2021 06:12:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60680 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238460AbhG3KMx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Jul 2021 06:12:53 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 90E24C0613C1
        for <devicetree@vger.kernel.org>; Fri, 30 Jul 2021 03:12:48 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id f18so16843407lfu.10
        for <devicetree@vger.kernel.org>; Fri, 30 Jul 2021 03:12:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=HsLkR/HJFOyd8pJoENYFHYMDBN3NZwnHjc6YfxQ3dl8=;
        b=ufYOgMEhc1ClDU5ltnOjlo1fbyMTvyLpxFyvjbI9XtsIHVAZHCdbhp0d+9DS4+8f55
         i8BlPirCwoIhJVvr0ykIjapnTlTga7LQDfmsiy8V6V/j0V+nMeSUvOLU1sztX3HZP4jg
         xKMhIyx1MQ/JXcU9BoWL7n4TVRvhilF1W/kB5/ZGn8Wb0Pl6ZxdBjEpMN6HMAVIzAacr
         oxUcF1lO+N6pPm2OgLQKNSn/Zxbsi1RVx5DylobncgX0k+nQZhw3icIaT82YqrMawXQb
         bi7390Fet4KRv4C4Cj8VPXpc4JTZWjHqdOzS5SO1/4LwYZNRgZdmmAzF7QHSBYWhP7Zi
         LaRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=HsLkR/HJFOyd8pJoENYFHYMDBN3NZwnHjc6YfxQ3dl8=;
        b=N9f/jm4bfecVZHOIsV0Pi+9qmrU+VR4w4T75GtacBGbxMv36OZV8erv5vOotUfO+WF
         2z2y9Qcki80tQn0OQwsf4j13AQVdKF+y/FrvF+/0gY7UR43y1LDqSxVIS3fDnCoIW6ty
         Lh9p+KQwHSNc2Kms5kYY5oIyrQZ/6a1yyaQZbYkT7OLNb6kDBhB+rAqXfY7DadAjlDhq
         9oR1ly4am0p4ayo9KuqJf7KX/pTQBc7IIqGOLCk9W5dmz1qYvC1lspOh8jYWUARUPicW
         mnfJws5yQfv/qEeUUFrfiEQKlsmLndgB8PujDQ46pvs7OkHZ7gKlpOiCspHh8jbWbHkc
         EXKQ==
X-Gm-Message-State: AOAM533QDfJBP9xe+n+AMD8O7RFwiFIyVhJl/47idb3I73nJOlkpyo89
        l8Dfm/kb/DWOKEVUorBforljyi6j/ZpbXb6QCgw4hA==
X-Google-Smtp-Source: ABdhPJypPfA3Px4jtbDVZYY7wb0UeRHMt02OLb/ww/GLw1XchMeZyH86gddeb+fVz5pKilqK3LE9PJ1U8EOkFaDyLzQ=
X-Received: by 2002:a19:c7cd:: with SMTP id x196mr638110lff.465.1627639966985;
 Fri, 30 Jul 2021 03:12:46 -0700 (PDT)
MIME-Version: 1.0
References: <20210717045627.1739959-1-daniel@0x0f.com>
In-Reply-To: <20210717045627.1739959-1-daniel@0x0f.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 30 Jul 2021 12:12:36 +0200
Message-ID: <CACRpkdbE+_DJFhBCmtz5JwJupf7QkkWZhXrgf1KG_3rPqvEm0w@mail.gmail.com>
Subject: Re: [PATCH 00/10] gpio: msc313: Add gpio support for ssd20xd
To:     Daniel Palmer <daniel@0x0f.com>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Rob Herring <robh@kernel.org>,
        Romain Perier <romain.perier@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Jul 17, 2021 at 6:56 AM Daniel Palmer <daniel@0x0f.com> wrote:

> This is a little series to add a compatible string for the Sigmastar
> SSD201 and SSD202D to the msc313 gpio driver, add the specific offsets
> for the pins on these chips, and then a bunch of DT wiring stuff so
> that the LEDs on the M5 stack unitv2 work and it can control the
> power switch for the USB connected.
>
> Daniel Palmer (10):
>   dt-bindings: gpio: msc313: Add compatible for ssd20xd
>   dt-bindings: gpio: msc313: Add offsets for ssd20xd
>   gpio: msc313: Code clean ups
>   gpio: msc313: Add support for SSD201 and SSD202D

I suppose Bartosz can just merge the 4 first patches into the
GPIO tree and you can take the rest into the SoC tree?

Yours,
Linus Walleij
