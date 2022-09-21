Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2A35A5BF815
	for <lists+devicetree@lfdr.de>; Wed, 21 Sep 2022 09:46:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229888AbiIUHqh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Sep 2022 03:46:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41676 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230420AbiIUHq2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Sep 2022 03:46:28 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A9F6857C5
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 00:46:25 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id f9so7827431lfr.3
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 00:46:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=9D7bDD5IsYa1A/Vx2jJMPHd/Qg5BZWWC8GEVe2BEhlI=;
        b=RY666weFyC/j8op7hxJlffO19vIy+Gw2I6YsaPqoh/QlaV4IVmvFcPgScV7VQqHhhS
         Cf6HijNngV+lgxYjzIPL/Hs5lhGs10EbYc31IUIUfCrYUTmbwpvttKv4HjBu5/jm3aYc
         psxdMEOx+FllNPY5p2t/loCUnvI1CBI/RolfxUSon2iyny/RwHf2v/tO6ogow4feJN0B
         ZU0XxgZU3JC7g8rTN9u33nQkG7ETVgLY9BFXzve2HXcgGQpq+aTu7j6SwMFywBdc+cNc
         QInd/1KSVGDlsbEk3ZXxTme48hgCvYFmXS6n5/tX8QJX8ke6VMr8U8+vzwA3aHn9ZKG8
         dsDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=9D7bDD5IsYa1A/Vx2jJMPHd/Qg5BZWWC8GEVe2BEhlI=;
        b=Xlt+rnlnR0ls+Jmzg8lXGt5i/hF3TO52TBZVxlxc1gVSF+yoRYd8J9C+JN+F/tTZOR
         MxoN6g5FNcUx3m1+8/vxALQSq0cAHVqdnLfQenKgprIKsvEUhMkUM26eB8UEvMjwfveJ
         4DQ+N+somtGXbAkPKAG8hN49P0eAG76UFOrTMESwUvzUvsIIrOEuZTmnc3Edl/IYIJRz
         LyYoGR9bCfhQOjlZ7twinvH1o9AZ+iL4xVCcVTj5lK5VBsTSHuofFxvzPQYrKVuNNjFS
         AfL4kdP2XD/v31l9pAg/xiA2GCvQA+rT1PLKz42Uh5OnYT6LdFAxfIGLBfbTpe7+ytyF
         eyEw==
X-Gm-Message-State: ACrzQf3p+F9rvmD1e24bemTWMfMkXCGIx7VYlIq7MJsOIR0oKNDCDBdA
        TA381Ur+wSqzkk0QjaT7FIJrRw==
X-Google-Smtp-Source: AMsMyM66kf3956i2XbFbpy7OT3k2wU+hqUrs2ZNlKHstJn09xuJZzWY2xE3R4glKx1ow1vpsMZCFmg==
X-Received: by 2002:a05:6512:3f83:b0:49f:9a1f:15e with SMTP id x3-20020a0565123f8300b0049f9a1f015emr5863297lfa.86.1663746383539;
        Wed, 21 Sep 2022 00:46:23 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id f11-20020a05651c03cb00b0026aca137046sm309702ljp.120.2022.09.21.00.46.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Sep 2022 00:46:23 -0700 (PDT)
Message-ID: <4359e978-af2c-62ed-13f5-b86a28c82896@linaro.org>
Date:   Wed, 21 Sep 2022 09:46:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v3] dt-bindings: interrupt-controller: migrate MIPS CPU
 interrupt controller text bindings to YAML
Content-Language: en-US
To:     Sergio Paracuellos <sergio.paracuellos@gmail.com>,
        devicetree@vger.kernel.org
Cc:     tsbogend@alpha.franken.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, arinc.unal@arinc9.com
References: <20220921072405.610739-1-sergio.paracuellos@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220921072405.610739-1-sergio.paracuellos@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/09/2022 09:24, Sergio Paracuellos wrote:
> MIPS CPU interrupt controller bindings used text format, so migrate them
> to YAML.
> 
> Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> ---
> Changes in v3:
> - Remmove 'bindings' keyword from title.
> - Put 'compatible' the first also in node sample.
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof
