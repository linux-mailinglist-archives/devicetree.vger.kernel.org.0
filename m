Return-Path: <devicetree+bounces-809-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CC2F7A3349
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 00:55:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E0F7C281943
	for <lists+devicetree@lfdr.de>; Sat, 16 Sep 2023 22:55:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D93E11C2A1;
	Sat, 16 Sep 2023 22:55:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEF1D1BDEF;
	Sat, 16 Sep 2023 22:55:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A53FDC433C7;
	Sat, 16 Sep 2023 22:55:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694904943;
	bh=H0ZrldvnfeVZPHSa0DBgUu2f3ukwWSY37W0/p+0tIhI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ag8IiPH8W7OwjdVeYpesBaJoyAXRmOIXJsXTFpoE84VDbGPNGyQudghhqjzq8K/dZ
	 pxIHoAR4vlb8pjKRfMUyQniHI9jjgQiJ5nANkzKYlPwKYHrKVyiRjGStasWKtMM+5B
	 YmLkFcNo5/FE+yu1NxYgmrXMQ8DqkR3tR1OxIrmgpfsWFavLSVLJPWjiAYwuaVlh6Q
	 qoCOie//ELyq9T+xs7ykm6MQ22C5QzigIEpIl5VRzN9H7V5tZITybEiixX8nkpTGxO
	 HFbpAqnyJ7h1Il7U5zqisyM3YazGtwlMbXHciwmks725eksyLHFjYuHlz+ElTZ9h5v
	 IAlgLCQukcYjQ==
Message-ID: <c11fd3c2-770a-4d40-8cf3-d8bc81f7c480@kernel.org>
Date: Sun, 17 Sep 2023 01:55:34 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 8/8] arm64: defconfig: enable interconnect and pinctrl
 for SM4450
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Trilok Soni <quic_tsoni@quicinc.com>, Tengfei Fan
 <quic_tengfan@quicinc.com>, will@kernel.org, robin.murphy@arm.com,
 joro@8bytes.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, agross@kernel.org, andersson@kernel.org,
 konrad.dybcio@linaro.org, catalin.marinas@arm.com
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
 <212f9bfa-6d4c-bba2-60d2-272c001a4322@quicinc.com>
 <e30870d5-a0cc-4210-a2b0-c7621ea5ecfa@kernel.org>
 <accb4814-4826-ff97-3527-4e3fbadcd4ff@linaro.org>
From: Georgi Djakov <djakov@kernel.org>
In-Reply-To: <accb4814-4826-ff97-3527-4e3fbadcd4ff@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Krzysztof,

On 16.09.23 23:32, Krzysztof Kozlowski wrote:
> On 16/09/2023 17:13, Georgi Djakov wrote:
>>
>>>
>>> Complete list here, and it is inconsistent. Latest 8550 is also =y. Do we document
>>> the reasons somewhere on why they are added as =y?
>>>
>>> CONFIG_INTERCONNECT_QCOM=y
>>> CONFIG_INTERCONNECT_QCOM_MSM8916=m
>>> CONFIG_INTERCONNECT_QCOM_MSM8996=m
>>> CONFIG_INTERCONNECT_QCOM_OSM_L3=m
>>> CONFIG_INTERCONNECT_QCOM_QCM2290=m
>>> CONFIG_INTERCONNECT_QCOM_QCS404=m
>>> CONFIG_INTERCONNECT_QCOM_SA8775P=y
>>> CONFIG_INTERCONNECT_QCOM_SC7180=y
>>> CONFIG_INTERCONNECT_QCOM_SC7280=y
>>> CONFIG_INTERCONNECT_QCOM_SC8180X=y
>>> CONFIG_INTERCONNECT_QCOM_SC8280XP=y
>>> CONFIG_INTERCONNECT_QCOM_SDM845=y
>>> CONFIG_INTERCONNECT_QCOM_SM8150=m
>>> CONFIG_INTERCONNECT_QCOM_SM8250=m
>>> CONFIG_INTERCONNECT_QCOM_SM8350=m
>>> CONFIG_INTERCONNECT_QCOM_SM8450=y
>>> CONFIG_INTERCONNECT_QCOM_SM8550=y
>>
>> If the device can boot (to console/initramfs) with =m, we go with that.
>> But if something critical like the UART depends on the interconnect
>> provider, then we make it built-in.
>>
>> On SM8550 for example, we have enabled bandwidth scaling support for QUP
>> and that's why it needs to be =y.
>>
>> It looks like on SM4450 this should be =y too.
> 
> I asked why SM4450 has to be =y and there was no answer. The argument
> that SM8450 is a module, is not applicable.

 From the hardware description i see in patch 7, the serial engine depends
on some interconnect provider. But as the serial console driver is only
available as built-in, the interconnect provider also needs be built-in
for the UART device to probe and register the console.

So the answer to your question should be that this is needed by the UART
device (at least).

Such details of course deserve to be mentioned in the commit message of
this patch.

BR,
Georgi


