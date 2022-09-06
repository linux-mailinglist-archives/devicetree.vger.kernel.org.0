Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 935E25AE307
	for <lists+devicetree@lfdr.de>; Tue,  6 Sep 2022 10:40:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239649AbiIFIjS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Sep 2022 04:39:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37768 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239370AbiIFIiN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Sep 2022 04:38:13 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C47671BC2
        for <devicetree@vger.kernel.org>; Tue,  6 Sep 2022 01:36:20 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id u18so3947282lfo.8
        for <devicetree@vger.kernel.org>; Tue, 06 Sep 2022 01:36:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=tFTaLA+xpIJrxWMnNeVJLXjIoHG3xwURMaiC6XKOdzU=;
        b=rHeyG8Vpgr1wHZ+w7ve6CGe73zRl/gSsXKPxRszAqhKdkvCMG0QslpJFsPdTOBOV/0
         UxI6Liu7wGB6eoA+gTQvVd2HJh/Cr/Cbz3N4U/B7AOhsy7jyjfy/CipEToOo2ge7KIql
         CfbQE3IhSfxKnjs0DZrp5yTWl8jASogHeGZ/5zH0tnGkjW2ufGHWDVzXT+mMjxFB1zM5
         DUFa4YrjE+fT5nyIErtDtwgtSDgxcR+tGToK0mrDKoEBmAokgOd6GXbO69NNCUZC7h6Y
         PeFC84sEsZxzXybH4f4/gcXqFF9+ZhxHGAXsIWQmdV/Xp48019x4JKHL4P0tK0oYqvDa
         SJIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=tFTaLA+xpIJrxWMnNeVJLXjIoHG3xwURMaiC6XKOdzU=;
        b=NvRFwBWp/bamEqhoAt5PyH3MdQ7dFLGYPHhKcdetj/XepO2pEmOAukvF86TNFJ+bVk
         Ip4w3EYhwAe6Up7/UbemIWenIe4Lr/kaJHpsjuPMh6wiBNbFrNa+xYEWwgRPV0+hx8Wk
         HHvnpjfj92mkD1Eove4bLTiB52JmKo8igT9hNuOeFIgi1U/syY064TSuIB6l+qGdnJxQ
         aw+kjJVaM1QI51SY3BIkYDXj64TYUCqMb0ssQYQAzlg4Zx19LhkrPYtgVZd388dZ01tj
         3MJG/TkQno3Kzi4nTuoEKycgWJHUM05/qfJmXSlSjmyqD8Mghko/WXxdM/A1WeKHk4rc
         vGGQ==
X-Gm-Message-State: ACgBeo3hnE3GqIzdGdsEkjbPmMsKxIPT2eIt6qZb745iNGTWe5OpiVUR
        kxVeCThfhNylmvreB9B0aOsjPg==
X-Google-Smtp-Source: AA6agR4yUmh46SlmHRz2l4j4NOwkJPabbyDLjtN7DPAznNzkFLSIZaBb90PIYV2/VFIbVbQeZ6u0Jg==
X-Received: by 2002:a05:6512:158b:b0:48b:38:cff8 with SMTP id bp11-20020a056512158b00b0048b0038cff8mr16388208lfb.100.1662453376189;
        Tue, 06 Sep 2022 01:36:16 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id a3-20020a056512200300b0049306939413sm1590097lfb.211.2022.09.06.01.36.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Sep 2022 01:36:15 -0700 (PDT)
Message-ID: <2ffe1ad9-bce9-ff4c-f6f2-6473f4939a52@linaro.org>
Date:   Tue, 6 Sep 2022 10:36:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v7 1/2] dt-bindings: misc: fastrpc convert bindings to
 yaml
Content-Language: en-US
To:     Abel Vesa <abel.vesa@linaro.org>
Cc:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Amol Maheshwari <amahesh@qti.qualcomm.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        David Heidelberg <david@ixit.cz>
References: <20220905144554.1772073-1-abel.vesa@linaro.org>
 <3649a134-0ea7-b67c-8b5a-2971f090446c@linaro.org>
 <YxcFB4lEu16SXOyl@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <YxcFB4lEu16SXOyl@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/09/2022 10:29, Abel Vesa wrote:
> On 22-09-06 08:45:22, Krzysztof Kozlowski wrote:
>> On 05/09/2022 16:45, Abel Vesa wrote:
>>> Convert Qualcomm FastRPC bindings to yaml format, so that we could validate
>>> dt-entries correctly and any future additions can go into yaml format.
>>>
>>> Use compute-cb@ subnodes instead of just cb@.
>>>
>>> Also add qcom,non-secure-domain, qcom,glink-channels and
>>> qcom,smd-channels missing properties to make sure dtbs_check doesn't
>>> fail right off the bat.
>>
>> qcom,non-secure-domain is in original binding, so I don't understand why
>> it is being "added".
>>
> 
> Yeah, my bad, I should've added this line to the changes since v4.
> 
>>>
>>> Co-developed-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
>>> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
>>> Co-developed-by: David Heidelberg <david@ixit.cz>
>>> Signed-off-by: David Heidelberg <david@ixit.cz>
>>> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
>>> ---
>>>
>>> Changes since v6:
>>>  * renamed the parent node name in the example from smd-edge to glink-edge
>>>
>>>  .../devicetree/bindings/misc/qcom,fastrpc.txt |  88 -------------
>>>  .../bindings/misc/qcom,fastrpc.yaml           | 118 ++++++++++++++++++
>>
>> As you can see in Rob's bot report - the patchset introduces errors and
>> is not bisectable.
> 
> Please note that Rob's bot report is for v6.

I see report as a reply to this patch, so for v7. Why do you think it is v6?

> 
> v7 fixes the errors reported, by using glink-edge instead of smd-edge.
> 
> Looking at all QCOM SoCs that have fastrpc node in devicetree, they all
> seem to be using glink-edge.

I was not talking about these errors (they were separate issue). I am
talking about wrong path error.

> 
>>
>> You also need to fix qcom,glink-edge.yaml
>>
> 
> I don't see why, with the changes I made in v7, there are no errors
> anymore.

There are, but not from tooling. The error is wrong path. It should be
converted to proper schema $ref.

Best regards,
Krzysztof
