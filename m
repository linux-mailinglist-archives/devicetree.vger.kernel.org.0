Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4273A3E1C92
	for <lists+devicetree@lfdr.de>; Thu,  5 Aug 2021 21:23:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229551AbhHETXX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Aug 2021 15:23:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54144 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230180AbhHETXX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Aug 2021 15:23:23 -0400
Received: from mail-yb1-xb2d.google.com (mail-yb1-xb2d.google.com [IPv6:2607:f8b0:4864:20::b2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB4CCC061765
        for <devicetree@vger.kernel.org>; Thu,  5 Aug 2021 12:23:08 -0700 (PDT)
Received: by mail-yb1-xb2d.google.com with SMTP id c137so10484189ybf.5
        for <devicetree@vger.kernel.org>; Thu, 05 Aug 2021 12:23:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ejzIiD3aO93/SgF6sc90FH0xUJf2xyeDLdSms2Mg274=;
        b=WTRBZceOkHClXU+Or/H2Vul+VOER5eTRk1y511l/h+h9jBMrk3PQfOalA0b+Npbp1K
         EVfAT9nOD4ZECH/5pVDl0hvwIF1kz7tiFlxqz9VtfNgSG9w9r/iwfiO39WM0syXLnwT9
         49U9bJ7Avd0kP/oVaLKrX8yCdLSuHY2QdFDFZfx4EhVPQxX4QGNjvcGm5w4RBeFt6U/t
         dvasKE/WKKEsvv0jSThGXADNne0jBQxQZE/pu2+C+ZzodWT0ed6Ybx0lXvQxAbs+33i0
         LlZc5otHaEleJM2J/skSZFl8eVS75PZNzM0Es2Ex35p5/4PQFOlVDr2pjng+uL3lJbkZ
         rN3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ejzIiD3aO93/SgF6sc90FH0xUJf2xyeDLdSms2Mg274=;
        b=ZFB5F5INjqAWvfUkErIIsgzmqTjyNCHQhcvJhQifqai6phs64iHH1j2USvKCa2JtSX
         Shde7hP5mAvkKUeyFC5pFcsLA0AOYf1+UOwdOgE2yOKWTubVWT+7aLy63BiuMf66ps2o
         hakmab17o6zlxLyS5sX6bjdvdsRV286AECUNh5G2qoFX447KgfTuwTnN0E2jOgdBSsfP
         3ioFibGVU6pXEq9L5Hoha6dw5d+bn8NLQdVRbYbc3Tv2ciI2616ISj62P/7SXd2NEh8J
         yhOqoIERIo63QLPsdDIH+GLgV6M4MEaIuUHEWKfnSKMiSimx+vGvKGH+xnVLatsa8cYS
         sC/Q==
X-Gm-Message-State: AOAM531h7Zwn0vRKOF2wy8HgDcKpOf6ccR1YSC3fcL0p+p2l/cFIJeT+
        O04+LxD77ClhW4Z8Fsi9KO/71y9NZ8kv5pNX/KP6EQ==
X-Google-Smtp-Source: ABdhPJxy2TFWh7WaWlpbxBfsd6FbRF3Pm9+/F0O1wuqKvyub1eC74+oBPP6IQ3h92U4BkHg91jRr77nPzrLjNn9KLzE=
X-Received: by 2002:a25:d0d4:: with SMTP id h203mr8390859ybg.0.1628191388052;
 Thu, 05 Aug 2021 12:23:08 -0700 (PDT)
MIME-Version: 1.0
References: <20210728144229.323611-1-krzysztof.kozlowski@canonical.com> <YQhmKFmfYwPwpK31@robh.at.kernel.org>
In-Reply-To: <YQhmKFmfYwPwpK31@robh.at.kernel.org>
From:   Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date:   Thu, 5 Aug 2021 21:22:57 +0200
Message-ID: <CAMpxmJVtxy-GBWmFLp-tMAOf03Fr7fg8RZ2ndMbvAu_M3qEkHQ@mail.gmail.com>
Subject: Re: [PATCH 0/3] of/gpiolib: minor constifying
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        linux-gpio <linux-gpio@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        linux-devicetree <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

\\\On Mon, Aug 2, 2021 at 11:39 PM Rob Herring <robh@kernel.org> wrote:
>
> On Wed, Jul 28, 2021 at 04:42:26PM +0200, Krzysztof Kozlowski wrote:
> > Hi,
> >
> > Minor constifying of pointer to device_node.  Patches depend on each
> > other (in order of submission).
> >
> > Best regards,
> > Krzysztof
> >
> >
> > Krzysztof Kozlowski (3):
> >   of: unify of_count_phandle_with_args() arguments with !CONFIG_OF
> >   gpiolib: constify passed device_node pointer
> >   gpiolib: of: constify few local device_node variables
>
> For the series,
>
> Reviewed-by: Rob Herring <robh@kernel.org>
>
> >
> >  drivers/gpio/gpiolib-devres.c |  2 +-
> >  drivers/gpio/gpiolib-of.c     | 16 ++++++++--------
> >  include/linux/gpio/consumer.h |  8 ++++----
> >  include/linux/of.h            |  2 +-
> >  include/linux/of_gpio.h       | 15 ++++++++-------
> >  5 files changed, 22 insertions(+), 21 deletions(-)
> >
> > --
> > 2.27.0
> >
> >

Series applied, thanks!

Bart
