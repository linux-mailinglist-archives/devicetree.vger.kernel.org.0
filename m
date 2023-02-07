Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0AA8568D2F9
	for <lists+devicetree@lfdr.de>; Tue,  7 Feb 2023 10:38:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231295AbjBGJiY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Feb 2023 04:38:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47782 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231646AbjBGJiY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Feb 2023 04:38:24 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 893081BDC
        for <devicetree@vger.kernel.org>; Tue,  7 Feb 2023 01:38:21 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id a2so12631795wrd.6
        for <devicetree@vger.kernel.org>; Tue, 07 Feb 2023 01:38:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :to:content-language:subject:reply-to:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=ZuiSYsVuJ6KWzk0VqpXNXr3qlVlb53sqmaalgh7FtNo=;
        b=zz4eEUXyXp2H0aRViuE3mXijAiJdHAQZPmILz7T5CcSxHWbeEN/KdjnpBnfCSJAPnO
         ARP4tk24qTN/IkYxwpbJI2CYJrPFvFQMBs4CVUva59+MDYzq3ErAw0n84vzo9qtJxG9J
         YOYmzIdzTszM9zyNLAbIpXF+EUym4/nWtyy5uDDgCf+dYZ4SeC2hIvaIMfuNn/e21Yx8
         iHeLh6Gtlqo0VffA6rdxDLoIKpeMg8YMtMRHX7g4P60r2Oc2nHC8tL/Q8+HW1V0p6twY
         oQXQyotVp9kFIkX55XyGzz0GPTtDQf4uwVmAWaG4hvudfTy//KQ8K1eN5KnUnnSSuPsi
         ph+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :to:content-language:subject:reply-to:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZuiSYsVuJ6KWzk0VqpXNXr3qlVlb53sqmaalgh7FtNo=;
        b=Dc3E8USmFQwBJzUSJCGHMDOV+vBlnOw+R+/BepOjrTUYsFX2CUkAioTodA0GoPvF3X
         yNGlhG4Vus+9ra6tJwKoGtXErt4CxHZYCgU0kRXY2RLCnHq/8yAuPZLikg+Ih5G4v/Ad
         M3tcEdl4ULamqBFvvdsV5J4wzgIiMsT3g4J4/Avl4NnoR1h3Lb4u0r87o49Hm3OX0mdT
         ycRp9Q4aa68Bkea91UW1VuUeQDMljpp3et2YrAeN4JmWBZDBtqrGtaTdZmq3rOJI1vE0
         NeLFR46glqKo70xQ9tc9kQG86qeOu/Nsaa3S2PhLMpfNoRl2NWxuNiwqyXVocLeiD44W
         2f/Q==
X-Gm-Message-State: AO0yUKVV30XiIirlF10DqqdwdwOaAX+FuUXyvS3M6mQADOmZXslWKbAB
        KJSk21iW/gCSIdap57FQPpdBrA==
X-Google-Smtp-Source: AK7set8Vv+Qef99D6UkExXk5sgQoTlpukBbFOSpXzD72N8Kf0GOUFW6Vea7iLLB1oG40yRytg0FGgg==
X-Received: by 2002:adf:ed11:0:b0:2bd:e8b2:4da8 with SMTP id a17-20020adfed11000000b002bde8b24da8mr2014119wro.35.1675762700152;
        Tue, 07 Feb 2023 01:38:20 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:c58c:fc5c:67d6:e5f3? ([2a01:e0a:982:cbb0:c58c:fc5c:67d6:e5f3])
        by smtp.gmail.com with ESMTPSA id l4-20020adff484000000b002c3ed120cf8sm3453169wro.61.2023.02.07.01.38.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Feb 2023 01:38:19 -0800 (PST)
Message-ID: <fadf8933-21a7-012a-6f0f-4941a59f5e67@linaro.org>
Date:   Tue, 7 Feb 2023 10:38:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH] dt-bindings: remoteproc: qcom,sm8550-pas: correct power
 domains
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230206193313.30667-1-krzysztof.kozlowski@linaro.org>
 <8c819cc7-5071-376d-5c1e-c06555eed539@linaro.org>
From:   Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <8c819cc7-5071-376d-5c1e-c06555eed539@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/02/2023 20:36, Krzysztof Kozlowski wrote:
> On 06/02/2023 20:33, Krzysztof Kozlowski wrote:
>> Correct CDSP and MPSS power domains to match what is used in DTS and the
>> Linux driver:
>>
>>    sm8550-mtp.dtb: remoteproc@32300000: power-domain-names: ['cx', 'mxc', 'nsp'] is too long
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> And probably:
> 
> Fixes: 084258d60712 ("dt-bindings: remoteproc: qcom: adsp: document sm8550 adsp, cdsp & mpss compatible")
> 
> Best regards,
> Krzysztof
> 

You were to fast, I'm preparing a serie fixing all checks on sm8550, including this one.

Since it's the same fix, with Fixes tag:
Acked-by: Neil Armstrong <neil.armstrong@linaro.org>

Neil
