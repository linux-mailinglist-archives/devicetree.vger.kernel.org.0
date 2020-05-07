Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A42D81C8679
	for <lists+devicetree@lfdr.de>; Thu,  7 May 2020 12:16:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725900AbgEGKQY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 May 2020 06:16:24 -0400
Received: from foss.arm.com ([217.140.110.172]:55720 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725857AbgEGKQY (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 7 May 2020 06:16:24 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 036B2D6E;
        Thu,  7 May 2020 03:16:22 -0700 (PDT)
Received: from [192.168.2.22] (unknown [172.31.20.19])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DFF403F71F;
        Thu,  7 May 2020 03:16:20 -0700 (PDT)
Subject: Re: [PATCH RFC 4/8] arm64: dts: actions: disable sps node from S700
To:     Amit Singh Tomar <amittomer25@gmail.com>, afaerber@suse.de,
        manivannan.sadhasivam@linaro.org, robh+dt@kernel.org
Cc:     cristian.ciocaltea@gmail.com, linux-arm-kernel@lists.infradead.org,
        linux-actions@lists.infradead.org, devicetree@vger.kernel.org
References: <1588761371-9078-1-git-send-email-amittomer25@gmail.com>
 <1588761371-9078-5-git-send-email-amittomer25@gmail.com>
From:   =?UTF-8?Q?Andr=c3=a9_Przywara?= <andre.przywara@arm.com>
Organization: ARM Ltd.
Message-ID: <8cf98b73-8c8e-b9d7-989b-f1e869c990d5@arm.com>
Date:   Thu, 7 May 2020 11:15:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <1588761371-9078-5-git-send-email-amittomer25@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/05/2020 11:36, Amit Singh Tomar wrote:
> After commit 7cdf8446ed1d ("arm64: dts: actions: Add pinctrl node for
> Actions Semi S700") following error has been observed while booting
> Linux on Cubieboard7-lite(based on S700 SoC).
> 
> [    0.257415] pinctrl-s700 e01b0000.pinctrl: can't request region for
> resource [mem 0xe01b0000-0xe01b0fff]
> [    0.266902] pinctrl-s700: probe of e01b0000.pinctrl failed with error -16
> 
> This is due to the fact that memory range for "sps" power domain controller
> clashes with pinctrl.
> 
> This commit fixes it by disabling "sps" node, it is safe as "sps" is not
> being used at the moment.
> 
> Fixes: 7cdf8446ed1d ("arm64: dts: actions: Add pinctrl node for Actions
> Semi S700")

But this is more of a hack than a proper solution, right? Especially
since you actually need the SPS later on (patch 8/8).
It's probably good enough to prove that the DMA and MMC parts are
working, but should not be merged.

Cheers,
Andre.

> 
> Signed-off-by: Amit Singh Tomar <amittomer25@gmail.com>
> ---
>  arch/arm64/boot/dts/actions/s700.dtsi | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/actions/s700.dtsi b/arch/arm64/boot/dts/actions/s700.dtsi
> index 2006ad5424fa..0397c5dd3dec 100644
> --- a/arch/arm64/boot/dts/actions/s700.dtsi
> +++ b/arch/arm64/boot/dts/actions/s700.dtsi
> @@ -220,6 +220,7 @@
>  			compatible = "actions,s700-sps";
>  			reg = <0x0 0xe01b0100 0x0 0x100>;
>  			#power-domain-cells = <1>;
> +			status = "disabled";
>  		};
>  
>  		timer: timer@e024c000 {
> 

