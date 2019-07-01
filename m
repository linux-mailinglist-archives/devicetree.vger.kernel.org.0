Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D372123CDF
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2019 18:07:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2392527AbfETQHF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 May 2019 12:07:05 -0400
Received: from mga07.intel.com ([134.134.136.100]:33048 "EHLO mga07.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2387973AbfETQHE (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 20 May 2019 12:07:04 -0400
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 20 May 2019 09:07:03 -0700
X-ExtLoop1: 1
Received: from tthayer-hp-z620.an.intel.com (HELO [10.122.105.146]) ([10.122.105.146])
  by FMSMGA003.fm.intel.com with ESMTP; 20 May 2019 09:07:02 -0700
Reply-To: thor.thayer@linux.intel.com
Subject: Re: [PATCH 1/3] ARM: dts: cyclone5: Add stmmac ptp_ref clock
To:     Dalon Westergreen <dalon.westergreen@linux.intel.com>,
        dinguyen@kernel.org, devicetree@vger.kernel.org
References: <20190515162058.32368-1-dalon.westergreen@linux.intel.com>
From:   Thor Thayer <thor.thayer@linux.intel.com>
Message-ID: <9e10b403-d45d-2d07-8765-b0e0d029e2e7@linux.intel.com>
Date:   Mon, 20 May 2019 11:09:12 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190515162058.32368-1-dalon.westergreen@linux.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 5/15/19 11:20 AM, Dalon Westergreen wrote:
> Add the ptp_ref clock to gmac0 / gmac1 specifying the default clk
> of osc1.  The stmmac driver defaults the ptp_ref clock to the main
> stmmac clock if ptp_ref is not provided.  This is inappropriate for
> the Cyclone5 or Arria5 devices.
> 
> Signed-off-by: Dalon Westergreen <dalon.westergreen@linux.intel.com>
> ---
>   arch/arm/boot/dts/socfpga.dtsi | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/socfpga.dtsi b/arch/arm/boot/dts/socfpga.dtsi
> index 28ecb4bdf5aa..c1c9d6a2bb91 100644
> --- a/arch/arm/boot/dts/socfpga.dtsi
> +++ b/arch/arm/boot/dts/socfpga.dtsi
> @@ -557,8 +557,8 @@
>   			interrupts = <0 115 4>;
>   			interrupt-names = "macirq";
>   			mac-address = [00 00 00 00 00 00];/* Filled in by U-Boot */
> -			clocks = <&emac_0_clk>;
> -			clock-names = "stmmaceth";
> +			clocks = <&emac_0_clk>, <&osc1>;
> +			clock-names = "stmmaceth", "ptp_ref";
>   			resets = <&rst EMAC0_RESET>;
>   			reset-names = "stmmaceth";
>   			snps,multicast-filter-bins = <256>;
> @@ -575,8 +575,8 @@
>   			interrupts = <0 120 4>;
>   			interrupt-names = "macirq";
>   			mac-address = [00 00 00 00 00 00];/* Filled in by U-Boot */
> -			clocks = <&emac_1_clk>;
> -			clock-names = "stmmaceth";
> +			clocks = <&emac_1_clk>, <&osc1>;
> +			clock-names = "stmmaceth", "ptp_ref";
>   			resets = <&rst EMAC1_RESET>;
>   			reset-names = "stmmaceth";
>   			snps,multicast-filter-bins = <256>;
> 
Reviewed-by: Thor Thayer <thor.thayer@linux.intel.com>
