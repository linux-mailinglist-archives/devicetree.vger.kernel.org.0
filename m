Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2E47C58FAD6
	for <lists+devicetree@lfdr.de>; Thu, 11 Aug 2022 12:45:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234616AbiHKKpL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Aug 2022 06:45:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49972 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234521AbiHKKpK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Aug 2022 06:45:10 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 03B348FD7C
        for <devicetree@vger.kernel.org>; Thu, 11 Aug 2022 03:45:09 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id by6so10480966ljb.11
        for <devicetree@vger.kernel.org>; Thu, 11 Aug 2022 03:45:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=eslh2ICT1A2pYV00+C3KHTnl2CWed4tgcm8YDqRAs9U=;
        b=GqnLYktSFa5SwXk0/8vV6Z6fF55KrRJLLAny9/RxRKMgNQLH9cJeyQYeM9C8ItPACh
         rkLKgHS4OkUrUBB03XS4SXfK74r0S0L9DXA+7uwuqcD9Vxn3idOoWMApFysXOnHV4VKQ
         tYWShlbn1sIO8oNggNyhnHVLEP4cgishdHssrlGlA3+EzliXuLMJCqsRAdV3mX7QkpYH
         A+QSnsfmLk+VwOgYvmddzqu9dl0bpCs6cB+26tuCuPw+lbB7Kf4my+gKi9qoFGO9DOGx
         oJcSviaYy8+V6lsyVpTIySfzGxMxm21UalGfzC5tN2ZiePgDnLKmBPzvXQ08HpSmEj2j
         k5CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=eslh2ICT1A2pYV00+C3KHTnl2CWed4tgcm8YDqRAs9U=;
        b=is5O60UZ5WjUkoT0PoKzuVcAyuGEgj9TG78prPg81m0RUa1H5k+kAhemPUXdEPjrBN
         LVSiJYKV6yxG2bMgFXA8/FeSaosjNI6oA4RivSYWhJKuHf3JTlSaOdKzdB4F8JncwDBB
         KbiEASy1hyNBY4h+Dw0+cfmfFPXR4KYrnoXkJ3ej3RMR+z5jjNUDV+ACUcT+oGz2XYak
         p6WsoZfK1YTYiWnaDqqzVTikMaC677RkR2ufguVUPPQ0YAAqrc3ojSgevtuxizCx11Jn
         K6TRqCZ/UXzcgPUX3P/P77nlP/7Fz8SrkJJ38ORDAsvNlljnBbdO7U8SrFz8ywWx+w6E
         vw2A==
X-Gm-Message-State: ACgBeo25G+2qTAjHgpsV8I/KdXOuomghSAEq4KmdhkCiaQ6s3W1DNsQq
        S/xBKvD3Ms6gvjUhyqWPN/w06KUMoDLCZ912
X-Google-Smtp-Source: AA6agR5phn8uFnKNoEM0rjbJ3VEqU9sWyXPAGlcDWFEIJMFGBG9IfV5Tiu82kg5VwaTIVoHboTfXdw==
X-Received: by 2002:a2e:6101:0:b0:25d:eb9d:4c79 with SMTP id v1-20020a2e6101000000b0025deb9d4c79mr10374539ljb.354.1660214707390;
        Thu, 11 Aug 2022 03:45:07 -0700 (PDT)
Received: from [192.168.1.39] ([83.146.140.105])
        by smtp.gmail.com with ESMTPSA id f10-20020a056512360a00b0048b27215fb3sm669556lfs.41.2022.08.11.03.45.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Aug 2022 03:45:06 -0700 (PDT)
Message-ID: <918f80ba-d138-1c56-648e-60ad84eee3c1@linaro.org>
Date:   Thu, 11 Aug 2022 13:45:05 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v2 1/4] dt-bindings: power: Add MT8365 power domains
Content-Language: en-US
To:     Markus Schneider-Pargmann <msp@baylibre.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Weiyi Lu <weiyi.lu@mediatek.com>,
        Fabien Parent <parent.f@gmail.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Fabien Parent <fparent@baylibre.com>
References: <20220725081853.1636444-1-msp@baylibre.com>
 <20220725081853.1636444-2-msp@baylibre.com>
 <bbdde7ce-4512-2e61-5e1a-e22e5cb91184@collabora.com>
 <20220811101443.eevyf5xnctmo5y4f@blmsp>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220811101443.eevyf5xnctmo5y4f@blmsp>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/08/2022 13:14, Markus Schneider-Pargmann wrote:
>>> +++ b/include/dt-bindings/power/mt8365-power.h
>>
>> Please rename this file to add the vendor prefix.
>>
>> mediatek,mt8365-power.h
> 
> Thank you for your feedback.
> 
> There are currently 12 'mt*-power.h' files without vendor prefix in that
> directory. I can change it, but it seems very inconsistent.

Which is not really argument to keep old style instead of preferred
vendor,device.h.

Best regards,
Krzysztof
