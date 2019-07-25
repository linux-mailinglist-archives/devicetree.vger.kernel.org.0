Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 79C25754D1
	for <lists+devicetree@lfdr.de>; Thu, 25 Jul 2019 18:58:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389806AbfGYQ6d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Jul 2019 12:58:33 -0400
Received: from foss.arm.com ([217.140.110.172]:33038 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2388177AbfGYQ6c (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 25 Jul 2019 12:58:32 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C98E919BF;
        Thu, 25 Jul 2019 09:58:31 -0700 (PDT)
Received: from [10.1.194.48] (e123572-lin.cambridge.arm.com [10.1.194.48])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6FF8F3F71A;
        Thu, 25 Jul 2019 09:58:30 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: fast models: Increase clcd's
 max-memory-bandwidth
To:     Robin Murphy <robin.murphy@arm.com>,
        linux-arm-kernel@lists.infradead.org
Cc:     devicetree@vger.kernel.org, Pawel Moll <pawel.moll@arm.com>,
        Ruben Ayrapetyan <ruben.ayrapetyan@arm.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Liviu Dudau <liviu.dudau@arm.com>,
        dri-devel@lists.freedesktop.org,
        Sudeep Holla <sudeep.holla@arm.com>,
        Brian Starkey <brian.starkey@arm.com>
References: <20190725145040.42182-1-kevin.brodsky@arm.com>
 <042d5c3d-96fe-5466-3869-a0a3a08b964d@arm.com>
From:   Kevin Brodsky <kevin.brodsky@arm.com>
Message-ID: <1d7929a2-273e-e695-6700-36aacf38f61a@arm.com>
Date:   Thu, 25 Jul 2019 17:58:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <042d5c3d-96fe-5466-3869-a0a3a08b964d@arm.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-GB
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/07/2019 16:15, Robin Murphy wrote:
> Hi Kevin,

Hi Robin,

> On 25/07/2019 15:50, Kevin Brodsky wrote:
>> It may be desirable on certain platforms, such as Android, to
>> use 32bpp buffers. Since there is no clear bandwidth limit for the
>> CLCD component on the fast model, let's increase
>> max-memory-bandwidth to allow using 32bpp buffers.
> Given that the property is optional anyway, would it hurt to just remove
> it? After trying to dig up any relevant internal email history, it's
> still far from clear how and why it got here in the first place.

Very good point, I hadn't realised it was an optional property. Removing it 
completely seems to work fine. I'll send a v2 removing it from both fvp-base-revc.dts 
and rtsm_ve-motherboard.dtsi. Thanks!

Kevin

> Robin.
>
>> Reported-by: Ruben Ayrapetyan <ruben.ayrapetyan@arm.com>
>> Signed-off-by: Kevin Brodsky <kevin.brodsky@arm.com>
>> ---
>>    arch/arm64/boot/dts/arm/fvp-base-revc.dts | 2 +-
>>    1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/boot/dts/arm/fvp-base-revc.dts b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
>> index 687707020ec1..3aee49ed6d88 100644
>> --- a/arch/arm64/boot/dts/arm/fvp-base-revc.dts
>> +++ b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
>> @@ -269,7 +269,7 @@
>>    		motherboard {
>>    			iofpga@3,00000000 {
>>    				clcd@1f0000 {
>> -					max-memory-bandwidth = <130000000>; /* 16bpp @ 63.5MHz */
>> +					max-memory-bandwidth = <260000000>; /* 32bpp @ 63.5MHz */
>>    				};
>>    			};
>>    		};
>>

