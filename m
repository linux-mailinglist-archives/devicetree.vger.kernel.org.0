Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A9BD062F7DF
	for <lists+devicetree@lfdr.de>; Fri, 18 Nov 2022 15:41:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242269AbiKROlI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Nov 2022 09:41:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41530 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242201AbiKROkq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Nov 2022 09:40:46 -0500
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A6997E46
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 06:38:35 -0800 (PST)
Received: by mail-lj1-x22a.google.com with SMTP id s24so6980866ljs.11
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 06:38:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bHTp8WxD0cqwio5pXFuWtKnMnq/qdJErDoBEBwvP2sk=;
        b=puMgpYajPPIk3Ykwm+tcdadpD9lyTeJKAI8z7HlGRfY+NSsZJzna7GjQwGMfo7ijwB
         iMiDRyWrLxnQDh2Xk/HHqZIDQpReMj8EaCSSDojD/pUFT88/vaxUopxAiCUrK1nkpf9y
         zx1A6H8fCPSqKaAuMRXeuqc13VkN5XWPdJ+MYCiS6UTmSgtU/fp02mjEg7QqNimoAESV
         Yemliv0VkZNZnFjH9XfCYCW5iiwYr6ZXZ5b9h8g0d87gGOS1BuX9IZ6AArhlIf/8DWf1
         5LqY32e/5L0u4XEYhQUmVWJGRf6b6TSL8VNR+8qfrO/KOt0AVJMPu9RyBGmGWVsCEt2A
         gkkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bHTp8WxD0cqwio5pXFuWtKnMnq/qdJErDoBEBwvP2sk=;
        b=XXYp7n8phDwWsvM8xrHMnKdSdludtvKZggxcxJHpQFakf3Oxjz3nPWgC3JiKt+mZwe
         Ct4XL3+HTTPznHsmAyAZFwr5zOMvBZbauYApPc0pzhC/JpyZUyjjHcpq4LhwJHMwJjiT
         FyiySj/qH/sQrbMeoZp315YaHvD3niZPbcDqg9q8pGbUryxH9D/weTSG7OEgF3LUZfqM
         rc/VTe2hs+A4EnvNjMDE4lSLMlRv7xqXPKA/VBRDlcUCkEu6QblDFj2O2Z4KCFTHtlYJ
         osCVIMHZSuSoBzE4nGx2mS5fkeKKNUrs0ZW60/2GuttDiqtnTWLlsXv50VbvNOk6q27U
         Th7w==
X-Gm-Message-State: ANoB5pmBlXrBjBao61cWd0/MBCoDrDn806u6jCJCIpbgGuMrTd3hdb2f
        B6eQv6cV9G6rLhirZLpkZU47kw==
X-Google-Smtp-Source: AA0mqf5itRuxKo/p8JLJKY1b/siNfqPJIRbSguu2UNOYtp1ZnFiPakQHISIDlIACodjd11xaVMuKbA==
X-Received: by 2002:a05:651c:b26:b0:277:9847:286a with SMTP id b38-20020a05651c0b2600b002779847286amr2474891ljr.309.1668782314025;
        Fri, 18 Nov 2022 06:38:34 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id t17-20020a195f11000000b004994117b0fdsm678523lfb.281.2022.11.18.06.38.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Nov 2022 06:38:33 -0800 (PST)
Message-ID: <c3a2316f-2956-6417-f1ea-a6a64df037c6@linaro.org>
Date:   Fri, 18 Nov 2022 15:38:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v2 1/2] ASoC: dt-bindings: lpass-va: add npl clock for new
 VA macro
Content-Language: en-US
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        broonie@kernel.org
Cc:     alsa-devel@alsa-project.org, lgirdwood@gmail.com, perex@perex.cz,
        tiwai@suse.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org
References: <20221118071849.25506-1-srinivas.kandagatla@linaro.org>
 <20221118071849.25506-2-srinivas.kandagatla@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221118071849.25506-2-srinivas.kandagatla@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/11/2022 08:18, Srinivas Kandagatla wrote:
> LPASS VA Macro now has soundwire master to deal with access to
> analog mic in low power island use cases. This also means that VA macro
> now needs to get hold of the npl clock too. Add clock bindings required
> for this.


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

