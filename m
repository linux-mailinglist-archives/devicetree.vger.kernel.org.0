Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CFCD441AC59
	for <lists+devicetree@lfdr.de>; Tue, 28 Sep 2021 11:52:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240031AbhI1Jyd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Sep 2021 05:54:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42976 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240084AbhI1Jyb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Sep 2021 05:54:31 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1FBBC06176F
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 02:52:51 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id g19-20020a1c9d13000000b003075062d4daso2299620wme.0
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 02:52:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=cjHMFjkvW4u2XFvvUxUcI373OsMN8kf1g+KRGhTi+hg=;
        b=cG/AGXKFOk6YQA8qOp9XdMTnNSPdpKVaNKtm0hkIYsK/ShFQpwxcM5sD3nUpJZ6S2s
         8D1jTi8G3meSVDlMK2JLlU5VGkrIUjIv6s2K8EB1+iNtbxeigbFIhNYbGp0P6k9vRiLO
         VzDKY+dvZC8pkAb69KMcvP7r42ULuF/9wSdg87G3MLxrR2CH34doOdE0azCCbZFQA3ya
         8SJ+eI9gB+frTVi/3yuBraxBqZnorCaraB08Ygfxm5lUYe+ryuuwlSttp4gwzjY0SCdr
         RfHnuqHK6N/f6t8Sb2Tsa0noVy7yi4suXEfzJCa4q3kJ4czH40d/EJrYfsCWFqjWf0cj
         Bxiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=cjHMFjkvW4u2XFvvUxUcI373OsMN8kf1g+KRGhTi+hg=;
        b=QnMAz8D2PCD57mEE8RQYStMn8faKj3m1iPEKvw6BiD+htEh3d86uWZ8pnHH2GLThKk
         NWjTGi2AiPv8x8ELO0bvg4656CF4Anamw3DdtD2e3cpO0HscFS0ZtK426vwdktm2rOBD
         j8kUe8jXd9lemyP0Hd6H3ZZco2qD9Q6FsLqfdcHTT7g0NoOzMVnEUKgreDRQhfCM7jr1
         XwZA8M6Fq1EAoamqYFiDc4RW5A7+Xr2w+Tp53Xf662TVQBsJFs0D5Tj2KLlcr/pBAcSE
         JIakdx1PXPf4+qMkgKT2bFfQEfS2OEw9dXqnKS/eD+KgotUicVKXsne7gN97sp4WAiHn
         UBbg==
X-Gm-Message-State: AOAM533sQxNCguXLVO4IWQnRP3awpiARbTZRbTnlsKXagQfGDoWR4nfA
        +AFotWsovyZHDzrwqpT5cS9v5A==
X-Google-Smtp-Source: ABdhPJxfyPwEaWDY7SVfuxJgITtpdTqA2ORcON8/VBbbldbzaX8avXMA5//eD9Pb7hpWH05EI9eaDw==
X-Received: by 2002:a7b:c938:: with SMTP id h24mr3709349wml.101.1632822770453;
        Tue, 28 Sep 2021 02:52:50 -0700 (PDT)
Received: from google.com ([95.148.6.233])
        by smtp.gmail.com with ESMTPSA id l26sm2175589wmi.25.2021.09.28.02.52.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Sep 2021 02:52:50 -0700 (PDT)
Date:   Tue, 28 Sep 2021 10:52:48 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc:     Chanwoo Choi <cw00.choi@samsung.com>,
        Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Rob Herring <robh@kernel.org>
Subject: Re: [RESEND PATCH v2 3/4] mfd: max77693: Do not enforce (incorrect)
 interrupt trigger type
Message-ID: <YVLl8PDkeEwCzPBv@google.com>
References: <20210602110445.33536-1-krzysztof.kozlowski@canonical.com>
 <20210602110445.33536-3-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210602110445.33536-3-krzysztof.kozlowski@canonical.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 02 Jun 2021, Krzysztof Kozlowski wrote:
65;6402;1c
> From: Krzysztof Kozlowski <krzk@kernel.org>
> 
> Interrupt line can be configured on different hardware in different way,
> even inverted.  Therefore driver should not enforce specific trigger
> type - edge falling - but instead rely on Devicetree to configure it.
> 
> The Maxim 77693 datasheet describes the interrupt line as active low
> with a requirement of acknowledge from the CPU therefore the edge
> falling is not correct.
> 
> The interrupt line is shared between PMIC and RTC driver, so using level
> sensitive interrupt is here especially important to avoid races.  With
> an edge configuration in case if first PMIC signals interrupt followed
> shortly after by the RTC, the interrupt might not be yet cleared/acked
> thus the second one would not be noticed.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> Acked-by: Rob Herring <robh@kernel.org>
> 
> ---
> 
> Changes since v1:
> 1. Add ack.
> ---
>  Documentation/devicetree/bindings/mfd/max77693.txt |  2 +-
>  drivers/mfd/max77693.c                             | 12 ++++--------
>  2 files changed, 5 insertions(+), 9 deletions(-)

Applied, thanks.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
