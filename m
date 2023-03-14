Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 03C586B97CC
	for <lists+devicetree@lfdr.de>; Tue, 14 Mar 2023 15:22:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229730AbjCNOW4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Mar 2023 10:22:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50692 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230471AbjCNOWw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Mar 2023 10:22:52 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 54E9CAA737
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 07:22:25 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id fd5so28845446edb.7
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 07:22:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678803741;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JMPBnoyWy+ISCoWrcxGKBDNM8UpVwIGAgm3AWSHUgZA=;
        b=qcVXhs809hiAYYDe8MPNtGgBTr/gtq5TAFdq/+2UAy/YtgDXwV06R6N4hCSdKHyDEc
         SmjQYJ8O6fKXMbQdDZ+t3CC9SgeyxJFfcL51nxyHLsnRZOKapbFQYO32zG9E3gNnl6li
         WiSiU4CRyrGhmMBIeVMx1psr/PYjDca20S1OpENDMN2mWMjlhdAlQ+BHnWKjC8B0fuXm
         8PRdI8VvJdrqzBHhPU8iywjc4No0/hGbZcIEo/bOYIaKKgg+UHYFyRNXdFtnJway/uc1
         5gAGC43Tf9fZiXROeLCZ0xfhC8whNBRQ7/nV+qBb4u6lZlbt8fa2oyj+yyS2QZIERWg+
         LZGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678803741;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JMPBnoyWy+ISCoWrcxGKBDNM8UpVwIGAgm3AWSHUgZA=;
        b=2hxrj0L2qCKMQWUkTHro0neC5dAMUSJLF2/hjrQRdgvONVVq3iZaTmnG7sJ8J0N+Jk
         4Iqm35LgFFjHCUzM0wlSGTFxdcR97oBG8W3CrrSD7kT1Kz4YUqNYNs9dF+Lce6LvPXBd
         mMkdLcSjLUsRLm2+0h8vusFekXRIlIcsBxSdHowahzNcZKS0szM447hPk9beqm5tf5UE
         IqpGQOw9ojMwi6PrvLuWZLedtpQvSoxW6ObmbJoGMGNntmks/dfiwvv6yO7Z85ei49jm
         6jkeAfAduV4PGQcn+ymgNpQ1TyrtEl2RriTB2SXUZyQ4E7SOe32QpRysGZCYyacQJqpk
         2+GQ==
X-Gm-Message-State: AO0yUKUN86x3ExAoeXIFpJmLMv7DusddIQCK/+1+mG0nnzWCA9r6aTYp
        kgBw/tsJB/u5CenMnpUWA4rrfw==
X-Google-Smtp-Source: AK7set+5b+1aLwLtpXfLIdQxOf5K4lpaZkLxyrWCI8xx3T8ZspnbOZxHhNgmSgj6GB4MAKVxJAolvw==
X-Received: by 2002:a17:906:8393:b0:8ae:f73e:233f with SMTP id p19-20020a170906839300b008aef73e233fmr3268925ejx.32.1678803741262;
        Tue, 14 Mar 2023 07:22:21 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:59be:4b3f:994b:e78c? ([2a02:810d:15c0:828:59be:4b3f:994b:e78c])
        by smtp.gmail.com with ESMTPSA id qk19-20020a1709077f9300b0092c8da1e5ecsm895863ejc.21.2023.03.14.07.22.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Mar 2023 07:22:20 -0700 (PDT)
Message-ID: <06468199-b7cf-113f-b8b7-89c196842538@linaro.org>
Date:   Tue, 14 Mar 2023 15:22:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v3 1/3] dt-bindings: i2c: mpc: Mark "fsl,timeout" as
 deprecated
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andi Shyti <andi.shyti@kernel.org>, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Wolfram Sang <wsa@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Chris Packham <chris.packham@alliedtelesis.co.nz>,
        Ryan Chen <ryan_chen@aspeedtech.com>
References: <20230312233613.303408-1-andi.shyti@kernel.org>
 <20230312233613.303408-2-andi.shyti@kernel.org>
 <49f0b7d9-475d-898d-29d2-7e7cdf07cb0b@linaro.org>
In-Reply-To: <49f0b7d9-475d-898d-29d2-7e7cdf07cb0b@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/03/2023 15:21, Krzysztof Kozlowski wrote:
> On 13/03/2023 00:36, Andi Shyti wrote:
>> Now we have the i2c-scl-clk-low-timeout-ms property defined in
>> the i2c schema.
>>
>> Mark "fsl,timeout" as deprecated and update the example.
>>
>> Signed-off-by: Andi Shyti <andi.shyti@kernel.org>
>> ---
>>  Documentation/devicetree/bindings/i2c/i2c-mpc.yaml | 3 ++-
>>  1 file changed, 2 insertions(+), 1 deletion(-)
>>
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

...

and unreviewed. Are you sure these are using same units? Old code used us.

Your example:
	i2c-scl-clk-low-timeout-ms = <10000>;

10s timeout?

Best regards,
Krzysztof

