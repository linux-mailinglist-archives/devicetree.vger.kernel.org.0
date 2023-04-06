Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9091B6D9DE9
	for <lists+devicetree@lfdr.de>; Thu,  6 Apr 2023 18:50:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239239AbjDFQu6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Apr 2023 12:50:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36008 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238128AbjDFQu5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Apr 2023 12:50:57 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67B48AA
        for <devicetree@vger.kernel.org>; Thu,  6 Apr 2023 09:50:56 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id qb20so2910111ejc.6
        for <devicetree@vger.kernel.org>; Thu, 06 Apr 2023 09:50:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680799855;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nEEb0vXytaBgAhoyEGLzDTpUDIw1OoDVMgFbGhAvTic=;
        b=v14Uw7nAprto8hu0UwH0MFBkncJz2aZvs0CZMm6NdA5+eXKapEN+DWTXa3ULa8BO+T
         SWA0WdOcwPevgnX+QT5WKlktDwQKsdabbTeQM7QW3z0XwjSeNTWKmyTFhAUC0h9XKOFp
         F/sIYWEOFr1+0VpOa85F9TWRNrSKmgD34ALDFUW9q2LY6BhWBBpv5d0sG5haG8reBI3F
         984AfM59O4KeGA0pptlo8K1fgZ87bPD/wYO3IWHrtwn2B48ZXS2DAzTxegTt1hhgOsFi
         LpqouiEbctCJtlpzxDJ4spxnKpSQgYGFucp52y0N6bz+yPec3imAOkAIT8EDEc/THZQO
         g8gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680799855;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nEEb0vXytaBgAhoyEGLzDTpUDIw1OoDVMgFbGhAvTic=;
        b=luZr76ja8lSnwvlqYgc52aPtUBHgv5SP5jiVkH6ON7A+e6gwJldaE4Vd1EZy3i0oNp
         1vd9Hq6Xwn2qeD2lbBJDODsozWHnZWiO6iCOPMLPFzc3FlrJCBx9LPTD6S6uwrr4YYvW
         lxybwMHwo66NwpgRLwxjNj0ABh3qLw4u2AD/k/2NoeV6st2lygsPTMD3TgWTdHEUynCS
         hvxk++euOfb/u0JlQZjbWONMloSwsBNmdAczbpFFNN4g9RpGd2ivT+zdgnuf9y6kh0rY
         LPsbIMZM8CXVSlkveRsEJ/dnGWpkAm98tmzF2SvwF+bpXBOP8wjq8ex/fSlcDImrri6u
         wG2w==
X-Gm-Message-State: AAQBX9fJjXyI09otrjNPuAciygo3rF8XInX6L+gDcNqRbo5/JQl5adCW
        PAjmro/sXLtL3WqwjigMyQ6z8g==
X-Google-Smtp-Source: AKy350abJmna6VO/eI3M82NE0QQxWsSYaexna7WKmbO3/KMHw+XgFPJZgIvoURuqm/Gyx18Kj1dWDg==
X-Received: by 2002:a17:906:14c9:b0:931:41af:8ecb with SMTP id y9-20020a17090614c900b0093141af8ecbmr6916726ejc.49.1680799854808;
        Thu, 06 Apr 2023 09:50:54 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:49e6:bb8c:a05b:c4ed? ([2a02:810d:15c0:828:49e6:bb8c:a05b:c4ed])
        by smtp.gmail.com with ESMTPSA id m9-20020a170906848900b00947a97a42f2sm1025704ejx.103.2023.04.06.09.50.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Apr 2023 09:50:54 -0700 (PDT)
Message-ID: <14634180-aca9-a3e9-d1af-dfaca77b42ee@linaro.org>
Date:   Thu, 6 Apr 2023 18:50:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2 2/2] dt-bindings: cisco: document the CrayAR
 compatibles
Content-Language: en-US
To:     "Daniel Walker (danielwa)" <danielwa@cisco.com>
Cc:     "xe-linux-external(mailer list)" <xe-linux-external@cisco.com>,
        "Marcin Wierzbicki -X (mawierzb - GLOBALLOGIC INC at Cisco)" 
        <mawierzb@cisco.com>, Rob Herring <robh+dt@kernel.org>,
        Daniel Walker <dwalker@fifo99.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20230405223028.1268141-2-danielwa@cisco.com>
 <6a9f041b-1c35-4691-8451-7119cd05ed17@linaro.org>
 <20230406151512.GL40472@zorba>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230406151512.GL40472@zorba>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/04/2023 17:15, Daniel Walker (danielwa) wrote:
> On Thu, Apr 06, 2023 at 09:12:34AM +0200, Krzysztof Kozlowski wrote:
>> On 06/04/2023 00:30, Daniel Walker wrote:
>>> Describe the compatible properties for the Cisco CrayAR SoC.
>>>
>>> Cc: xe-linux-external@cisco.com
>>> Cc: Marcin Wierzbicki <mawierzb@cisco.com>
>>> Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>> Cc: Rob Herring <robh+dt@kernel.org>
>>
>> Please drop the autogenerated scripts/get_maintainer.pl CC-entries from
>> commit msg. There is no single need to store automated output of
>> get_maintainers.pl in the git log. It can be easily re-created at any
>> given time, thus its presence in the git history is redundant and
>> obfuscates the log.
>>
>> If you need it for your own patch management purposes, keep it under the
>> --- separator.
>  
> I added these, so it's not script output. I can move them under the separator.
> The reason for that was to make sure people who commented get Cc'd.

So read my message again. There is no reason to add these entries for
people who are listed as maintainers, because you are supposed to CC
maintainers always.

> 
>>> Signed-off-by: Daniel Walker <dwalker@fifo99.com>
>>> ---
>>>  .../devicetree/bindings/arm/cisco/crayar.yaml | 27 +++++++++++++++++++
>>>  1 file changed, 27 insertions(+)
>>>  create mode 100644 Documentation/devicetree/bindings/arm/cisco/crayar.yaml
>>>
>>> diff --git a/Documentation/devicetree/bindings/arm/cisco/crayar.yaml b/Documentation/devicetree/bindings/arm/cisco/crayar.yaml
>>> new file mode 100644
>>> index 000000000000..0ee4e6313ab0
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/arm/cisco/crayar.yaml
>>
>> How many (or not many) platforms do you expect from Cisco? We mostly
>> have one file per SoC manufacturer.
> 
> We have two SoC's one called CrayAR and another called Craw. I've submitted the
> Craw dts file before , but I've not resubmitted it. Under Craw I think we have
> at least two, but more likely five variations. CrayAR we have one variation with
> at least one more planned.
> 
> So we would plan over time to add two dtsi files and three to four dts files to
> this directory. Then more over time.

So just keep them in one file maybe.

Best regards,
Krzysztof

