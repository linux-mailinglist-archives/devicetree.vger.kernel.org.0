Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 93DFC633B90
	for <lists+devicetree@lfdr.de>; Tue, 22 Nov 2022 12:39:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233258AbiKVLjQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Nov 2022 06:39:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56398 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233269AbiKVLi5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Nov 2022 06:38:57 -0500
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 19CDD1AF0B
        for <devicetree@vger.kernel.org>; Tue, 22 Nov 2022 03:34:16 -0800 (PST)
Received: by mail-lj1-x234.google.com with SMTP id h12so17596762ljg.9
        for <devicetree@vger.kernel.org>; Tue, 22 Nov 2022 03:34:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZrWurgVPG0qiJRdgja9LzVOWApxDh/34f9DQdb0kA74=;
        b=LEavIb6Cr3MwjkDB1t0fvas3S+72QNinSDFT6rgfsMKvF/CXIiTzz0Dz9U5UyGqzy9
         RxsOTc1SDY2B3YTXCCgm1T0p4oek+xE6mF6p1tnFli+ubpLd9+9Im4gDVD/AqB4/P9B7
         aB4IAwfCKFgoDFdqwXF1eoA8OHQndRSy8l1dl7+nsk5nBqNJhi+gVBWrM49GrGWhkZ8A
         GPJxOCDmbzwi51peGdfiu0R3egwiCVd58YnzviS8RM4jz+s9KuFj3NRMMCG5tP70+iWe
         3zu/fyslqrwc9pic7Gs7ZPaq5oeZkTFZppY1uCjzMK0Jh4jusrvr8inuXdxJ47NjW7S3
         QZ3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZrWurgVPG0qiJRdgja9LzVOWApxDh/34f9DQdb0kA74=;
        b=aGRY39qk36Tb+A0SZQPTredWZQ18V3fUTZpDdN/L6MIZluMxvFaG+rpQopK0FeCDJg
         95Yt+MqlE4aqEVlh+/+VOVVs/TDgpBdRVZjPyxrZPJR+QThtu8bimJCgkTjzDUq0ypa6
         Tli0tEcfV16FDYR1qoNn6PyOqyI2P2a0LLulNSoDCPlmdJjoaymyPjdW4IPVAbXpfu+i
         VYTQB//fHdA7cCMpbr6k1lZdvC3WTZ9GLzYhaRkGB4+gtZN2XSq+YtSHnmCHVzRELxtJ
         v6XhzYl7+uFRTnf/65Kk84R2sbDFKsFhwG/typNWzEC9t38JkjeGC8Hhw64cNLdsQJrU
         /A2g==
X-Gm-Message-State: ANoB5pnyOvn6AZvojUouTswQWKPb/d1OwFv16Ugxct2uUupm8Yb/wFJi
        qJckGoFUPdbY5Ez7CXBEaAWqhQ==
X-Google-Smtp-Source: AA0mqf7jtaOr8BZ3KmN4i+bmugta3iqpOTAuQ4ZfTx78W9UZe2k0Mz1ZKNiJ0JTGWruWdzgUMe1NVQ==
X-Received: by 2002:a2e:8250:0:b0:279:744e:108d with SMTP id j16-20020a2e8250000000b00279744e108dmr24536ljh.94.1669116854410;
        Tue, 22 Nov 2022 03:34:14 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id a24-20020ac25e78000000b0049adf925d00sm2459530lfr.1.2022.11.22.03.34.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Nov 2022 03:34:13 -0800 (PST)
Message-ID: <8fcec473-ba8a-0ba5-84df-dd42829f3894@linaro.org>
Date:   Tue, 22 Nov 2022 12:34:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v1 2/4] dt-bindings: interrupt-controller: mediatek,cirq:
 Document MT8192
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, tglx@linutronix.de
Cc:     maz@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com,
        youlin.pei@mediatek.com, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
References: <20221118100639.33704-1-angelogioacchino.delregno@collabora.com>
 <20221118100639.33704-3-angelogioacchino.delregno@collabora.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221118100639.33704-3-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/11/2022 11:06, AngeloGioacchino Del Regno wrote:
> Add compatible to support the SYS_CIRQ controller found on MT8192.
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

