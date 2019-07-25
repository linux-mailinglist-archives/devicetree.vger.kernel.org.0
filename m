Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AC09D7524D
	for <lists+devicetree@lfdr.de>; Thu, 25 Jul 2019 17:15:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389096AbfGYPPU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Jul 2019 11:15:20 -0400
Received: from foss.arm.com ([217.140.110.172]:59166 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2389020AbfGYPPT (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 25 Jul 2019 11:15:19 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 99079344;
        Thu, 25 Jul 2019 08:15:18 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5C78E3F71A;
        Thu, 25 Jul 2019 08:15:17 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: fast models: Increase clcd's
 max-memory-bandwidth
To:     Kevin Brodsky <kevin.brodsky@arm.com>,
        linux-arm-kernel@lists.infradead.org
Cc:     devicetree@vger.kernel.org, Pawel Moll <pawel.moll@arm.com>,
        Ruben Ayrapetyan <ruben.ayrapetyan@arm.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Liviu Dudau <liviu.dudau@arm.com>,
        dri-devel@lists.freedesktop.org,
        Sudeep Holla <sudeep.holla@arm.com>,
        Brian Starkey <brian.starkey@arm.com>
References: <20190725145040.42182-1-kevin.brodsky@arm.com>
From:   Robin Murphy <robin.murphy@arm.com>
Message-ID: <042d5c3d-96fe-5466-3869-a0a3a08b964d@arm.com>
Date:   Thu, 25 Jul 2019 16:15:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190725145040.42182-1-kevin.brodsky@arm.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Kevin,

On 25/07/2019 15:50, Kevin Brodsky wrote:
> It may be desirable on certain platforms, such as Android, to
> use 32bpp buffers. Since there is no clear bandwidth limit for the
> CLCD component on the fast model, let's increase
> max-memory-bandwidth to allow using 32bpp buffers.

Given that the property is optional anyway, would it hurt to just remove 
it? After trying to dig up any relevant internal email history, it's 
still far from clear how and why it got here in the first place.

Robin.

> Reported-by: Ruben Ayrapetyan <ruben.ayrapetyan@arm.com>
> Signed-off-by: Kevin Brodsky <kevin.brodsky@arm.com>
> ---
>   arch/arm64/boot/dts/arm/fvp-base-revc.dts | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/arm/fvp-base-revc.dts b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
> index 687707020ec1..3aee49ed6d88 100644
> --- a/arch/arm64/boot/dts/arm/fvp-base-revc.dts
> +++ b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
> @@ -269,7 +269,7 @@
>   		motherboard {
>   			iofpga@3,00000000 {
>   				clcd@1f0000 {
> -					max-memory-bandwidth = <130000000>; /* 16bpp @ 63.5MHz */
> +					max-memory-bandwidth = <260000000>; /* 32bpp @ 63.5MHz */
>   				};
>   			};
>   		};
> 
