Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6A8895615A7
	for <lists+devicetree@lfdr.de>; Thu, 30 Jun 2022 11:08:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230331AbiF3JHk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Jun 2022 05:07:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35540 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233567AbiF3JHj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Jun 2022 05:07:39 -0400
Received: from mail-yb1-xb2e.google.com (mail-yb1-xb2e.google.com [IPv6:2607:f8b0:4864:20::b2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 576561CB2F
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 02:07:37 -0700 (PDT)
Received: by mail-yb1-xb2e.google.com with SMTP id i15so32687802ybp.1
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 02:07:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=LM7syOsuEujen5dmBbJf2NA8ECKqk41TV2371TTE0Ek=;
        b=TlEFTT+BqFbp7eqEnEAaggxbVkXRy71Zg2YuphHqLVH39D8HbYrV6YvFEfMc8Hot+2
         08kRtTlZAtWvUHnwVyl/4zRAODaPgbpoKw1P8cWZCrnt58/uqImCJVrkST2NpLCZcwto
         W6bj0ML9VQIeiSmriEbyERn++O5W79kZXSKmRYNeF8VWcIWcql2c4BcI1KdUtjOsci+X
         QTBBP/Dy724Srhf6ViUXgxtuEqLWD8c8v9tDJt1boGEzWf2TTkYD5o8RxFetHT0BXe22
         lgCu/QfYNpCqbBu1/kczyPPtJSpGtWwdA7Q/7zKFyymFEPbLHWMFwks+BzWYbOI+M61A
         WnIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=LM7syOsuEujen5dmBbJf2NA8ECKqk41TV2371TTE0Ek=;
        b=wWQsFjNQ8GJSZE01hRJqgxkQTP7081HYa6CJZSdqla7oXapHBqvLLW/5InGGWZ4hT6
         tKtD1E7FOGnpEG16kGn64X9G5VW+Agd5xofKS3ZJd8iVWSUVgasLq65P/WXN8jSVVwYl
         c4zbZPaN/nhwvM1Y0lfmi++OtbHMDozAR/drQ0cMPEsr8pdZdcJ9+xJmyR0j0fPCyRFF
         WBjdSS4NhbjX4ikLDcD+SLQJuVjeBWg9xF+A7+dJqu7AegEYsKQA0LtrjDylSIVN7FvT
         l+Ixh+1MuvIlCWAaiqkIcx3Z73hZ2G4W6M82/rmferGPQM6n42s8JG7dhTKiW4gPfWIF
         DLNw==
X-Gm-Message-State: AJIora8xzmUj+uKrUc13gh5Hr8ouv6zhuK3BRxIk5CMw9XtqzKExcNxX
        zqmiILfqmpMh5w49IvQfqquKjQgs66YvslhFQWIQFw==
X-Google-Smtp-Source: AGRyM1txhj6Bt2Ppk95Xs8lzgpOlcXsxAyKn9sSO7LnkUjia6xoliisgZJZfuZHQrrccsWvvlPua0vjyAqBysuk9X1M=
X-Received: by 2002:a25:d82:0:b0:66c:dafa:48c6 with SMTP id
 124-20020a250d82000000b0066cdafa48c6mr8388465ybn.492.1656580056618; Thu, 30
 Jun 2022 02:07:36 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20220629102527epcas2p42e99f44d529d215623bd0e12a082d1dd@epcas2p4.samsung.com>
 <20220629102304.65712-1-chanho61.park@samsung.com> <20220629102304.65712-3-chanho61.park@samsung.com>
In-Reply-To: <20220629102304.65712-3-chanho61.park@samsung.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 30 Jun 2022 11:07:25 +0200
Message-ID: <CACRpkdadUF8iQhhpO53VgbY0NBqJsmW7sXGUayN4+LrRYouwVA@mail.gmail.com>
Subject: Re: [PATCH v3 2/4] spi: s3c64xx: support custom value of internal
 clock divider
To:     Chanho Park <chanho61.park@samsung.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andi Shyti <andi@etezian.org>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        devicetree@vger.kernel.org, linux-spi@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
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

On Wed, Jun 29, 2022 at 12:27 PM Chanho Park <chanho61.park@samsung.com> wrote:

> Modern exynos SoCs such as Exynos Auto v9 have different internal clock
> divider, for example "4". To support this internal value, this adds
> clk_div of the s3c64xx_spi_port_config and assign "2" as the default
> value to existing s3c64xx_spi_port_config.
>
> Signed-off-by: Chanho Park <chanho61.park@samsung.com>

I don't really see why this divider value should be hard-coded like this.

I guess it is some default value, that's OK I guess, then call it:

> + * @clk_div: Internal clock divider
> +       int     clk_div;

clk_div_default

And the documentation should say "clock divider to be used
by default unless a specific clock frequency is configured"

Yours,
Linus Walleij
