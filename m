Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 15A7F687900
	for <lists+devicetree@lfdr.de>; Thu,  2 Feb 2023 10:36:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232217AbjBBJgw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Feb 2023 04:36:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45970 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232165AbjBBJgq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Feb 2023 04:36:46 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1D9F24CA9
        for <devicetree@vger.kernel.org>; Thu,  2 Feb 2023 01:36:25 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id h12so1086011wrv.10
        for <devicetree@vger.kernel.org>; Thu, 02 Feb 2023 01:36:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dmXyRK7pyArGQIBaHNewCz2/FW5CTuioBqtQo4CTze4=;
        b=zN6PjgHwvQWTjHb6cJCmxNDTEc2yDQIa/yQtwh1V0FKlZYw/FCU0hQ+zkMxJLYG1dL
         wMtP9HE2krE1HZy28FxY4h7ZECoFoBaPkFm/2XQeiKiwwapqZKSX5D9xR+l8PvJybv4h
         mouZ2gICuLt009QV6vfQop/NpaEB6oxrIuDA23twzzELPMZ3FSABv0nvCmfLRB7XhG9+
         RRuRMQA6XMhITNWZ53ahzl+tZMEtbm3ZBj1BGWU+DjApdTAcdD7yNeXAd+LMCpGm1Myx
         nA46C81O+2bRqXfSH5S7szrpi7c7sHjqcE/+PyM/fX7Fr3ZUU9e4CfVeddkc5GyTTzR3
         +ycw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dmXyRK7pyArGQIBaHNewCz2/FW5CTuioBqtQo4CTze4=;
        b=upDChRBaAcaj3rShTIHt6CtWLJDP/9u9F2xjIa2KFM/4fX9ceLfRqD+tfh7UYtX2dj
         rZs9M0BTUC0kLzTZrl3222Zlr9Axu2Uw5L5Kd6qL6L4Y6ah+c9tekYQjOJv7TYPgOZbR
         n+gVtsfaH0T/FZyhkf/IbGKI4tBj0x3PnwWfuTe6WEbhpcLM4PAhxj6fUXBu0bWjO1ZL
         aQN1KdFUOCd0oUijNYW0DVYi5YXLZP54lr8Xkw3NCEPn1C+d6xzayAVzNPPv+zIXHmyt
         wpbPPOtz3poDQbjHonKQ0avr3LBEDixK+4MW1fU9x+8qbmDVtrRhOKOLbVjCwRWj0/Zq
         gQvw==
X-Gm-Message-State: AO0yUKWVeXRN5APu4RQ4p01sFkQLIXqh7dccR6w5wodGUYLjgNUJJL22
        IpeVsRJn1LmN2YnQzlNelMLHmQ==
X-Google-Smtp-Source: AK7set+V5g3YurX+kJpNqnaewJdlYm987k2ZnWDSZ37neGarmzXzbAP6fIosl0voAxh7SZLIcu9rlg==
X-Received: by 2002:adf:e650:0:b0:2bf:ed09:abf1 with SMTP id b16-20020adfe650000000b002bfed09abf1mr4907617wrn.21.1675330578850;
        Thu, 02 Feb 2023 01:36:18 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id a5-20020adfeec5000000b002bfae6b17d2sm19714586wrp.55.2023.02.02.01.36.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Feb 2023 01:36:18 -0800 (PST)
Message-ID: <b9d56f59-ad43-1a09-0c9c-b85b732c7d99@linaro.org>
Date:   Thu, 2 Feb 2023 10:36:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 2/3] arm64: dts: qcom: sm8350-hdk: correct LT9611 pin
 function
Content-Language: en-US
To:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230201154321.276419-1-krzysztof.kozlowski@linaro.org>
 <20230201154321.276419-2-krzysztof.kozlowski@linaro.org>
 <87f4ba93-e566-821b-8f12-8765436e0791@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <87f4ba93-e566-821b-8f12-8765436e0791@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/02/2023 16:47, Konrad Dybcio wrote:
> 
> 
> On 1.02.2023 16:43, Krzysztof Kozlowski wrote:
>> SM8350 pin controller does not have "normal" pin function, so use
>> "gpio".
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> ---
> Makes one wonder if it was ever tested, as this would have probably
> failed when setting pinctrl settings..
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Fixes: d96d8f9192be ("arm64: dts: qcom: sm8350-hdk: Enable lt9611uxc dsi-hdmi bridge")


Best regards,
Krzysztof

