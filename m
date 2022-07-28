Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8824B583E3F
	for <lists+devicetree@lfdr.de>; Thu, 28 Jul 2022 14:03:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237671AbiG1MDw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Jul 2022 08:03:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41518 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237700AbiG1MDv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Jul 2022 08:03:51 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6A1C6A481
        for <devicetree@vger.kernel.org>; Thu, 28 Jul 2022 05:03:46 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id m9so1707284ljp.9
        for <devicetree@vger.kernel.org>; Thu, 28 Jul 2022 05:03:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=q9T4iy1pZp5kC18JyQLxVFdDu8isMdHf7HBSk6vNwbE=;
        b=xV8MWaeIavDGen9mt2j3QZmf3CU0Z4oZxsP7O1C4PduaceBZ+fltC8DkKczdMrwgUa
         +k4TMxxkH+s2HczuSjILcePmorXBVowGbaCl5/kFW840iRVGiiG5sjWXMz68iLLPge0C
         9VNOFAuAS7Wc2UiZ2UAhzJzlJrFSD+3f1WKRljfdNIqtvgZvdSKZtbiHwpckMfrLkheJ
         wEVQ6v0+7mi+6vKDi7dbvpQiQiE/kDTywCqz+I5jhmoxbz6ZFUjojnBagxbnOThfwbsu
         RHR5mVOqY53lJ1xN1pHPUaOvtU5kpN0VLsKiOpZLFckrviQxPq8ZXWOeI/3Onm+1Ga1g
         EGwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=q9T4iy1pZp5kC18JyQLxVFdDu8isMdHf7HBSk6vNwbE=;
        b=qbr+ayG+yg6XeFTm9/sK+a53YtG0jaQKUJwesmi/bAdR7DyGkiCYbumBii1sDf5UVv
         39gzuoUsaHVFXANYwUkO24/QhG6Pr/q7X9go8lrwkVBm2WE9Gtdk66TcpE5x6vus+twg
         d6+fwSEKOT2V4ekgxgxtO8pK0d5y7PQk8x3YdLYzyJSZAG6wcGK4ZIGE2IuiFXzvJP3f
         8hZP34JCgtdiLRPMODiieb71BjrttCXHZ/yDIcl4SpTPwEVKOfDFisDtM2p8Y3lgOVT2
         1uhOOZiX+5wilYjc0/rcGXGzBtm5zul7hu2b7HPtoOh+4XeZlrEXcVlGYo/SvISEvqtN
         MJbQ==
X-Gm-Message-State: AJIora8dtMAdRzm2B4G9YtdcGG5zSdviCSp/+9oENPvLuqS4MzwWTuRT
        cdN69U7fvrbzph9HZwF15bamJw==
X-Google-Smtp-Source: AGRyM1ss6s3dXMIqkcr4wYj1FsNn44b4U8NcjOWWRxpcNJloMstEGWpRv7gTXsnaUxiwChK8XtK4QA==
X-Received: by 2002:a2e:5705:0:b0:25d:f295:c9d8 with SMTP id l5-20020a2e5705000000b0025df295c9d8mr9472731ljb.292.1659009824736;
        Thu, 28 Jul 2022 05:03:44 -0700 (PDT)
Received: from [192.168.3.197] (78-26-46-173.network.trollfjord.no. [78.26.46.173])
        by smtp.gmail.com with ESMTPSA id t20-20020a2e8e74000000b0025a724f2935sm105370ljk.137.2022.07.28.05.03.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Jul 2022 05:03:44 -0700 (PDT)
Message-ID: <9ba45cca-79c9-d1e4-5b2c-15c73a8297b6@linaro.org>
Date:   Thu, 28 Jul 2022 14:03:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 3/3] dt-bindings: phy: add definition for MSM8960
Content-Language: en-US
To:     David Heidelberg <david@ixit.cz>, Shinjo Park <peremen@gmail.com>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220728111740.30595-1-peremen@gmail.com>
 <aef9bae5-b72b-d520-a8e5-8f6a838775eb@linaro.org>
 <875f6675-9d28-7ca2-704c-4d1a6c69a21c@ixit.cz>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <875f6675-9d28-7ca2-704c-4d1a6c69a21c@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/07/2022 13:54, David Heidelberg wrote:
> On 28/07/2022 13:47, Krzysztof Kozlowski wrote:
>> On 28/07/2022 13:17, Shinjo Park wrote:
>>> Document the changes introduced by MSM8960 inclusion.
>>>
>> 1. Thread your submissions.
>> 2. Use subject prefix matching the file.
>>
>>> Signed-off-by: Shinjo Park <peremen@gmail.com>
>>> Reviewed-by: David Heidelberg <david@ixit.cz>
>> It is a v1. How the review tag got here?
> 
> We have a Matrix channel ( #linux-apq8064:matrix.org and downstream fork 
> for apq8064/msm8960 [1]), so I saw the patch before it was send to ML.
> 
> David

New submitters and beginners should rather use full-mailing list
process. Since there is quite a chance of beginner mistakes (which was
seen here), they might misunderstand something and add Reviewed-by tag
even if not received it with respective "Reviewer's statement of oversight".

Best regards,
Krzysztof
