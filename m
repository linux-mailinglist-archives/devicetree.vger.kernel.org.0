Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DF51B43610E
	for <lists+devicetree@lfdr.de>; Thu, 21 Oct 2021 14:06:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230340AbhJUMJN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Oct 2021 08:09:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33886 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229765AbhJUMJN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Oct 2021 08:09:13 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79A84C06161C
        for <devicetree@vger.kernel.org>; Thu, 21 Oct 2021 05:06:57 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id o20so479848wro.3
        for <devicetree@vger.kernel.org>; Thu, 21 Oct 2021 05:06:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=ZcFeRC73UKaa3p+nvjfoKXbuybNs1IiSI5VXt1+O0h8=;
        b=QrMzCEsn+k+371RBMkTdnwTcdUtYRoptFxnkREZS4i5pLjW+7onXK1YMM/tKL7lsyV
         kpg4iXvdTHlJB/QHKQM3dUBS8fyRkRAzNfu4Okn7PFyMWMN3rZ4i9p2EDyZrW2anQ3Ip
         8EaYuoVwPghvk+I/YFpdeNGv0sKyy+lrC48pvvOft+dafq/YThbGYIkXo6F0uDxYAlmQ
         UREbqAThRqFVEZlliCt69T2wf4MeiDquOno3WgmF6NpMrlc19noa25PUBXYgkPtV/+QG
         SnPz0EB3Gecm6NfHUuyAvEmHQoojHkYjRNRjjpfgSqjYjPmE5/esF3mO0IoOg2TxoPzB
         JX9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=ZcFeRC73UKaa3p+nvjfoKXbuybNs1IiSI5VXt1+O0h8=;
        b=PAZaLvHwAzNR6F5WiFSxwWQL+cBZOxjd/cAdGWDV9MZ+hU5Kv2GCgmAMNQ2oHtLW+s
         QLGBF4lc3pZt63WnZHNnVh0C028kMP3vrN29lQIRt9de8pPpkuvFpqtQd3OP9NxKRSlX
         Jf+7Corl8/j4yG1ps8wE3gFN3AQV0luS5bcuhL1Sm94803QdBUscpK0OrYhLEAaHbtbp
         cQrCnU+VNGynw+GU6qhoXcNoX5Ho3LWkYOnVa2OeqdxH9aVR7y9UGX9pgKQN2AXOTl8U
         ZJo99pbjTpUvMkQm36EQb/zR4nWvTmvu3L6T+uXJhHauVFXa84od+Q+bw3cK/9yc+5+J
         TQjQ==
X-Gm-Message-State: AOAM531/JvF723sPLcVBk8YMLYEL4CPF8YeC4kvNFXrgCm3zmZrcLM+c
        PYJnCloBiYRfJ5kbQ57l54XHhA==
X-Google-Smtp-Source: ABdhPJwjccrvXrRDtW8YC0zECaOaVmzzOrfXick8ROZdWaUbmP6uAMzl1Y7+N1i0guFas2iRBoq51g==
X-Received: by 2002:adf:8b06:: with SMTP id n6mr6874271wra.5.1634818015858;
        Thu, 21 Oct 2021 05:06:55 -0700 (PDT)
Received: from google.com ([95.148.6.207])
        by smtp.gmail.com with ESMTPSA id y26sm4401523wma.15.2021.10.21.05.06.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Oct 2021 05:06:55 -0700 (PDT)
Date:   Thu, 21 Oct 2021 13:06:53 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Chanho Park <chanho61.park@samsung.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Rob Herring <robh+dt@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v4 1/3] dt-bindings: mfd: add samsung,exynosautov9-sysreg
 compatible
Message-ID: <YXFX3QoKJ9Wk6miQ@google.com>
References: <20211012002314.38965-1-chanho61.park@samsung.com>
 <CGME20211012002533epcas2p182112e07ea081957a0e54fea46c66816@epcas2p1.samsung.com>
 <20211012002314.38965-2-chanho61.park@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211012002314.38965-2-chanho61.park@samsung.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 12 Oct 2021, Chanho Park wrote:

> Add document Samsung's Exynos Auto v9 compatible for system registers.
> 
> Cc: Lee Jones <lee.jones@linaro.org>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> Signed-off-by: Chanho Park <chanho61.park@samsung.com>
> ---
>  Documentation/devicetree/bindings/mfd/syscon.yaml | 1 +
>  1 file changed, 1 insertion(+)

v3 of this patch has already been applied.

I don't see any differences, so I'll keep v3 for now.

In future, please provide a change-log under the '---' tag.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
