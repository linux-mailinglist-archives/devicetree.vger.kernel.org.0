Return-Path: <devicetree+bounces-607-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C15067A21B5
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 17:03:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 70C10281FC4
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 15:03:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 537F7107B6;
	Fri, 15 Sep 2023 15:03:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F8F030CE0
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 15:03:14 +0000 (UTC)
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BBFB110D
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 08:03:12 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-31fe3426a61so1568271f8f.1
        for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 08:03:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694790191; x=1695394991; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9C1UHaCOBJhiAypiHyvSaWyiNAJYDTwexCkUigqYDiw=;
        b=tjI2EcY4NEOmV4v349wfu97gmEqAJgtHFuYoF6jFkzfjVshHLDmvRaaKZuA7gtSjt+
         SRfjzemiFi5/UEi4siIi7O+aAPSOW2fAA4793D3dUm2LFIxBle0P0WX+DnRk9opT8533
         NgV2YYpHwTbpujHv0nQNNyayAYgTao3seeuDf3TSQ2aPNSquWmF1JeRwstxZUiajkccZ
         mwvufprCjRU+FE7wrEFvoXgmg/acVRjamlfSRQlopZDJBG/Yl47eKMJhQntWoCWlTkT7
         6ld/Fb+p5FYU53XdPr234TnlD1kEzv7XSCB+Mg0+WbDaBlgZVDzq0vWwVof2cVAGPZuq
         WKJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694790191; x=1695394991;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9C1UHaCOBJhiAypiHyvSaWyiNAJYDTwexCkUigqYDiw=;
        b=UBI9QSzTGxw82yKdPZ7woBx0DOihr33u3YpknKMC/G7GEAXjN/hKcac8+p3q7Uypz5
         STepVnqIsMXRyMjArWJCJqIzdQ73LG9FMRijG53PwL4a5SB6R59eBjofIZD2K60TkjmP
         GVoKdfBiCq/SRiY39c+zaYAEkakDPdJpjb4mT+8nZJf9WsRo2iSdXlTdWDfU6uu7iayB
         2Ki4COngxBdLOy0lvm0M1OcJKCD54Vch3g4DyNCppy6ocRspLX+GAL6AsUfFeFoel4GQ
         QQ+7n9DMCkzgB7ACROwFoSQugI2POYB5GO0rbDPmFggxL+O8soXkiWi7sBNqDFmzu/LT
         w6/Q==
X-Gm-Message-State: AOJu0Yz0NypVLh8xe2dIZooSp+1YUHOTiCij+dhP/vBAlpOMLClAKdPh
	RVFcITZqFfPqAUpLYI/okBmVSw==
X-Google-Smtp-Source: AGHT+IFc+ZFaV6Jq0IUQleifvSgcm42U8VytZNKWgSnA6qkqDp3hA8k9nsoXOe9w09rec7hSRTw7Pw==
X-Received: by 2002:adf:ec4f:0:b0:31f:d52a:82b0 with SMTP id w15-20020adfec4f000000b0031fd52a82b0mr1637996wrn.45.1694790191118;
        Fri, 15 Sep 2023 08:03:11 -0700 (PDT)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id g14-20020a5d698e000000b0031759e6b43fsm4653581wru.39.2023.09.15.08.03.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Sep 2023 08:03:10 -0700 (PDT)
Message-ID: <d20ad799-92ed-4a5c-b20b-02c5ab3523d8@linaro.org>
Date: Fri, 15 Sep 2023 16:03:09 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] arm64: dts: qcom: msm8916: Fix iommu local address
 range
Content-Language: en-US
To: Stephan Gerhold <stephan@gerhold.net>,
 Gaurav Kohli <quic_gkohli@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, kernel@quicinc.com
References: <20230915143304.477-1-quic_gkohli@quicinc.com>
 <ZQRtchQ0HqmgkvIa@gerhold.net>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <ZQRtchQ0HqmgkvIa@gerhold.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 15/09/2023 15:42, Stephan Gerhold wrote:
> On Fri, Sep 15, 2023 at 08:03:04PM +0530, Gaurav Kohli wrote:
>> Fix the apps iommu local address space range as per data sheet.
>>
>> Fixes: 6a6729f38436 ("arm64: dts: qcom: msm8916: Add IOMMU support")
>> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
>> Tested-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
>> Signed-off-by: Gaurav Kohli <quic_gkohli@quicinc.com>
> 
> Aside from the minor things Konrad mentioned (v1 -> v2) FWIW:
> 
> Reviewed-by: Stephan Gerhold <stephan@gerhold.net>
> 
> Although I can kind of understand that starting to count at 0 often
> feels more intuitive, especially for Linux kernel things. :-)

Just put

OPTION BASE 0

at the start of your cover letter ;)

---
bod


