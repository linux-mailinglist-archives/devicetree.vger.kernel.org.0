Return-Path: <devicetree+bounces-91-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A14F379FBE1
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 08:27:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EED12B20969
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 06:27:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 681402117;
	Thu, 14 Sep 2023 06:26:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A9643FFE
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 06:26:48 +0000 (UTC)
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 72318F9
	for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 23:26:47 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-2bf924f39f1so8720981fa.2
        for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 23:26:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694672805; x=1695277605; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8vNd6Mhf35GMe9RWa+Xf0nZSRO80+x90q1mI0LjqNNU=;
        b=Oc5FOE5NRLURDO9gHKvjQiw11UkgkUHNO7QO0NipBLm5wweU1u8hYodmpLlTTF6mSy
         LyEvduS4dNk96AFboKHEW3J/3y7V7Fqf2maeXO/CW7pONwY5S26zcmHbDagxm8sNsp25
         scsuwUx7N0HR/bgKoNtmdOApdS4G42JECmGIAca2GYkX8Bxt8v1D7kCLviGEt0pxsd5J
         4peZCXCosIHDzDXizPqWKZty3hqheCwhSn4mU3KMTQItm4m6ljXANv037csLgDo04mqR
         fXhgNKsO1CuE4QQUi+jjvr7I1dZjHn76LjtU5Q3OFTQmAqaTPv6o9M7ZEQnJDcvymOLT
         G3yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694672806; x=1695277606;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8vNd6Mhf35GMe9RWa+Xf0nZSRO80+x90q1mI0LjqNNU=;
        b=B1PLG2HYH8xBHKc7/PurcfB8VGsjyvx3ys65Uop25y2Rfs3D63OmLsyuZwNGZzDd3I
         MWSUxZjFnc/+DtVu3FgILLhkcrnDE5GAZ8o2D89Hm/Mb1tYpG6HCqoCL5wOhLBqaEBQZ
         wTzVYZEGAgv85b5Ul48uOkYr27t1GH3thYnchzN+vBhFO2RIOZtGiihOnv3aO0S033u+
         wPTXAQcb6v7DKPO/0/ir569qFoYnSh3fCVujqO6m3JPn5/gUuLrQ5+RCOnKaDwCtfTiG
         hM1xBHezTOc4Nxf/wPB566ksxdmU2x6yD7Lrqqm9KadGS4Y5v/x/vi8U1ypzdIOG6Zzj
         hoXg==
X-Gm-Message-State: AOJu0Ywby5RjaIvOqj0VA42mYI3ZOmTL0p4aZHq4bUvGg7mqvFd9X7YK
	3bO7B5Ji6J283rKsuY2LnvH3kQ==
X-Google-Smtp-Source: AGHT+IEXyD/63hRonxcmIDGjRGZcaw+/cu+rROOPezAiFh0Nr/O9LBQRR/P1DTlJe4FEXa2CWCykZQ==
X-Received: by 2002:a2e:9c0b:0:b0:2bc:fa8f:83bf with SMTP id s11-20020a2e9c0b000000b002bcfa8f83bfmr3161470lji.36.1694672805675;
        Wed, 13 Sep 2023 23:26:45 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id ce11-20020a170906b24b00b0099cc1ffd8f5sm520889ejb.53.2023.09.13.23.26.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Sep 2023 23:26:45 -0700 (PDT)
Message-ID: <7796431f-ae52-58b6-499e-566a17292725@linaro.org>
Date: Thu, 14 Sep 2023 08:26:42 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v2 06/14] arm64: dts: qcom: sdm630: Drop RPM bus clocks
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@linaro.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>,
 Sibi Sankar <quic_sibis@quicinc.com>, Will Deacon <will@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Wesley Cheng <quic_wcheng@quicinc.com>
Cc: Marijn Suijten <marijn.suijten@somainline.org>,
 Alexey Minnekhanov <alexeymin@postmarketos.org>,
 linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
 linux-usb@vger.kernel.org
References: <20230721-topic-rpm_clk_cleanup-v2-0-1e506593b1bd@linaro.org>
 <20230721-topic-rpm_clk_cleanup-v2-6-1e506593b1bd@linaro.org>
 <70b2a9d7-1a3e-25da-3d78-7bfa5d3a1e05@linaro.org>
 <c3dd5f68-af75-4880-83c2-ca7723561ae9@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <c3dd5f68-af75-4880-83c2-ca7723561ae9@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 13/09/2023 14:08, Konrad Dybcio wrote:
> On 13.09.2023 09:13, Krzysztof Kozlowski wrote:
>> On 12/09/2023 15:31, Konrad Dybcio wrote:
>>> These clocks are now handled from within the icc framework and are
>>> no longer registered from within the CCF. Remove them.
>>>
>>> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
>>> ---
> [...]
> 
>>>  		anoc2_smmu: iommu@16c0000 {
>>>  			compatible = "qcom,sdm630-smmu-v2", "qcom,smmu-v2";
>>>  			reg = <0x016c0000 0x40000>;
>>> -
>>> -			assigned-clocks = <&rpmcc RPM_SMD_AGGR2_NOC_CLK>;
>>> -			assigned-clock-rates = <1000>;
>>> -			clocks = <&rpmcc RPM_SMD_AGGR2_NOC_CLK>;
>>> -			clock-names = "bus";
>>
>> This is also against bindings. After your patch #4, such bus clock (or
>> other combinations) is still required.
> So, we have 4 SMMU instances on this platform:
> 
> MMSS (described, iface, mem, mem_iface)
> GPU (described, iface-mm, iface-smmu, bus-smmu)
> 
> ANOC2 (this one, no clocks after removing rpmcc bus)
> LPASS (no clocks)

Ah, I did not notice it.

> 
> Should I then create a new entry in the bindings, replicating
> what's there for msm8998[1] and dropping the entry with just "bus"
> from anyOf?

So this passes the bindings, right? anyOf: in the binding should allow
also no match, so this should be fine. However indeed we need to drop
the "bus" entry, because it is not valid anymore.

Best regards,
Krzysztof


