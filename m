Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D317B66258E
	for <lists+devicetree@lfdr.de>; Mon,  9 Jan 2023 13:29:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235004AbjAIM3F (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Jan 2023 07:29:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56772 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237289AbjAIM2s (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Jan 2023 07:28:48 -0500
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F02021582D
        for <devicetree@vger.kernel.org>; Mon,  9 Jan 2023 04:28:44 -0800 (PST)
Received: by mail-lf1-x134.google.com with SMTP id y25so12678359lfa.9
        for <devicetree@vger.kernel.org>; Mon, 09 Jan 2023 04:28:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=c1LnTFmgiC443jcH2wTCUnnwan2MHnqslbJDa/n/zlU=;
        b=PUjV15h7wuA3+a5ivVW6rxYofXG58Pn6lnU7twUyjG1S4gGgRFQ6epSObML7GiCM7l
         Uu5JnEsgktMydCbQDi57nLMkmGyzxHOWdb5fCKx7i7dQNhxWhvJ4UlF9amNAQYhlSEMH
         Y6NZ/qiGRfy0m+9agr8iQKe1/JJYn1HbqJlLejOV1Y6K/gcQ0YGmEhthGr/5bZfDqNPX
         z2f//OcgwA/O7Tate/H7UJtlG06iZso9IiWcVTcYBVAwAn2a2cugtCHLTwtwkJ1A+Zf2
         ynWD72GLNsLWpc4PE6LYG3MeJn5sxKOKCFbqoZovwv0c0TDfl68usGq+20s02Dn6SZyf
         t0dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=c1LnTFmgiC443jcH2wTCUnnwan2MHnqslbJDa/n/zlU=;
        b=SD6b4fV9y7pKKPRqGPepY7wx6TYQeSQpSyQmBzhydEck4w+rsKLrOEpcFNBGirJMtf
         uedZ/7QDs63tB96Ls5YlhYLqQfCl7tDFWbGs1OFtPTJPfaUKMrgkIRxPAGp5f/vaSEKc
         2QpFWIRTuXmeaF3Eey8pshIueIwg7by87Zl59lUw6YTxr2wZbD9HKG58+EMyH2H2SPP5
         QSI0Km65eLwz8cIy9BPIz/RR5LK1uw5HKuJk+40GwM/hLf0LiMAJj6zTh14Dc3konzgc
         hlC1KEiVsW5Nzg8vaj+EwqVfuDYZd0f+3CDWA579KiDSvON02rsSeqTEFmQC25nAt16f
         c/jw==
X-Gm-Message-State: AFqh2kq3cG6QgAYbiq4hqmYy9l124dOc6ATSBIrOFrSx0QyMijClJ7uu
        nbhvjdt3Q0WIuoL5wT1x6L+zBw==
X-Google-Smtp-Source: AMrXdXu8kYKi0VTuDJM2kYNBe72S1JHm0oU6KNI6zTAg6DgUEZwX8EhcwO0URUvpcPPRjbd2iG0jPA==
X-Received: by 2002:a05:6512:104b:b0:4b5:5096:bee0 with SMTP id c11-20020a056512104b00b004b55096bee0mr41534lfb.5.1673267323319;
        Mon, 09 Jan 2023 04:28:43 -0800 (PST)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id n22-20020a0565120ad600b004aac23e0dd6sm1602032lfu.29.2023.01.09.04.28.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Jan 2023 04:28:42 -0800 (PST)
Message-ID: <f5657c54-a27e-99d1-a996-ce1cefe46073@linaro.org>
Date:   Mon, 9 Jan 2023 14:28:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v2 1/4] dt-bindings: display/msm: add core clock to the
 mdss bindings
Content-Language: en-GB
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20230109005209.247356-1-dmitry.baryshkov@linaro.org>
 <20230109005209.247356-2-dmitry.baryshkov@linaro.org>
 <3414e686-9f8d-a29d-6cc1-f073b70a9f1c@linaro.org>
 <5a58eabc-08ba-57da-290d-b432f3f99268@linaro.org>
In-Reply-To: <5a58eabc-08ba-57da-290d-b432f3f99268@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/01/2023 12:51, Dmitry Baryshkov wrote:
> On 09/01/2023 12:35, Krzysztof Kozlowski wrote:
>> On 09/01/2023 01:52, Dmitry Baryshkov wrote:

[skipped]

>>
>> There were a lot, a lot of changes to MDSS/DPU bindings recently, so I
>> am really loosing track what is done where and when.
>>
>> There are also few separate patchsets from you on the lists. Could they
>> be combined into one cleanup?
> 
> Ack, I'll merge them into a single patchset.

I gave it some thought... Putting small non-mdss/mdp fixes aside, there 
are three series, which I'm trying to track:

- MDP5 schema conversion + per-SoC compatibles for MDP5 [1]
   no dependencies

- mdss/mdp/dpu -> display-subsystem, display-controller rename [2]
   depends on [1]

- mdp5 core clock support [3]
   depends on [1]

I think I'll target on merging [1] and [2] first, since they are purely 
DT + schema changes. If you prefer I can squash them for the next 
iteration or I can keep them separate.

For [3] I'll wait for first two to be in the proper shape, since it also 
contributes driver changes (and I don't want to have additional 
interlocks here).


[1] 
https://lore.kernel.org/linux-arm-msm/20230109050152.316606-1-dmitry.baryshkov@linaro.org/

[2] 
https://lore.kernel.org/linux-arm-msm/20230109051402.317577-1-dmitry.baryshkov@linaro.org/

[3] 
https://lore.kernel.org/linux-arm-msm/20230109005209.247356-1-dmitry.baryshkov@linaro.org/

-- 
With best wishes
Dmitry

