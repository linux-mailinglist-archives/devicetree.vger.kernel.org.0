Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8F2D845E6F2
	for <lists+devicetree@lfdr.de>; Fri, 26 Nov 2021 05:44:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232951AbhKZEr6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Nov 2021 23:47:58 -0500
Received: from esa4.hgst.iphmx.com ([216.71.154.42]:27101 "EHLO
        esa4.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351962AbhKZEp6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Nov 2021 23:45:58 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1637901766; x=1669437766;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=Ik1lF/XZVpMWQiIdsqFBUkYBaFMbEyYXPm42STW4A9k=;
  b=SM5Wqw/y7M/ul9gYzHb61Wv/W/5Xx40+q4I2FDbHWmAPmeZ6A/p2fgYn
   inYJIGU5EKvXAAsMVre2dyQPLUjgmq/m+qNLL17SyT+Egd22CBTO4alSO
   OinamMFI3v8atD6ah4v0aSjqpp342NtI+XiTB32mtXVcGJJyI0Yo8PxEp
   u0nxHSGKqBIDh/xBn0PgUMnLK3vdOGScuyUfX7n9buaWBtSffne3KsPmQ
   3925xb3h1v7ppHjAz31I+he5duKAZIr+qKf4tW+MiXxOqUV/Fa0cfAefx
   My8Ak/9CerzXFhBFo8AZ8r9H2Hv1u1Z5tuj6DxWde/pf0XpWytOrAU+FE
   Q==;
X-IronPort-AV: E=Sophos;i="5.87,263,1631548800"; 
   d="scan'208";a="185678264"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 26 Nov 2021 12:42:45 +0800
IronPort-SDR: 0Fn4bgzudCU+XaAU0sAeF1cqLwaGouvEfifw2GbWU2J9YwEHMYDcEUwpWmxvjkNTx4DgCfBEEK
 exAGxz/kKCKG2GE0OrFP2FjIDJiyP709d2S32m7Qa+K05toddT97wrYYj5/yiYBoU+xw7SkOod
 3Tqr/3ThSIXKf+kCaIgPCJD44TOCgFmEx7n5a75gbdxMT/k+TWE7heHT0luVjoXPK1TgfH9WTe
 mG3f/LYgZpimJztXrQh2jHqlrAkacj+egpURBU+H/zEROzXKwxlCw9unpOELXAUqvEJ3WdrBzB
 TMLnrky5Spn6fkCo73PGdo90
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Nov 2021 20:17:36 -0800
IronPort-SDR: xzgElxgg0QDOZRl6FaIMit/j+wSPuVVAqeEjR/UR0mncrfgmtKMygPpLVOkc9+bH6cnh1DDfxb
 8hsFh4unO0IPQrDOCtZItGoz69FCADwT6ED0i6ZxWd4cz1uFRllbCEu/mYGyRdouyTuNgnUEcC
 JuPUnuIBbQ1WWtCajd5AkLTAJgF67AOM7F/E+4IrHBnFBXhKBM77G22nFtGUC2+VsyVxK29u8L
 PimA5xSNep63UVcYeRepsX661tB4vsxhtI/ivrXWeNUrM4sPt5/yeQWv2THaU1qDK2dR+DKQ1g
 0Vo=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Nov 2021 20:42:45 -0800
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4J0htr53Y8z1RtVy
        for <devicetree@vger.kernel.org>; Thu, 25 Nov 2021 20:42:44 -0800 (PST)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
        reason="pass (just generated, assumed good)"
        header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
        opensource.wdc.com; h=content-transfer-encoding:content-type
        :in-reply-to:organization:from:references:to:content-language
        :subject:user-agent:mime-version:date:message-id; s=dkim; t=
        1637901763; x=1640493764; bh=Ik1lF/XZVpMWQiIdsqFBUkYBaFMbEyYXPm4
        2STW4A9k=; b=RWMbiAchF73M7AOQOyKDu8Rz9fmuZaXAsUbRZUq1XtGVd/ivXRR
        IhNyvhldPXUZB3WseIJBTXoQuH80YLnKcCaCRvLsniLrx70upOyj05nERPSw5yTQ
        hkery0b8AmZAkAQ4Sl/HgvDLrwmuRGzxpI+NMXRNNm3RhqA6wGMrgDBNd9PJqtdt
        D19ok5iAZXpESL8KQmgSNXKAI8WShAyvogy5CtQm4EzqLNXtqsoBa/63wSybsqsB
        toiqudG4+FHjjiVVfjS5LTm8RreUW9Q1m7ga/I6R3WYMJ6sea4XrdpQb/ZKdittz
        eB5JhkZQsaTKKH0b96NXEnCm4kP3wGHbZHw==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
        by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id TeqWlgSR7LsD for <devicetree@vger.kernel.org>;
        Thu, 25 Nov 2021 20:42:43 -0800 (PST)
Received: from [10.225.54.48] (unknown [10.225.54.48])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4J0htp2C6tz1RtVl;
        Thu, 25 Nov 2021 20:42:42 -0800 (PST)
Message-ID: <853018bd-8c5e-4a03-9876-ca9f8a412ea5@opensource.wdc.com>
Date:   Fri, 26 Nov 2021 13:42:40 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.3.2
Subject: Re: [PATCH 2/9] riscv: dts: canaan: Group tuples in interrupt
 properties
Content-Language: en-US
To:     Geert Uytterhoeven <geert@linux-m68k.org>,
        Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Lewis Hanly <lewis.hanly@microchip.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Conor Dooley <conor.dooley@microchip.com>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
References: <20211125153131.163533-1-geert@linux-m68k.org>
 <20211125153131.163533-3-geert@linux-m68k.org>
From:   Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital
In-Reply-To: <20211125153131.163533-3-geert@linux-m68k.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2021/11/26 0:31, Geert Uytterhoeven wrote:
> To improve human readability and enable automatic validation, the tuples
> in the various properties containing interrupt specifiers should be
> grouped.
> 
> Fix this by grouping the tuples of "interrupts" and
> "interrupts-extended" properties using angle brackets.
> 
> Signed-off-by: Geert Uytterhoeven <geert@linux-m68k.org>
> ---
>  arch/riscv/boot/dts/canaan/k210.dtsi | 23 ++++++++++++-----------
>  1 file changed, 12 insertions(+), 11 deletions(-)
> 
> diff --git a/arch/riscv/boot/dts/canaan/k210.dtsi b/arch/riscv/boot/dts/canaan/k210.dtsi
> index 5e8ca8142482153b..56f57118c633b91a 100644
> --- a/arch/riscv/boot/dts/canaan/k210.dtsi
> +++ b/arch/riscv/boot/dts/canaan/k210.dtsi
> @@ -103,8 +103,8 @@ rom0: nvmem@1000 {
>  		clint0: timer@2000000 {
>  			compatible = "canaan,k210-clint", "sifive,clint0";
>  			reg = <0x2000000 0xC000>;
> -			interrupts-extended = <&cpu0_intc 3 &cpu0_intc 7
> -					      &cpu1_intc 3 &cpu1_intc 7>;
> +			interrupts-extended = <&cpu0_intc 3>, <&cpu0_intc 7>,
> +					      <&cpu1_intc 3>, <&cpu1_intc 7>;
>  		};
>  
>  		plic0: interrupt-controller@c000000 {
> @@ -113,7 +113,7 @@ plic0: interrupt-controller@c000000 {
>  			compatible = "canaan,k210-plic", "sifive,plic-1.0.0";
>  			reg = <0xC000000 0x4000000>;
>  			interrupt-controller;
> -			interrupts-extended = <&cpu0_intc 11 &cpu1_intc 11>;
> +			interrupts-extended = <&cpu0_intc 11>, <&cpu1_intc 11>;
>  			riscv,ndev = <65>;
>  		};
>  
> @@ -130,10 +130,11 @@ gpio0: gpio-controller@38001000 {
>  			compatible = "canaan,k210-gpiohs", "sifive,gpio0";
>  			reg = <0x38001000 0x1000>;
>  			interrupt-controller;
> -			interrupts = <34 35 36 37 38 39 40 41
> -				      42 43 44 45 46 47 48 49
> -				      50 51 52 53 54 55 56 57
> -				      58 59 60 61 62 63 64 65>;
> +			interrupts = <34>, <35>, <36>, <37>, <38>, <39>, <40>,
> +				     <41>, <42>, <43>, <44>, <45>, <46>, <47>,
> +				     <48>, <49>, <50>, <51>, <52>, <53>, <54>,
> +				     <55>, <56>, <57>, <58>, <59>, <60>, <61>,
> +				     <62>, <63>, <64>, <65>;
>  			gpio-controller;
>  			ngpios = <32>;
>  		};
> @@ -141,7 +142,7 @@ gpio0: gpio-controller@38001000 {
>  		dmac0: dma-controller@50000000 {
>  			compatible = "snps,axi-dma-1.01a";
>  			reg = <0x50000000 0x1000>;
> -			interrupts = <27 28 29 30 31 32>;
> +			interrupts = <27>, <28>, <29>, <30>, <31>, <32>;
>  			#dma-cells = <1>;
>  			clocks = <&sysclk K210_CLK_DMA>, <&sysclk K210_CLK_DMA>;
>  			clock-names = "core-clk", "cfgr-clk";
> @@ -316,7 +317,7 @@ fpioa: pinmux@502b0000 {
>  			timer0: timer@502d0000 {
>  				compatible = "snps,dw-apb-timer";
>  				reg = <0x502D0000 0x100>;
> -				interrupts = <14 15>;
> +				interrupts = <14>, <15>;
>  				clocks = <&sysclk K210_CLK_TIMER0>,
>  					 <&sysclk K210_CLK_APB0>;
>  				clock-names = "timer", "pclk";
> @@ -326,7 +327,7 @@ timer0: timer@502d0000 {
>  			timer1: timer@502e0000 {
>  				compatible = "snps,dw-apb-timer";
>  				reg = <0x502E0000 0x100>;
> -				interrupts = <16 17>;
> +				interrupts = <16>, <17>;
>  				clocks = <&sysclk K210_CLK_TIMER1>,
>  					 <&sysclk K210_CLK_APB0>;
>  				clock-names = "timer", "pclk";
> @@ -336,7 +337,7 @@ timer1: timer@502e0000 {
>  			timer2: timer@502f0000 {
>  				compatible = "snps,dw-apb-timer";
>  				reg = <0x502F0000 0x100>;
> -				interrupts = <18 19>;
> +				interrupts = <18>, <19>;
>  				clocks = <&sysclk K210_CLK_TIMER2>,
>  					 <&sysclk K210_CLK_APB0>;
>  				clock-names = "timer", "pclk";
> 

Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Tested-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>


-- 
Damien Le Moal
Western Digital Research
