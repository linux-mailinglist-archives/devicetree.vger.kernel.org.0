Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7CA8427C18F
	for <lists+devicetree@lfdr.de>; Tue, 29 Sep 2020 11:46:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727937AbgI2JqW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Sep 2020 05:46:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49016 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725710AbgI2JqW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Sep 2020 05:46:22 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EACFFC0613D0
        for <devicetree@vger.kernel.org>; Tue, 29 Sep 2020 02:46:20 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id v12so4088826wmh.3
        for <devicetree@vger.kernel.org>; Tue, 29 Sep 2020 02:46:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=dHMGRNZnx0+XKPiHFdw+h/5M4WgM6srMYbtDSiaFkho=;
        b=QYBPPtMM1EMizx0ESnOQSa70QoVvZpvAGGItWeiXvEhERUaFXZUE3tnPB7KnbwGJVE
         NcbAKM849GXjcIL62N0SuuJG5vWMjklCJ8w9n3clvdlOFJcKRZos/XBfLKJ3Mq2fslZs
         QRjgTSljhCkV6UFxVNCUBVH+KeXCwer4vV9QCIk6J6zLFx9MGkbNOslKwWdFPlZ6xrZr
         zDT+pZPMv5M7tXZCSCAG1CvFIVkMstBEgUN/Ky3hsVihfXjXjyMf4kcB7YpbeeKAWUT6
         4ktVCIwzlsMWSNNOWZM9UuOSV/DUxo1dJyT+x0xDwD9oB3sQefIdZzpSq7Lqu72dOXyI
         lsdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=dHMGRNZnx0+XKPiHFdw+h/5M4WgM6srMYbtDSiaFkho=;
        b=iHqAggh6kEZXbGpkA3Uz5OHTpfKiCtLGtcA9L8WpnoRvqZHCxjiZk3cgcaexDugINh
         w0woe8BWYfwo/Tvf6LfhlABJIbzBAgrjdKyeG3jC6+B2yuZAdqgF8a4ozgjbrqGCN3bt
         LcoUXXhu0dldOz3b5mYIe7JVBI90Lmmcc/UIHibC47mcWtvrd6tdVceFgsESyjZEzbrD
         juduotBtfkkmNbmwCd6mnD+05lsdTtcPylYnt+y7BBBr2wU931N8RvD1Wc8EyutXfkhL
         5AYd5Xkey8MDepMyoCdt8ZU9OatfeAm3nfUmsghXoSYTu9k5cx6dMYNuZmxIKsFDStff
         cb1w==
X-Gm-Message-State: AOAM533ISAisEl49qSstN52/xjCgaEEzuIYWgUKQ4Jq9ecyDDQ4gOOWm
        7h20YgsDkkT7ExQt7abMo0IiPA==
X-Google-Smtp-Source: ABdhPJzS4JUE1Kk/xqWGmh8/2XgO+UAIhHM7E1amuZcvb/DQrZB1Xwpde68JDWHPkqBO7E83yxj4rw==
X-Received: by 2002:a1c:e256:: with SMTP id z83mr3852607wmg.137.1601372779489;
        Tue, 29 Sep 2020 02:46:19 -0700 (PDT)
Received: from dell ([91.110.221.236])
        by smtp.gmail.com with ESMTPSA id i14sm5055806wml.24.2020.09.29.02.46.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Sep 2020 02:46:18 -0700 (PDT)
Date:   Tue, 29 Sep 2020 10:46:16 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Krzysztof Kozlowski <krzk@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Tim Harvey <tharvey@gateworks.com>,
        Robert Jones <rjones@gateworks.com>,
        Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-power@fi.rohmeurope.com
Subject: Re: [PATCH v2] dt-bindings: mfd: correct interrupt flags in examples
Message-ID: <20200929094616.GC6148@dell>
References: <20200917185613.5905-1-krzk@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20200917185613.5905-1-krzk@kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 17 Sep 2020, Krzysztof Kozlowski wrote:

> GPIO_ACTIVE_x flags are not correct in the context of interrupt flags.
> These are simple defines so they could be used in DTS but they will not
> have the same meaning:
> 1. GPIO_ACTIVE_HIGH = 0 = IRQ_TYPE_NONE
> 2. GPIO_ACTIVE_LOW  = 1 = IRQ_TYPE_EDGE_RISING
> 
> Correct the interrupt flags, assuming the author of the code wanted same
> logical behavior behind the name "ACTIVE_xxx", this is:
>   ACTIVE_LOW => IRQ_TYPE_LEVEL_LOW
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> Acked-by: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com> # for BD70528
> Acked-by: Tim Harvey <tharvey@gateworks.com> # for gateworks-gsc.yaml
> Acked-by: Rob Herring <robh@kernel.org>
> 
> ---
> 
> Changes since v1:
> 1. Add acks
> ---
>  Documentation/devicetree/bindings/mfd/act8945a.txt          | 2 +-
>  Documentation/devicetree/bindings/mfd/gateworks-gsc.yaml    | 3 ++-
>  Documentation/devicetree/bindings/mfd/rohm,bd70528-pmic.txt | 2 +-
>  3 files changed, 4 insertions(+), 3 deletions(-)

Applied, thanks.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
