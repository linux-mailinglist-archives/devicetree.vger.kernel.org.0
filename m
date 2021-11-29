Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 60E53461A5A
	for <lists+devicetree@lfdr.de>; Mon, 29 Nov 2021 15:53:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237644AbhK2O4b (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Nov 2021 09:56:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43262 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240085AbhK2Oy2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Nov 2021 09:54:28 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C56FCC06175A
        for <devicetree@vger.kernel.org>; Mon, 29 Nov 2021 05:16:31 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id u1so36670895wru.13
        for <devicetree@vger.kernel.org>; Mon, 29 Nov 2021 05:16:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=D9hb8ArcwSF5+l+4/7GlEzMkRJEdF2V8j8hWtJdo/N4=;
        b=GH8rhxB4nc2We8eEaVUt6CIrsHX1ALvK7mHLTzRymQGJnCNJFVLzjumwmv9RGrVDpz
         JiSoHww9JW2dHPxd7c6LUBHILLrSZp3Uw9Kt7SYi1VaY4Yez8hRnu6dNI6qY1lfcD25N
         /gyyU9ZsQJy52DLXgssjmLU8amht8emxx4BMIig+4CNh9cNPx6SubRru8Em1jcSc99cM
         0NcIVgKesYU8/8jvDRACs07L166TMOzdi0FcxDI6AYwmbgVOVF8ykEd1JZuFqLwdkrq2
         A7ttHByDX7qk8ml/4zSp5S6HizJqcahEPk6OSLzhg+WKiGSLdCqzQdHHPMD1e3MGGAG+
         muEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=D9hb8ArcwSF5+l+4/7GlEzMkRJEdF2V8j8hWtJdo/N4=;
        b=k28vP48gbsToVePsunqTMvM5pZR9ZVGKFI2DIUAB8KcVIfaKLlRW+p+4dVKIXedVBS
         2vDKC+loh1Js6OWENyo7RqPKQMtVZZY6Bjf2EBjQJsYVEJI9z3qaaA1qVfaE0+Xtd85u
         Sqxk4GbACHZvtrTM5EDirvVm0dDhCJIe4+NbAA3tBvDd8+OEJfBOJDlGXa+MxrjprhPt
         KqkWw/x1fJwDGGTFydfrk8XDthEUl4ou0YB8nUtqWWgYxkW2yFdbJwGmq2mnDFbctAFd
         /Og8ejWYGPht3DrWIxcWbE7QqnWu6T4dUY1G/trlyrfwKPe2utPDkSi/giSh07QgjkZq
         UR+A==
X-Gm-Message-State: AOAM530DIbr51AQpZnNIEsVHw+6TwDx6T2CFd/ao0QRmAQgso8ctdXXL
        MI5xZvlR13oBMImh0MYtERMFyg==
X-Google-Smtp-Source: ABdhPJzXIFYcO4sU5Nv6WKWg9fU5wORe5on5+K4t3PjWq3unoujLZjIQpWVT6wU5fO64n3ia7JzI1w==
X-Received: by 2002:adf:bc89:: with SMTP id g9mr33793200wrh.578.1638191790352;
        Mon, 29 Nov 2021 05:16:30 -0800 (PST)
Received: from google.com ([2.31.167.18])
        by smtp.gmail.com with ESMTPSA id d8sm13765942wrm.76.2021.11.29.05.16.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Nov 2021 05:16:29 -0800 (PST)
Date:   Mon, 29 Nov 2021 13:16:28 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v3 1/2] regulator: dt-bindings: maxim,max77686: convert
 to dtschema
Message-ID: <YaTSrABZIbqqJ6p5@google.com>
References: <20211125074826.7947-1-krzysztof.kozlowski@canonical.com>
 <20211125074826.7947-2-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211125074826.7947-2-krzysztof.kozlowski@canonical.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 25 Nov 2021, Krzysztof Kozlowski wrote:

> Convert the regulators of Maxim MAX77686 PMIC to DT schema format.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> Acked-by: Mark Brown <broonie@kernel.org>
> Reviewed-by: Rob Herring <robh@kernel.org>
> 
> ---
> 
> Changes since v2:
> 1. Rebased.
> 2. Add Rob's tag.
> 
> Changes since v1:
> 1. Split regulator nodes pattern on those supporting ena-gpios and those
>    don't.
> 2. Drop regulator-name from properties.
> 3. Add Mark's tag.
> ---
>  .../bindings/regulator/max77686.txt           | 71 ----------------
>  .../bindings/regulator/maxim,max77686.yaml    | 83 +++++++++++++++++++
>  MAINTAINERS                                   |  1 +
>  3 files changed, 84 insertions(+), 71 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/regulator/max77686.txt
>  create mode 100644 Documentation/devicetree/bindings/regulator/maxim,max77686.yaml

Applied, thanks.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
