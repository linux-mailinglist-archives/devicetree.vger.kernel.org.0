Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DC6AB71A2AD
	for <lists+devicetree@lfdr.de>; Thu,  1 Jun 2023 17:29:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233829AbjFAP2O (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Jun 2023 11:28:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37498 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235078AbjFAP2C (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Jun 2023 11:28:02 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F68C1721
        for <devicetree@vger.kernel.org>; Thu,  1 Jun 2023 08:27:43 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-51480d3e161so1573705a12.3
        for <devicetree@vger.kernel.org>; Thu, 01 Jun 2023 08:27:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685633243; x=1688225243;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=diFbsdZV2bNyGNHCVW2LsRJs05sLUshqi74Gn2Boo7g=;
        b=u07uR3oga0LW8RARkWrzk6zEKBC4+QlgbedEutna1tZnh5VL90CbXFUpDt5W/Vvq7J
         SMbFyUiFBVxxIO7EsteZp48OtJ3d8cvmroQolz4wLP3k7+//vvIYnojUlnN7rC3/xElz
         RNdL+axV0Hj+xRV7lKq06aXo7FMdh6luL5eiNEsy+7PK60JwLQS3YVUh7UfnEPbkLAK7
         IjKChpes5vMGLhmwIbLsT8z7wTs/p1J+uMPfPH69RzDCpRCr+yEPnq0Oi7xyBxsolbY1
         qgwEs3MWqCvwfdY4vdCgXjpGS1cf0lymOOdG11R5/YAczEthV/Kq/sPXP+UL2ruosfie
         1eoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685633243; x=1688225243;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=diFbsdZV2bNyGNHCVW2LsRJs05sLUshqi74Gn2Boo7g=;
        b=OJpvUjDJhvr7vu8jkE9v58cla5b+aWC+01DQCMHo/jTmX5P2PWoecqMKDpz4WQJRhd
         DTg+8nI4dYQtBzsTmGy4PnRkPN0/Ly7XExvzUUcQfxA78Y+xt4C+m1twMbrIMn6UQVOl
         aiVYfDSvzAN9V8X+Eg+aqD9F8Yym2n0kVg6OwIwmss7U6lVwXFr20f4yLqsCWdPqbbOJ
         RT0jGOErpRPoA5MmDEZoWCdOX4ifcM7HD6+28YuDcCj0VD17dk1OL7DsNqUSUtERmvQt
         PsXn6wCayAItB0nPONwePiOcKr09XvmpzVkwdBsgkSc3R+pvkyAa9xBQbiMOvBDEHAor
         RSgA==
X-Gm-Message-State: AC+VfDz/LWNgY5Z7CKANSvEQ3qjoFMl5Gbdzo8B2rrzS/tqHeKPOztLc
        7+SyqqAPsaGmMrmjmEojZ++Cqg==
X-Google-Smtp-Source: ACHHUZ6aNXo+ri1QDqhXiTolmEsw5DZDKU2sR6eWV9FGSQBXUTBeQun4e6I97sKz0YhBvlqq1csNzA==
X-Received: by 2002:a05:6402:1219:b0:514:994c:2982 with SMTP id c25-20020a056402121900b00514994c2982mr127674edw.40.1685633243229;
        Thu, 01 Jun 2023 08:27:23 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id k12-20020a056402048c00b00514c4350243sm2263947edv.56.2023.06.01.08.27.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Jun 2023 08:27:22 -0700 (PDT)
Message-ID: <3613f6ed-f8ad-a62c-6c0d-932bca7956dd@linaro.org>
Date:   Thu, 1 Jun 2023 17:27:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v3 07/15] arm64: dts: qcom: sc8180x: Add interconnects and
 lmh
Content-Language: en-US
To:     Bjorn Andersson <andersson@kernel.org>,
        Vinod Koul <vkoul@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230530162454.51708-1-vkoul@kernel.org>
 <20230530162454.51708-8-vkoul@kernel.org>
 <7d4089df-e572-4d3b-6fb7-061d69479dce@linaro.org> <ZHhF7zbPYyqdfURV@matsya>
 <20230601132717.yslaigqg4lprkniv@ripper>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230601132717.yslaigqg4lprkniv@ripper>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/06/2023 15:27, Bjorn Andersson wrote:
> On Thu, Jun 01, 2023 at 12:47:03PM +0530, Vinod Koul wrote:
>> On 31-05-23, 10:26, Krzysztof Kozlowski wrote:
>>> On 30/05/2023 18:24, Vinod Koul wrote:
>>>> This add interconnect nodes and add LMH to sc8180x SoC dtsi
>>>>
>>>> Co-developed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
>>>> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
>>>> Signed-off-by: Vinod Koul <vkoul@kernel.org>
>>>> ---
>>>
>>> I don't understand why this was split. We talked on IRC many times on
>>> this - artificial splits are not "release early, release often". Your
>>> previous patchset was correct in that approach, but why this is separate
>>> patch?
>>
>> Coz the patch was big to review. This is usual Linux approach to break a
>> change into smaller chunks for review!
>>
> 
> We break patches into small, logical units so that it's easy to follow
> the thought through each step in the process of introducing a change.

For example splitting interconnects which are essential part of several
IP blocks is not making it easy. One patch introduces incomplete block
which is then fixed (completed) in next patch.

> 
> This is not the same thing as splitting one logical change into multiple
> smaller patches to keep the line count of each patch down. This just
> forces the reviewer to jump between emails to get the full picture of
> the logical change.

Reviewer has to jump here to see full picture of UART or some other IP
block.

Best regards,
Krzysztof

