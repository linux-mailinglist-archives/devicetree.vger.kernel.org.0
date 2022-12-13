Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 39FDA64B620
	for <lists+devicetree@lfdr.de>; Tue, 13 Dec 2022 14:27:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235623AbiLMN1E (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Dec 2022 08:27:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42496 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235650AbiLMN0z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Dec 2022 08:26:55 -0500
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F197220378
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 05:26:50 -0800 (PST)
Received: by mail-lj1-x235.google.com with SMTP id f20so3287377lja.4
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 05:26:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jMBEHcR6eYmf2LzibHeCt+uH2Wp5YbwVlZiT7yo2Dwc=;
        b=vJC1INFAqLuRsMbqX8Muf9Ap6oRaHXD23U+D4yAowDvpbaZSztKLp2+ED5Y99heYY6
         gbFz2w4vpz94p+vBlC51q8Ii6VVzsj3eRN822bv20/PXfFl/7hY4hFfzq4rFHHo1iqth
         sx/rzot9eRRSeuNLgs++Ucpv4Yo9dwwumqIKGnYkIX39K8dFU6H7/S0UTZuOyWePxiv3
         Vx4dsK0fjJPEvUy9wbHYKbSHvyyBp3VAOmLfqbKTpJzHM1J5su8jf2XF6MR4SZaZe2Sk
         Ugp3eZ/Yl2Yq/15SM4mGxm58VnbIpVk31miudytxI3hJL7nXkc9CBHBm54UjhfVNUGRg
         7InA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jMBEHcR6eYmf2LzibHeCt+uH2Wp5YbwVlZiT7yo2Dwc=;
        b=UUQPs6/wrbBf+J9+d/ebx1QY1Dk+9wC72ZrZ+7opD0+qrUw6wf0CABWPWp2gCD5hVv
         IFeZx/XL0skSOG/rgu4soE0p6P8Ssr6oefq8HNtafHtUvbVPDNq0SoLrVnQ9p7PLx7EB
         Q8K1LLQv205Pg7/RZFf2ZEfrTHqwbpAnYXZJw7dghRXInO7xpYCvjnQ6g9ZSwydEzqeV
         ron7WHRtXXYye+e15Uw9fSQxfj7lpzWQrGuU6mxZKnV0WjS/kn7RHn56pEoYN7joIIhp
         JV2sZt12e27Ki4K+GG95eQzZ8kvDhfHz6xkcgMlLE4iqcsbNLiTR0ZUbvmfl6h49PqH+
         jh3Q==
X-Gm-Message-State: ANoB5pm081uI4RIip3BNr6HalYFD5YKjb5aQNPwOisjaIDB3HWPfFgYn
        tchcvwa8qrnEezcplV/WciimDg==
X-Google-Smtp-Source: AA0mqf5nxujINbnB+Mmis+ae1GJLYoV/F5sxaSRZ7uTnNZPAN7ZVhq6Huk5DNCJ2Xpnren1UHTbOdA==
X-Received: by 2002:a05:651c:887:b0:26f:db35:ec42 with SMTP id d7-20020a05651c088700b0026fdb35ec42mr4677813ljq.28.1670938009376;
        Tue, 13 Dec 2022 05:26:49 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id q7-20020a2e9147000000b0026c4305e5e2sm263699ljg.53.2022.12.13.05.26.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Dec 2022 05:26:49 -0800 (PST)
Message-ID: <b52410b4-e2ac-660d-cf6e-0aa9ed0a72b5@linaro.org>
Date:   Tue, 13 Dec 2022 14:26:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v3 1/4] ASoC: dt-bindings: microchip: use proper naming
 syntax
Content-Language: en-US
To:     Claudiu Beznea <claudiu.beznea@microchip.com>, lgirdwood@gmail.com,
        broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, perex@perex.cz, tiwai@suse.com,
        nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com
Cc:     alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20221213112851.89212-1-claudiu.beznea@microchip.com>
 <20221213112851.89212-2-claudiu.beznea@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221213112851.89212-2-claudiu.beznea@microchip.com>
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

On 13/12/2022 12:28, Claudiu Beznea wrote:
> Use the following syntax for Microchip ASoC YAML files:
> vendor,device.yaml
> 
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> ---
>  .../sound/{mchp,i2s-mcc.yaml => microchip,sama7g5-i2smcc.yaml}  | 2 +-
>  .../sound/{microchip,pdmc.yaml => microchip,sama7g5-pdmc.yaml}  | 2 +-
>  .../sound/{mchp,spdifrx.yaml => microchip,sama7g5-spdifrx.yaml} | 2 +-
>  .../sound/{mchp,spdiftx.yaml => microchip,sama7g5-spdiftx.yaml} | 2 +-
>  4 files changed, 4 insertions(+), 4 deletions(-)


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

