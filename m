Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BF30A7495D1
	for <lists+devicetree@lfdr.de>; Thu,  6 Jul 2023 08:41:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232538AbjGFGlU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Jul 2023 02:41:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56892 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233414AbjGFGlS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Jul 2023 02:41:18 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9876199E
        for <devicetree@vger.kernel.org>; Wed,  5 Jul 2023 23:41:07 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-51d805cb33aso523471a12.3
        for <devicetree@vger.kernel.org>; Wed, 05 Jul 2023 23:41:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688625666; x=1691217666;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=U84wbfrFvukSkpFpAQ72YzvXPcoC4HG//efb9ypi4vY=;
        b=FpVYqGF1XYTT/KAyacWSxk+i9pccD/FbD7y1brzTGwaLWI3Ciyw2T7Qii88QEHheZp
         BV4nAkn2mLDQl2R2hU8JYUqPt0x3bundqk3zAE7y9HNgAIhsOUcMoJecaS9y22XLWMXK
         phg68tYmFdkTiwPjTKqDUj9Jsrbm6Qk95mIzzeZHmHSAdpAcn8S9m7SSpU43VteqQJ+7
         NEoaoB0jRjNzHfX1kWnFCnfYij4XWZ72QPaFiMThF1Dh3UIADMQfvt+YjunZW3KJBd9Z
         G8RsmTFaMrQVXjUx9rcL2SH/rl+jPhRQr5kDFMXWuZzLPEznDLHl8IchNOspMMqrLK8m
         mXZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688625666; x=1691217666;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=U84wbfrFvukSkpFpAQ72YzvXPcoC4HG//efb9ypi4vY=;
        b=YvZkeQrRx4aIlktD7VJyFD889iu1YlaxgnoQWooEpzhLBUDLjOqDFjFe/UvYbbqCzy
         I2yoXX5NFC/IbxXlbnig3uA653C26OrBdn4ecZN+ak2jKyAtL1+BQNY6R2T5Fv8DWaft
         1dfqjAZr/AVi4W1v/G5sAXjc0wmVZ25qYIux/3BFONZTqXxyB7uujF3HIA276+bMRvuA
         b65hlPVgZDvehTVALOnsaE0IACxZ59P2dCYzODa/+7FCdjmUH7hxgZXSe9ZFw7xBT5b9
         JkjFAok45Xt3D2zil8MJd8zNBNVKiYCtoO6ybGUMTbwO8KdX/ZsWzdKi9ajSOh2/mwH+
         0lfg==
X-Gm-Message-State: ABy/qLabr6tcl94PEEwXnXbLb9PpBf0GQjBaas19RshtMokiYxzMAdI4
        bhAdVqRMd8eXJen/KQxStCXqtA==
X-Google-Smtp-Source: APBJJlGAra4B4N5W2yCWqVSgPSOS1FW5fd9tCfP5Cfaf2uSNLqrJHV9eQ5pbf0hv2OsdJjoh+ZQlXg==
X-Received: by 2002:a05:6402:184e:b0:514:9929:1b01 with SMTP id v14-20020a056402184e00b0051499291b01mr774186edy.8.1688625666179;
        Wed, 05 Jul 2023 23:41:06 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id l26-20020aa7c3da000000b0051df6c2bb7asm376111edr.38.2023.07.05.23.41.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Jul 2023 23:41:05 -0700 (PDT)
Message-ID: <df87a707-ed17-0629-308a-d9435ebd3227@linaro.org>
Date:   Thu, 6 Jul 2023 08:41:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [External] Re: [PATCH v3 4/4] dt-bindings: firmware: Document
 ffitbl binding
Content-Language: en-US
To:     =?UTF-8?B?6L+Q6L6J5bSU?= <cuiyunhui@bytedance.com>
Cc:     Conor Dooley <conor@kernel.org>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, sunilvl@ventanamicro.com,
        ardb@kernel.org, palmer@dabbelt.com, paul.walmsley@sifive.com,
        aou@eecs.berkeley.edu, linux-riscv@lists.infradead.org,
        rminnich@gmail.com, mark.rutland@arm.com, lpieralisi@kernel.org,
        rafael@kernel.org, lenb@kernel.org, jdelvare@suse.com,
        yc.hung@mediatek.com, angelogioacchino.delregno@collabora.com,
        allen-kh.cheng@mediatek.com, pierre-louis.bossart@linux.intel.com,
        tinghan.shen@mediatek.com, linux-kernel@vger.kernel.org,
        linux-acpi@vger.kernel.org, geshijian@bytedance.com,
        weidong.wd@bytedance.com
References: <20230705114251.661-1-cuiyunhui@bytedance.com>
 <20230705114251.661-5-cuiyunhui@bytedance.com>
 <20230705-oblivious-unstuffed-8e028a5b243c@spud>
 <CAEEQ3wmG1OiE3GFqQp9SP+oKUbTfuTPx=rNGd-sjKsW7vv3bew@mail.gmail.com>
 <07f88065-b9ca-5233-4048-5e61e1cdbe0c@linaro.org>
 <CAEEQ3wmY3YrdBEZ_V0+rC-3zbMLRgnL3xt-RtwzPxev5P2h48g@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAEEQ3wmY3YrdBEZ_V0+rC-3zbMLRgnL3xt-RtwzPxev5P2h48g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/07/2023 08:24, 运辉崔 wrote:
> Hi Krzysztof,
> 
> On Thu, Jul 6, 2023 at 2:01 PM Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>
>> On 06/07/2023 05:43, 运辉崔 wrote:
>>> Hi Conor,
>>>
>>> Added dts Maintainers,
>>>
>>> On Wed, Jul 5, 2023 at 11:07 PM Conor Dooley <conor@kernel.org> wrote:
>>>>
>>>> Hey,
>>>>
>>>> On Wed, Jul 05, 2023 at 07:42:51PM +0800, Yunhui Cui wrote:
>>>>> Add the description for ffitbl subnode.
>>>>>
>>>>> Signed-off-by: Yunhui Cui <cuiyunhui@bytedance.com>
>>>>> ---
>>>>>  .../devicetree/bindings/firmware/ffitbl.txt   | 27 +++++++++++++++++++
>>>>>  MAINTAINERS                                   |  1 +
>>>>>  2 files changed, 28 insertions(+)
>>>>>  create mode 100644 Documentation/devicetree/bindings/firmware/ffitbl.txt
>>>>>
>>>>> diff --git a/Documentation/devicetree/bindings/firmware/ffitbl.txt b/Documentation/devicetree/bindings/firmware/ffitbl.txt
>>>>> new file mode 100644
>>>>> index 000000000000..c42368626199
>>>>> --- /dev/null
>>>>> +++ b/Documentation/devicetree/bindings/firmware/ffitbl.txt
>>>>
>>>> Firstly, new dt-bindings need to be done in yaml, not in text form.
>>>> Secondly, you didn't re-run get_maintainer.pl after adding this binding,
>>>> so you have not CCed any of the other dt-binding maintainers nor the
>>>> devicetree mailing list.
>>>
>>> Re-run get_maintainer.pl and added maintainers into the maillist.
>>
>>
>> This does not work like this.
>>
>> Please use scripts/get_maintainers.pl to get a list of necessary people
>> and lists to CC.  It might happen, that command when run on an older
>> kernel, gives you outdated entries.  Therefore please be sure you base
>> your patches on recent Linux kernel.
>>
>> You missed at least DT list (maybe more), so this won't be tested by our
>> tools. Performing review on untested code might be a waste of time, thus
>> I will skip this patch entirely till you follow the process allowing the
>> patch to be tested.
>>
>> Please kindly resend and include all necessary To/Cc entries.
> 
> This set of patches is applied on the tag next-20230706, and to
> generate the mail list by scripts/get_maintainers.pl on the tag
> 
> ./scripts/get_maintainer.pl
> ../riscv/linux/v3-0004-dt-bindings-firmware-Document-ffitbl-binding.patch
> Yunhui Cui cuiyunhui@bytedance.com (maintainer:FDT FIRMWARE INTERFACE (FFI))
> Rob Herring <robh+dt@kernel.org> (maintainer:OPEN FIRMWARE AND
> FLATTENED DEVICE TREE BINDINGS)
> Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> (maintainer:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS)
> Conor Dooley <conor+dt@kernel.org> (maintainer:OPEN FIRMWARE AND
> FLATTENED DEVICE TREE BINDINGS)
> devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED
> DEVICE TREE BINDINGS)
> linux-kernel@vger.kernel.org (open list)
> 
> What am I missing ?

I did not receive the original patch. Neither did Patchwork. You cannot
just reply to some comment and hope it will fix something. We don't have
this patch simply.



Best regards,
Krzysztof

