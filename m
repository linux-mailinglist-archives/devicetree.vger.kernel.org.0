Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2F45D597EDF
	for <lists+devicetree@lfdr.de>; Thu, 18 Aug 2022 09:02:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243732AbiHRHCh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Aug 2022 03:02:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42624 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232514AbiHRHCh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Aug 2022 03:02:37 -0400
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8C9A86C18
        for <devicetree@vger.kernel.org>; Thu, 18 Aug 2022 00:02:33 -0700 (PDT)
Received: by mail-lj1-x230.google.com with SMTP id bx38so839038ljb.10
        for <devicetree@vger.kernel.org>; Thu, 18 Aug 2022 00:02:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=Ue7+dLTS9HtxTPrFYVqCFYSq/oTJauCpRZyChqde9i4=;
        b=i0NkYkwb9axhr+B/PWooFtVIbh5+86wm/+fbgKl/dKuQA2D61nFTdV6OI+wEVniZeE
         x238BpbsQ1x4a7RHM64nYIUjxzTp/7HF4SIKzMK6XQFHhtOGHDVmVBgdeD9cCIunGBHp
         83w7KPlyM59kNFOIkViS1F5HaYY7koaX4sYPKlAHmEFvOq4CvkiXWc7LK2zIecbCJBv7
         /SVxpM8i/clE+3+6D/yAi3lckJC36pmJTsMIEjvGJIiDDGstfNnmYnpziZTQP8QV9Fpu
         CsQfKGmXNOJBFNy87Mq+pIFXPKbZbmlMP+GeGN4bgwDcx5yl+WOU3CgEFI7MqnqiyFkR
         Yg0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=Ue7+dLTS9HtxTPrFYVqCFYSq/oTJauCpRZyChqde9i4=;
        b=4hlG20uJhF7vhQ7GzmoW1QRL+sMecRcFvz8SqJjSEbpIAmVwFqkEAc2HMQj9vkueAu
         X3G8RFG87ZLhRJCZ/njdcbfv1Vdbo4WjRWMsdqGVsA3r2coL6u0t1YSMShTzecSzYEBr
         I097MMJAzGrT16F0F/b7Y0wY8GKxdp4K3r74ajUBFMmA43GwgDi1ZlwVbG4xsziJVGxZ
         4vGImOh762GGanCb/uQy3Bl+EWBR5C0FDa9zOWXi42FzM09IxBwjVz2PFn+ruJEmJRjr
         hB5KsrYv/JXbeueXSS+73RhtCbhVfuZwNmkCOo5+Gz7+aIX3XZ6laXJFoR87SaF1YcM2
         AxJg==
X-Gm-Message-State: ACgBeo0AQVbI4RLD4ZAEk0GQdE26QjbCSK8618cgR6qdiNyVbDzImU8A
        GO5N2xn/NW5AuPOiyq9e9z66wQ==
X-Google-Smtp-Source: AA6agR47H/AvKjCxlUoA9J8rhI+zKwWJcqe09u39XlOJFuSv7PI5ijvh+4mTedgjzI2slrvSuUI1zA==
X-Received: by 2002:a05:651c:543:b0:25f:dbbb:9cd4 with SMTP id q3-20020a05651c054300b0025fdbbb9cd4mr453724ljp.495.1660806152102;
        Thu, 18 Aug 2022 00:02:32 -0700 (PDT)
Received: from ?IPV6:2001:14bb:ae:539c:53ab:2635:d4f2:d6d5? (d15l54z9nf469l8226z-4.rev.dnainternet.fi. [2001:14bb:ae:539c:53ab:2635:d4f2:d6d5])
        by smtp.gmail.com with ESMTPSA id c22-20020a056512325600b0048b998be041sm98016lfr.309.2022.08.18.00.02.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Aug 2022 00:02:31 -0700 (PDT)
Message-ID: <2823e662-55a1-0d9f-e95d-40d6f3b93723@linaro.org>
Date:   Thu, 18 Aug 2022 10:02:29 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [RFT PATCH v2 02/14] arm64: dts: qcom: msm8996: split TCSR halt
 regs out of mutex
Content-Language: en-US
To:     Konrad Dybcio <konrad.dybcio@somainline.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220817130342.568396-1-krzysztof.kozlowski@linaro.org>
 <20220817130342.568396-3-krzysztof.kozlowski@linaro.org>
 <fd1492fa-4244-b283-d2a6-b4ffac7d53d6@somainline.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <fd1492fa-4244-b283-d2a6-b4ffac7d53d6@somainline.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/08/2022 23:57, Konrad Dybcio wrote:
> 
> 
> On 17.08.2022 15:03, Krzysztof Kozlowski wrote:
>> The TCSR halt regs are next to TCSR mutex, so before converting the TCSR
>> mutex into device with address space, we need to split the halt regs to
>> its own syscon device.  This also describes more accurately the devices
>> and their IO address space.
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> ---
> Not tested on a device, but looks good to the eye:
> Reviewed-by: Konrad Dybcio <konrad.dybcio@somainline.org>
> 
> On a note, are they really named TCSR_1 and TCSR_2 in the docs?
> Qualcomm is usually more exquisite in their naming :P

This is not entirely separate address space, therefore it does not have
a separate name. The address space name is still TCSR_MUTEX which
consists of actual MUTEX regs, halt regs and bunch of others. The second
one 0x7a0000 (where label I renamed to tcsr_2) is called TCSR_REGS.

This applies to other patches as well, so maybe you prefer to have
labels matching the spec? The first would be tcsr_mutex_regs, although
it is not entirely correct, because it does not include now the TCSR
mutex regs...



Best regards,
Krzysztof
