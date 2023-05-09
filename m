Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C2C686FC9E0
	for <lists+devicetree@lfdr.de>; Tue,  9 May 2023 17:08:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235925AbjEIPIb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 May 2023 11:08:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36074 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235769AbjEIPIa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 May 2023 11:08:30 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB4781FCF
        for <devicetree@vger.kernel.org>; Tue,  9 May 2023 08:08:29 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-965ddb2093bso791948466b.2
        for <devicetree@vger.kernel.org>; Tue, 09 May 2023 08:08:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683644908; x=1686236908;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vgIOK+WSkm8u4ycbcpHsh6OfJXx2YEwbiyPNt+ydCFM=;
        b=AOuEdQrq1BoayoSWbr8r9VW91SaFiVYVDYKbJGYeEFgOz8ehAWz2/B3P3QCgE1sdXK
         oppltgqeL/lyZ42rLL0ThUO7mM6BLqsAL41rJSmuwGTAgkyPaiZnXG3n6NboJS2Duaak
         422C9BMIj2X3HkvnM3nWHVea+m9Wb0DPpanTNcrp+twTpxGQzr8z57ZE3SqzbmYfPLiJ
         fQbzpMYiqOE9lCdTxslyrJUOZdAg6UAUoJ6MqHnS+SkgPYHGIA3r3YJFwYx1ikOJqZKf
         SI93k6d0emnfI/3ggn8okZyOWGPfrtZII8W/Urs0x1njMEni6xeVQumxRjk7rkaBvJTg
         GTXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683644908; x=1686236908;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vgIOK+WSkm8u4ycbcpHsh6OfJXx2YEwbiyPNt+ydCFM=;
        b=WaogcuAy0JwvC+qcHBiehpNRe/oqOWIgo6bFAwv7SLcf9MfuCNnXDsBr/JVJ6O8uX+
         EiDfbIm1aRyHP1kvakki+m3bIB22n6legHodSt0pLVBbojzzeJoWUSPJ6Jvu4yBqwHJM
         Dvmyz+X93cNW4x+nDp5JVoMWFBA4+5uapla5wGvxFT4iYOVljuWXjJvRvJq0RigQpSzM
         TJnZCmhA3OG9WF982H4VYYSdtQuzxMQpzr/fNmJg+hutDhZ6HuZD75IgvQQBgwnihms5
         c0ismYvMdnFHOFgrWfe5eCFlNqcKo0fYvwiJZzWPuKZkUldf0QS883qmzoOGi78L+MLr
         vz1Q==
X-Gm-Message-State: AC+VfDwAMLgpPMp/XP2B0pBc3HAad2k2OxgkqRaMCYyNfXjPbgSgVASo
        KClQJ7WzELpzsAcyPFs0ep70KJ3kaPj2XlS8jqI=
X-Google-Smtp-Source: ACHHUZ4u0n8zHbjQox8Y6aQE/1amO8tRW89SB/HOHh+lTB8mdeffQDl7v+xpQanCfh/yzQptKchDhw==
X-Received: by 2002:a17:906:5d16:b0:960:f1a6:69df with SMTP id g22-20020a1709065d1600b00960f1a669dfmr15278260ejt.36.1683644908384;
        Tue, 09 May 2023 08:08:28 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:d0d5:7818:2f46:5e76? ([2a02:810d:15c0:828:d0d5:7818:2f46:5e76])
        by smtp.gmail.com with ESMTPSA id ib10-20020a1709072c6a00b009531d9efcc4sm1425330ejc.133.2023.05.09.08.08.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 May 2023 08:08:27 -0700 (PDT)
Message-ID: <2f927eb1-9088-06b3-a641-b15f6951a087@linaro.org>
Date:   Tue, 9 May 2023 17:08:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: Suggestion regarding usage of <Volt, Amp> in yaml
To:     Krishna Kurapati PSSNV <quic_kriskura@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Pratham Pratap <quic_ppratap@quicinc.com>,
        Udipto Goswami <quic_ugoswami@quicinc.com>
References: <039b19fa-a497-f237-55b3-467b4eda27ea@quicinc.com>
 <6672ff2e-3f3a-a2fa-df82-57628884aabd@quicinc.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <6672ff2e-3f3a-a2fa-df82-57628884aabd@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/05/2023 13:12, Krishna Kurapati PSSNV wrote:
> 
> 
> On 5/9/2023 4:19 PM, Krishna Kurapati PSSNV wrote:
>> Hi Team,
>>
>>   We are trying to read an array of <Volt, Amp> values from DT and use 
>> it in one of our downstream drivers and needed to implement the same in 
>> yaml file.
>>
>> The below is the format we want to implement in our DT:
>>
>>    3           qcom,default-sink-caps = <5000 2000>, /* 5V , 2A */
>>    2                                    <3000 1500>,
>>    1                                    <2300 2500>;
>>
>>   Is there any ref/schema available for this kind of array ?

uint32-matrix

Best regards,
Krzysztof

