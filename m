Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 699915B6A77
	for <lists+devicetree@lfdr.de>; Tue, 13 Sep 2022 11:14:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231586AbiIMJOm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Sep 2022 05:14:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231681AbiIMJOf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Sep 2022 05:14:35 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D9FAB4D
        for <devicetree@vger.kernel.org>; Tue, 13 Sep 2022 02:14:29 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id bo13so3189704wrb.1
        for <devicetree@vger.kernel.org>; Tue, 13 Sep 2022 02:14:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=ADz4EBdBTL8CxlxcJQ2l0DOmRa/FEd/FQSURLghGpKs=;
        b=f7R8DlwEZd+tCooYZH9pOzPPuWNwzxLAmGOoHpyAk7FgxtE53aygIe2nTIU4u2wH3J
         OLbrCrlezxA469SUjDpv7kDkKecIS52WB+vTsKM3Gv2s8DCkI6s1aTboKymqoqo8bk+g
         3bdGfGAe5wcTPqGlg1bRxmc4LoTKK3uegVHP8sgVbuUqvkB20r6SWYdOaakAE7ACLxOL
         /YtPk1snmd8Lv/ZxdF+ubALF1lV4FT3XOJgU8a3wKY8QwqcYgdNZoQwLP/gveenCLFge
         R3K6UIhSFnacip5JMkF0mQmidkwhuG5kbpqkEJpx09Td4QlDxows5PASKZjwn2weGBrl
         QpaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=ADz4EBdBTL8CxlxcJQ2l0DOmRa/FEd/FQSURLghGpKs=;
        b=ZdT673syrmhuAmf/JzMIfi2zKY0x5H+EPHuBs1kK3Ypy8JnsIw8gfwka0Pk6rktxFQ
         lGaOo70YP+u4vKvO7qfvcNmGNMIx8DdZQL5ob7ubujtzersQhh1u/Km2DjM+VqtJz1Cg
         ukBkoEksm4BlQ160fqbn1f6hFkClBU2sgK57SSevumKi8Mpfh8qFzFQeKzD/5IUm589R
         myPauNiA9m5rHxw73DiWJJYoRlstb3bruDyvPxrQQWDu8ymkbxS9Href42rx5xkA5bBd
         4S7SPJRBC4PXvSxMBxyMRP1qR3L+gS50nlYQSIAi1Sgw00pcu94cqBDYJUvgJQv6tQ9h
         7bkw==
X-Gm-Message-State: ACgBeo2g+htTyrFV55r0UmeE09W5R8DJGtYUB38eKCaZcrttSy53l9r6
        ahBIsOpHihvcu8fwoBSy/0wFsQ==
X-Google-Smtp-Source: AA6agR6Qr1pIfesmTtiNwQNYRA8A2/+UWJlxlqNWlabOoxIAkS34EAXifLCa+9zBL82ePYUykfhrTQ==
X-Received: by 2002:a5d:5644:0:b0:22a:6b69:27f0 with SMTP id j4-20020a5d5644000000b0022a6b6927f0mr6897479wrw.650.1663060468233;
        Tue, 13 Sep 2022 02:14:28 -0700 (PDT)
Received: from [10.119.22.201] ([89.101.193.70])
        by smtp.gmail.com with ESMTPSA id r5-20020a1c4405000000b003a2e92edeccsm12968611wma.46.2022.09.13.02.14.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Sep 2022 02:14:27 -0700 (PDT)
Message-ID: <83c499c0-9600-5b41-6fa6-e1f8328bd66a@linaro.org>
Date:   Tue, 13 Sep 2022 11:14:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 1/9] dt-bindings: arm: Add support for DSB element
Content-Language: en-US
To:     Tao Zhang <quic_taozha@quicinc.com>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Konrad Dybcio <konradybcio@gmail.com>,
        Mike Leach <mike.leach@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Jinlong Mao <quic_jinlmao@quicinc.com>,
        Leo Yan <leo.yan@linaro.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Tingwei Zhang <quic_tingweiz@quicinc.com>,
        Yuanfang Zhang <quic_yuanfang@quicinc.com>,
        Trilok Soni <quic_tsoni@quicinc.com>,
        Hao Zhang <quic_hazha@quicinc.com>,
        linux-arm-msm@vger.kernel.org, bjorn.andersson@linaro.org
References: <1662626705-13097-1-git-send-email-quic_taozha@quicinc.com>
 <1662626705-13097-2-git-send-email-quic_taozha@quicinc.com>
 <e015754f-2f33-ab7d-4f18-e1bef39a8390@linaro.org>
 <05c64748-6a3b-fb0b-e6b7-3715f77de14f@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <05c64748-6a3b-fb0b-e6b7-3715f77de14f@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/09/2022 09:00, Tao Zhang wrote:

>>> +  qcom,dsb-elem-size:
>>> +    description: |
>>> +      Specifies the DSB element size supported by each monitor
>>> +      connected to the aggregator on each port. Should be specified
>>> +      in pairs (port, dsb element size).
>>> +    $ref: /schemas/types.yaml#/definitions/uint32-array
>> So it is rather uint32-matrix (need to describe the items subschema).
>> What about maxItems?
>>
>> Best regards,
>> Krzysztof
> 
> Yes, indeed it should be uint32-matrix here. I will update in the next 
> release.
> 
> The "maxItems" cannot be known explicitly because it depends on how many 
> DSB subunit TPDMs are connected to the TPDA input ports.
> 
> Usually the number of the items is 1 to several, but there is no limit 
> to its maximum value.

OK, thanks.


Best regards,
Krzysztof
