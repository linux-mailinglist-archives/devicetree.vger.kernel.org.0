Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EEE4F4F9472
	for <lists+devicetree@lfdr.de>; Fri,  8 Apr 2022 13:49:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235114AbiDHLvJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Apr 2022 07:51:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36946 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232704AbiDHLvI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Apr 2022 07:51:08 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ECDBA217394
        for <devicetree@vger.kernel.org>; Fri,  8 Apr 2022 04:49:03 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id d7so9731423edn.11
        for <devicetree@vger.kernel.org>; Fri, 08 Apr 2022 04:49:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=he3gdObBOBoinobd6bETaG2orN7yh1mXFF6rOA4GggQ=;
        b=igbEum0h0bneYqp5ZVIe0c5/1vrQ8x3yXTwOQUhN7ejBCzqIjtSNqheea8HI9IA+ir
         5kxQ9j7xw4bALYjvc3IBxdahLmf2fjsOu76cSDshPwgLul0h0dOiUL6Tjhd1oZnnKUfP
         TwNn0dICJHXo44ixZj7h5/GyKe1TwRYUOxC8cUP8EPzh/IU+sjMBkYlyj+OTaPmo+0eP
         EF5nm02LnOvVJu08CDR1lGSBn70cfah1rM8JqWihYZppDCNQ+hPS9jHPkVVseEFszO49
         lOX5NhIkE04pAoRtUlQLBStMVVULzaSIcetB3l1xg0hho8kjIZhXmJ9DPzQT1Hhbtn86
         bfiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=he3gdObBOBoinobd6bETaG2orN7yh1mXFF6rOA4GggQ=;
        b=lcjOrKHtltjUC0/HkumGZySsSgbR7K7O/5YN+rcO/yjn83PSB+Z3AL/osbv9C2+BRA
         hnjBqZZOx3CDa7fKqSOdOwYhGHDQ8l/X6iNXKeEAe7Gk37Cm80tfuefdev+kfiBQWDuf
         z+Tm1o1pTGtgukT5wd9FpKdWe4oJunzOEvLn/cXQfVZHhhn7alWahBbXSY40CsX2tba/
         LkbZqpvSdnRPC+kCwLB8j7GSWZFKg6DzEAxb0jmeKgU92kBkasx9avF+llRZaqarArHj
         nvmJwO3yqdHEUpYQmDwVwxDb0uOenhxsD9BpvcxxFaxHUKrMKg7QeceJrXjdF4LTEtfy
         OWYg==
X-Gm-Message-State: AOAM530/vFjSIhtOSKQSKZ4IKUdnO5xxX1/Iqi6baIKyo7EbfBubuxY0
        Xw1NGCVeCD3Fff525e+2ynKxaQ==
X-Google-Smtp-Source: ABdhPJxdwi31EfPDB0YNNE36knwLNszHrlfTbQLlYH+xudC85hES0Ah3kL8bq7rqTOWxg1QWmV1wpQ==
X-Received: by 2002:a05:6402:202a:b0:41c:d9b0:e519 with SMTP id ay10-20020a056402202a00b0041cd9b0e519mr18716253edb.361.1649418542587;
        Fri, 08 Apr 2022 04:49:02 -0700 (PDT)
Received: from [192.168.0.188] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id k26-20020a056402049a00b004197b0867e0sm10349194edv.42.2022.04.08.04.49.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Apr 2022 04:49:02 -0700 (PDT)
Message-ID: <0ef8f2c3-fd16-041b-3304-b167a2a36ff9@linaro.org>
Date:   Fri, 8 Apr 2022 13:49:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH V2 01/15] dt-bindings: cpufreq: mediatek: Add MediaTek CCI
 property
Content-Language: en-US
To:     Rex-BC Chen <rex-bc.chen@mediatek.com>, rafael@kernel.org,
        viresh.kumar@linaro.org, robh+dt@kernel.org, krzk+dt@kernel.org
Cc:     matthias.bgg@gmail.com, jia-wei.chang@mediatek.com,
        roger.lu@mediatek.com, hsinyi@google.com, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com
References: <20220408045908.21671-1-rex-bc.chen@mediatek.com>
 <20220408045908.21671-2-rex-bc.chen@mediatek.com>
 <a171f33c-cda1-8602-ac67-93076b676578@linaro.org>
 <8d466903d42dbc823f4d0a245378d983ab904435.camel@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <8d466903d42dbc823f4d0a245378d983ab904435.camel@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/04/2022 12:24, Rex-BC Chen wrote:
>>
>> You need to describe the type. I am a bit confused whether this is a
>> cci
>> (so cci-control-port property?) or an interconnect (so interconnect
>> property)... It does not look like a generic property, so you need
>> vendor prefix.
> 
> Hello Krzysztof,
> 
> Thanks for your review.
> 
> Yes, this cci is not arm's cci (cci-control-port property), and it's
> mediatek's cci. I will revise this name to "mtk-cci" in next version.

Vendor is "mediatek" and comma comes after it. See devicetree spec
paragraph 2.3.1.

> 
>>
>>> +       For details, please refer to
>>> +       Documentation/devicetree/bindings/devfreq/mtk-cci.yaml
>>
>> Such file does not exist.
> 
> This mediatek cci is still upstreaming in this patch:
> message-id:20220408052150.22536-2-johnson.wang@mediatek.com
> 
> Do you have suggestion that I should put this reference?

> Or I just remove it and describe the mediatek cci in detail?

It's ok, but you need to keep path/filename updated.


Best regards,
Krzysztof
