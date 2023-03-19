Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0DB446C0299
	for <lists+devicetree@lfdr.de>; Sun, 19 Mar 2023 16:10:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230280AbjCSPKP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Mar 2023 11:10:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45402 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229561AbjCSPKN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Mar 2023 11:10:13 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6BACE1D91B
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 08:10:12 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id b20so4796038edd.1
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 08:10:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679238611;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3ZI8mVM/FkOy3dP9E6gVdHN8NK1dgUVp75Y1XHclun0=;
        b=a+5qnvrRAF++ofJgOjqiazCAc2Aphl4pWP29eztVnElmenfUXxCvyCnvx3xbPpYOz1
         wHn7YFh4UxeFkt3ntNfiQTD5uzQC2OKQ+aWVwGPUyCgD1dpY2U+M8ijr/CmZ/qwwEUS1
         1D68pi8t9IIPIdM9I9zpKdm2gDoku1fsyXJQZ15Io/aaiqNPzQgyYD75gaRq32hugfWx
         COaFAbKHEXsVQwXPZgYLCfoGt39aN+ccmzE0V8YfXs+4iGg99tuqFdfWqgjffybNLsfA
         DbSfHiQRQ15UyXvPk+ACOWjvofm6RLm4a+cLgmdUJmAwJzqeS6km0SBHgdj9VIRgG/DD
         JfWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679238611;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3ZI8mVM/FkOy3dP9E6gVdHN8NK1dgUVp75Y1XHclun0=;
        b=fSV1lgZyIqRYMQkTiRE2zRnPBLR38y4rwUHvrEz8NtPL6JQVdusF6HU+6cTV5zbuFn
         kPXpJn+gGFEfTqehTm1ZCeXDXx4e7MjZp0FcJMekceGwpWhBwGrC+Pc8l+N2/YakOtmX
         f4GfUJfUX/N8HHPtTpYMg+b95REfEqAE2GhSNE/d1MG7Q17asv6JYAl4DXfDvctj/9wi
         8LvuEmhMUMBwhzET6FeDuZks4wBaH8mxyVLChdsJsPrJpJDUlXbZNAqZI/nmnvWRp/CU
         dTBPcvQiHd6Ux2WPIYXbXAqTzWRCJxwkDJYBcu5C/Lk1ZQPdwaYmZQK+Y3eeMvkn2G1k
         TzJQ==
X-Gm-Message-State: AO0yUKU9p0bNSyAcbwNMP9v0NmepnxNmTvV0zgJCeHMqL4fXy8fBHwgP
        tnk4e3R0nMInIWsIgtpOct6imQ==
X-Google-Smtp-Source: AK7set/iFJN/sd+wLxxg91YOKrDm9aeHyWuj5wHArbE5ZuWMQvm1f5sK26iU7VJUzI6JAck3oC714g==
X-Received: by 2002:a05:6402:12c3:b0:4fd:2346:7225 with SMTP id k3-20020a05640212c300b004fd23467225mr10565715edx.34.1679238610881;
        Sun, 19 Mar 2023 08:10:10 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:5b5f:f22b:a0b:559d? ([2a02:810d:15c0:828:5b5f:f22b:a0b:559d])
        by smtp.gmail.com with ESMTPSA id r29-20020a50d69d000000b004c2158e87e6sm3575849edi.97.2023.03.19.08.10.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Mar 2023 08:10:10 -0700 (PDT)
Message-ID: <346ecd20-d64f-1d47-4860-861e142f9700@linaro.org>
Date:   Sun, 19 Mar 2023 16:10:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v4 09/18] dt-bindings: usb: Add Qualcomm PMIC TCPM YAML
 schema
To:     Bryan O'Donoghue <bryan.odonoghue@linaro.org>, linux@roeck-us.net,
        heikki.krogerus@linux.intel.com, gregkh@linuxfoundation.org,
        andersson@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-usb@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Cc:     wcheng@codeaurora.org, caleb.connolly@linaro.org,
        konrad.dybcio@linaro.org, subbaram@quicinc.com, jackp@quicinc.com,
        robertom@qti.qualcomm.com
References: <20230318121828.739424-1-bryan.odonoghue@linaro.org>
 <20230318121828.739424-10-bryan.odonoghue@linaro.org>
 <7cd51a8d-7b23-7895-7c06-07dc98924931@linaro.org>
 <a4da1f8f-333e-9ded-d784-7f86c45c7156@linaro.org>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <a4da1f8f-333e-9ded-d784-7f86c45c7156@linaro.org>
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

On 19/03/2023 15:59, Bryan O'Donoghue wrote:
> On 19/03/2023 11:58, Krzysztof Kozlowski wrote:
>>> +
>>> +maintainers:
>>> +  - Bryan O'Donoghue<bryan.odonoghue@linaro.org>
>>> +
>>> +description: |
>>> +  Qualcomm PMIC Virtual Type-C Port Manager Driver
>>> +  A virtual device which manages Qualcomm PMIC provided Type-C port and
>>> +  Power Delivery in one place.
>> OK, so it looks like bindings for driver, so a no-go. Unless there is
>> such device as "manager", this does not look like hardware description.
>>
>>> +
>>> +properties:
>>> +  compatible:
>>> +    const: qcom,pmic-virt-tcpm
>>> +
>>> +  connector:
>>> +    type: object
>>> +    $ref: /schemas/connector/usb-connector.yaml#
>>> +    unevaluatedProperties: false
>>> +
>>> +  port:
>>> +    $ref: /schemas/graph.yaml#/properties/port
>>> +    description:
>>> +      Contains a port which consumes data-role switching messages.
>>> +
>>> +  qcom,pmic-typec:
>>> +    $ref: /schemas/types.yaml#/definitions/phandle
>>> +    description:
>>> +      A phandle to the typec port hardware driver.
>>> +
>>> +  qcom,pmic-pdphy:
>>> +    $ref: /schemas/types.yaml#/definitions/phandle
>> Having typec and phy as phandles - not children - also suggests this is
>> some software construct, not hardware description.
> 
> So probably I didn't interpret Rob's comment correctly here.

He proposed to merge it with other node:
"probably merged with
one of the nodes these phandles point to."

"Why can't most of this binding be part of"

I don't see how you implemented his comments. Actually, nothing improved
here in this regard - you still have these phandles.

> 
> For a pure software device - a virtual device - there should be no dts 
> representation at all - not even at the firmware{}, chosen{}, rpm{} 

By software we interpret here HLOS, so Linux. Firmware is FW, thus not
software in that context. rpm{} is some firmware on some processor.

You wrote here bindings/nodes for a Linux driver.

> level, it wouldn't be possible/acceptable to have a tcpm {} with a 
> compat pointing to the two phandles I have here ?

What is tcpm? Linux driver? Then not. You cannot have device nodes for a
Linux driver.

Best regards,
Krzysztof

