Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5F75323D9A
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2019 18:37:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2392268AbfETQhc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 May 2019 12:37:32 -0400
Received: from mga11.intel.com ([192.55.52.93]:57069 "EHLO mga11.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2389869AbfETQhc (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 20 May 2019 12:37:32 -0400
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 20 May 2019 09:37:31 -0700
X-ExtLoop1: 1
Received: from tthayer-hp-z620.an.intel.com (HELO [10.122.105.146]) ([10.122.105.146])
  by FMSMGA003.fm.intel.com with ESMTP; 20 May 2019 09:37:31 -0700
Reply-To: thor.thayer@linux.intel.com
Subject: Re: [PATCH 3/3] ARM64: dts: stratix10: Add stmmac ptp_ref clock
To:     Dalon Westergreen <dalon.westergreen@linux.intel.com>,
        dinguyen@kernel.org, devicetree@vger.kernel.org
References: <20190515162058.32368-1-dalon.westergreen@linux.intel.com>
 <20190515162058.32368-3-dalon.westergreen@linux.intel.com>
From:   Thor Thayer <thor.thayer@linux.intel.com>
Message-ID: <cff8dd7f-c617-af6c-cf22-2baa077a9bbb@linux.intel.com>
Date:   Mon, 20 May 2019 11:39:40 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190515162058.32368-3-dalon.westergreen@linux.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 5/15/19 11:20 AM, Dalon Westergreen wrote:
> Add the default stmmac ptp_ref clock for stratix10.  The stmmac
> driver defaults the ptp_ref clock to the main stmmac clock
> if the ptp_ref clock is not set in the devicetree.  This is
> inappropriate for the stratix10.  The default ptp_ref clock is
> STRATIX10_PERI_EMAC_PTP_CLK in the clock manager.
> 
> Signed-off-by: Dalon Westergreen <dalon.westergreen@linux.intel.com>
> ---
>   arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi | 12 ++++++------
>   1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
> index adedd563125a..f464e7ba3402 100644
> --- a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
> +++ b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
> @@ -160,8 +160,8 @@
>   			mac-address = [00 00 00 00 00 00];
>   			resets = <&rst EMAC0_RESET>, <&rst EMAC0_OCP_RESET>;
>   			reset-names = "stmmaceth", "stmmaceth-ocp";
> -			clocks = <&clkmgr STRATIX10_EMAC0_CLK>;
> -			clock-names = "stmmaceth";
> +			clocks = <&clkmgr STRATIX10_EMAC0_CLK>, <&clkmgr STRATIX10_PERI_EMAC_PTP_CLK>;
> +			clock-names = "stmmaceth", "ptp_ref";
>   			tx-fifo-depth = <16384>;
>   			rx-fifo-depth = <16384>;
>   			snps,multicast-filter-bins = <256>;
> @@ -176,8 +176,8 @@
>   			mac-address = [00 00 00 00 00 00];
>   			resets = <&rst EMAC1_RESET>, <&rst EMAC1_OCP_RESET>;
>   			reset-names = "stmmaceth", "stmmaceth-ocp";
> -			clocks = <&clkmgr STRATIX10_EMAC1_CLK>;
> -			clock-names = "stmmaceth";
> +			clocks = <&clkmgr STRATIX10_EMAC1_CLK>, <&clkmgr STRATIX10_PERI_EMAC_PTP_CLK>;
> +			clock-names = "stmmaceth", "ptp_ref";
>   			tx-fifo-depth = <16384>;
>   			rx-fifo-depth = <16384>;
>   			snps,multicast-filter-bins = <256>;
> @@ -192,8 +192,8 @@
>   			mac-address = [00 00 00 00 00 00];
>   			resets = <&rst EMAC2_RESET>, <&rst EMAC2_OCP_RESET>;
>   			reset-names = "stmmaceth", "stmmaceth-ocp";
> -			clocks = <&clkmgr STRATIX10_EMAC2_CLK>;
> -			clock-names = "stmmaceth";
> +			clocks = <&clkmgr STRATIX10_EMAC2_CLK>, <&clkmgr STRATIX10_PERI_EMAC_PTP_CLK>;
> +			clock-names = "stmmaceth", "ptp_ref";
>   			tx-fifo-depth = <16384>;
>   			rx-fifo-depth = <16384>;
>   			snps,multicast-filter-bins = <256>;
> 

Should STRATIX10_EMAC_PTP_CLK be used instead of 
STRATIX10_PERI_EMAC_PTP_CLK since this is the gate of the clkgmr?
