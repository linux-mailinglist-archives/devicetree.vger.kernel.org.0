Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 66C38356CBD
	for <lists+devicetree@lfdr.de>; Wed,  7 Apr 2021 14:54:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243606AbhDGMyw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Apr 2021 08:54:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55290 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352503AbhDGMyv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Apr 2021 08:54:51 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E3F4C06175F
        for <devicetree@vger.kernel.org>; Wed,  7 Apr 2021 05:54:41 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id v140so10552909lfa.4
        for <devicetree@vger.kernel.org>; Wed, 07 Apr 2021 05:54:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=DyrrqTEJnCX3WBmtjS0+k23mNkQbpYSt2sHU74RBszQ=;
        b=q+0nm+oHqxkrb4isK03UMmiycDLW9MWOdymRUsLDo1y9sBlbGVetuMi9YTGDuiCJAV
         b+TaFDGd0EtQA2Pi168wjePrZBidNBb7WG7qGGb8chdqEMJqc2quWLFhJK7Eng29Dp0H
         r1VZDYApy8MqZaB32zLUxthiNVgm5VkqX9wTMn9/8tNmJSzGEvzG90EcyATLPkUhkII5
         pEwq3juyIFi9wTEBWC00VjmlosJJwndhhGLiAcHJpNX/OnDmiDR7XDMqTKsuyARBVjfy
         CVy4OihbpsewzzErA7J8mUhD+/hLZ+Cogxo1gVUbzG0tCATycfn6Z3bnjRkZbSJ8GQ+X
         6Pfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=DyrrqTEJnCX3WBmtjS0+k23mNkQbpYSt2sHU74RBszQ=;
        b=dGkUIA2u6+689I0hwucQgCH9+l8JPG2vqM63RC6ZTwDidjpKjqvef4mWtQeNb/PXw2
         Lh+hBtNeg4HvnkdfQ8qoU1PNBrChnc/uW8ZTgMn9X40dapuouaTClY0AW+vCus7fprSU
         Ztn6DdT5OtLa54sjW2gwSOTG7dMLu47CdQnzJGMtPgWUdSL8xFmQzg3+BPF79bw52yUZ
         b9vBWen1PI8dBlrxAZrtxSuis2k7Z5s3ubF85UD8yCJo4Nnfir7VX6TRMWPJBl09OZML
         jfCJHLMNqtHxOs0zjbssqi8Pf0ywAGQkw3pIdZMG5Ii3ECsfO/wbJchmsuTbS9vR1zQn
         T+8g==
X-Gm-Message-State: AOAM533sWOeoop3rrD1uo8dQ6TW1Yz0UfME3JNEtctL/091W8zgnFTqx
        PYyFzrfzqqqEzfubVyH7n34f4liMkT0IITG29foFiw==
X-Google-Smtp-Source: ABdhPJwMRBhHvSSSEJDQMz763gc+8nCyFT9uCOePB01xTME+S9VMW3q2V2TnoSV8wdpj1/u/vgMYbE3xDZd8AEX71UU=
X-Received: by 2002:a05:6512:243:: with SMTP id b3mr2493455lfo.529.1617800079596;
 Wed, 07 Apr 2021 05:54:39 -0700 (PDT)
MIME-Version: 1.0
References: <df145e77bd124721f28cbc58fb3c58c138f13d86.1617365710.git.geert+renesas@glider.be>
In-Reply-To: <df145e77bd124721f28cbc58fb3c58c138f13d86.1617365710.git.geert+renesas@glider.be>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 7 Apr 2021 14:54:28 +0200
Message-ID: <CACRpkdY0zRSXv3A-hKP=GCYsWTJYk23tJiAmKmoECZ0zyUO26Q@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: gpio: fairchild,74hc595: Convert to json-schema
To:     Geert Uytterhoeven <geert+renesas@glider.be>
Cc:     Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Maxime Ripard <mripard@kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Apr 2, 2021 at 2:20 PM Geert Uytterhoeven
<geert+renesas@glider.be> wrote:

> Convert the Generic 8-bit shift register Device Tree binding
> documentation to json-schema.
>
> Rename from gpio-74x164 to fairchild,74hc595, as the former refers to
> the Linux driver, and not to a hardware name.
> Add the missing hog description.
>
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Looks good to me.
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
