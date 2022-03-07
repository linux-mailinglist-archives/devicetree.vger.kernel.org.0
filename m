Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BD9754CF444
	for <lists+devicetree@lfdr.de>; Mon,  7 Mar 2022 10:08:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231895AbiCGJJ3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Mar 2022 04:09:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45674 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234245AbiCGJJ2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Mar 2022 04:09:28 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2BB8760CFB
        for <devicetree@vger.kernel.org>; Mon,  7 Mar 2022 01:08:32 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id k29-20020a05600c1c9d00b003817fdc0f00so8844991wms.4
        for <devicetree@vger.kernel.org>; Mon, 07 Mar 2022 01:08:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=w8wUhS2rPl/dEm5cJIFUkKsOmjr6xbEyev6OP04Am6I=;
        b=pr+x8KC3J3p5T1hWB424w/bj9ul2htznKIwAJ6G8ssEJF+pXPg5DC92tJrdKV9x/hf
         WJJ1KVhNH5KDmj6Ftv4fEA133uyqTHdYV+EQtt6FvBBR+2vwR5K3k0uO+boHMerEJZiy
         lI5/YhIsHRCB/BRLlYpWa3mBJWNatJiGGyXkg77qtGQs1qCCupeOdbhHMZmj9yJrY1R2
         C5XXjn7XXW4lqk1aEqAs4Ox9rNLE91HbFULf+Xr3/Oat0CO8cxWNERCgnU/3yXNqsezJ
         c+2LxvSmIj86aef2WSn/MwIw33KeB26uYekVzsSJ6B8l3vcovIwY4n/RRy7N/sJVAe1J
         J6QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=w8wUhS2rPl/dEm5cJIFUkKsOmjr6xbEyev6OP04Am6I=;
        b=DqP6xl/hIycrMs90zrsigPugl8L7cnxI1a5Nqb7CFoRh9S1lGWCPNV9s2uMiSNFN2l
         uswpISq133WbF+5Q1VTzsU9jgW6/LyGRPqZ0cRs+VF4Q+5El5KeNYsQGAyqQHMTmU3ch
         nTBviTt9PZsyqXmxYQOnokva7Wt8tMaizVEI6RbBnb7NI+Mdd8/Mazq61Ozc9B8A5aoT
         3l4YAVCbHfSllDSyNeqNzUjuj/l/WINDrdFxb8HEvsQDkDGcwaoxhfIb50s41HchC/J7
         89KovO5YwWIQCtL3tGkQt2dRXCFjtHs2EGJIgqnCYGHmxMDEiZ2pbMLwdF1QvmysHu46
         LM3w==
X-Gm-Message-State: AOAM531I2X2fN+z0VeOSZnnuAAwDk7gi6qW0V+fVQ4XynHOf4WHp2+uK
        1nwb4RtL99zLsR7lzw9C1zFBNA==
X-Google-Smtp-Source: ABdhPJwEF37Kxzq9sOSBZVz3rgInaciFkA5+ZVCFi+66DdDZUL6FymU9dN2U3b7yUwCLzXsd5wwRJQ==
X-Received: by 2002:a05:600c:14c3:b0:389:a358:371c with SMTP id i3-20020a05600c14c300b00389a358371cmr4226142wmh.36.1646644110750;
        Mon, 07 Mar 2022 01:08:30 -0800 (PST)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net. [86.27.177.88])
        by smtp.gmail.com with ESMTPSA id u23-20020a7bcb17000000b0037bdfa1665asm29388545wmj.18.2022.03.07.01.08.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Mar 2022 01:08:30 -0800 (PST)
Date:   Mon, 7 Mar 2022 09:08:28 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc:     Chanwoo Choi <cw00.choi@samsung.com>,
        MyungJoo Ham <myungjoo.ham@samsung.com>,
        Rob Herring <robh+dt@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 2/5] dt-bindings: extcon: maxim,max77843: add MAX77843
 bindings
Message-ID: <YiXLjDCgYZcD3w9Q@google.com>
References: <20220111174805.223732-1-krzysztof.kozlowski@canonical.com>
 <20220111174805.223732-3-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220111174805.223732-3-krzysztof.kozlowski@canonical.com>
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

> Document the bindings for MAX77843 MUIC/extcon driver, based on
> Exynos5433 TM2 devicetree.  These are neither accurate nor finished
> bindings but at least allow parsing existing DTS files.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
>  .../bindings/extcon/maxim,max77843.yaml       | 40 +++++++++++++++++++
>  1 file changed, 40 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/extcon/maxim,max77843.yaml

Applied, thanks.

-- 
Lee Jones [李琼斯]
Principal Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
