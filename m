Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BE5F6435E36
	for <lists+devicetree@lfdr.de>; Thu, 21 Oct 2021 11:47:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231621AbhJUJtW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Oct 2021 05:49:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58058 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231542AbhJUJtV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Oct 2021 05:49:21 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7C15C06161C
        for <devicetree@vger.kernel.org>; Thu, 21 Oct 2021 02:47:05 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id r18so102808wrg.6
        for <devicetree@vger.kernel.org>; Thu, 21 Oct 2021 02:47:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=Xv7yy8py0DKeobvYvlJ9FHOkVAuAh9UvNYK21UpSTh0=;
        b=v//taxIpU61sYw2GgDkdnV/5qgqxhDV68363Q42soNTo+faeEN6SQHRA4Cief4D90P
         E0q62PU7tIxLdwWeNeZn/4QaJi/VxRT1v2nmdWXMwtzGL9S5cotZIL13nKppn2aYoLXC
         GBRrIDSuuEwNxZs4p0kjeaNCwi1Z7W7LAxgAXsQ/gTEA+DYVp2+MCiL/b2x6h6Bgyhtw
         yZyH4uCZq+NWAwpaDdw20xe1D3VKVcGD4ljOxD4eTCXrB51AVGCPpucnZmLWz0KsbWIE
         Si6lSz4FlVlJia8O9OEZ9u0Mzbg7XW5kLRgsF39/aOgDWclsAE7MX74CjDxkV9e2BLtX
         OaTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=Xv7yy8py0DKeobvYvlJ9FHOkVAuAh9UvNYK21UpSTh0=;
        b=r3FWqaE59GijXARW417O2RJb8pUs06IOX5/or3exWSbDE6bAoglMtl1zWxaKFjNeop
         HGOl2xdyau1s5aZd3mbxpmWLYKaBNu/0nnMI+/3opwXjHu0M8PnJuHMPQpcxpDzlP7s1
         CtdEjnsUYjldn3rcCz0veyMxie3y//N2nRWJEwF75MmH46GEAvvNx7tLn+fO+xSE16hb
         Ny45bj8nXBhMrgHg+GVOIXeOhARlz0zlI07EH00jLFxUJKgypRf9JhklzYv4BD6CxC5A
         6jTovVomehFQTCH7EpFj3W3fbqi6hY3aFUdVD2L4s0kixR05m3oBNbV8qgxmtUoaVOkd
         xXeA==
X-Gm-Message-State: AOAM53244O9h/evSq+iymtpEUmmfz0YE5IYeHIsOWGYSpN9vBX4rERVa
        H+jz8DTThX83vQcDUlrlIH/s3g==
X-Google-Smtp-Source: ABdhPJyuat/sV/sJFXIOlsrLqS92zPlOzm+T+23hm8J961JAtuxiY3SjW3So5Ni8FNDiFoPoNK+ISg==
X-Received: by 2002:a5d:4643:: with SMTP id j3mr6018858wrs.297.1634809624436;
        Thu, 21 Oct 2021 02:47:04 -0700 (PDT)
Received: from google.com ([95.148.6.207])
        by smtp.gmail.com with ESMTPSA id f186sm7184109wma.46.2021.10.21.02.47.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Oct 2021 02:47:03 -0700 (PDT)
Date:   Thu, 21 Oct 2021 10:47:01 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc:     Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org,
        Sam Protsenko <semen.protsenko@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v4 07/10] dt-bindings: mfd: samsung,s2mps11: convert to
 dtschema
Message-ID: <YXE3FSiG87gNtN34@google.com>
References: <20211008113723.134648-1-krzysztof.kozlowski@canonical.com>
 <20211008113931.134847-4-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211008113931.134847-4-krzysztof.kozlowski@canonical.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 08 Oct 2021, Krzysztof Kozlowski wrote:

> Convert the MFD part of Samsung S2MPS11/S2MPS13/S2MPS14/S2MPS15/S2MPU02
> family of PMICs to DT schema format.  Previously the bindings were
> mostly in mfd/samsung,sec-core.txt.
> 
> The conversion copies parts of description from existing bindings
> therefore the license is not changed from GPLv2.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
>  .../bindings/mfd/samsung,s2mps11.yaml         | 267 ++++++++++++++++++
>  MAINTAINERS                                   |   1 +
>  2 files changed, 268 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mfd/samsung,s2mps11.yaml

Applied, thanks.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
