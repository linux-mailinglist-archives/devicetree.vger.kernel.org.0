Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 54D6338824D
	for <lists+devicetree@lfdr.de>; Tue, 18 May 2021 23:42:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352561AbhERVnu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 May 2021 17:43:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40588 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352530AbhERVnp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 May 2021 17:43:45 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A59AAC06175F
        for <devicetree@vger.kernel.org>; Tue, 18 May 2021 14:42:26 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id o8so13251062ljp.0
        for <devicetree@vger.kernel.org>; Tue, 18 May 2021 14:42:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Y4LHlxzr4W8jpC9HaYJhZwDuaET8kSiDblyaNEqOksE=;
        b=e2d04N4scOqVY5LnU5k7L8BleWQxhOqAWodCpHroRMd5HD8smKH/IWEOdI5GEAF97Y
         2x4MMEc0/DYgRpdJ4TDrpYOxpqipZXuec0IBieTXUlaShYYFxW+/9MYk2Yhf0FxEGuG1
         pjonRAyNOcnMa+d3BW7U4nwWT3N8+9kzTQq9CIjVoJy8CtH6huhmVshmzjfkGad2ykeS
         FyCCWP6LVnImwElscEgq9TWNVSX108MBYEvWnR1SCWboLPuxbeQQm73NCOuWwscuJkzT
         jWhA6Ixw0RgYbNqXkFdmOINwj8ZJJG4kghhC2VqnQrh2F9UIMWL3fwtLzQ5Tn//uIWCG
         q0Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Y4LHlxzr4W8jpC9HaYJhZwDuaET8kSiDblyaNEqOksE=;
        b=TYhbQjcZF64EPAcSTurFUgdrUEhYV0qujQZoqCH9N3jfe4edasrvleSt8YEFWqbeec
         c9yFM78sk+OL8MYfetRvNHOMVjQm5O+p9QEMNkDvRLU4BrcuOIyYbCPFBhrSdaeyS0ki
         d3hcGGrUZZ9LmEOQJkDMiaWGqcqV1dB4vF40ZMgkMwM/otxRoDgEfSqM/EOYIKf1iDrB
         W/CikD3V87FW1wi7+eg2xvtEN1BXPviyDOymSCmzI2Q/yw8oF/hREQ5ONdaGW42UlnbQ
         cRydgA+6P8QIIH+cR8SF/JSpd0I4/hsB9CExd+aWy/gHVxgMZXJj3NDsY7wbLZHREuDg
         HL8A==
X-Gm-Message-State: AOAM530QRorBg0ogoYLtUlEMZgNW8J4rkWK7UX04jdJXhYgF1cV+WThl
        7mHXJoeDKUBJAB3mqdf6ux9zrEhacR0L73zae0GrGQ==
X-Google-Smtp-Source: ABdhPJxIDosGtpEMw/NzLU3CFkVL5CB0sVhyAqTIltm3eI4YBXm439TxCqXSIGogB28/qWeNyG51TXbSYcaBkXQRwy8=
X-Received: by 2002:a2e:81d0:: with SMTP id s16mr5891482ljg.74.1621374144508;
 Tue, 18 May 2021 14:42:24 -0700 (PDT)
MIME-Version: 1.0
References: <20210518151655.125153-1-clabbe@baylibre.com> <20210518151655.125153-3-clabbe@baylibre.com>
In-Reply-To: <20210518151655.125153-3-clabbe@baylibre.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 18 May 2021 23:42:13 +0200
Message-ID: <CACRpkdZsYvxif8kisM9af8XhS=4Ctf8iS5rhbWxbujSjVs1RRw@mail.gmail.com>
Subject: Re: [PATCH 2/5] crypto: Add sl3516 crypto engine
To:     Corentin Labbe <clabbe@baylibre.com>
Cc:     "David S. Miller" <davem@davemloft.net>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        Russell King <linux@armlinux.org.uk>,
        Rob Herring <robh+dt@kernel.org>,
        Hans Ulli Kroll <ulli.kroll@googlemail.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 18, 2021 at 5:17 PM Corentin Labbe <clabbe@baylibre.com> wrote:

> The cortina/gemini SL3516 SoC has a crypto IP name either (crypto
> engine/crypto acceleration engine in the datasheet).
> It support many algorithms like [AES|DES|3DES][ECB|CBC], SHA1, MD5 and
> some HMAC.
>
> This patch adds the core files and support for ecb(aes) and the RNG.
>
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>

I'm not a crypto guy and definitely trust you and the crypto folks with
this, but FWIW I am obviously happy about this so:
Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
