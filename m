Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D61F664DC13
	for <lists+devicetree@lfdr.de>; Thu, 15 Dec 2022 14:16:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229811AbiLONQp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Dec 2022 08:16:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48406 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229786AbiLONQo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Dec 2022 08:16:44 -0500
Received: from mail-yw1-x112e.google.com (mail-yw1-x112e.google.com [IPv6:2607:f8b0:4864:20::112e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DDBB02C130
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 05:16:42 -0800 (PST)
Received: by mail-yw1-x112e.google.com with SMTP id 00721157ae682-3e45d25de97so40316397b3.6
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 05:16:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=b+01YxeCWojKq6MJnZMxV+gUTYg2WewOwWLQORXvvzk=;
        b=UTrxKYqyQzS4BswNluwwBff3YvsX3mkcPOv7ju9IoTtMDPQZ28qcbyXO0ag06eOEzq
         Zy8aOB6cq5R+kJCxMx/WzPoCsf6JREGPtNi618PAqFu0YDobnH5GwvXnbJBGPI8lMZRg
         OiLSbTDu2VG5sDwQnn2/gwpml+UZHp6F0KV8SdFpju+XEvobKHZpeU9up6V4psxDDGfi
         Y9waTerQQ5vwhfwYbKoH7r+ApzXQ6AuIvhOoUR1hHDSPfyXB9pBJHIi/QwLINS57uICD
         rxJfBOnOS3nJChHhjyoMwnv0HfjVZ61Z4/OqKGj3baTFM7ymCc1l1NUj4CA2a9wL6OeZ
         0xtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=b+01YxeCWojKq6MJnZMxV+gUTYg2WewOwWLQORXvvzk=;
        b=rbNROA6ZTzNlzjz2q3aK4wrzk13zySFMbn36/QgYFzV60VY4+VIg9dw2dR6oL8X5k/
         wpJsRN46sc86EVit/mtw7z2cXHPYH9JFN61QwhqNOvDAcu6puwSVfomrKuaY8H2jIsWy
         /njKefWzBDRI5HDutVgcYIy8jsN3mJPZr6cIcnG0GXd0P6L32A1p38Ng90jrxEg0SZxl
         nWpB/w1N37MLoEXJryxVV41pN0mC3CEl6R7fhWCnk6oYhJblZ0hAJxzjZnCaCWlx9Bm3
         GdEIYjsfa++8ZJPPyRfGuewacJ5HmroLZ2hMCVtw1MvIrOtzX4dzRM32ks9ViFI2cL2z
         QGmA==
X-Gm-Message-State: ANoB5pmjRQg7ciagHlMqckgDpV3DtlwZ50VLuhqMGsH4R3qr85IOvQbx
        BfFvMGYvc7Qp6XUqM3Ix0wA2pvfvkV91dDVu5zZ85g==
X-Google-Smtp-Source: AA0mqf6WFpejkWYTC7NxN49XkR4nmcIx4LNbKcsmlCcpF/OPfjrtoXUpMJdGmmgPd3ZjT1BUwvzsgsvSgUAhUbd9Q+w=
X-Received: by 2002:a81:1e04:0:b0:391:fccf:db48 with SMTP id
 e4-20020a811e04000000b00391fccfdb48mr26873545ywe.257.1671110202086; Thu, 15
 Dec 2022 05:16:42 -0800 (PST)
MIME-Version: 1.0
References: <20221214095342.937303-1-alexander.stein@ew.tq-group.com>
In-Reply-To: <20221214095342.937303-1-alexander.stein@ew.tq-group.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 15 Dec 2022 14:16:30 +0100
Message-ID: <CACRpkdbPy0krGYDdR4-Ga7tE=Wd6d2_KQ50b94VUvV=Zv=iBvA@mail.gmail.com>
Subject: Re: [RFC PATCH v2 0/3] gpio: Add gpio-delay support
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Bartosz Golaszewski <brgl@bgdev.pl>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        Marek Vasut <marex@denx.de>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 14, 2022 at 10:53 AM Alexander Stein
<alexander.stein@ew.tq-group.com> wrote:

> thanks for the feedback I've received. This is the reworked RFC for
> adressing a platform specific ramp-up/ramp-down delay on GPIO outputs.
> Now the delays are neither specified as gpio-controller nor
> consumer-specific properties.
>
> v2 is a different approach than v1 in that it adds a new driver which will
> simply forward setting the GPIO output of specified GPIOs in OF node.
> The ramp-up/ramp-down delay can now be actually defined on consumer side,
> see Patch 1 or 3 for examples.

I really like this approach, it looks better than I imagined.

> Thanks a lot to the existing gpio-latch driver where I could learn/copy
> from a lot for creating this driver!

Yeah that one is really neat, and also kind of sets a standard for
how we should do these things.

This patch set overall:
Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
