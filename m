Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1DE897320D5
	for <lists+devicetree@lfdr.de>; Thu, 15 Jun 2023 22:20:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229503AbjFOUUc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Jun 2023 16:20:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42470 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231479AbjFOUUa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Jun 2023 16:20:30 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5CE3B2117
        for <devicetree@vger.kernel.org>; Thu, 15 Jun 2023 13:20:29 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-982a1b92d55so160286466b.0
        for <devicetree@vger.kernel.org>; Thu, 15 Jun 2023 13:20:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686860428; x=1689452428;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PheO5hW175jjKSK37vk+49jVV02xT5gnJ8XioudxE24=;
        b=jJ1Yre5AYXwepAMacg3jhvKTHmzpMIh+WgtkpxRVxOr09dqTzMF7jp6K7qcoty8g7e
         iJ6wdMaGMHt5tg/K5QAh8NtzNcNt+aLaC1oyZ1HxxiZvKA3MIY8/q61xrbgsvNuUOf0w
         pVAJHpFRgr+iV+YA2UFKQlYk7ACJehZdfhglFSfCjEp/Ut2ohj5B+JbjmxP4fk6NOi8i
         0B1B1vLpZU2doFhOgOsxbxY5011fFf14lWlNaDPeeD+yZc4mHM5uo5KsHzzmYs4/eXR+
         7Re81CHd66YhxGm9kasxDV0yK7YJrPElZmCFx7hWR9burlrPrOz73VbqNIAkcEH/ynwL
         30bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686860428; x=1689452428;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PheO5hW175jjKSK37vk+49jVV02xT5gnJ8XioudxE24=;
        b=IpiqiM4WOWcDfTc8JQ4lw00M6KFVJuPFDs0LJBQ9PyvM0swtgyprOFAh8/DnTrhp02
         UscuZhPFihIsoDqgUrAg9bqJ1pwBu3nNUW3c5U5SWUN48deJj5L1+usOWSHUYXLVkZ+J
         6xdXbuZ2XM8FLiqwOYlZJ4TAqL8ALqPkR+oEFfvKikghnhw/G7aLex6s9ZRfYkquZKIu
         fX5t6vquqOfoOtnMkdfl6hSdZu/GyTmEVlyfZbjq2rrRQI810G7grF8Vpi+il+IbKHQB
         rginpSlhhRJK3ufOs4OeXwd88fXTBgLIX+FXK79pLnponyap3L1Nc+JI/N/C8lvathj+
         MD4w==
X-Gm-Message-State: AC+VfDzzaAtzbnT8Xey01HMCCzKBLnoCtwIsfVDrS9n6OU+beijiWDs9
        JuPkaXjr1cszIctpXgbc0PiX950Sy/DRS8L60aE=
X-Google-Smtp-Source: ACHHUZ5o8zCpuaorGfbrYqyO1FXI2LXPqdCPH/jO8rGp25VgkKZhHn6c43x02tQ8XqtH/xIB860/uA==
X-Received: by 2002:a17:906:db0b:b0:982:25d1:bfd3 with SMTP id xj11-20020a170906db0b00b0098225d1bfd3mr116904ejb.15.1686860427808;
        Thu, 15 Jun 2023 13:20:27 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id a9-20020a17090680c900b0096f782f727esm9989482ejx.140.2023.06.15.13.20.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jun 2023 13:20:27 -0700 (PDT)
Message-ID: <ba63e07f-69db-c54f-08eb-7adb635a68fb@linaro.org>
Date:   Thu, 15 Jun 2023 22:20:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v3 3/4] dt-bindings: spi: stm32: disable spi-slave
 property for stm32f4-f7
To:     Valentin CARON <valentin.caron@foss.st.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Alain Volmat <alain.volmat@foss.st.com>
Cc:     linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230615075815.310261-1-valentin.caron@foss.st.com>
 <20230615075815.310261-4-valentin.caron@foss.st.com>
 <479bf05e-342d-f94b-87f3-4cc0a95fb01a@linaro.org>
 <b25d30de-8a22-b5ea-e58c-78b3d55b3cac@foss.st.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <b25d30de-8a22-b5ea-e58c-78b3d55b3cac@foss.st.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/06/2023 19:38, Valentin CARON wrote:
> Hi Krzysztof,
> 
> On 6/15/23 15:36, Krzysztof Kozlowski wrote:
>> On 15/06/2023 09:58, Valentin Caron wrote:
>>> From: Alain Volmat <alain.volmat@foss.st.com>
>>>
>>> STM32F4 and STM32F7 can't switch to spi device mode.
>>> Forbid this property with compatible "st,stm32f4-spi".
>> Just to clarify - driver cannot switch or hardware does not support it?
> 
> Driver can't support it right now but hardware can.
> 

DT is independent of some chosen (or current) Linux drivers. Imagine
Linux cannot support it but OpenBSD does.

As Mark pointed out, this needs a follow up commit.

Best regards,
Krzysztof

