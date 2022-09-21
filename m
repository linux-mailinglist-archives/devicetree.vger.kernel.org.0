Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B18D95C03D4
	for <lists+devicetree@lfdr.de>; Wed, 21 Sep 2022 18:14:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229645AbiIUQOh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Sep 2022 12:14:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34166 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232301AbiIUQN2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Sep 2022 12:13:28 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88E2021A3
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 08:59:31 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id i26so9919879lfp.11
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 08:59:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=KUDU0doBWvkSMsSeaP+OU5Myg0FSSIaMLAg/J6BRRrQ=;
        b=slv4NKCqb/zqgJH7M3nKlgQg7LgbWHoZe5T/pPNeRXbgMm/Qwm1EpZb2Eg1Jj44imN
         aOa5Z2jYm2HUsJlTUGffkoZY2uH5iN46QV2M9/WHIspQnZkFSzrq/J/A95E0j5u69Un9
         WgekrImX8IUeP0badlm8CQdb6xr4nqTwSoFYDixJMtgXxxpiPsADqp2Zo87pO1ajmG7j
         mwYzk0CdwztEBK7XiP8IJ25ILOtCQvPtQ2OuMn/A6UJBfH10AebW3WfFwz6AM+PpVLOf
         EGug1gt+zgiIptzhs/ifeW479thnyoU/Ql+nl9lU5Jfs9jv0p/qf/UE8pmK1VP37MI7K
         uq+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=KUDU0doBWvkSMsSeaP+OU5Myg0FSSIaMLAg/J6BRRrQ=;
        b=KZo36ACE+wDPCujoTXbsECZIB9wgFGrKqxiERKJ8hD7MnUuPYUlkR4iSVsshZ/pnGK
         fGMCPId+FnaKMAnDZ/x+98AKnPnlYb7hrYBZzu/yVhp0Y7pLLSxDahl237QMZt7qX1UK
         BdyD6676+xLIR8w2TMBTYjORhrKSPPQhvX2QEr0J9nqrpj1mEr5dyt02ARYFgPKjezRJ
         tOtMGhrfTgLqdAlavum9eBFnR7oUluPdhHdh8MnAuZMbC5nG7RDUwdetkeR7XCCaxuH/
         Gksn7rlOOrNo2hv+MLVqPKbsSYNGM8OZ9rJGDFyNIqkjB1jVDk7JColqDdMi23fdGXaB
         SzSg==
X-Gm-Message-State: ACrzQf0fEhcHuS58chDe/05g59rn+kK62jAc2Nk0t06SfLI43YZwqOsn
        5l+lK2Qg0ZscMi3o77Ar0K0hb5vk1M1Flw==
X-Google-Smtp-Source: AMsMyM75m4N7MPBKvWthG+pu/YTa8pTbMdbwS4u/waTgyPE6eW8LRVa+KHqN6TUHDKl7neUPzVouXg==
X-Received: by 2002:a05:6512:1153:b0:49e:805:b473 with SMTP id m19-20020a056512115300b0049e0805b473mr10515858lfg.450.1663775881892;
        Wed, 21 Sep 2022 08:58:01 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id h6-20020a19ca46000000b0048b26d4bb64sm494752lfj.40.2022.09.21.08.58.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Sep 2022 08:58:01 -0700 (PDT)
Message-ID: <24190160-53f2-810d-bd23-c02958517c80@linaro.org>
Date:   Wed, 21 Sep 2022 17:57:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH V2 2/3] dt-bindings: display: panel: Add NewVision NV3051D
 bindings
Content-Language: en-US
To:     Chris Morgan <macromorgan@hotmail.com>
Cc:     Chris Morgan <macroalpha82@gmail.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        daniel@ffwll.ch, airlied@linux.ie, sam@ravnborg.org,
        thierry.reding@gmail.com
References: <20220920145905.20595-1-macroalpha82@gmail.com>
 <20220920145905.20595-3-macroalpha82@gmail.com>
 <e5de0c74-3ece-56c6-6c31-042e1117c10a@linaro.org>
 <SN6PR06MB534220AB227AA3BC5DB58741A54F9@SN6PR06MB5342.namprd06.prod.outlook.com>
 <ff2ee392-0f78-37d4-56b5-443e6e998443@linaro.org>
 <SN6PR06MB53420E8B1245EDFCB7547C69A54F9@SN6PR06MB5342.namprd06.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <SN6PR06MB53420E8B1245EDFCB7547C69A54F9@SN6PR06MB5342.namprd06.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/09/2022 17:50, Chris Morgan wrote:
> On Wed, Sep 21, 2022 at 05:21:19PM +0200, Krzysztof Kozlowski wrote:
>> On 21/09/2022 16:38, Chris Morgan wrote:
>>>>> +  compatible:
>>>>> +    items:
>>>>> +      - enum:
>>>>> +          - anbernic,rg353p-panel
>>>>
>>>> Are these vendor prefixs documented?
>>>
>>> Yes, they are in another patch series referenced in the cover letter.
>>> They were added for the Anbernic devicetrees and should (I believe)
>>> land in 6.1.
>>
>> OK... you still need to test your bindings. Your patch was clearly not
>> tested before sending. :(
> 
> I did: yamllint, make dt_binding_check (with DT_SCHEMA_FILES specified), and
> make dtbs_check (with DT_SCHEMA_FILES specified again). 

I have doubts. So if you say you did it, then you probably did not look
at the results... or whatever other reason the test was not effective,
because your binding cannot pass the dt_binding_check.

> That's the proper
> testing flow correct? In this case it's the pre-requisite that's causing
> the issue as I see on a pristine master tree I'm warned about the missing
> vendor prefix for anbernic. Should I wait for that to go upstream before
> I submit this again?

Not really. The testing fails on wrong compatible in example.

Best regards,
Krzysztof

