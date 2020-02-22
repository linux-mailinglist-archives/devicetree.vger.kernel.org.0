Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8B4B7168EA2
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2020 13:03:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726883AbgBVMDT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 22 Feb 2020 07:03:19 -0500
Received: from mail-lj1-f194.google.com ([209.85.208.194]:44564 "EHLO
        mail-lj1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726839AbgBVMDT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 22 Feb 2020 07:03:19 -0500
Received: by mail-lj1-f194.google.com with SMTP id q8so5010066ljj.11
        for <devicetree@vger.kernel.org>; Sat, 22 Feb 2020 04:03:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=KI6FYDIlYmOfWKvl/WJxJSFM4DVF5Yvn/VpcEKIII3A=;
        b=NzKvVRbdGdb7fet4JDEYWjdZd0SZoiMLU09m15vyGP/1mMMmO/uRvhKieGH2bvf+oQ
         LwTVfBxvexh7++Lrbf85ZdIsvFBUTqPH6DKsX1/QDGV7fvhealZr+BgaShmKWrxgFMOK
         a7Lkkm7zaawNvRivqbYce4u2yn/YTXtAWEEZZRftNFxjjcxf1H3Gq3cWy4ozRbptGKhC
         tEiHb35z+oBMpb5L0M1NpgAEGR5msj41T75nOw1kuqAX0oxB51TlR99TkYGJvpY0J+B9
         aj77pVqbVxpTwbSxwN439qwoxdcyWsmFHTCw/M/Ij42tt5KpyMCnKB/ak01a8kg2N8vs
         fqKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=KI6FYDIlYmOfWKvl/WJxJSFM4DVF5Yvn/VpcEKIII3A=;
        b=VS7IXLCxZEhd9uiNWiRRgf/vW3yLms5zXgbiNjIEcpm+Hq7qi8+br4Mpvr7nmHH8E4
         UoPpR2VUMRtgVb6VaQBbwltI86myOgpOsN8YdRo7YAXcXBLDUtzbhE39mKsUVy87y83W
         yGivRKvSB7UEw+qgvS9nSBW5j9eMnSj7NIodMA8HdVrREcrdAJtnrttIibx6D2aYy/I4
         ndP46+lSkVIUrlRxMZoE7ZOq5Am19HrlgyL5OXl4cRwQVyDcSev/p9WtXmVUBvqUxyFD
         yK33B26p2Uls3VVsE7gLB5f31XSOcXjomBy5afbAp4qRkEM/XWLYfLhAduADJHvqKXsT
         hlig==
X-Gm-Message-State: APjAAAW6v4UnscoyxjLMOo1qmuNBH9NXRFinNTdcOcts2/VryYYLWrig
        3Zo1Bvg1vus4R9MCEzhst39W+qNkYlvfkAVOVZxV/A==
X-Google-Smtp-Source: APXvYqx7HNT3OvQPpFRpcfvn1fZJFwlOJRC5z5A3c4pljTmYD1KHOgqnauKg9oW5ZN7eF81XJxTgpFvAQEKoAMqxkl8=
X-Received: by 2002:a2e:7d0c:: with SMTP id y12mr25892647ljc.39.1582372996940;
 Sat, 22 Feb 2020 04:03:16 -0800 (PST)
MIME-Version: 1.0
References: <20200221222711.15973-1-robh@kernel.org>
In-Reply-To: <20200221222711.15973-1-robh@kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sat, 22 Feb 2020 13:03:05 +0100
Message-ID: <CACRpkdZN5TMnAsf5SmKvwAqSpwu+oE1Yx7SDz6tksRjxDE1HRw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: Fix dtc warnings in examples
To:     Rob Herring <robh@kernel.org>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@st.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Maxime Ripard <mripard@kernel.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>, Vinod Koul <vkoul@kernel.org>,
        Jonathan Cameron <jic23@kernel.org>,
        Kukjin Kim <kgene@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Lee Jones <lee.jones@linaro.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Mark Brown <broonie@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Feb 21, 2020 at 11:27 PM Rob Herring <robh@kernel.org> wrote:

> Fix all the warnings in the DT binding schema examples when built with
> 'W=1'. This is in preparation to make that the default for examples.
>
(...)
> Signed-off-by: Rob Herring <robh@kernel.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
