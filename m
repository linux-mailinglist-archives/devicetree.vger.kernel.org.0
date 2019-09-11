Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6AF48AFDF4
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2019 15:45:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727664AbfIKNpw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Sep 2019 09:45:52 -0400
Received: from mail-lf1-f66.google.com ([209.85.167.66]:39142 "EHLO
        mail-lf1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726954AbfIKNpw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Sep 2019 09:45:52 -0400
Received: by mail-lf1-f66.google.com with SMTP id l11so16495912lfk.6
        for <devicetree@vger.kernel.org>; Wed, 11 Sep 2019 06:45:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=nP0S20EG8LYe+0hd/5mZu3tMCLe/Md3Azkq9J3MKJKE=;
        b=c/y2pXyG9iAcROZvJYUWXzj08AwzhP+UtUM6Zvf/8ps1wHhTw+scZ4stj//aj35eud
         RL27Bf8D2dJW7JcyiLA/yX5gfNSAhmDOY/1XugvUaPZe8EC6rty0tbvIVKhMaLf1+deA
         /zxHOrlv8g2hF8FmJf9naGJY8vhNwopQr/98tJh0jRzPJAelieRtB7xzpxf2KMwDJNA1
         ntc9M5ItL3dv3Hji1pW11E8+fEfTYqyzZwOI0yrKULS9G5ud4S1a9TlkGLj1+6Y0UN/u
         QKjblsTwYO3m8OoWh7s1DFbOo0levTzp7EH/1G2ufv/5StbeoAOjKtfyVUD4LUcy57gR
         Oraw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nP0S20EG8LYe+0hd/5mZu3tMCLe/Md3Azkq9J3MKJKE=;
        b=cC/tDGeMM3nGd80/LNCAmgH8sHdx1L9rJ2qFBp9nrajj9Im+1ObU29Icou4x4wUvFh
         mMiRLuGQIOOpJowfUgqS/v9xKGDL+gIamBbE0Hg4oJ8A94f5N3XrhPDQfp/luzNasiRi
         yhJEaQoW2FcvMYUhRCgO5Q59lWWhdsJK0ZVg8ItsexSKWyK4b3p4Unm8eSpim1HXCFx+
         oAXBf3mjsQ8OEegWpMKT4LZrYytk0BosKdN+ubcjbekuaSzTeXlfASlyl7UuWJybMEF8
         yk6zpBUBfRwB5F2OsbYOcb2u0laWHd4at1GNyK2E4cQKPE1Iud4hlnz2PTpyGjF7asWE
         bnow==
X-Gm-Message-State: APjAAAU2fBnH/YvrT6FQsEGkxu+YyWbv7eIswhmdwPBjqmriEchj77LS
        MXYaZrOK6V7gsIjRkzKGirzJTUGUplaY7U4KSL5mog==
X-Google-Smtp-Source: APXvYqyjFpv46U3/SHRumoathl8NLWc2Qs97KoWiUJCJOU9xmtA6GddnV4DQQxnfIrpO4ge71BO6yrhZSpCiBINuM/M=
X-Received: by 2002:ac2:530e:: with SMTP id c14mr23463783lfh.165.1568209550231;
 Wed, 11 Sep 2019 06:45:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190906084539.21838-1-geert+renesas@glider.be> <20190906084539.21838-2-geert+renesas@glider.be>
In-Reply-To: <20190906084539.21838-2-geert+renesas@glider.be>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 11 Sep 2019 14:45:38 +0100
Message-ID: <CACRpkdaB_cX3AZiCQVN3=P5C=ffQa1cOZtVx_g4b+ej458P6ow@mail.gmail.com>
Subject: Re: [PATCH 1/4] gpio: of: Make of_get_named_gpiod_flags() private
To:     Geert Uytterhoeven <geert+renesas@glider.be>
Cc:     Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Sep 6, 2019 at 9:45 AM Geert Uytterhoeven
<geert+renesas@glider.be> wrote:

> Since commit f626d6dfb7098525 ("gpio: of: Break out OF-only code"),
> there are no more users of of_get_named_gpiod_flags() outside
> gpiolib-of.c.
>
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Patch applied.

Yours,
Linus Walleij
