Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 029064C88AE
	for <lists+devicetree@lfdr.de>; Tue,  1 Mar 2022 11:00:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231293AbiCAKBK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Mar 2022 05:01:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35012 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234082AbiCAKBJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Mar 2022 05:01:09 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 21F3557155
        for <devicetree@vger.kernel.org>; Tue,  1 Mar 2022 02:00:29 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id m6so2364665wrr.10
        for <devicetree@vger.kernel.org>; Tue, 01 Mar 2022 02:00:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=/NQBr1sZ8oQQXIIdf1B2NQjdSNXQ4QPfHCPPwQs11cE=;
        b=yfoyhboq/By8VvqSyPz4Pc4WTVhTUz6EPgHo2Rw65TOBCdz3fH4JBoDCxNRdsPnXq/
         HZCFpjKlIZkZGmuqeLj+06YTEiGlC58beIl8NrHj004w1fTCu6pbkZ9ysEwbe5lHYozO
         wuFNkSL8QisrQGLPo3aWl8pYzCWbkgPE3oUT2JFT/3r+n5i46xHmF+J3k9m5vPH50E4L
         EvF5SsKMVm0wCprD1Y7BkhFqQgYghk6IU2xr9dGvXOblrsz3Q/q9rSiz9B7e3Cnh3N7w
         Y5t6LwoJdMtQGeh/HlVIX8UnTYKckMi6YrxcSAtEYoF658cz4ng69CJ0Zir9VMCelJVm
         hjdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=/NQBr1sZ8oQQXIIdf1B2NQjdSNXQ4QPfHCPPwQs11cE=;
        b=vJOK9n4oCNwbhPjv1lJHcNDI6p78hRRhkxq0vxBJOuTVAL9iugdH/okUcYxOeBLvP6
         bJv41070W7gVvNA3BUHRVrSGwQXmaYPkYePd6MGqHhuLg36oOoAL+NrzDSEQuJjoA/St
         dh1g161bdhtRYw2/BGewuIi3zOBdnEEiMYwjiDoRmR6Wb34u94D5zFuIY4luqLk47uyZ
         ZDCF/kgjKpl0go+S7IqJzh2D6zWYx47tiWgkB3I3OghB3CZHtEjCGYTZhLkG2Cplatr7
         RJJrWSwE1Nm/tFixH2DVXc4YvNHvXFCUrXoy9qiEBHx8kXXiAIib8LspzmdXBVPp7xkM
         /7qA==
X-Gm-Message-State: AOAM533af/o5f/xobVbR0MCD73tgUkeUNmc4un0QvO19Z39GaXMTuI/h
        oXe1hwv8zaYtaafJhOotUS+aUQ==
X-Google-Smtp-Source: ABdhPJxkoqxn1nwWXTwvIK4kRs12pJH4RpRn/7JBDpSDv2croOxCvb0jYahryR9C5EUY2k2J/9Fr7g==
X-Received: by 2002:a5d:4ccd:0:b0:1ed:a139:708f with SMTP id c13-20020a5d4ccd000000b001eda139708fmr18430472wrt.672.1646128827711;
        Tue, 01 Mar 2022 02:00:27 -0800 (PST)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net. [86.27.177.88])
        by smtp.gmail.com with ESMTPSA id x18-20020a1c7c12000000b0037c94766961sm1954654wmc.20.2022.03.01.02.00.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Mar 2022 02:00:27 -0800 (PST)
Date:   Tue, 1 Mar 2022 10:00:25 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Rob Herring <robh@kernel.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: Add compatibles for undocumented trivial
 syscons
Message-ID: <Yh3uuVflhwnN89nh@google.com>
References: <20220228221537.1700071-1-robh@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220228221537.1700071-1-robh@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 28 Feb 2022, Rob Herring wrote:

> 'intel,lgm-syscon', 'marvell,armada-3700-usb2-host-misc',
> 'mediatek,mt8135-pctl-a-syscfg', and 'mediatek,mt8135-pctl-b-syscfg' are
> all used in DT binding examples and/or dts files, but are not
> documented. Add them to syscon.yaml as they are all trivial cases.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  Documentation/devicetree/bindings/mfd/syscon.yaml | 4 ++++
>  1 file changed, 4 insertions(+)

Applied, thanks.

-- 
Lee Jones [李琼斯]
Principal Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
