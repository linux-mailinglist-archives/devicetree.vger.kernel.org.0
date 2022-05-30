Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E0FA3537622
	for <lists+devicetree@lfdr.de>; Mon, 30 May 2022 09:57:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232781AbiE3H5m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 May 2022 03:57:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53252 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234212AbiE3H5l (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 May 2022 03:57:41 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40C374EA2F
        for <devicetree@vger.kernel.org>; Mon, 30 May 2022 00:57:40 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id k19so5295986wrd.8
        for <devicetree@vger.kernel.org>; Mon, 30 May 2022 00:57:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=2HKJS6RY42Dcsd1deVS4WgrJuNjTnB8t5BUZZ7XgBSs=;
        b=mIBfb4GlNZovTtitx6htAsOlbd6A5jiSmSjikbToJd+DS817kIltKja6Qr7QZZsfDi
         sWvD43up1LI9lzT2daNkUYEMQasZsZk8+qScQ6N8UutECIsZgmlqZC2hvep+zBLRCC8v
         pndpI9jjoIAlreFj68X+kIp+zNwA7Ko2vxL56mtHaYDDv+YQzhWgVKx67ehCN0od9SVS
         TFxd+jLM0Vnep2hVsJ+aBt4efLBdz2gNgIBnXJlmA4YUJZbsjHy21ewtl1gCP81TMroT
         Rm6fiD5gmtHTkotMnzay0MpSYgxTr2z9AI2Spo/pJklYF/XqGpq8beXW//hxqm7Mifq0
         pvUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=2HKJS6RY42Dcsd1deVS4WgrJuNjTnB8t5BUZZ7XgBSs=;
        b=Rl6wpIOB5kVeorQR4diqY3D+rbAkQNYyS2JAT3D97+Vy4N32PgdaH4PdcyYeWIAzLi
         QBGXEPmXmR56S3M8dCQimOx6ZiOKpwljnIH3Q5GbFpUxhil11aAipmpVIeuKgH1vFPaA
         nxg3KZ+NGCKltrq4OEWoM3LF64IgcETDlvGgoywrGx2saIdDo47noxjC53arpyLEbgPp
         VTMfcf9NVXk6tG33wudFxkIuxgSJDUiEazNSZaKPzRRc2Rm5K7zC0t2ozVWfaE8GXycE
         jsz7pSFEW6L8GMhDYXIZBJHMHcDAFt3uydUcLxUtyXKWQvsQdBu/qardnhUK4+shQLFk
         dM6A==
X-Gm-Message-State: AOAM530GHrb5E071nGc/ZJPdL9MIReT17mqQPXa8+mtcsJMu9MzOuwir
        tr/8UKw9/pQ0eyYBhX1cbeRFVg==
X-Google-Smtp-Source: ABdhPJxmAIoeEgWIl75mqBqxQJ09+cOXyhmjYq4ZDcJgNOMAsGbHNh/aMMUBRV0QUk+RdkKT6Vz1Ow==
X-Received: by 2002:a5d:4282:0:b0:210:1351:d307 with SMTP id k2-20020a5d4282000000b002101351d307mr14111192wrq.492.1653897458728;
        Mon, 30 May 2022 00:57:38 -0700 (PDT)
Received: from [192.168.0.179] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id h4-20020a1ccc04000000b0039747cf8354sm9339414wmb.39.2022.05.30.00.57.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 May 2022 00:57:38 -0700 (PDT)
Message-ID: <c491f04b-2e60-4b52-d123-4659d4fa8d07@linaro.org>
Date:   Mon, 30 May 2022 09:57:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH v2 1/3] dt-bindings: mfd: ti,j721e-system-controller: Add
 clock property
Content-Language: en-US
To:     Rahul T R <r-ravikumar@ti.com>
Cc:     robh+dt@kernel.org, nm@ti.com, vigneshr@ti.com, kishon@ti.com,
        krzysztof.kozlowski+dt@linaro.org, lee.jones@linaro.org,
        rogerq@kernel.org, devicetree@vger.kernel.org, kristo@kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        s-anna@ti.com
References: <20220530073429.17514-1-r-ravikumar@ti.com>
 <20220530073429.17514-2-r-ravikumar@ti.com>
 <6c14aa95-00c4-960b-d71a-3967096f19cb@linaro.org>
 <20220530075157.43rbptnpgqqtbdho@uda0490373>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220530075157.43rbptnpgqqtbdho@uda0490373>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/05/2022 09:51, Rahul T R wrote:
> On 09:37-20220530, Krzysztof Kozlowski wrote:
>> On 30/05/2022 09:34, Rahul T R wrote:
>>> Add a pattern property for clock, also update the example with
>>> a clock node
>>>
>>> Signed-off-by: Rahul T R <r-ravikumar@ti.com>
>>> ---
>>>  .../bindings/mfd/ti,j721e-system-controller.yaml       | 10 ++++++++++
>>>  1 file changed, 10 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml b/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml
>>> index fa86691ebf16..290b22cab52f 100644
>>> --- a/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml
>>> +++ b/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml
>>> @@ -48,6 +48,10 @@ patternProperties:
>>>      description:
>>>        This is the SERDES lane control mux.
>>>  
>>> +  "^clock@[0-9a-f]+$":
>>> +    type: object
>>> +    $ref: /schemas/clock/ti,am654-ehrpwm-tbclk.yaml#
>>> +
>>
>> Thanks for the changes, but the question what is this remains. Clock
>> consumers use "clocks" property. Is this a clock controller (provider)
>> instead?
>>
>> Best regards,
>> Krzysztof
> 
> Hi Krzysztof,
> 
> Yes, this is a clock provider node, I will add the
> correct description and will also update the
> example with a clock consumer node that is using
> a clock from this

Thanks for the description. Skip the consumer example please, just
mention shortly what is this. If this is one clock, then node name is
correct. If there are more clocks inside, then the node name should be
"clock-controller".

Best regards,
Krzysztof
