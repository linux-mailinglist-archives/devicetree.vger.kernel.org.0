Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 926494C6C7B
	for <lists+devicetree@lfdr.de>; Mon, 28 Feb 2022 13:29:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236050AbiB1M37 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Feb 2022 07:29:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42782 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234703AbiB1M35 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Feb 2022 07:29:57 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A4743B3F7
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 04:29:18 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id p4so5596581wmg.1
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 04:29:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=3m/8LVMO7LTCpBsXxemwAuPVvDYz1WN+cMlM6yA9kxY=;
        b=nubbkVKJOt6pPpUFPAXzvawuT0KMOTnmR/ArsjURuO5qHhCCN17RPcNWJ9+0SYtMJw
         c9PXpxXGgga/tAjg8fk12Gbzl0bzlQ+fi7K0CjgdXaFA/zBw0WfMWVPm/PRkZujbv5nr
         C29aQhoZyJaYWagAAnOzdIug7+MVcueFunAXbZmzZNg5GUE8ieTK7Xp6jg6wjLlnu4Cb
         T8+rbvrIBMyLwYiuFgYIdyZQB7+hrafJxwlTVDiK6moHXER+mNHvnPgEvNibeGXCV7eP
         65s5Q5yKrDtTHlgysiZFSoCG70FE+hfiC0RGjlzheILdAG0O6sGJJGeXBWTx68QvHJ0E
         zz1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=3m/8LVMO7LTCpBsXxemwAuPVvDYz1WN+cMlM6yA9kxY=;
        b=G5HR6T+vnKOGlKvS2AIjAaKMOobxIllzKQpZlCs2iSUz9usKszBrxoao1IXkQ/07h9
         IyfeX/0FHzoirXH8mmdngdaXXpQ1l+amlr2RuNcKbA2mLl983Zxd23zIQ+mQAh3jPF8n
         29Ug+Qze7tgzwCiaWSM7HM0jrkwV7ByaBiiDWKq30qtSAkd67T6TwVnhOiUf7NUz9KWZ
         nXq4gvBXtZ3FDwBybN5KBYjENX3B0DQvKbYbarlqjl3wEvEXJ3bVqj4h/JwlZaIjJJgO
         g/Z/awPQvn9lBZrAph1fmmf1yNza1KHELYgnPlHwFAAN6/sNjaJq1a+QCc5sAu0jrHJj
         0OcQ==
X-Gm-Message-State: AOAM531JY8ISkGNI5Fo2HMpqQaqNBCx5uGCRdpJ6SuZrx2zKZAOv+gNP
        x41RNhEJNu1MIcZkpvPf3U6DfQ==
X-Google-Smtp-Source: ABdhPJz8AQUOEnzRhQuV/keDUymZAQniNbbLWFQoEgLvxUmE0V8buk2RP4ZVIzBAn3hWjwJgM7Xd+A==
X-Received: by 2002:a7b:c207:0:b0:381:6db7:d053 with SMTP id x7-20020a7bc207000000b003816db7d053mr2573790wmi.137.1646051356865;
        Mon, 28 Feb 2022 04:29:16 -0800 (PST)
Received: from [192.168.86.34] (cpc90716-aztw32-2-0-cust825.18-1.cable.virginm.net. [86.26.103.58])
        by smtp.googlemail.com with ESMTPSA id m34-20020a05600c3b2200b00380e3225af9sm11206727wms.0.2022.02.28.04.29.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Feb 2022 04:29:16 -0800 (PST)
Message-ID: <bbd76211-ffe4-81ea-44ac-c6b148dc1e59@linaro.org>
Date:   Mon, 28 Feb 2022 12:29:15 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2 2/3] dt-bindings: soundwire: qcom: document optional
 wake irq
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>
Cc:     vkoul@kernel.org, yung-chuan.liao@linux.intel.com,
        pierre-louis.bossart@linux.intel.com, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org,
        quic_srivasam@quicinc.com
References: <20220224133125.6674-1-srinivas.kandagatla@linaro.org>
 <20220224133125.6674-3-srinivas.kandagatla@linaro.org>
 <Yhk6L+Z7cOs5z6hr@robh.at.kernel.org>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <Yhk6L+Z7cOs5z6hr@robh.at.kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 25/02/2022 20:21, Rob Herring wrote:
> On Thu, Feb 24, 2022 at 01:31:24PM +0000, Srinivas Kandagatla wrote:
>> Wake IRQ is optional interrupt that can be wired up on SoundWire controller
>> instances like RX path along with MBHC(Multi Button Headset connection).
>> Document this in bindings.
>>
>> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
>> ---
>>   Documentation/devicetree/bindings/soundwire/qcom,sdw.txt | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/Documentation/devicetree/bindings/soundwire/qcom,sdw.txt b/Documentation/devicetree/bindings/soundwire/qcom,sdw.txt
>> index b93a2b3e029d..bade68f429b0 100644
>> --- a/Documentation/devicetree/bindings/soundwire/qcom,sdw.txt
>> +++ b/Documentation/devicetree/bindings/soundwire/qcom,sdw.txt
>> @@ -22,7 +22,7 @@ board specific bus parameters.
>>   - interrupts:
>>   	Usage: required
>>   	Value type: <prop-encoded-array>
>> -	Definition: should specify the SoundWire Controller IRQ
>> +	Definition: should specify the SoundWire Controller and optional wake IRQ
> 
> What about 'wakeup-source' property?

Thanks for the hint, I was not aware of this flag. Will add this in next 
version.

--srini
> 
>>   
>>   - clock-names:
>>   	Usage: required
>> -- 
>> 2.21.0
>>
>>
