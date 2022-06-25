Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B13D455AD4C
	for <lists+devicetree@lfdr.de>; Sun, 26 Jun 2022 00:59:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233696AbiFYW72 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 25 Jun 2022 18:59:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233712AbiFYW72 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 25 Jun 2022 18:59:28 -0400
Received: from mail-yw1-x112b.google.com (mail-yw1-x112b.google.com [IPv6:2607:f8b0:4864:20::112b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9D3D13FAA
        for <devicetree@vger.kernel.org>; Sat, 25 Jun 2022 15:59:26 -0700 (PDT)
Received: by mail-yw1-x112b.google.com with SMTP id 00721157ae682-31772f8495fso54857077b3.4
        for <devicetree@vger.kernel.org>; Sat, 25 Jun 2022 15:59:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Kz4CQpOKhPTyDsa60xKPIiVM3jnSyd80mVmcmJIhuHQ=;
        b=f0R0dNNfG+cy3gFp7wt9apjvTZnUDWzypyV4qpxTt0EYhTusE7dczqOjHtdnJ6vezN
         zHCYjY76OuU7+5Kurfz9oaZcDHK4a3uwUh3eDulaNbh8hB6891r6dpwGNRRrYLaL0rGI
         lXHEoGEl0PVXK+UANPXZuirl60K+W2t2Kir2E6bca3VxQvvETRSmzmqghmbYWZRf2c+O
         qQ7Uwvryau8aALkvZtL19zhwrXOxRQuMK4ocOgSBgDpdEydMdiCLF+mETnI5hsInX+0a
         9Jd7mhj/C6OsaaKO0Au+5T+hKmp/3hxrDjcU/5FKa/Ui/MGI9jYcSPGrFadHuCt/y8Bb
         VoKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Kz4CQpOKhPTyDsa60xKPIiVM3jnSyd80mVmcmJIhuHQ=;
        b=Vcat2P/b568M/4x44PPQWdI4ZZKGz50XF9ufy8vUsGHjlu0c0bASd5sVT13IHoNXQ6
         Dd0PygTOSNIM6kwjLp8eFIOlzyC51VwjiT3Y17BIM1jd23lpJkNmyEUiy9rTk9KKDJrh
         /LrpsKAnLGQRNFXECRd+dJV6u5NKSW+YvBcn+jhrIyh1iSdV00rdenfggpJSoUAghGR/
         ag5hgePGcILdYV72BLfVeeCZm6bxUftv4e8VXfLQ+SEMOpjaHsW06CDIY901hRLbndyz
         N4LVyRYawyLFfGcKFREkUYZC4FOma357N4YVcCA1u0JY1V7WCPwbAKiS0xGL1lyO09d6
         BXGQ==
X-Gm-Message-State: AJIora+27RbBEH5fgCnLiM2AWI5dJlNpNdgKEWYUrv6N8dYmFhxuqb23
        CDy/gZScvIkVQxrPy3bF/NZQgn0JaWID+EFnVQDRcA==
X-Google-Smtp-Source: AGRyM1uosYwxlq64LUlIuBLDzEOZIVCn/f27F5vp117PBBS+sA4ZCR/UdMd9wStyWymJXop43cXKJFCZnY1Vqnm0CGM=
X-Received: by 2002:a0d:eace:0:b0:317:87ac:b3a8 with SMTP id
 t197-20020a0deace000000b0031787acb3a8mr6860068ywe.126.1656197966000; Sat, 25
 Jun 2022 15:59:26 -0700 (PDT)
MIME-Version: 1.0
References: <20220427144620.9105-1-pmalgujar@marvell.com> <20220427144620.9105-3-pmalgujar@marvell.com>
 <CACRpkdaqeTs-jHPBmtdiz+LdMM0pz0zqt4diX=e+YpgaGr0Jbw@mail.gmail.com>
 <20220603090618.GA27121@Dell2s-9> <CACRpkdaOd0-k_mt0ZrKT-DbVc3f0b5uXXmXpBNH=hq3BGCB+vQ@mail.gmail.com>
 <20220613080452.GA1884@Dell2s-9>
In-Reply-To: <20220613080452.GA1884@Dell2s-9>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 26 Jun 2022 00:59:14 +0200
Message-ID: <CACRpkdY-+D1tkNJoWLpQH9-2AcE1xb546eJx5Nuq+Tw3WKj6mw@mail.gmail.com>
Subject: Re: [PATCH 2/5] dt-bindings: gpio: gpio-thunderx: Describe pin-cfg option
To:     Piyush Malgujar <pmalgujar@marvell.com>
Cc:     linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, brgl@bgdev.pl, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, rric@kernel.org,
        cchavva@marvell.com, wsadowski@marvell.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jun 13, 2022 at 10:04 AM Piyush Malgujar <pmalgujar@marvell.com> wrote:

> Thanks for the reply.
> But as in this case, we expect a 32 bit reg value via DTS for this driver
> only from user with internal understanding of marvell soc and this reg bit
> value can have many different combinations as the register fields can vary
> for different marvell SoCs.
> This patch just reads the reg value from DTS and writes it to the register.

I understand that this is convenient but it does not use the right kernel
abstractions and it does not use device tree bindings the right way
either.

Rewrite the patches using definitions and fine control and move away
from magic numbers to be poked into registers.

Yours,
Linus Walleij
