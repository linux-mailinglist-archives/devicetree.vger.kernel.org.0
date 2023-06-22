Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B528F739DAD
	for <lists+devicetree@lfdr.de>; Thu, 22 Jun 2023 11:50:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230060AbjFVJty (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Jun 2023 05:49:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50178 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231734AbjFVJtY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Jun 2023 05:49:24 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AAA0C420A
        for <devicetree@vger.kernel.org>; Thu, 22 Jun 2023 02:39:08 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-3f9bdb01ec0so18677435e9.2
        for <devicetree@vger.kernel.org>; Thu, 22 Jun 2023 02:39:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687426731; x=1690018731;
        h=content-transfer-encoding:in-reply-to:subject:organization
         :references:cc:to:content-language:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=y1j31YwGJInJp0uzBca00KMvrBtU/vucRfvT/lc8M/k=;
        b=r31WHGpDwAnxyUVyweo5c3+lMARcpIsEl6qSJ0JpMHq68mEoGcJ2eEf9pqIPOWrPjF
         uPAhY9IbZC7NTawDk4C0h2B0lnMFNZnLfWVDQ7HMEm+0Kf5AdCUUGwlXOBxxBD3yhzbD
         hT1/aQg8RdtrLi0XNEU5f7uNLWbJeV19nO2KDyf5f+Oufd5SR+i2CEXXlt/eBk12yGpz
         U/OGVGV4DtpgrrWpw9K2TIUjlAcHkuLpmzBx/SmIevMGqbH9aDQ+xEH0WBoJ6P32b9VX
         e6hsxfhI7WgmronTZTpGimp52hUP4w1oCaODpbjeaU+qYmnDpCIXAQRS49lKFRmCUDKc
         eMnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687426731; x=1690018731;
        h=content-transfer-encoding:in-reply-to:subject:organization
         :references:cc:to:content-language:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=y1j31YwGJInJp0uzBca00KMvrBtU/vucRfvT/lc8M/k=;
        b=XxwnHcKlZLjohO3Gl5Kbr6hcC9wG5ZgctMItsxMwYlupZgibFuzldm+fY8ZtDUjD9z
         IxK3kjVB2NxprNe1vokENxvz6+5tW09ySL+3CWLuSXtIQ4daaocATPRM3DCXxZMXgFaj
         sIhGTFYFgx7IPdWgsFW8gJsSK9OP5BV9c4nQ3g7mfCekQryLyCoyBLWNgOP8dkkvO/XY
         1DSm+WwQ3CabhceBv0QyvVP3fpCnfnvYzr2yGXEVelDxy8Zo06JdJtiTjCnq2dkkTdJt
         6M8eX/XPGAopB/Wb+gnwZp2Gjdmen+86+oX9xdidUI7k6bRiXZb6o01VKR723PpdM+3u
         7DKQ==
X-Gm-Message-State: AC+VfDxtMAkUX/CMnRF7pTVMNcWo9iFi6L3ULGpVVmp7sq9e1IhA+4p9
        gyw+vdHEVjpw528R2qVCgBhyhzOF7ZHw0+02xFf1+A==
X-Google-Smtp-Source: ACHHUZ6o5KJy6XmDPYy+gz9tcwBxBrnmssvKZ+GzsUV9aZ03hz6SJ4PS8LJmpLVIWGc0+MREh27jvA==
X-Received: by 2002:a05:600c:2211:b0:3f7:e655:a498 with SMTP id z17-20020a05600c221100b003f7e655a498mr14748565wml.14.1687426731505;
        Thu, 22 Jun 2023 02:38:51 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:f692:a800:4794:385? ([2a01:e0a:982:cbb0:f692:a800:4794:385])
        by smtp.gmail.com with ESMTPSA id 8-20020a05600c028800b003f9c8c6bf53sm3102092wmk.13.2023.06.22.02.38.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Jun 2023 02:38:50 -0700 (PDT)
Message-ID: <4a2a2f0c-f9dd-d5c4-1e7e-5852970f87a7@linaro.org>
Date:   Thu, 22 Jun 2023 11:38:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
From:   Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Content-Language: en-US
To:     Conor Dooley <conor.dooley@microchip.com>,
        Lucas Tanure <tanure@linux.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>, Nick <nick@khadas.com>,
        Artem <art@khadas.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Conor Dooley <conor@kernel.org>
References: <20230622084045.519203-1-tanure@linux.com>
 <20230622084045.519203-3-tanure@linux.com>
 <20230622-unsent-willing-574906af5e1a@wendy>
Organization: Linaro Developer Services
Subject: Re: [PATCH v4 2/3] dt-bindings: serial: amlogic,meson-uart: Add
 compatible string for T7
In-Reply-To: <20230622-unsent-willing-574906af5e1a@wendy>
Content-Type: text/plain; charset=UTF-8; format=flowed
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

On 22/06/2023 11:26, Conor Dooley wrote:
> Hey Lucas,
> 
> On Thu, Jun 22, 2023 at 09:40:44AM +0100, Lucas Tanure wrote:
>> Amlogic T7 SoCs uses the same UART controller as S4 SoCs and G12A.
>> There is no need for an extra compatible line in the driver, but
>> add T7 compatible line for documentation.
>>
>> Co-developed-by: Conor Dooley <conor@kernel.org>
> 
> You can delete this, I don't need a Co-developed-by tag for review
> feedback.
> 
>> Signed-off-by: Lucas Tanure <tanure@linux.com>
>> ---
>>   .../devicetree/bindings/serial/amlogic,meson-uart.yaml      | 6 ++++++
>>   1 file changed, 6 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/serial/amlogic,meson-uart.yaml b/Documentation/devicetree/bindings/serial/amlogic,meson-uart.yaml
>> index 01ec45b3b406..4ca4673169aa 100644
>> --- a/Documentation/devicetree/bindings/serial/amlogic,meson-uart.yaml
>> +++ b/Documentation/devicetree/bindings/serial/amlogic,meson-uart.yaml
>> @@ -46,6 +46,12 @@ properties:
>>             - amlogic,meson8b-uart
>>             - amlogic,meson-gx-uart
>>             - amlogic,meson-s4-uart
>> +      - description: Everything-Else power domain UART controller on G12A compatible SoCs
> 
> s/Everything-Else/Always-on/


"Everything-Else" was the amlogic naming for the non-always-on power domain, but it seems
it's no more something used on new SoCs like the T7 family.

Anyway, the description is wrong, and it's a mess because we used "amlogic,meson-ao-uart"
for uarts on the Always-On domain, but here it's described as Everything-Else...

Lucas, is there AO_uarts on T7 ? if not drop this amlogic,meson-ao-uart for the T7 UARTs.

But if there's no more AO uart controller, you'll need to change drivers/tty/serial/meson_uart.c
and add a OF_EARLYCON_DECLARE() for amlogic,meson-t7-uart.

But still, why don't you use the amlogic,meson-s4-uart as fallback instead ?

+      - description: UART controller on T7 compatible SoCs
+        items:
+          - const: amlogic,meson-t7-uart
+          - const: amlogic,meson-s4-uart

and update meson_uart.c if there's no AO uarts anymore....

Neil

> Otherwise,
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> 
> Perhaps it can be fixed on application, I don't know how the amlogic
> maintainers operate.
> 
> Cheers,
> Conor.
> 
>> +        items:
>> +          - enum:
>> +              - amlogic,meson-t7-uart
>> +          - const: amlogic,meson-g12a-uart
>> +          - const: amlogic,meson-ao-uart
>>         - description: Everything-Else power domain UART controller on G12A SoCs
>>           items:
>>             - const: amlogic,meson-g12a-uart
>> -- 
>> 2.41.0
>>

