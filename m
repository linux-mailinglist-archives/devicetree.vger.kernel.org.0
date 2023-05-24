Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 538A870F171
	for <lists+devicetree@lfdr.de>; Wed, 24 May 2023 10:51:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240386AbjEXIvO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 May 2023 04:51:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57726 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240404AbjEXIvN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 May 2023 04:51:13 -0400
Received: from mail-yw1-x1136.google.com (mail-yw1-x1136.google.com [IPv6:2607:f8b0:4864:20::1136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9BCC61A2
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 01:51:08 -0700 (PDT)
Received: by mail-yw1-x1136.google.com with SMTP id 00721157ae682-561f10b6139so6382777b3.2
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 01:51:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684918267; x=1687510267;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yTHHxaJoMypDJpE/fsiTCCRA1MQ4EfaJk8LPuAmRUjY=;
        b=WWt1aFUgSK1Ne1Cxs/lfu8qKDGY9W9Y13wFo68wgZy1PwC6Mm36fuTV91X/m7vDu5s
         MSi9VVvYCz+uvJyy7ZTFObF4p0+QQcUKH44pvNXiUQSOvFQbnt/BtoxpUlXY2Qu41VZ3
         UiBXWHSSitiqsp4KMFNg9TM7rkywutQ8fNZJKQLrxHrgnZj5yhPDMpm0H3aR5YwsotJm
         38PMUgD1RCVfKyRIMN6geYUvqNAZMjoyDs4xt/qeiLoUwsfzLMHgcVA0FHSyQof1lYDX
         mIWu1FDUgm/wGXN72nPPmKFD7dlWxPYND8mezH46xxmUfW+NozrnpNUJoLWzTYNOO4Cc
         YbzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684918267; x=1687510267;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yTHHxaJoMypDJpE/fsiTCCRA1MQ4EfaJk8LPuAmRUjY=;
        b=jil74CLJCu5y8j7JngfKuuKfgIsYYLVrH0xlXoI/mM1EMne2N3e7HP9B7JiNYwm5RC
         gr0NGmIrkWqRoosph1kwtR9Xjy9Vqe07aEzGGbueN5JqrNE4GRtD/ByFnKsH3H3smYO1
         gbzDcpP4LUWiIlAeBQGBaxWqT2u0i//jUkkCNXyQfJVFG5Ema4ZafH6SS/iYfbENMzfb
         2i/hxVG9DZ74X9TpFKL4BOLLmelSEh+rG+gZH4sImYCkzBsUnH85b0YLwdSsUP/mKlUh
         HwESqgrGpGSOZELU8J/nKSNxMY+1FQUshLDuK5wZeK3x0kARxjyZwCIt81p/59v3yoZM
         AREw==
X-Gm-Message-State: AC+VfDzbezE6gevqFXzq1HFVakRElvQnm3ejhn6Svgb0ZgOl7Sxh10XM
        3veIrOgQpB30w9feBpz/UZFA/L9h1YvDJeRx6J66Dg==
X-Google-Smtp-Source: ACHHUZ5vVK9vagH7aFbtx2YppYrWx9tZs7lNqLziCsJ17rVWYpua6FaBjs1X2V+4pwEhVnpLameEWFYTQofY27fqee8=
X-Received: by 2002:a0d:d4c7:0:b0:55a:52e3:da37 with SMTP id
 w190-20020a0dd4c7000000b0055a52e3da37mr16454222ywd.10.1684918267794; Wed, 24
 May 2023 01:51:07 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1684313910.git.Ryan.Wanner@microchip.com> <048a41d1dcb3da0e845986a73eaac61a54c69269.1684313910.git.Ryan.Wanner@microchip.com>
In-Reply-To: <048a41d1dcb3da0e845986a73eaac61a54c69269.1684313910.git.Ryan.Wanner@microchip.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 24 May 2023 10:50:57 +0200
Message-ID: <CACRpkdaN=9X_bvYrVF4xoZ1k4hbd+sMx6KtpPPLweKxtrSZ2Dg@mail.gmail.com>
Subject: Re: [PATCH 2/3] dt-bindings: pinctrl: at91-pio4: Add push-pull support
To:     Ryan.Wanner@microchip.com
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, nicolas.ferre@microchip.com,
        alexandre.belloni@bootlin.com, claudiu.beznea@microchip.com,
        ludovic.desroches@microchip.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, May 17, 2023 at 1:54=E2=80=AFPM <Ryan.Wanner@microchip.com> wrote:

> From: Ryan Wanner <Ryan.Wanner@microchip.com>
>
> Add generic push-pull support for pio4 driver.
>
> Signed-off-by: Ryan Wanner <Ryan.Wanner@microchip.com>

Patch applied.

Yours,
Linus Walleij
