Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B83136E08FF
	for <lists+devicetree@lfdr.de>; Thu, 13 Apr 2023 10:35:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229982AbjDMIfR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Apr 2023 04:35:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36906 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229803AbjDMIfN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Apr 2023 04:35:13 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3467F9004
        for <devicetree@vger.kernel.org>; Thu, 13 Apr 2023 01:35:08 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id i8-20020a05600c354800b003ee93d2c914so9265446wmq.2
        for <devicetree@vger.kernel.org>; Thu, 13 Apr 2023 01:35:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1681374906; x=1683966906;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bgpZO9AIe8VGZCUKnUlH/UpTwMfShkzNFnZzlAbDLio=;
        b=ByBF+Pah2Cf9Dw7TTELtEmi4QeLJUvfUQwiZWnhovu38hGZVegX3B8g0TQYPDqTWV/
         Zfu53nju26Z+aw9vrigaoL3FNPNvf2t/hqxRcavJffON7yb/Z+RDgjSIwwr2Gv0g7hYT
         9FOjlaDuvpSZpmIWYaDET1uDFRpmbeYIxxH2SpeHWO2mtxffwwVOPcsN7MU+Hs2MHbH1
         uOXeR5foBmzEOk5l1VYxRu+KeMsOfKesYF+GBBQg6bWatvKNh0fA70YvPYxBa18aLRiE
         QaZBfzFaSF3xH7oVE6AFCKYjqEbbeiD4rbUQgnorOXSaSlL6emOYNklczk4IyHNsqfEm
         t2aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681374906; x=1683966906;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bgpZO9AIe8VGZCUKnUlH/UpTwMfShkzNFnZzlAbDLio=;
        b=bDqGXnrYtmYs7RSayps2UdZnR3voi4NusUHUXozSsjQ/YvMu9FFkw1dogqOaQzvt7n
         DxDlu91cbXXtjVfeYawAtrUziatoAiYD0St+mJGS6fij4oPYWgrH7iRP5VJdZ7UaF8+g
         km6k5i4Th2N8RLh2XEf7f6QEZRDJnPbo+4v7aPXzhL17vxVY0XWrbEar9c4XmHlLzoQI
         Twrz2cwqqKbFXbdFf3mBOiqYJmC1b/TQOwArWdFFtKV9RgjZ9YRTNRjRkns4c7f8ps9v
         eeJdcEp8S6+WLocAYuS/qoqyI7wYXesOzOd+ev684M2iOZjf6yikVA4ynnz1W0D1Rxp7
         //ng==
X-Gm-Message-State: AAQBX9faz0dHnu7XkJk82+C4Ld1isvv20hlSlR/rZ63r0Vck7slLIiyG
        woiVJfMhDggdao4wpHfFOisqCg==
X-Google-Smtp-Source: AKy350YyIRH/26Jq8AL749rYqtIOUqj06Hs2snEnIripo+iwHCpV8X7IlqPvWdD8xla04mFPT4eT3A==
X-Received: by 2002:a05:600c:348e:b0:3ee:93d2:c915 with SMTP id a14-20020a05600c348e00b003ee93d2c915mr821131wmq.6.1681374906602;
        Thu, 13 Apr 2023 01:35:06 -0700 (PDT)
Received: from [10.1.3.59] (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id 7-20020a05600c028700b003f09a9503b5sm1182407wmk.23.2023.04.13.01.35.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Apr 2023 01:35:06 -0700 (PDT)
Message-ID: <470d8376-6232-66a7-30f4-561245cf0c07@baylibre.com>
Date:   Thu, 13 Apr 2023 10:35:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v2 1/7] dt-bindings: leds: leds-mt6323: Document mt6331
 compatible
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, pavel@ucw.cz
Cc:     lee@kernel.org, sean.wang@mediatek.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com,
        linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        kernel@collabora.com,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20230412153310.241046-1-angelogioacchino.delregno@collabora.com>
 <20230412153310.241046-2-angelogioacchino.delregno@collabora.com>
Content-Language: en-US
From:   Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <20230412153310.241046-2-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/04/2023 17:33, AngeloGioacchino Del Regno wrote:
> Add mediatek,mt6331-led compatible for the LED controller found
> in the MT6331 PMIC.
> 
> Signed-off-by: AngeloGioacchino Del Regno<angelogioacchino.delregno@collabora.com>
> Acked-by: Krzysztof Kozlowski<krzysztof.kozlowski@linaro.org>

Reviewed-by: Alexandre Mergnat <amergnat@baylibre.com>

-- 
Regards,
Alexandre

