Return-Path: <devicetree+bounces-460-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 596A07A1A01
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 11:10:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 194AD28245F
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 09:10:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0D5AD536;
	Fri, 15 Sep 2023 09:10:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 765892F38
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 09:10:49 +0000 (UTC)
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06AE12D41
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 02:10:20 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-9a645e54806so236033866b.0
        for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 02:10:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694769018; x=1695373818; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9mYurZD8ziFDRqchUnDGZKwBbS/2WFyHG5fbkvlBT2g=;
        b=y2egOUR7CBlYVvpxmSRZqvPR+KaLj4XccMALmTsyYJaqGm5HGsEpW4ew2434N57fgf
         vGxqWsS3gNosTYbR6abFVkU7lv/j/kOQy8+p+PwW/qiSnCXPXJWuAoX6KeDZD3XxM7qz
         emFK6JC7xChlRpVIgBl8DOQaZzEKECjIWl0LNQWHKzr3U6ZzYyixG/cFlBrelnl9sEtm
         fugh1XwC17qYVPRuMQodWe9fPK03x4TS/jClmqWp0QCMInrLEB7BLmjwGFCesvJxwv+q
         E/kj+o2U4aEefuX6hAHjFi72DmTmj3QSh+baqttVIY5nkw4lE6AUUikDu6jbrex/CatE
         +pdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694769018; x=1695373818;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9mYurZD8ziFDRqchUnDGZKwBbS/2WFyHG5fbkvlBT2g=;
        b=q7auBrQuoTg4Di3d1gs/5k1NQx9eMqcNdWhdLkoZbd6wbBKJqvT9mGn2yBS5WC3jVv
         Nx8DYPiHN31pIzlzuQ1+gyO2wL//fI7khb2loAnSrrcviL4BVLqzWcNmAjhwTDr4Ynwp
         mbLb20FSYTn7X1inSedLL7E4BIJOJasBJqRnVLqfajLYQBtgjh01HrO+AU8h/NfsbgDU
         rZW5olaAOHvX9TfICUITXPVoGhysFgX+rafyEchZYouU2QBnxV09Ag9VMowBpudNRuBz
         V29uod77S2gbwECYhDR/E7kicpdWCG+fk3kvyLtD5gQ1FHUjpFCaL/GIQGXHv15KbXxC
         f3/w==
X-Gm-Message-State: AOJu0YyloN3pZ5szXY0QUqziz6nOwBpHfB9a+78FbxD2ZB+gyGRtOWpG
	6l98FvkXp2F4CKhEAg6aG+GC6w==
X-Google-Smtp-Source: AGHT+IHiXgvnk9181h78AWvJiNP0aier6ytGOVVosZgBZ7n55wGrwTWePBUH316xtZO8twLna74yjA==
X-Received: by 2002:a17:906:54:b0:9ad:78b7:29ef with SMTP id 20-20020a170906005400b009ad78b729efmr787901ejg.57.1694769018446;
        Fri, 15 Sep 2023 02:10:18 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id d22-20020a170906345600b009a9fbeb15f2sm2120791ejb.62.2023.09.15.02.10.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Sep 2023 02:10:17 -0700 (PDT)
Message-ID: <f932d000-e328-3267-33ad-f3555a6689fb@linaro.org>
Date: Fri, 15 Sep 2023 11:10:14 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v2 4/8] dt-bindings: arm-smmu: Add compatible for SM4450
 SoC
To: Tengfei Fan <quic_tengfan@quicinc.com>, will@kernel.org,
 robin.murphy@arm.com, joro@8bytes.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, catalin.marinas@arm.com
Cc: geert+renesas@glider.be, arnd@arndb.de, neil.armstrong@linaro.org,
 nfraprado@collabora.com, rafal@milecki.pl, peng.fan@nxp.com,
 linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, quic_tsoni@quicinc.com,
 quic_shashim@quicinc.com, quic_kaushalk@quicinc.com, quic_tdas@quicinc.com,
 quic_tingweiz@quicinc.com, quic_aiquny@quicinc.com, kernel@quicinc.com
References: <20230915021509.25773-1-quic_tengfan@quicinc.com>
 <20230915021509.25773-3-quic_tengfan@quicinc.com>
 <5a386be4-facc-8aef-aad7-da6508aa0505@linaro.org>
 <c993ecc1-771e-4061-bd10-d3dea1254389@quicinc.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <c993ecc1-771e-4061-bd10-d3dea1254389@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 15/09/2023 10:52, Tengfei Fan wrote:
> 
> 
> 在 9/15/2023 3:11 PM, Krzysztof Kozlowski 写道:
>> On 15/09/2023 04:15, Tengfei Fan wrote:
>>> Add the SoC specific compatible for SM4450 implementing arm,mmu-500.
>>>
>>> Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>
>>> ---
>>>   Documentation/devicetree/bindings/iommu/arm,smmu.yaml | 3 +++
>>>   1 file changed, 3 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
>>> index cf29ab10501c..b57751c8ad90 100644
>>> --- a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
>>> +++ b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
>>> @@ -47,6 +47,7 @@ properties:
>>>                 - qcom,sdx55-smmu-500
>>>                 - qcom,sdx65-smmu-500
>>>                 - qcom,sdx75-smmu-500
>>> +              - qcom,sm4450-smmu-500
>>>                 - qcom,sm6115-smmu-500
>>>                 - qcom,sm6125-smmu-500
>>>                 - qcom,sm6350-smmu-500
>>> @@ -70,6 +71,7 @@ properties:
>>>                 - qcom,sc8180x-smmu-500
>>>                 - qcom,sc8280xp-smmu-500
>>>                 - qcom,sdm845-smmu-500
>>> +              - qcom,sm4450-smmu-500
>>
>> Isn't there comment just few lines above your edit? Comment saying DON'T?
>>
>>
>> Best regards,
>> Krzysztof
>>
> Hi Kraysztof
> I seems haven't understand your comments totaly.
> I want to confirm that if you think only need "qcom,smmu-500" and 
> "arm,mmu-500" compitbale name, needn't specific compitable name for each 
> platform?


No, please read the comment. It tells you explicitly what to do - which
compatible add where.

Best regards,
Krzysztof


