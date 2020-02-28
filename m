Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 45E02173788
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2020 13:48:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725886AbgB1Msx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Feb 2020 07:48:53 -0500
Received: from foss.arm.com ([217.140.110.172]:37770 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725876AbgB1Msx (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 28 Feb 2020 07:48:53 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 12BE34B2;
        Fri, 28 Feb 2020 04:48:53 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D82A33F7B4;
        Fri, 28 Feb 2020 04:48:51 -0800 (PST)
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: Describe RK3328 GPIO_MUTE
 users
From:   Robin Murphy <robin.murphy@arm.com>
To:     heiko@sntech.de
Cc:     lgirdwood@gmail.com, broonie@kernel.org,
        devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
        pgwipeout@gmail.com, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
References: <cover.1581376744.git.robin.murphy@arm.com>
 <53637c0359ad9473dc1391a8428ba21017ec467e.1581376744.git.robin.murphy@arm.com>
Message-ID: <59fe8a7d-22ab-6098-5266-4fdf4bf41adb@arm.com>
Date:   Fri, 28 Feb 2020 12:48:50 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <53637c0359ad9473dc1391a8428ba21017ec467e.1581376744.git.robin.murphy@arm.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Heiko,

On 18/02/2020 9:32 pm, Robin Murphy wrote:
> Add explicit properties to describe existing boards' GPIO_MUTE usage
> for the analog codec.

Are you happy to pick this up now that the driver patches are queued?

Thanks,
Robin.

> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
> 
> v2: no change
> 
>   arch/arm64/boot/dts/rockchip/rk3328-a1.dts     | 1 +
>   arch/arm64/boot/dts/rockchip/rk3328-rock64.dts | 1 +
>   2 files changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-a1.dts b/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
> index 16f1656d5203..797e90a3ac92 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
> @@ -60,6 +60,7 @@
>   };
>   
>   &codec {
> +	mute-gpios = <&grf_gpio 0 GPIO_ACTIVE_LOW>;
>   	status = "okay";
>   };
>   
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> index 62936b432f9a..bf3e546f5266 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> @@ -104,6 +104,7 @@
>   };
>   
>   &codec {
> +	mute-gpios = <&grf_gpio 0 GPIO_ACTIVE_LOW>;
>   	status = "okay";
>   
>   	port@0 {
> 
