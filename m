Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A4F6172B95A
	for <lists+devicetree@lfdr.de>; Mon, 12 Jun 2023 09:57:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231477AbjFLH50 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Jun 2023 03:57:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34776 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234211AbjFLH4u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Jun 2023 03:56:50 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BDAD22D46
        for <devicetree@vger.kernel.org>; Mon, 12 Jun 2023 00:56:08 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-5148e4a2f17so7259610a12.1
        for <devicetree@vger.kernel.org>; Mon, 12 Jun 2023 00:56:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686556564; x=1689148564;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2OO0dwo12B/hkpE0cRnOkjAE+WFoL2CLbbQ1Uo/g99Y=;
        b=HZz72twC+VcRrx++oql7MFwp9DFHPRupK1rWqoC2P05MTWfGpczVimevKUVUDyZMXA
         R6JcqlU72KrT1t1MXB1TRjhVuLhUmYC4Jluk6AYvqgcArNRGHHqbQCa5TvGI/bxqhOIg
         ANG8OZzqV7vDPymqtHDvUwVVb8A3Do/Y+IPxqRRv5OlpNQsUo80TALALVyELuziHE7+4
         zCSDw80v/jZ/i9Pkz3MKwcsze+aqc6REfK9j3zJSjKLGYgwadha/52vrEJqLBYNFuq2R
         b6sgexU1cpqxHUvsCbFCYdnnDe6Grj8yE3l2dmVjwun3+WLTDlbkXJdMTXhF/VBGPK08
         au/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686556564; x=1689148564;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2OO0dwo12B/hkpE0cRnOkjAE+WFoL2CLbbQ1Uo/g99Y=;
        b=G16RtkVI4lwhxD+LvqKA5EoY6u4elYrUHxliuqZlDNNMMV+jmNA5cjE9ZVzq3i39w2
         eWfzCBOVUuYBXuMNA0p3g6Zdg4v1M33rFkl8Fu7Y0TLU8Qd+DAUrqEYQ7UPqTqxKbTDM
         HtIQkrI1K63YurGchJCp6TNEk6//8x3Kqhv/S7MVbldQ4f6EhKVIE/3wgmgNXJB4jIIz
         nn1IATwNd9ozwe1KxArfhPqt4iKKEWYGSBa2clZzlf/RLq40zajw9zr9kzDBO2gw/s9L
         zQ9/x5XtLICPK7q8rxmFvtKsqrZ+DNUOIudU3UzOiXN9w9Sh0dwoub+nN5BDbyQRRmPk
         tArA==
X-Gm-Message-State: AC+VfDyQSzipEBv/AnxMCEgZ6qo9LcpjMksCrV4CSos5V59zjdpvnsR3
        dopU0EfsQMMNIs5J0aYHxzA70uB7zaok3dhExAQ=
X-Google-Smtp-Source: ACHHUZ55O0TXsN7bgfQJqIq0U5Dm5VBwoIPhqV2RZ3vfaQwQz9KqPsdfyERsHjYYwJawx4fMJJop+Q==
X-Received: by 2002:a17:906:fe0a:b0:973:fe5d:ef71 with SMTP id wy10-20020a170906fe0a00b00973fe5def71mr8821085ejb.14.1686554255496;
        Mon, 12 Jun 2023 00:17:35 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id lj20-20020a170906f9d400b0094f23480619sm4828553ejb.172.2023.06.12.00.17.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jun 2023 00:17:35 -0700 (PDT)
Message-ID: <4e30870d-86e2-8536-8e0d-aab4ce5027d2@linaro.org>
Date:   Mon, 12 Jun 2023 09:17:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v12 1/2] spi: add loongson spi bindings
Content-Language: en-US
To:     zhuyinbo <zhuyinbo@loongson.cn>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Jianmin Lv <lvjianmin@loongson.cn>, wanghongliang@loongson.cn,
        Liu Peibao <liupeibao@loongson.cn>,
        loongson-kernel@lists.loongnix.cn
References: <20230608072819.25930-1-zhuyinbo@loongson.cn>
 <20230608072819.25930-2-zhuyinbo@loongson.cn>
 <6ebed84c-2b42-c981-7b3f-e71cc88e4c2c@linaro.org>
 <4bf747c4-b767-b20c-e00f-724b50f44edb@loongson.cn>
 <6bfc2a22-6901-0858-7b90-bc4c52c66810@linaro.org>
 <bd2d7830-3ab6-0906-b06a-83d3e0a96749@loongson.cn>
 <11ca2b90-544d-18c2-fb15-7909ca60507f@linaro.org>
 <f6d4ecb5-e9df-346e-4aab-772fd01689c8@loongson.cn>
 <a9952e76-1204-5bc7-7856-0c7f8a411d76@linaro.org>
 <9c94397d-1e31-02fa-bdbe-af888c72eac4@loongson.cn>
 <657f8d19-de83-8be6-4a9d-5f13b1df7383@linaro.org>
 <b0e5e13e-6746-bd90-2a49-31ee6dd3e8a2@loongson.cn>
 <84ccf4cc-072d-adbf-0361-95ceae13f333@linaro.org>
 <5d060cac-ff28-60e9-98a8-f2bd4d378455@loongson.cn>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <5d060cac-ff28-60e9-98a8-f2bd4d378455@loongson.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/06/2023 09:13, zhuyinbo wrote:
> 
> 
> 在 2023/6/10 上午12:45, Krzysztof Kozlowski 写道:
>> On 09/06/2023 05:13, zhuyinbo wrote:
>>>
>>>
>>> 在 2023/6/8 下午9:26, Krzysztof Kozlowski 写道:
>>>> On 08/06/2023 14:10, zhuyinbo wrote:
>>>>>
>>>>>
>>>>> 在 2023/6/8 下午7:45, Krzysztof Kozlowski 写道:
>>>>>> On 08/06/2023 13:42, zhuyinbo wrote:
>>>>>>> --- a/Documentation/devicetree/bindings/spi/loongson,ls2k-spi.yaml
>>>>>>> +++ b/Documentation/devicetree/bindings/spi/loongson,ls2k-spi.yaml
>>>>>>> @@ -16,6 +16,7 @@ properties:
>>>>>>>        compatible:
>>>>>>>          enum:
>>>>>>>            - loongson,ls2k1000-spi
>>>>>>> +      - loongson,ls2k0500-spi
>>>>>>
>>>>>> Aren't they compatible?
>>>>>>
>>>>>
>>>>>
>>>>> Are you saying that the spi driver is compatible with 2k0500 ?
>>>>
>>>> Didn't you say this through 11 previous revisions?
>>>
>>>
>>> Yes, did I understand your meaning incorrectly ?
>>
>> If they are compatible, then they are not part of one enum. They could
>> not be as this would easily fail in testing of your DTS.
>>
> 
> 
> The "loongson,ls2k0500-spi" wasn't a compatible in previous version and
> I will add "loongson,ls2k0500-spi" as a compatible in spi driver and
> added it as a part of the one enum in dt-binding.

No, because you claimed - if I understood correctly - that they are
compatible. Don't add fake entries to the driver.


Best regards,
Krzysztof

