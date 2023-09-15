Return-Path: <devicetree+bounces-378-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B55127A16E6
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 09:07:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 793B7282665
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 07:07:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18B2E79D4;
	Fri, 15 Sep 2023 07:07:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 911823201
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 07:07:27 +0000 (UTC)
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com [45.249.212.188])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E70A41998;
	Fri, 15 Sep 2023 00:07:14 -0700 (PDT)
Received: from kwepemm600013.china.huawei.com (unknown [172.30.72.55])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4Rn4tZ1pJSzVkXV;
	Fri, 15 Sep 2023 15:04:22 +0800 (CST)
Received: from [10.174.178.156] (10.174.178.156) by
 kwepemm600013.china.huawei.com (7.193.23.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.31; Fri, 15 Sep 2023 15:07:11 +0800
Message-ID: <c2f6e5b7-8eda-fb00-08ac-e1f54938f6a4@huawei.com>
Date: Fri, 15 Sep 2023 15:07:11 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Subject: Re: [PATCH v4 2/2] dt-bindings: dma: HiSilicon: Add bindings for
 HiSilicon Ascend sdma
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, <vkoul@kernel.org>,
	<dmaengine@vger.kernel.org>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
	<devicetree@vger.kernel.org>
CC: <xuqiang36@huawei.com>, <chenweilong@huawei.com>
References: <20230913082825.3180-1-guomengqi3@huawei.com>
 <20230913082825.3180-3-guomengqi3@huawei.com>
 <8eff1f20-1cfc-7097-da26-97daaae5e8ca@linaro.org>
From: "guomengqi (A)" <guomengqi3@huawei.com>
In-Reply-To: <8eff1f20-1cfc-7097-da26-97daaae5e8ca@linaro.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.174.178.156]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 kwepemm600013.china.huawei.com (7.193.23.68)
X-CFilter-Loop: Reflected
X-Spam-Status: No, score=-3.4 required=5.0 tests=BAYES_00,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net


在 2023/9/13 17:20, Krzysztof Kozlowski 写道:
> On 13/09/2023 10:28, Guo Mengqi wrote:
>> Add device-tree binding documentation for sdma hardware on
>> HiSilicon Ascend SoC families.
>>
>> Signed-off-by: Guo Mengqi <guomengqi3@huawei.com>
>> ---
>>
>> +  dma-channel-mask:
>> +    minItems: 1
>> +    maxItems: 2
> Why 2? Care to bring any example? Where is your DTS?

Seems that the complete dts is not in the repository.

Some platform supports up to 40 channels at most, in design. So I think 
2 should be enough.

>> +  iommus:
>> +    maxItems: 1
>> +
>> +  pasid-num-bits:
>> +    description: |
>> +      This tells smmu that this device supports iommu-sva feature.
>> +      This determines the maximum number of digits in the pasid.
>> +    maximum: 0x10
>> +
>> +  dma-coherent: true
>> +
>> +  dma-can-stall: true
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +  - dma-channel-mask
>> +  - '#dma-cells'
>> +  - iommus
>> +  - pasid-num-bits
>> +  - dma-can-stall
> I am not sure if requiring dma-can-stall is correct here. To my
> understanding this is in general optional property.

If  "dma-can-stall" is declared,  drivers can rely on smmu to handle 
page-fault.

Yes, this is not a required one. It does not affect main usage. Drop it 
in next patch.

> Best regards,
> Krzysztof
>
>
> .

Best regards,

Guo Mengqi


