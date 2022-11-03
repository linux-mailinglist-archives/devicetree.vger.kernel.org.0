Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 34B506185F7
	for <lists+devicetree@lfdr.de>; Thu,  3 Nov 2022 18:14:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231182AbiKCROH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Nov 2022 13:14:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37648 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232077AbiKCRNm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Nov 2022 13:13:42 -0400
Received: from mail-qk1-x72c.google.com (mail-qk1-x72c.google.com [IPv6:2607:f8b0:4864:20::72c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE7ED2F4
        for <devicetree@vger.kernel.org>; Thu,  3 Nov 2022 10:13:15 -0700 (PDT)
Received: by mail-qk1-x72c.google.com with SMTP id 8so1583764qka.1
        for <devicetree@vger.kernel.org>; Thu, 03 Nov 2022 10:13:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4eJyskW9+K78fQroM5Bn2Ie6Mo7Zxbt1SPQ7Dpaxt+4=;
        b=kKMrcMFNOfOBJNhfJOy6fCgt0ApZKAWJPz/4ZRKjRgQGaS/ztEUcAPtutiNO+j1olH
         wlEwQNzAc5TL8eg+HZBkG+rgI1o7rEei5e2IJY7dfk9CaCx/YC42afJo85EnPztkrCnh
         ahupjuUqVYL6CnsJF5K6CwWkBFEx1Np3UdedilHPRR6f8Z/TfqTedOyKyAXTVhAdsTvD
         mDF52sJtWNPjTIxiifWLFkuTvUPQ5OjxviJE0ddlVx9KBbMSxG8tZHWetEp8gIEfnH5N
         TOMnLBiKwV2dC8Jf6YN0j9e3yfUjKHv48RV3MxloiwNP3+K8z6blXp0ED2IKZ6PP25VP
         lluw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4eJyskW9+K78fQroM5Bn2Ie6Mo7Zxbt1SPQ7Dpaxt+4=;
        b=NTMm4pGQXdmCRK1w8uZQGCIT79KxwPyG2/gLqUAe1P6dxB7FdQnwvv3PNbuF2vAGSH
         n4AMCSCyf7s9fvjAcrwtEsE6h9OPfEbzkVYoxUMNVtNeFLxeZlzcWuYcos29Let1REwx
         gD1WP5psPtP/FwZ7oSBDyuox07tEDlZS+4lLAhO3aRM1ov69y6fB9uiCRE1sk2e1vLbb
         PfWObtAxmmLtfGKRRxUZTT0NgVjZqigqnwPxVWqwf99XGxWGUg2LOAVi1HyO+SqVBrRi
         VTH3Aw2vHeIgy2X+7pYduR03HDUz/5eqS3Zq5ZSq5dH11p41SXc+ASdC8k6r7xeRlsIu
         rYsA==
X-Gm-Message-State: ACrzQf0bhKcVWgZwfi53RwLGRyonzwImRSl/7/i0xJXsmcO3kifSP7x6
        6ws28qoxvhkbkD58MIbRkruw6w==
X-Google-Smtp-Source: AMsMyM6DgkBx/LzRRGpaZEoW6Qrba3LfoX0OMzkXj6W81fY9QnOy0K/OzlyOxwI3GuRnsXeaKN8jfA==
X-Received: by 2002:a05:620a:1e5:b0:6fa:299a:3fbb with SMTP id x5-20020a05620a01e500b006fa299a3fbbmr17570822qkn.185.1667495595015;
        Thu, 03 Nov 2022 10:13:15 -0700 (PDT)
Received: from ?IPV6:2601:586:5000:570:a35d:9f85:e3f7:d9fb? ([2601:586:5000:570:a35d:9f85:e3f7:d9fb])
        by smtp.gmail.com with ESMTPSA id l9-20020a05620a28c900b006cf38fd659asm1114445qkp.103.2022.11.03.10.13.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Nov 2022 10:13:14 -0700 (PDT)
Message-ID: <b4639726-eb2a-0ea6-bc0a-c2f95e18a620@linaro.org>
Date:   Thu, 3 Nov 2022 13:13:12 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 1/2] dt-bindings: rtc: m41t80: Convert text schema to YAML
 one
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>, devicetree@vger.kernel.org
Cc:     Alessandro Zummo <a.zummo@towertech.it>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-rtc@vger.kernel.org
References: <20221102225943.157344-1-marex@denx.de>
 <abbccd73-7e49-b70b-d552-c1ff9426ea8c@linaro.org>
 <b34ba792-ba15-14fd-9f1d-7b45c7ae3d39@denx.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <b34ba792-ba15-14fd-9f1d-7b45c7ae3d39@denx.de>
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

On 03/11/2022 12:44, Marek Vasut wrote:
> On 11/3/22 14:40, Krzysztof Kozlowski wrote:
> 
> [...]
> 
>>> diff --git a/Documentation/devicetree/bindings/rtc/rtc-m41t80.yaml b/Documentation/devicetree/bindings/rtc/rtc-m41t80.yaml
>>> new file mode 100644
>>> index 0000000000000..7f31a22caec9b
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/rtc/rtc-m41t80.yaml
>>
>> Filename based on compatibles (more or less), so could be:
>> st,m41t80.yaml
>> or:
>> st,m41txx.yaml
>>
>> The "rtc" name can be skipped as it is implied from subsystem folder,
>> unless st,m41txx is a name of some SoC?
> 
> [...]
> 
>>> +  reg:
>>> +    maxItems: 1
>>> +
>>> +  interrupts:
>>> +    maxItems: 1
>>> +
>>> +  "#clock-cells":
>>> +    const: 1
>>
>> Hm, why do you have it?
> 
> Because of the following warning:
> 
> $ make dt_binding_check 
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/rtc/rtc-m41t80.yaml
>    LINT    Documentation/devicetree/bindings
>    DTEX    Documentation/devicetree/bindings/rtc/rtc-m41t80.example.dts
>    CHKDT   Documentation/devicetree/bindings/processed-schema.json
> Documentation/devicetree/bindings/rtc/rtc-m41t80.yaml: properties: 
> '#clock-cells' is a dependency of 'clock-output-names'

So mention any changes from pure conversion in commit msg.

Best regards,
Krzysztof

