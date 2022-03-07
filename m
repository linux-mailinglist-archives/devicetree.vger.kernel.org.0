Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9E6B44CF463
	for <lists+devicetree@lfdr.de>; Mon,  7 Mar 2022 10:13:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236273AbiCGJOT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Mar 2022 04:14:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59602 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236263AbiCGJOT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Mar 2022 04:14:19 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 604354552D
        for <devicetree@vger.kernel.org>; Mon,  7 Mar 2022 01:13:23 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id i66so8731618wma.5
        for <devicetree@vger.kernel.org>; Mon, 07 Mar 2022 01:13:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=O4wnB7ArI0waaXl3ollevDRR7P2ljcBCFuA2BVyo4sM=;
        b=flKX3c8N8zfSxvYg0TraD7mwUu/xAx05SVHKu30AyVRQh/OGIXw0EQz+xDvIFTvo0u
         KaKO2+g36n7ICSC8lmArKObtnzxV/6NvqVr5HdN8qfOEzsBIFq62ZJLZuB5wL/Fgk5Ln
         Lj1YOAnAyeZVEHctmq+SeaurzZxNyfzpyW+zkHXMAJQ2rirJcNun3SaYf6XKFWztulBy
         xQ+gTVXVs767DdqPtBl5VcgM3Z0smW2CR4q+52o6KAdcz5rLBrkzmNwXj5kgk1VIue9D
         V1daIFUGsJSBdM8RvtoEeopVAlbh+J0zaTK+uGdggSEZ+7bTL9K5MLsMed5VqPvGbmGM
         P0AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=O4wnB7ArI0waaXl3ollevDRR7P2ljcBCFuA2BVyo4sM=;
        b=NtnBRZ2jVi92CsDLYqz6dSFizlk2Hcf0vAkrqDwYNK13KlAFLWI5gh6IH0WEFr0K6Y
         A3mE3hi7UUTFbnJ+tbXBv60fT89RylhvmmZiKPnrxqgBEYZLXHGlms/s0wQl5LXVcJDa
         KRgy+LS0FDOGiAbM+HbIDsedKz217s62FbEaEz5yDXG3S7/tHpOql8W7Vu+m9VOKqxUa
         zXowEKE0fNnXLc9UHLttqMqbmDDpBHiRFPvp9ij70tlWME4rnKS+/LyAfUvOS0ILfhic
         giDm+5qd4e+nJIuuVjsIy7UStRhlqisSWVY2HFATY4ab2RpF2znB5KfdCOzI//szg1sV
         mQ5A==
X-Gm-Message-State: AOAM530uCPdD2GwhUl2q115iwZuGuRMSM9x0RhKHIXfVCm7VshFkZr7Q
        oUm3icFMTfZRd4wYfLl79EX+Fw==
X-Google-Smtp-Source: ABdhPJxFSmsiP4xlxqLySV/hDnHI+YvTmhLMuW7hB+nMe0t4B25VsNyfvOXNlHAzxq9CoVjBjDBeOw==
X-Received: by 2002:a05:600c:22c9:b0:381:3b27:89be with SMTP id 9-20020a05600c22c900b003813b2789bemr8341809wmg.83.1646644401937;
        Mon, 07 Mar 2022 01:13:21 -0800 (PST)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net. [86.27.177.88])
        by smtp.gmail.com with ESMTPSA id k13-20020a7bc40d000000b00381890032dfsm18024504wmi.1.2022.03.07.01.13.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Mar 2022 01:13:21 -0800 (PST)
Date:   Mon, 7 Mar 2022 09:13:19 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc:     Chanwoo Choi <cw00.choi@samsung.com>,
        MyungJoo Ham <myungjoo.ham@samsung.com>,
        Rob Herring <robh+dt@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 4/5] dt-bindings: mfd: maxim,max77843: add MAX77843
 bindings
Message-ID: <YiXMr8ApxmQTr2vr@google.com>
References: <20220111174805.223732-1-krzysztof.kozlowski@canonical.com>
 <20220111174805.223732-5-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220111174805.223732-5-krzysztof.kozlowski@canonical.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 11 Jan 2022, Krzysztof Kozlowski wrote:

> Document the bindings for MAX77843 MFD driver, based on Exynos5433 TM2
> devicetree.  These are neither accurate nor finished bindings but at
> least allow parsing existing DTS files.
> 
> The example DTS was copied from existing DTS
> (exynos5433-tm2-common.dtsi), so keep the license as GPL-2.0-only.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
>  .../bindings/mfd/maxim,max77843.yaml          | 144 ++++++++++++++++++
>  1 file changed, 144 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mfd/maxim,max77843.yaml

Applied, thanks.

-- 
Lee Jones [李琼斯]
Principal Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
