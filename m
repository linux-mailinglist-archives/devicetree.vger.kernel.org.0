Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D9F20567CD6
	for <lists+devicetree@lfdr.de>; Wed,  6 Jul 2022 05:51:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231773AbiGFDvT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Jul 2022 23:51:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51384 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231899AbiGFDvD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Jul 2022 23:51:03 -0400
Received: from esa6.hgst.iphmx.com (esa6.hgst.iphmx.com [216.71.154.45])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B7681E3E8
        for <devicetree@vger.kernel.org>; Tue,  5 Jul 2022 20:49:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1657079398; x=1688615398;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=nWXv72h/88bA9KDqkdclJQLLn1UNVvDpSy3/LQXeW3c=;
  b=pzOcgItm/pHxnzu7uSUmoMWmAGCM4t/FX6/gba5wDckf9gLqtEsqJEDq
   58QOAvKrLvmvN5q8zv7opVbJMx8X0h2KS3zbNJsKslMcT1mXiV9IFVUmO
   Bq+aIv6rEMWX5JHWD6mdaJZGJKPGVPXgtXaY1DKeQMFTtaDS8F8VsR2cj
   TC3djGGjbj4R+kNf0ElVe+eEgC4aFS4bk11okGGSIip1wtz7GkY9FMqrZ
   oIeaanHc6KpYyVgi2GrdYnXGHD7+j5jeszvJYicsAn/P1RBoYqD+bLDVS
   6kH9GSOxQCUWiZ6sNbDkqTAJ7OTUoskf9THdvfyg1jKUuOkp24vLCrTzb
   Q==;
X-IronPort-AV: E=Sophos;i="5.92,248,1650902400"; 
   d="scan'208";a="205653585"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 06 Jul 2022 11:49:57 +0800
IronPort-SDR: 0LLF8j4jfaqskR91dpZiGLzaM8jvwdE47xvIvz0TuVBrLtqCKyuLgqE1sStKmJOq2Bki/liwxD
 vnFroZrXY7zNgtB95Pvcy6YMCWlxsAL+ydF23aazUqtz3JAfBQ4tILTPICXhPMsE7wQXbkZmWh
 TnBHRiPM9NnQ8a7gm3g6h25ErV6FiYhDqeGyuYES8Dt3pf6qJIpmUsU7An+qes0EXqAKhY3xIH
 UkYV/S1q0WnJmiSDpcY3OVaeXA3hBWpWaj1VIb9TzlPqV+88tihaqVo/nsm6Q+n77L9eF797sk
 drtW6XQ5z1hiwc78juyjINUO
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 05 Jul 2022 20:07:15 -0700
IronPort-SDR: 1n/sDuciZ5V2YKp6aDTOm9aSyHVSU/Ymh0u+zlf3yE1P+j91I1F7MlYfteFttpNZM1OJfEnFBA
 lh0KvOQpRoS2/Ym8wCPEKrnnky8wPrbvbCPEV6QFayhmJltJnT92ucIWCMik2cMxkoG93tAf51
 CFLt4aMy3H1bhcKuzNi8TDDuRn2nZNTRqIIUDwbMUfxa8sMvidQZmdjF8vnZoZOLOQqBExpDFI
 mrRuJTHOGe0C5IBEX1MRduLi/kfZqfbyqfM7eV1MN1YT/0qiaV4zh+7T1hpFlDBpjiwhy0pxdr
 64Y=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 05 Jul 2022 20:49:53 -0700
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4Ld5CN2gX7z1Rwnx
        for <devicetree@vger.kernel.org>; Tue,  5 Jul 2022 20:49:52 -0700 (PDT)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
        reason="pass (just generated, assumed good)"
        header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
        opensource.wdc.com; h=content-transfer-encoding:content-type
        :in-reply-to:organization:from:references:to:content-language
        :subject:user-agent:mime-version:date:message-id; s=dkim; t=
        1657079391; x=1659671392; bh=nWXv72h/88bA9KDqkdclJQLLn1UNVvDpSy3
        /LQXeW3c=; b=nsPEh3kxlE7MqhvN3ZaDyASIGDCsqRg1j2EfcgKLG7Vy/56o+nO
        gTH2/zWFVqqi/8O91Lt2+Ne0RNdzEdBhpu6VbUqoWACPLWwx1OIniYii0AB2/Uyu
        H/uPpkOILPvsZYZCrZVkDTP5Cvyh/J+5y2e9azvx6X/wZkUamLwakVCSueTTqpfh
        4yNO76Ic1bibrnnbqYS52T/TPW4kT6e22aepwGJsEeVZx8fAKyH6AS8Evx7mYCVj
        PHhpDMgw8x3qXycgDjWY9Ai+Yx6fJHxL+122RCb+ALDPD8jM1NqrSBH9PKxtoxgH
        p2797YK5vNvqIsrIz56kcxEjGygqerYWYwA==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
        by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id 3FnaMURizKuI for <devicetree@vger.kernel.org>;
        Tue,  5 Jul 2022 20:49:51 -0700 (PDT)
Received: from [10.225.163.110] (unknown [10.225.163.110])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4Ld5CJ61Zxz1RtVk;
        Tue,  5 Jul 2022 20:49:48 -0700 (PDT)
Message-ID: <53aa543b-a109-046d-beda-91a15ef5a487@opensource.wdc.com>
Date:   Wed, 6 Jul 2022 12:49:47 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 5/5] riscv: dts: canaan: Add k210 topology information
Content-Language: en-US
To:     Conor Dooley <mail@conchuod.ie>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Daire McNamara <daire.mcnamara@microchip.com>,
        Conor Dooley <conor.dooley@microchip.com>,
        Niklas Cassel <niklas.cassel@wdc.com>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Zong Li <zong.li@sifive.com>,
        Emil Renner Berthing <kernel@esmil.dk>,
        Jonas Hahnfeld <hahnjo@hahnjo.de>
Cc:     devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-kernel@vger.kernel.org, Brice Goglin <Brice.Goglin@inria.fr>
References: <20220705190435.1790466-1-mail@conchuod.ie>
 <20220705190435.1790466-6-mail@conchuod.ie>
From:   Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital Research
In-Reply-To: <20220705190435.1790466-6-mail@conchuod.ie>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 7/6/22 04:04, Conor Dooley wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
> 
> The k210 has no cpu-map node, so tools like hwloc cannot correctly
> parse the topology. Add the node using the existing node labels.
> 
> Reported-by: Brice Goglin <Brice.Goglin@inria.fr>
> Link: https://github.com/open-mpi/hwloc/issues/536
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>

Looks good to me.

Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>

> ---
>  arch/riscv/boot/dts/canaan/k210.dtsi | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/arch/riscv/boot/dts/canaan/k210.dtsi b/arch/riscv/boot/dts/canaan/k210.dtsi
> index 44d338514761..ec944d1537dc 100644
> --- a/arch/riscv/boot/dts/canaan/k210.dtsi
> +++ b/arch/riscv/boot/dts/canaan/k210.dtsi
> @@ -65,6 +65,18 @@ cpu1_intc: interrupt-controller {
>  				compatible = "riscv,cpu-intc";
>  			};
>  		};
> +
> +		cpu-map {
> +			cluster0 {
> +				core0 {
> +					cpu = <&cpu0>;
> +				};
> +
> +				core1 {
> +					cpu = <&cpu1>;
> +				};
> +			};
> +		};
>  	};
>  
>  	sram: memory@80000000 {


-- 
Damien Le Moal
Western Digital Research
