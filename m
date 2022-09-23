Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8548F5E76B9
	for <lists+devicetree@lfdr.de>; Fri, 23 Sep 2022 11:21:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231542AbiIWJVf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Sep 2022 05:21:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57196 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229512AbiIWJVe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Sep 2022 05:21:34 -0400
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67D1313070A
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 02:21:33 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id z20so13977791ljq.3
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 02:21:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=7slKNQh60cH75T6cRpc524ASdPemcdJLGtdMzrxSYyU=;
        b=HyrSz8jTScQZTYUsbOu1g5FDL7oZOyf1s0Lc0HZQi9P6adutQjNUM+Un9WYFhsVEij
         Ba6Sl/mUaV0geS0UFA+BSP9uuLEa+6W1+/fDWvK73NB397lq6UusDD+bx2PVpvf87VP/
         AcpC/5nFqDzljfIkvAzdfFYnkLHeG4CoNhH8mJ52uLQP8trylJMZf9IOMThEFmnHqNmK
         H3p/jhzsCjrnf6KC3xTQ6esGIio110B+EIL54O3dOvQPs+Kfp+/37S6OTRQK2V/LzRfB
         BA6aJSe5MqtuDBAGaKYEmKU2bcM2gUMdgvfHg45t7ZIepj8APZObWmjdzoilEos+qpp1
         MqoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=7slKNQh60cH75T6cRpc524ASdPemcdJLGtdMzrxSYyU=;
        b=6TxgPnF2mI3Zzw/GIjNMxCogY2NUeEd82qjqrgR/YjCn2EO3wTE5fBCjZZk8b97Lv0
         /T41Zbr8up3R6puhbmROfFbP+vVp6bG1q+guRaeq1q9thN7/annEIMNIEAqTRtZsqhce
         8FwFoHfeULw1ei+2bTxXFaGlrHVVsZ2c2dP2JfdmXxwAxsNwbwnOF/CYJXGozrnz9gUI
         GDwySZVaGbwwSA4VIXW1tdY/qr6slOJNaUzL8a9fkqaWQcvoLMeU+uN2ivbTm9IQiGIz
         aNIrA08OapQM93JQJ9F0963h8IkP9cQPYie7Ab8BsdMnPNnT9mxs22pfh+3qeDigvXVR
         5www==
X-Gm-Message-State: ACrzQf29Pg5rqAoEvvnFW62JIYEgKwQq0vA38DXLuYte4QLMSxeSy7br
        N8+VxAaH5qGXJYody8/XP+a2fQ==
X-Google-Smtp-Source: AMsMyM74Lo3/SJUxoYla08JLCU/g5bhtWWnSLD+31ZWhtxJwgkE+9Vc+9/OUSstjZkqFaNSdWOVI5w==
X-Received: by 2002:a2e:bc11:0:b0:26c:565:12f6 with SMTP id b17-20020a2ebc11000000b0026c056512f6mr2423362ljf.91.1663924891762;
        Fri, 23 Sep 2022 02:21:31 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id bg33-20020a05651c0ba100b00261beb471d1sm1284238ljb.121.2022.09.23.02.21.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Sep 2022 02:21:31 -0700 (PDT)
Message-ID: <5145d4db-65bf-971d-84cd-73c222311cd3@linaro.org>
Date:   Fri, 23 Sep 2022 11:21:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH] dt-bindings: pinctrl: stm32: add missing entries for gpio
 subnodes
Content-Language: en-US
To:     Alexandre TORGUE <alexandre.torgue@foss.st.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        Fabien Dessenne <fabien.dessenne@foss.st.com>
References: <20220913074639.31932-1-alexandre.torgue@foss.st.com>
 <9b711a9e-9e63-b69e-fabf-e05c11f145a6@linaro.org>
 <c21b9c95-ae35-fd7e-9e8e-6926703725b4@foss.st.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <c21b9c95-ae35-fd7e-9e8e-6926703725b4@foss.st.com>
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

On 23/09/2022 10:29, Alexandre TORGUE wrote:
> Hi Krzysztof
> 
> On 9/19/22 13:32, Krzysztof Kozlowski wrote:
>> On 13/09/2022 09:46, Alexandre Torgue wrote:
>>> Add "interrupt-controller" and gpio-line-names to gpio subnodes in order to
>>> fix dtb validation.
>>
>> Rebase your patch on recent Linux kernel and use get_maintainers.pl.
> 
> I did it on 6.0-rc5 but yes I used your kernel.org address instead of 
> linaro ones. Sorry.
> 
>>
>>>
>>> Signed-off-by: Alexandre Torgue <alexandre.torgue@foss.st.com>
>>>
>>> diff --git a/Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml
>>> index d35dcc4f0242..92582cccbb1b 100644
>>> --- a/Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml
>>> +++ b/Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml
>>> @@ -65,6 +65,10 @@ patternProperties:
>>>         '#gpio-cells':
>>>           const: 2
>>>   
>>> +      interrupt-controller: true
>>> +      '#interrupt-cells':
>>> +        const: 2
>>> +
>>>         reg:
>>>           maxItems: 1
>>>         clocks:
>>> @@ -80,6 +84,8 @@ patternProperties:
>>>           minimum: 1
>>>           maximum: 16
>>>   
>>> +      gpio-line-names: true
>>
>> maxItems?
> 
> Generic question, Is it mandatory to add maxItems information for all 
> entries ?

It's not mandatory for all. For some it is recommended, for some it does
not make sense. Here it's quite easy to add and it will validate the
entry. Any reason not to add it?

Best regards,
Krzysztof

