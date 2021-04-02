Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6AD583526EA
	for <lists+devicetree@lfdr.de>; Fri,  2 Apr 2021 09:28:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233521AbhDBH25 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Apr 2021 03:28:57 -0400
Received: from szxga04-in.huawei.com ([45.249.212.190]:15588 "EHLO
        szxga04-in.huawei.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229684AbhDBH25 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Apr 2021 03:28:57 -0400
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.58])
        by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4FBWp03hGsz19Kd9;
        Fri,  2 Apr 2021 15:26:48 +0800 (CST)
Received: from [10.40.166.221] (10.40.166.221) by
 DGGEMS413-HUB.china.huawei.com (10.3.19.213) with Microsoft SMTP Server id
 14.3.498.0; Fri, 2 Apr 2021 15:28:46 +0800
Message-ID: <6066C7AF.7030304@hisilicon.com>
Date:   Fri, 2 Apr 2021 15:28:47 +0800
From:   Wei Xu <xuwei5@hisilicon.com>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To:     Zhen Lei <thunder.leizhen@huawei.com>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Arnd Bergmann <arnd@kernel.org>
CC:     Zhangfei Gao <zhangfei.gao@linaro.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH v4 1/1] arm64: dts: correct vendor prefix hisi to hisilicon
References: <20210302113351.1204-1-thunder.leizhen@huawei.com> <20210302113351.1204-2-thunder.leizhen@huawei.com>
In-Reply-To: <20210302113351.1204-2-thunder.leizhen@huawei.com>
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.40.166.221]
X-CFilter-Loop: Reflected
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Zhen Lei,

On 2021/3/2 19:33, Zhen Lei wrote:
> The vendor prefix of "Hisilicon Limited" is "hisilicon", it is clearly
> stated in "vendor-prefixes.yaml".
> 
> Fixes: a4e36ae0fb33 ("arm64: dts: hi3660: add resources for clock and reset")
> Fixes: 757a4b2913eb ("arm64: dts: hisilicon: hi3670: Add reset controller support")
> Fixes: 305656e0989d ("arm64: dts: hisilicon: hi3670.dtsi: add iomcu_rst")
> Signed-off-by: Zhen Lei <thunder.leizhen@huawei.com>
> Cc: Zhangfei Gao <zhangfei.gao@linaro.org>
> Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>

Thanks!
Applied to the hisilicon arm64 dt tree.

Best Regards,
Wei

> ---
>  arch/arm64/boot/dts/hisilicon/hi3660.dtsi | 4 ++--
>  arch/arm64/boot/dts/hisilicon/hi3670.dtsi | 4 ++--
>  2 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/hisilicon/hi3660.dtsi b/arch/arm64/boot/dts/hisilicon/hi3660.dtsi
> index cab89dc6f596121..8b8d3d07b67fe84 100644
> --- a/arch/arm64/boot/dts/hisilicon/hi3660.dtsi
> +++ b/arch/arm64/boot/dts/hisilicon/hi3660.dtsi
> @@ -345,7 +345,7 @@
>  		crg_rst: crg_rst_controller {
>  			compatible = "hisilicon,hi3660-reset";
>  			#reset-cells = <2>;
> -			hisi,rst-syscon = <&crg_ctrl>;
> +			hisilicon,rst-syscon = <&crg_ctrl>;
>  		};
>  
>  
> @@ -376,7 +376,7 @@
>  
>  		iomcu_rst: reset {
>  			compatible = "hisilicon,hi3660-reset";
> -			hisi,rst-syscon = <&iomcu>;
> +			hisilicon,rst-syscon = <&iomcu>;
>  			#reset-cells = <2>;
>  		};
>  
> diff --git a/arch/arm64/boot/dts/hisilicon/hi3670.dtsi b/arch/arm64/boot/dts/hisilicon/hi3670.dtsi
> index 8830795c8efc5a5..37409f0639628d0 100644
> --- a/arch/arm64/boot/dts/hisilicon/hi3670.dtsi
> +++ b/arch/arm64/boot/dts/hisilicon/hi3670.dtsi
> @@ -155,7 +155,7 @@
>  			compatible = "hisilicon,hi3670-reset",
>  				     "hisilicon,hi3660-reset";
>  			#reset-cells = <2>;
> -			hisi,rst-syscon = <&crg_ctrl>;
> +			hisilicon,rst-syscon = <&crg_ctrl>;
>  		};
>  
>  		pctrl: pctrl@e8a09000 {
> @@ -196,7 +196,7 @@
>  
>  		iomcu_rst: reset {
>  			compatible = "hisilicon,hi3660-reset";
> -			hisi,rst-syscon = <&iomcu>;
> +			hisilicon,rst-syscon = <&iomcu>;
>  			#reset-cells = <2>;
>  		};
>  
> 
