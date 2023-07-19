Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D8AF6759530
	for <lists+devicetree@lfdr.de>; Wed, 19 Jul 2023 14:33:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230341AbjGSMdi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Jul 2023 08:33:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51026 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229927AbjGSMdf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Jul 2023 08:33:35 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46E581999
        for <devicetree@vger.kernel.org>; Wed, 19 Jul 2023 05:33:08 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-3fbea14700bso62590905e9.3
        for <devicetree@vger.kernel.org>; Wed, 19 Jul 2023 05:33:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689769986; x=1692361986;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Hd70zMEtOBX6AxgP8T71HipoKl6JHE3xjQG1BhWcDhA=;
        b=g0MwMZ8VDshuY7Z1LRHG1oIiAzcVhDCZJw40X0Qc2TMhOIzdakZYlcwAKQSAawSxEr
         L1/CVzaQ10H1DtCskYBUWAlPZkuxBkc1V7oTkPYBbL2PrNd3WESNFBCJRkU8Mxvtx4rk
         Ojj8hjQ2WZv2KxpckRT2tnoEXzvINUVhQbXVrU3Q8Jsn09pMDLMWlN4mB+tvbONzMYPL
         TO0SVRbcWKhBK3SmuXA3qTd43piILMuqc6Ucsp+wOIwo0WED7auY1el+EkIRsF7Z04eO
         IRAuRZdi2JABqW+xk/gstw7/ZAjb/DYaOnK0Sp7YiUbd2oDO5MTN0qLlr6f77hN4iFSP
         AE7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689769986; x=1692361986;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Hd70zMEtOBX6AxgP8T71HipoKl6JHE3xjQG1BhWcDhA=;
        b=AjJ+qlv/yaO78RmFuMtXi/1RQNZ9Vn3S8kWTpKPN/me+lWnJQ5m63g1G3opv9K2IU5
         uKluHPz9p/vxlYViZeiqPfWVZwcHBXAgekEnaNY+14kYyzaOhka4XN1HtscjyKed0ENR
         aYQEN3Uv/N03otyKOL4TtCXhNksiX1jbgNYYUbobHaZctr5GVtvXvXvRorP0EuSebhEi
         BxXdthLyiivPSQZm8ySQVT9dCVoPigxqvPCbYBfsrWd7PQK2xMcyxIhnUL+Ld2z4ME9f
         /XmIChcNTy0bHkYPjqiJfEkdnA4U8chRxiRvuXdakV+RhF80IJn1WzNERnAkLNKitiKn
         aSeQ==
X-Gm-Message-State: ABy/qLZnedFqNjCWGk67wZ7/k9l9I+lxue9s2py5998oU5/I32NXuzW9
        8JDNYan5IQv8GqGdngNzqnLm7A==
X-Google-Smtp-Source: APBJJlHhVb4rToSqFUE0Ogf7ZXp/2WyQ9R4R7VSZTA6j/ouHMAGUwGEwX9N974eKktKyxaL84la29g==
X-Received: by 2002:a1c:740d:0:b0:3fc:5d2:1f47 with SMTP id p13-20020a1c740d000000b003fc05d21f47mr4080643wmc.20.1689769986596;
        Wed, 19 Jul 2023 05:33:06 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id b14-20020a05600c11ce00b003fbc0a49b57sm1643578wmi.6.2023.07.19.05.33.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Jul 2023 05:33:06 -0700 (PDT)
Message-ID: <c6fd4df2-97ab-a830-f466-2d09f5b38dfc@linaro.org>
Date:   Wed, 19 Jul 2023 14:33:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v3 1/3] dt-bindings: reset: Add compatible and DT bindings
 for Amlogic C3 Reset Controller
To:     Dmitry Rokosov <ddrokosov@sberdevices.ru>,
        zelong dong <zelong.dong@amlogic.com>, conor+dt@kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Neil Armstrong <neil.armstrong@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Kevin Hilman <khilman@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        kelvin.zhang@amlogic.com
References: <20230719060954.14864-1-zelong.dong@amlogic.com>
 <20230719060954.14864-2-zelong.dong@amlogic.com>
 <20230719115014.2har4sool7d5edcn@CAB-WSD-L081021>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230719115014.2har4sool7d5edcn@CAB-WSD-L081021>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/07/2023 13:50, Dmitry Rokosov wrote:
> On Wed, Jul 19, 2023 at 02:09:52PM +0800, zelong dong wrote:
>> From: Zelong Dong <zelong.dong@amlogic.com>
>>
>> Add new compatible and DT bindings for Amlogic C3 Reset Controller
>>
>> Signed-off-by: Zelong Dong <zelong.dong@amlogic.com>
>> ---
>>  .../bindings/reset/amlogic,meson-reset.yaml   |   1 +
>>  include/dt-bindings/reset/amlogic,c3-reset.h  | 119 ++++++++++++++++++
>>  2 files changed, 120 insertions(+)
> 
> As I understand it, updates to DT bindings documentation, as well as any
> DT bindings includes, should be submitted in separate patches, per the
> guidelines outlined in the following link:
> https://www.kernel.org/doc/html/latest/devicetree/bindings/submitting-patches.html#i-for-patch-submitters.
> 
> Krzysztof, Rob, and Conor, please correct me if I am mistaken.

And they are. What's wrong here?

Best regards,
Krzysztof

