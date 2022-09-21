Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 014E85BFCCB
	for <lists+devicetree@lfdr.de>; Wed, 21 Sep 2022 13:13:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230127AbiIULNg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Sep 2022 07:13:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52102 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230037AbiIULNc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Sep 2022 07:13:32 -0400
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A8C38B2E1
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 04:13:30 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id l12so6536670ljg.9
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 04:13:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=lfPaDvZl0fHH6rn8puMVcoMiT+eeT0X1tsZ/B7VR2+Y=;
        b=G2+xdwC9HD2+kvdQGyPDiSqAq0a5ql/RG4RhF64ckQhU1iswOGuKQJlXFRlkhbgwPn
         g26rB73GOqzN+HTCOFRhXfbUl4Vhc04oLQ1DdTwxEIVfyG0vB/aZ9DAb+9fJTp8CdzgX
         fynLnGBNGODUtSo+2FA45rGELhmHidrkr6HDWPhCX6hO6bkz+K1/cMOkqK2/+80+TMKe
         tqrZ5UplpDMshglktJZ8nKVIOv8ahj5zw4bWMq7WLEc0iMoV4On8gBmtipsSY7vFa3CJ
         l0pbURYWfgEXX+OEOcUrknTyIPqkPQs9AFyLFswyuQenWnAL9oTeEAADyRzfjTYH7a+4
         6lgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=lfPaDvZl0fHH6rn8puMVcoMiT+eeT0X1tsZ/B7VR2+Y=;
        b=iek4zQPrJF5Ye2xgwpVMx8XjWovvmzordrsMwvghgKMAxGykum43Pq5iqQKQfKmVGa
         bDUXXMc/puHnP4C718T05MSzCRm2kO/fNcSw/mc5qLB1WnGZaHz7i39s2tJqfB/PDS5Q
         psyA3UtOknC0Rm9UiDurO6M49u+E3+waLfaHf1IK60hM+UUnzCfvyD3EF9hWgCeeFt7y
         r+7NDAdKeFt6aaUVjiHQS9fJAOITZyph7Z9mmp5WsXtIhKUFA9g1IqCcngpnLhwTU0Bl
         AjermtRjmDVRGXl78/Dt9386CUqXYnRVFf54PT0GOEemf/S0xyyzx7guQoP7GzEGdcdW
         37Eg==
X-Gm-Message-State: ACrzQf0qvvDwenHLl3LXF5Ig62WY3PQr4Ip1nPeYoJDjv1XuAqSv1MBp
        b7LcxbOv19n1OMCKF00UC8NLHg==
X-Google-Smtp-Source: AMsMyM6919xzTTe6YBgZrcwGlc/Z99NkHRzObKYS0ULfa5sASVNawEef9+XwoL8PP257YyWbRC8gJA==
X-Received: by 2002:a2e:7314:0:b0:26a:ca18:60eb with SMTP id o20-20020a2e7314000000b0026aca1860ebmr8008812ljc.69.1663758808438;
        Wed, 21 Sep 2022 04:13:28 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id s16-20020a056512215000b0049493c14b17sm381439lfr.181.2022.09.21.04.13.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Sep 2022 04:13:27 -0700 (PDT)
Message-ID: <74c9c011-b0db-c838-e9bb-d732361ff799@linaro.org>
Date:   Wed, 21 Sep 2022 13:13:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH 2/2] mmc: dw_mmc-pltfm: socfpga: add method to configure
 clk-phase
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Dinh Nguyen <dinguyen@kernel.org>
Cc:     jh80.chung@samsung.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-mmc@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20220919181309.286611-1-dinguyen@kernel.org>
 <20220919181309.286611-2-dinguyen@kernel.org>
 <CAPDyKFoB7Z6kDOBd9rVLXU5yRQK7d5A-ut5CRroepbAfQpuByw@mail.gmail.com>
 <50c7d35b-f395-6421-1422-56e30a580318@kernel.org>
 <07c118cb-4daf-8e82-2969-1cff072ec52a@linaro.org>
 <CAPDyKFoQJsf4EAoQRO9hoKWug+QTX2Hw1ukFqhr0sNQCCwR8Bg@mail.gmail.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAPDyKFoQJsf4EAoQRO9hoKWug+QTX2Hw1ukFqhr0sNQCCwR8Bg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/09/2022 12:31, Ulf Hansson wrote:
>> Not in next-20220919.
> 
> Dinh is right!
> 
> It seems like both me and Krzysztof missed the already documented
> binding. Probably because the property is named like below and that I
> did "git grep clk-phase-sd" :-)
> 
> "^clk-phase-(legacy|sd-hs|mmc-(hs|hs[24]00|ddr52)|uhs-(sdr(12|25|50|104)|ddr50))$":

Too much trust in git grep. Thanks for finding it.

> 
>>
>>>
>>> Should I create a specific documentation just for
>>> "altr,socfpga-dw-mshc" and document "clk-phase-sd-hs"?
>>
>> All properties must be documented.
> 
> Yes, but as stated above, we should be okay in this case.
> 
>>
>>>
>>>>
>>>>> +       if (rc) {
>>>>> +               sys_mgr_base_addr =
>>>>> +                       altr_sysmgr_regmap_lookup_by_phandle(np, "altr,sysmgr-syscon");
>>>>
>>>> DT bindings?
>>>
>>> "altr,sysmgr-syscon" has already been documented in
>>> Documentation/devicetree/bindings/net/socfpga-dwmac.txt
>>
>> This is not documentation of nodes you are changing here and in patch 1.
>>
>> You linked altr,socfpga-stmmac and here you have altr,socfpga-dw-mshc...
> 
> Right.
> 
> I guess an option is to convert
> Documentation/devicetree/bindings/net/socfpga-dwmac.txt into the yaml
> based format and then reference that binding from
> synopsys-dw-mshc-common.yaml?

I did not look much inside, but isn't them entirely different devices
(net vs mmc)? If they are different, then such vendor-custom property
needs to appear in each bindings. The same as we have for other
syscon-like properties.

Best regards,
Krzysztof

