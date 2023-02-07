Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 57E4768D977
	for <lists+devicetree@lfdr.de>; Tue,  7 Feb 2023 14:35:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232140AbjBGNf4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Feb 2023 08:35:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53130 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232097AbjBGNfy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Feb 2023 08:35:54 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47C482BF26
        for <devicetree@vger.kernel.org>; Tue,  7 Feb 2023 05:35:51 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id bk16so13552920wrb.11
        for <devicetree@vger.kernel.org>; Tue, 07 Feb 2023 05:35:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=2ml4pR4jzpgCOWIQAPCUTBYh9nLmUSsHOoxXPfaQmeA=;
        b=XvpyHbMa6iXaphQsis+8AJ3rCvsaDlzQPEQVCvb7I8F93irxmLdJYfTagXRxGKE8Qu
         T8qQY8MNarpJxwO9sLy/bUIdMq+ik6oVQI7n/ngHRqp19LfUBQbF72JQUE7xTxNvcqUD
         Y0z3Bg5wyRhgl7914YaF2LrWe9L/ILOu9Y67e7ABwwSWZWeVJTZO66v2vo+QmPmgGbXm
         hRrShMVlDP0lVf7CHVQgwXIetO0OVnxY/OUIv+9wygXYBr0zcIOctHYP4/YQDL9gUZF9
         EFRbyX7b/6xvksX+SentUc+HTaqsg0rpz6U/scb8vhUiP4VODdruyVls0al3jM9kRdV7
         bJng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2ml4pR4jzpgCOWIQAPCUTBYh9nLmUSsHOoxXPfaQmeA=;
        b=iBgh1HVcdcH/pKHeT8obQiEg27R47Wkmki1pIahWhjl6+lRg3GP8pVIajO2NbLNR7U
         IGIfn23WaBBvT9td5UAnQBECDQxXo8tKyW3rZ6sobBmWUm4Gxi0r9TgnQborTQN8LAq2
         vuH5VhpWdkt+Cd+kt/WnPlFxkp9dbuaHYYVZDNobhWBoa7/oa8MrTLIbbifJhD1r9bw9
         nFESq1ssaUXL3cL2EgPiFcxIcGaCJGosu32D68lU34pL1tI+kqlSrO7Mf5+4BXkD5ccI
         qR33Yfgrzk91PiFVYsEPcdwygGfEEgHOSbC2Snon8TnVdcUckr0MWdtzXEiWHy68WsPB
         fxZg==
X-Gm-Message-State: AO0yUKUGxUsgCVp54nGBD381TfDS84WlYpYsUegYGu+mNc+smafbWeGL
        Ow6bYBfL9oyZ7G+c9QOvzZc3PA==
X-Google-Smtp-Source: AK7set+ONLlJw/m+FpODYRPNLBiERnL0I/NeVx8rflHHKajfndvs4YUMw5JlEbwXmwLnGEXWr7pcfw==
X-Received: by 2002:adf:f4cf:0:b0:2bf:c066:dd7e with SMTP id h15-20020adff4cf000000b002bfc066dd7emr2707923wrp.40.1675776949836;
        Tue, 07 Feb 2023 05:35:49 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:c58c:fc5c:67d6:e5f3? ([2a01:e0a:982:cbb0:c58c:fc5c:67d6:e5f3])
        by smtp.gmail.com with ESMTPSA id d2-20020a056000186200b002bddd75a83fsm12107449wri.8.2023.02.07.05.35.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Feb 2023 05:35:49 -0800 (PST)
Message-ID: <a8112f61-f8d3-c1e0-9549-a9036a7e7894@linaro.org>
Date:   Tue, 7 Feb 2023 14:35:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
From:   Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH] dt-bindings: dma: qcom,bam-dma: add optional memory
 interconnect properties
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, dmaengine@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230207-topic-sm8550-upstream-bam-dma-bindings-fix-v1-1-57dba71e8727@linaro.org>
 <a188a52e-6327-f0ea-a54e-a23b88bca82f@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <a188a52e-6327-f0ea-a54e-a23b88bca82f@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/02/2023 11:32, Dmitry Baryshkov wrote:
> On 07/02/2023 12:03, Neil Armstrong wrote:
>> Recents SoCs like the SM8450 or SM8550 requires memory interconnect
>> in order to have functional DMA.
>>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
>>   Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml | 6 ++++++
>>   1 file changed, 6 insertions(+)
> 
> I suspect this will not work without a change for a driver.
> 

I had the impression single interconnect entries would be taken in account
by the platform core, but it doesn't seem to be the case, anyway I can;t find
any code doing that.

I'll resend with a driver change.

Neil
