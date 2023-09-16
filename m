Return-Path: <devicetree+bounces-799-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DF4D37A3271
	for <lists+devicetree@lfdr.de>; Sat, 16 Sep 2023 22:31:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B71351C20BBB
	for <lists+devicetree@lfdr.de>; Sat, 16 Sep 2023 20:31:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C90821B27A;
	Sat, 16 Sep 2023 20:31:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F90A5685
	for <devicetree@vger.kernel.org>; Sat, 16 Sep 2023 20:31:02 +0000 (UTC)
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7EEFB180
	for <devicetree@vger.kernel.org>; Sat, 16 Sep 2023 13:31:00 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-52a4737a08fso3825769a12.3
        for <devicetree@vger.kernel.org>; Sat, 16 Sep 2023 13:31:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694896259; x=1695501059; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EL+k7hXUShrLVxaFRObx7bendR710WJmkBqa6SXN9Ds=;
        b=lXNdU7KoP2ZeWTajnKd3a1gsyaYEbQtskRviIwXADzuZ0m3i7Zg6Hicr4UuqZwBi17
         LAsWrTxJ+VOJvFsa4ej6S7f42aJ5r5UuCve6mM+fgAJpxBjmllbqAvcnBSD7mi6ttAeo
         C2rTeNLj3aU/o3cFELqA7rPfZys/gLqHXzm19rvCDIl3ybDs2dSfZ207LA07ZtbwdYc3
         rVoW9DF1tSOBPD7CBR4ziR2TYXHNLX30gHIaOjIbpNHqUVJg0CPsc0TxmPMjpC/b4P7O
         XfVLGCKbJ8FGlppIq8VJf21N52NgYDCZOCG0KxvK5h7as4/WewPjPBWo+ZgY4CFcEBOk
         kUxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694896259; x=1695501059;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EL+k7hXUShrLVxaFRObx7bendR710WJmkBqa6SXN9Ds=;
        b=Jhw+fKzIfZJ6tDnaIM2Xc0m7VKrERVHbFWU05mcMMIsARjkYF1MpH1SOaCpwHVlYoW
         hPNDhO+A6mFL0QtDU/2tr273qgHim2CCbZplTG/CBakKxcEVRmAWoDCHKM1/OXE+qQXq
         o+xCmOgnb6PO3tmdSvOz0LWIGMsrsU6Z2ESLk4WikniT/V6eB8Z16EOqKENSrG3IcWJE
         LmSrSTtShrRh9BlUTGp28dYnM3BKSQoIbTZx2d7EfsunK2OJemHcuZQvsupJejdUSOZy
         uCX7aPaxJqflndsA0eVPH9JVH86TsCfvYH0yrOblNOyLyO4sApKvxOn0uOdmdSJibanh
         F5Yw==
X-Gm-Message-State: AOJu0Yxgn3mrfyx8UTr+2iMfp1nkhKLyeW6debiiTqapn4BIcLKw9Wb2
	1JjDXD5wku5mMPfLvjUpFaM5ng==
X-Google-Smtp-Source: AGHT+IFqKWQZecXMTFwDFX2obiJHXcFY1D7b0lePfOb4l9+gqCiVAiuXCUAe/qvDTJXhP/OKrM5x5A==
X-Received: by 2002:aa7:d142:0:b0:52c:9ce1:f117 with SMTP id r2-20020aa7d142000000b0052c9ce1f117mr3679643edo.40.1694896258889;
        Sat, 16 Sep 2023 13:30:58 -0700 (PDT)
Received: from [192.168.1.77] (150-140-187-31.ftth.glasoperator.nl. [31.187.140.150])
        by smtp.gmail.com with ESMTPSA id d4-20020a056402516400b0052fc0832e08sm3909853ede.1.2023.09.16.13.30.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 16 Sep 2023 13:30:58 -0700 (PDT)
Message-ID: <40216ed7-22a5-01e6-6863-dff31c9e1ec7@linaro.org>
Date: Sat, 16 Sep 2023 22:30:56 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v2 8/8] arm64: defconfig: enable interconnect and pinctrl
 for SM4450
To: Trilok Soni <quic_tsoni@quicinc.com>,
 Tengfei Fan <quic_tengfan@quicinc.com>, will@kernel.org,
 robin.murphy@arm.com, joro@8bytes.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, catalin.marinas@arm.com
Cc: geert+renesas@glider.be, arnd@arndb.de, neil.armstrong@linaro.org,
 nfraprado@collabora.com, rafal@milecki.pl, peng.fan@nxp.com,
 linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, quic_shashim@quicinc.com,
 quic_kaushalk@quicinc.com, quic_tdas@quicinc.com, quic_tingweiz@quicinc.com,
 quic_aiquny@quicinc.com, kernel@quicinc.com
References: <20230915021509.25773-1-quic_tengfan@quicinc.com>
 <20230915021509.25773-10-quic_tengfan@quicinc.com>
 <8f2c9664-a2c8-50dc-8a1c-e50a071ebeb2@linaro.org>
 <e9ff05b3-2742-416e-b417-5e2414036008@quicinc.com>
 <0a34dd35-7aea-4655-4cdd-e7196a1ba52b@linaro.org>
 <f76e1cc8-fc48-4208-bbe4-9204d9d28363@quicinc.com>
 <b7398390-23bc-467c-5b83-411110d60f43@linaro.org>
 <01c020ae-a019-e4eb-14cb-64503bde05a6@quicinc.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <01c020ae-a019-e4eb-14cb-64503bde05a6@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 16/09/2023 04:21, Trilok Soni wrote:

>>>> No, this should be =m and you need to fix your system.
>>>>
>>>> Best regards,
>>>> Krzysztof
>>>>
>>> Hi Krzysztof,
>>> Find new way which can load ko files on SM4450 platform, still need use 
>>> "Y", because of some other modules have dependence to these two config, 
>>> like scm, smmu module drivers, uart shell console cannot be got if set 
>>> to "m".
>>
>> That's what I am asking, which device exactly needs it.
>>
>>>
>>> Also do test for setting these two config to "m" on SM8450 platform, get 
>>> uart shell consle failed if so setting.
>>
>> Yeah, this we know, I did this. I am asking about SM4450.
> 
> Why we have =m requirement when other drivers above are =Y?. Can we confirm
> w/ Georgi? I am not aware that Interconnect drivers needs to be =m only.

There is a requirement of all drivers which can be a module, to be a module.

Best regards,
Krzysztof


