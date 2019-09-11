Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 97275AFDF8
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2019 15:46:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727664AbfIKNqk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Sep 2019 09:46:40 -0400
Received: from mail-lf1-f66.google.com ([209.85.167.66]:34766 "EHLO
        mail-lf1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727307AbfIKNqk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Sep 2019 09:46:40 -0400
Received: by mail-lf1-f66.google.com with SMTP id r22so5204297lfm.1
        for <devicetree@vger.kernel.org>; Wed, 11 Sep 2019 06:46:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4sB+wuvpg6HOuULqW0CTyLMZAayjlo9Avh7ZcIfH02I=;
        b=f7WAc4eVUllG0HyD3MOg19lLppTzVl6OteOiVGlOanE6XyIj3qnlmvqoBN987zeZrw
         S0IAcgva40wvfsDFvM3iBU+YJHXlQJ3lZG51L+Mi5m2SR+hu8e0jyXEHnLLybleugw05
         ZF0/LzCcyey2fwAHdDqpbTR0gDZ/J9BymPONwPVtMrKQxHhsT/t4Lriy+q4xMRdFPeW0
         OLC2m/IW0I59dAFAHxL2YvisRwdW6sCDWuapamoz7H6mHjZ6Qv6bBFOfo99aJWCAyWTc
         m9m9WN45I21+hrEqrAa7ziveIW9c5R1rDsjJVUPr93xOMiM0odNzmnjfiB49EaR7aUTq
         q6tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4sB+wuvpg6HOuULqW0CTyLMZAayjlo9Avh7ZcIfH02I=;
        b=PLf4cdq/RC5V1S30UcSoUHc1stXZ/d1BjCjyfssCv952+rJdZqHbNb6X+h71EMBMnp
         UHu3TvfdbnQiN2TjV2/bmfUhbGZ5lEmdLJplZn7tRbwzFpeL0lpFPmKDSelEW4c8h5U+
         +5ErH1vW93mAaw8FLslYlvxmGppEJZp7uzVbspsHfIKPKbj1huSAxIZ8GPAZ/TH0TmdN
         faOWQyqMPCcX0+FuUDDxB75kcqqx/5UMts2hwpNQrZ0+tIZJ0gQyiMTNRlmUsEO+tIDG
         3IzbDi/9yh1jHrLNDjO9PdygsKSQg2YL1foGKT+T7IX8PylO69ukSWjFnnSCKyUdxs4A
         VRqg==
X-Gm-Message-State: APjAAAVd3u4b6iSVk3KB66XmQxWf52NopFS7+eYqTVSxMgQzyGoTv/DO
        Ieiu3jfNuAICJ/1uiA0iWlCRgAEH2u9jCJgvoL2DSw==
X-Google-Smtp-Source: APXvYqyF6iui8XzJs63N8SI1PpU/RSrw6A/JpJKJvAWmEDeGqssvUwnipJOZ4/itbd3e1Uyp9EoF+YH4+XRnfLSl9JE=
X-Received: by 2002:a19:117:: with SMTP id 23mr24532313lfb.115.1568209598170;
 Wed, 11 Sep 2019 06:46:38 -0700 (PDT)
MIME-Version: 1.0
References: <20190906084539.21838-1-geert+renesas@glider.be> <20190906084539.21838-3-geert+renesas@glider.be>
In-Reply-To: <20190906084539.21838-3-geert+renesas@glider.be>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 11 Sep 2019 14:46:26 +0100
Message-ID: <CACRpkdaOu2mVGS13MpQQ-OJ71W0qR4oTvE9T4+=BKch4+Vdf1A@mail.gmail.com>
Subject: Re: [PATCH 2/4] gpio: of: Make of_gpio_simple_xlate() private
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

> Since commit 9a95e8d25a140ba9 ("gpio: remove etraxfs driver"), there are
> no more users of of_gpio_simple_xlate() outside gpiolib-of.c.
> All GPIO drivers that need it now rely on of_gpiochip_add() setting it
> up as the default translate function.
>
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Patch applied.

Yours,
Linus Walleij
