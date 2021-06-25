Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DB7333B471C
	for <lists+devicetree@lfdr.de>; Fri, 25 Jun 2021 17:59:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230050AbhFYQB0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Jun 2021 12:01:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49650 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230083AbhFYQBZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Jun 2021 12:01:25 -0400
Received: from mail-qt1-x835.google.com (mail-qt1-x835.google.com [IPv6:2607:f8b0:4864:20::835])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D005BC061766
        for <devicetree@vger.kernel.org>; Fri, 25 Jun 2021 08:59:03 -0700 (PDT)
Received: by mail-qt1-x835.google.com with SMTP id t9so7807939qtw.7
        for <devicetree@vger.kernel.org>; Fri, 25 Jun 2021 08:59:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=CMFqRamqkQgCF+ySIQhnWpXoURw1WLNbTY9bNZn+W38=;
        b=ciq0fyJCwg5/hK+oj/CXsEPQ74Dr1RLsBVZh4+AuAUDQH8M9HyGelwOrWBcBE8ev5l
         t8nYqFeRr3jN7EmUqoRa6Day9kVuUCvo0MK/+3x/SbtOyInz+5B5+iTMU8SvD2yqSxlv
         bSQp7Uv9ewlRA/0BHRPSkC4W8ju2ek50oD8Og=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=CMFqRamqkQgCF+ySIQhnWpXoURw1WLNbTY9bNZn+W38=;
        b=GpyiTESYU1GLLdmfIFsTbu+wpBIn2fa3bproFUv29HcS4TYIEeMiY1GDCmrAdAGo19
         PXXMbqctL5CL+1iL+pRAwxMu/G3UvrMkBnj4l5QYcKz+5sDi7qfETog3t5Qt61lNP4Pa
         c9RRgg2R47KCTgqqDOQPZeumFTapnBTJTpHtPDIy0aNoKknRcWRn9vLw+SKD+1neWKJY
         CWA5vkIL98FqBqzCtC0NzaqnxjcAroStWpK5qFMP/QywPbRs275pB/hmb+cc5ZuxCp3F
         ST8K3Kc+3eSPTCw2Q6q83SRjU3elddwr/U3iLgs7j5oKpukEnwla1qMkYvftUHyZEuRd
         DdTA==
X-Gm-Message-State: AOAM533dGu/OpKxqqdeB4WQ9abWdwdgvzMcIJZTaBGFJ1jRb6q9KZ9D7
        yeP8n0nZNpbCXBhWWy7qZN7M+jp0OEc+JA==
X-Google-Smtp-Source: ABdhPJzhwFJCA326MbdzbIUj2Naw7YqyZfVyEvvghKeTrtSmO4NV64mJiUyIZYeHj/LCxQb0MMVw7w==
X-Received: by 2002:aed:206b:: with SMTP id 98mr10024762qta.47.1624636742624;
        Fri, 25 Jun 2021 08:59:02 -0700 (PDT)
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com. [209.85.219.175])
        by smtp.gmail.com with ESMTPSA id o10sm3865500qtv.62.2021.06.25.08.59.01
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Jun 2021 08:59:02 -0700 (PDT)
Received: by mail-yb1-f175.google.com with SMTP id i4so5335524ybe.2
        for <devicetree@vger.kernel.org>; Fri, 25 Jun 2021 08:59:01 -0700 (PDT)
X-Received: by 2002:a25:2405:: with SMTP id k5mr13449716ybk.405.1624636741419;
 Fri, 25 Jun 2021 08:59:01 -0700 (PDT)
MIME-Version: 1.0
References: <20210624223743.2486302-1-linus.walleij@linaro.org>
In-Reply-To: <20210624223743.2486302-1-linus.walleij@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 25 Jun 2021 08:58:49 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Un00zNuCQ=f5BV0dvi6gSMXgfC_e94OD5ZpS5ad3wJUg@mail.gmail.com>
Message-ID: <CAD=FV=Un00zNuCQ=f5BV0dvi6gSMXgfC_e94OD5ZpS5ad3wJUg@mail.gmail.com>
Subject: Re: [PATCH] drm/panel: Add DT bindings for Samsung LMS380KF01
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, phone-devel@vger.kernel.org,
        =?UTF-8?Q?Noralf_Tr=C3=B8nnes?= <noralf@tronnes.org>,
        Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Jun 24, 2021 at 3:40 PM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> +  spi-cpha:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description: inherited as a SPI client node. Must be set.
> +
> +  spi-cpol:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description: inherited as a SPI client node. Must be set.

I will defer to Rob Herring (added to CC) to confirm if we really need
all that stuff for spi-cpha and spi-cpol. I would have expected just:

spi-cpha: true
spi-cpol: true

As I understand it, the fact that they are flags will already be
validated as part of the "spi-controller.yaml" so you don't need to
specify that. ...and the fact that you have them listed as "required"
properties documents the fact that they must be set for your device,
so I don't think you need more.

NOTE: if you're testing this using your "example" below I think you
will find that you could set this to something other than just a flag
and it won't yell at you. However, that's because your example has a
bogus SPI controller node in it. I think if you put a real SPI
controller in the example then it'll pull in the "spi-controller.yaml"
bindings and magically start validating everything.


> +  spi-max-frequency:
> +    $ref: /schemas/types.yaml#/definitions/uint32

You don't need the "$ref" line here either, right? Again it'll be
validated as part of the "spi-controller.yaml".


> +required:
> +  - compatible
> +  - reg
> +  - spi-cpha
> +  - spi-cpol

Does "port" need to be listed as required too?
