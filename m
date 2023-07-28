Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 542F3767209
	for <lists+devicetree@lfdr.de>; Fri, 28 Jul 2023 18:40:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231578AbjG1Qkr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Jul 2023 12:40:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43972 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232397AbjG1Qkp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Jul 2023 12:40:45 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C02114203
        for <devicetree@vger.kernel.org>; Fri, 28 Jul 2023 09:40:43 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-3fbc59de009so23368235e9.3
        for <devicetree@vger.kernel.org>; Fri, 28 Jul 2023 09:40:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690562442; x=1691167242;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vHUNO/IrnfFN0MhhDh/0mFjdxBVg/OLd4PkUkNG7FnI=;
        b=ZGdTtBipas8Fy5PIhI/L5R3iS9ZPXGscxN4xBXd6FBdKqKbV0JJJysUIYY4sFfVdOu
         Mpw3cAvkDHFxP769McZZH2VRi3SQB7vCv7zE+PblnNc9Sat7NOp/agTaNpTEdNcihR+D
         aaDdXIXpyWHSU2bamemLdDUMV6LN65U2QC1cp/mlPHs89xo7qEmRCj45XR/Qa+jD9bsG
         u3oXvA+Rn3UUxA0rpB+zlsRxrsawNxdN3pvJCysyFlVeiuZ/MQ343VdrSWLc2TavimaX
         Ynh+Ati5bMSuJ+rm1qVy7ZfEOYqaZXQ2+PxscO0AbdPkpFx+3eJiRZCQlBsfpoPmX+Y8
         1TKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690562442; x=1691167242;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vHUNO/IrnfFN0MhhDh/0mFjdxBVg/OLd4PkUkNG7FnI=;
        b=SUPwJ5iebA5/dcRsXVXedKWfffb90+efLhaciBhImSpRwzxspBItndI/Jef53UPcTy
         5zEIuPx2Q/U5xUjc955N5Mq7ja3FyoCgTcktr2CcWSJVHFExHeOkTKpL4uFvh8VliA8b
         ihJ5Q9SLbt3DYVOTfvWChSFdz9dDk4bo69DlDOrJo6ulhekyPabT9kQrOvut8QBIZyuC
         BRd4diXhXl6qyQUL1SxU8jHpKXArHwS6Ro0rlEI6wlJdqmSUchYZPnn969B+zAy/+Oxs
         lJMz8nY1FXHCrAxYR8zyZp+qjF6lqHmnHFTFvMtRwWch6W0SAZhaMKO1jRv9pnDhEjxs
         cnZw==
X-Gm-Message-State: ABy/qLZheaki5JvgKBRjyutlML0rYIdFMUYoASbMA5UqFevOcBORdhup
        RXDIgyCKuzWoBhRYjK6ephS8oQ==
X-Google-Smtp-Source: APBJJlGShlM1dO3+fMhExjYv6Dh8m7h06nmIvJBTl25b1p7ACzbItvuCgoGAcNo1XJsyv0g0/4Kb5Q==
X-Received: by 2002:a05:600c:3789:b0:3f7:678c:74b0 with SMTP id o9-20020a05600c378900b003f7678c74b0mr2106898wmr.12.1690562442214;
        Fri, 28 Jul 2023 09:40:42 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id n5-20020a1c7205000000b003fe11148055sm1185888wmc.27.2023.07.28.09.40.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Jul 2023 09:40:41 -0700 (PDT)
Message-ID: <68b7d772-8dc4-a781-031b-ea33dae41751@linaro.org>
Date:   Fri, 28 Jul 2023 18:40:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v3 1/3] dt-bindings: reset: Add compatible and DT bindings
 for Amlogic C3 Reset Controller
Content-Language: en-US
To:     Philipp Zabel <p.zabel@pengutronix.de>,
        zelong dong <zelong.dong@amlogic.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Jerome Brunet <jbrunet@baylibre.com>
Cc:     linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, kelvin.zhang@amlogic.com
References: <20230719060954.14864-1-zelong.dong@amlogic.com>
 <20230719060954.14864-2-zelong.dong@amlogic.com>
 <f7b72ee90009f6749700a7bd79a3a63786a82a32.camel@pengutronix.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <f7b72ee90009f6749700a7bd79a3a63786a82a32.camel@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/07/2023 17:49, Philipp Zabel wrote:
>>      maxItems: 1
>> diff --git a/include/dt-bindings/reset/amlogic,c3-reset.h b/include/dt-bindings/reset/amlogic,c3-reset.h
>> new file mode 100644
>> index 000000000000..d9127863f603
>> --- /dev/null
>> +++ b/include/dt-bindings/reset/amlogic,c3-reset.h
> 
> Given that this is only included by
> arch/arm64/boot/dts/amlogic/amlogic-c3.dtsi, should this header be
> moved to arch/arm64/boot/dts/amlogic ?

I think there is ongoing work or at least plan to use the IDs also in
clock/reset drivers for all Amlogic platforms. Do I recall this correctly?

Best regards,
Krzysztof

