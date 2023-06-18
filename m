Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CD62573454C
	for <lists+devicetree@lfdr.de>; Sun, 18 Jun 2023 10:00:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229481AbjFRIAz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 18 Jun 2023 04:00:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58626 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229476AbjFRIAy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 18 Jun 2023 04:00:54 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A333C10D7
        for <devicetree@vger.kernel.org>; Sun, 18 Jun 2023 01:00:53 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-986d8332f50so240145266b.0
        for <devicetree@vger.kernel.org>; Sun, 18 Jun 2023 01:00:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687075252; x=1689667252;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SAkLYeiehOSzeEqsiJZk/Gwuzn6AJ/4HofVW5Winb6o=;
        b=FjhzBM5tHl7Pd7axdYfAGwvn/N+cpIbOAhb7Ne66yMgZqWQexYFA9toZG2pByatVeU
         bY7AuzhquUoVXmqHjrsxMB4O8CRdhGs9rR1nUW0xkI4hAkbNHhJ7NIa6Zsi8VpbVYe0l
         988Gy0dByv66Wu0/icynH53+6Harz6AuSrO4QrC4YgFP2RJ4blXBe4aKcm0Sug/X+ESq
         wWgGq9ZRN3DE1Tmc6B3sCAIDfRwutOGpPyOM7M7sBKVkVgmGlLnaCTPijAZLzRhw9LMu
         Awm8OlQeHHaal25mkOC7XIDFBf0xSqxws9rmkhlCvU/W+4WMEAs6lHrVKltXM6I78uX8
         lBbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687075252; x=1689667252;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SAkLYeiehOSzeEqsiJZk/Gwuzn6AJ/4HofVW5Winb6o=;
        b=LqI+xqsgZNNFgSO+iQ04tYGr3kMEMSnRQ+D6KCU1JuECTDrAwPPwAg1r1GQvc0zTcy
         A+MqpANa9XgGri27Kx7+urYpK82Kw2Vqr69Tq1FRCfITn8DwIjAYETy6iPp29y94b19w
         EBECvGsjHZ8dU2+aV2o2PtZC8t+y8WrMrLF87qyR/l73iOX7XM61+VUQtX+l0Mv51LuN
         r6j6IDA5U8fogH5acuwJ+j/0fctprmT1jBjvJLVccgaM+g+6JbOQngfrzLg1ZzIsoEeO
         wIfPbL83D1dNSa1m6TdKEZmVFDMtJ2YIStzTe4Xa4/hD59iyYiN7yZHgGkjtQWtk32p/
         AR7g==
X-Gm-Message-State: AC+VfDxTJvyn2EcU4BYknejyAm/GSUpRWain6iIocQVjF5Dn4yuxK23D
        gg9CyVOuOXwNQNqTKsGYNw7oFA==
X-Google-Smtp-Source: ACHHUZ7rF+SxgQirtPSPq0Sf1HxrrXAeg3CI8mD6OdRDSzPZYQnYupUONngG0nLS4h2ilTR8ny49uw==
X-Received: by 2002:a17:906:aac8:b0:978:6b18:e935 with SMTP id kt8-20020a170906aac800b009786b18e935mr5192232ejb.23.1687075252171;
        Sun, 18 Jun 2023 01:00:52 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id qh1-20020a170906eca100b009889c4bd8absm3199ejb.216.2023.06.18.01.00.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Jun 2023 01:00:51 -0700 (PDT)
Message-ID: <bba4acf9-23a4-d732-900b-944c4ddef08c@linaro.org>
Date:   Sun, 18 Jun 2023 10:00:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v2 2/2] dt-bindings: arm: sunxi: Add
 itead,iteaduino-plus-a20
Content-Language: en-US
To:     Julian Ribbeck <julian.ribbeck@gmx.de>
Cc:     conor+dt@kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, robh+dt@kernel.org
References: <e0e71b0c-086d-ce54-f4d3-6f594d8e5da6@linaro.org>
 <20230617205624.1178427-1-julian.ribbeck@gmx.de>
 <20230617205624.1178427-2-julian.ribbeck@gmx.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230617205624.1178427-2-julian.ribbeck@gmx.de>
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

On 17/06/2023 22:55, Julian Ribbeck wrote:
> Add itead,iteaduino-plus-a20 bindings
> 
> Signed-off-by: Julian Ribbeck <julian.ribbeck@gmx.de>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

