Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7F01973F432
	for <lists+devicetree@lfdr.de>; Tue, 27 Jun 2023 08:05:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229777AbjF0GFj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Jun 2023 02:05:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54630 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229728AbjF0GFj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Jun 2023 02:05:39 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C6A831BF8
        for <devicetree@vger.kernel.org>; Mon, 26 Jun 2023 23:05:37 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-4fb8574a3a1so409891e87.1
        for <devicetree@vger.kernel.org>; Mon, 26 Jun 2023 23:05:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687845936; x=1690437936;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CyPTwXW8OQFLcvCUzk+L4ves/sIMoSF+nd/0rCMq1yQ=;
        b=klJmp/nCgsEu04JBsh0N6zKskcd3DbcCqiC8aN82DvhicDWRaK5M6A9U4ZvgJSYhws
         +vvLnF6LZVCG+SHh6SBUpEnT/TH7FkK15xzdBD4dpr7c+JIXxTQn3OmuTLG0/cBM7s85
         agXIn2UC6ifBjpOHQ+QU+wjnuc3llvk0Mue5+WBZGcWzKHgrNaJAw7kGqOP0mrMaQzTL
         m8wfYXYxnNvtHLjtl06WVphR2azEbBTAyv0B3rG2RCVz+iX65NMIJDtZUoT3cjBx6i6+
         NsJY3ukPa6NrkaRUvyQuI/JnLRP0b0V1Z0UNZqfdsmzkxHTNu8Z0g4aoYE9Jp914h176
         7FdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687845936; x=1690437936;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CyPTwXW8OQFLcvCUzk+L4ves/sIMoSF+nd/0rCMq1yQ=;
        b=eGIuFHxRlSeIkZntWAg+hHjN8JykA8/Lmpf7V+wncfTioUDtl8s1cUpC+meMOdsfUo
         ahxrLrJwB7YBdrVywNEP1H6ZaQhRh1TND5+RSA9dEAmG32GyLPCDrSZMeUVVx9qnaEQD
         cyUxpYDIOgAM9I3+rC3ofUjMDYSYao63ikWK7rf5wbq8uNewOkT1hBxzZfEBFjxtn+qU
         Yvnh9KY8cZxVKknWmucoLLTEKxXFcnM4hCxDoWNmHIC2tU4u/LqEViWBK594dTgATd3f
         tN0NW8+zVuao9syOFad145htcCgplcs6uT2Y7BkGDXdlCul21ui8dzcklwjnwoVI8fUE
         X8yw==
X-Gm-Message-State: AC+VfDwVMTWXHrIO0OVsP77seBk62x/y3cCzC5WNaiG6A20frL2aOvx/
        RVKE3rjWJyoZ8t7ZLnBWTH1DNA==
X-Google-Smtp-Source: ACHHUZ5Ma67VplIaCiyfjjcDvZSi6chXIk/ZwfpAdj4TFP5vkBq63dVYVMNm+FXXMaRRz2YwJWM1PA==
X-Received: by 2002:a05:6512:234f:b0:4f9:795f:a6e5 with SMTP id p15-20020a056512234f00b004f9795fa6e5mr6066234lfu.68.1687845935918;
        Mon, 26 Jun 2023 23:05:35 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id s24-20020a7bc398000000b003fb9ebb6b88sm1274944wmj.39.2023.06.26.23.05.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jun 2023 23:05:35 -0700 (PDT)
Message-ID: <ce730674-5ec5-2386-b574-37e5819239bb@linaro.org>
Date:   Tue, 27 Jun 2023 08:05:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v1 3/3] dt-bindings: hwmon: add sht3x devicetree binding
To:     JuenKit Yip <JuenKit_Yip@hotmail.com>, jdelvare@suse.com,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, corbet@lwn.net
Cc:     linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
        linux-doc@vger.kernel.org
References: <20230626072923.340544-1-JuenKit_Yip@hotmail.com>
 <DB4PR10MB6261859DA1087597DDC3CCB39226A@DB4PR10MB6261.EURPRD10.PROD.OUTLOOK.COM>
 <326cc8a4-3366-e8af-8051-7284bfb6dfaa@linaro.org>
 <DB4PR10MB62610826B15E48C2CA2F51779227A@DB4PR10MB6261.EURPRD10.PROD.OUTLOOK.COM>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <DB4PR10MB62610826B15E48C2CA2F51779227A@DB4PR10MB6261.EURPRD10.PROD.OUTLOOK.COM>
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

On 27/06/2023 02:29, JuenKit Yip wrote:
>>
>>
>>> +  reg:
>>> +    maxItems: 1
>> Missing vdd-supply (required) and reset-gpios (optional).
> 
> It means that we should implement relevant codes about vdd-supply?

It means your binding should have vdd-supply, which is required, and
reset-gpios, which is optional.


Best regards,
Krzysztof

