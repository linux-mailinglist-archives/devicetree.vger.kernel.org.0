Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3812A45E6F0
	for <lists+devicetree@lfdr.de>; Fri, 26 Nov 2021 05:43:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1358524AbhKZEqh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Nov 2021 23:46:37 -0500
Received: from esa1.hgst.iphmx.com ([68.232.141.245]:38063 "EHLO
        esa1.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241449AbhKZEof (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Nov 2021 23:44:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1637901683; x=1669437683;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=hZVtXpFqRJMlYlS8FsJlFSo33nXpxC5l4eca17rTe8Y=;
  b=AFsts0evx471qWTsjbwkFvwLNaSiDCeq0HYq/DIagutv1sepuUiDBCpC
   oXEJePGAk9OMwlF2yGQYpGGuO2m6dATLJ/xynD9/6Tzn5TmyObq3xlDLX
   pmtL3FZ9p+WpXMogoCl9idD1Kwwu7eYjLE0IYGOpEvU8eWX8na/mDmXJG
   bWjQjP4QdGZCGHmfmPQ6N9pb1jHOIphbcBY+K4h4peMAS5wWLrl7wzip1
   KeclsOVX2ddRzyG8CsMA4kncu+LuiMNhUvT2xPdpUfiiC+1BiLYDU/Gz1
   rG3q99uLy3FAn1HRN1C9njgaFhG1pMAWualTqZYgGGwukJACizp76punx
   A==;
X-IronPort-AV: E=Sophos;i="5.87,263,1631548800"; 
   d="scan'208";a="298530164"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 26 Nov 2021 12:41:23 +0800
IronPort-SDR: txaCIqkIxS8QquMzmyyuyovzZQvSzO7vBEXKyRJB8sW/civ5Z9o7PRPwdDdZBVu/feoNkrYWGG
 juAfxeSUQLSrNBgAYd0RSV+NazBMfmRcWDD/xOdfQIuX4RsVY4KN5JgXxA2OuvC9NfFZSNik/7
 CcvaYiORuxjOg5Tpv44znS3l0zVXGzQnmOwLitsHABie/sGfjtstGNYzJKQS79jGHRM650wlzI
 i0wNsz/UNHGIO+iYRieqOfpJJZbnBHMpaXcWfmXgrrSMKvFX9ZA06a2ZWTFX1Y30T4P2Xr4qcf
 vv1czKvEAeLyGKLUiW9C5/q3
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Nov 2021 20:14:41 -0800
IronPort-SDR: JyfEseQnwP5/vRnmN5kKTd5RENro+QXenok3GV7mBxrdkP5MCq4dv8UAyNrHheP37C99w3ERLZ
 JcXYYkvMDFhAOLwXuURcepCLhEAGvsdpZOeuWDSUFktm5Gp1jK7stE39MXX5BlbuhjLFLR3L5w
 VZGR7VhzkW6IdPCiT5nVV6Ck6b+n0JXyhhKEvPUCSwbJM4oFo4eU5rbxkOgDUkv3IKzIU67XBT
 bx0QqOg5xgm60iV8h8VmACGv5eFtS0mXn9IfT3+GF2320eltVxDd4qQ0LMce32Swm0NlqYhYWK
 AGY=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Nov 2021 20:41:23 -0800
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4J0hsG6TyRz1RtVx
        for <devicetree@vger.kernel.org>; Thu, 25 Nov 2021 20:41:22 -0800 (PST)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
        reason="pass (just generated, assumed good)"
        header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
        opensource.wdc.com; h=content-transfer-encoding:content-type
        :in-reply-to:organization:from:references:to:content-language
        :subject:user-agent:mime-version:date:message-id; s=dkim; t=
        1637901681; x=1640493682; bh=hZVtXpFqRJMlYlS8FsJlFSo33nXpxC5l4ec
        a17rTe8Y=; b=MLbQlCuH8J+QVN6cM2aJyVcz8Wj+6TIIH9704iFmRLykJI3+Iuw
        j1jpvFl5WtHKGnACEnz1CcFyqL4FEF2iUVK2ttWutyht7RbaFboGV1g0s8wvgU3q
        lc+NPkmgva6ptFTB3K8mV5/Gv7wAUQANCVWksb9SK5PFyQrkQLd3SKh8hlgLVu8U
        1uPR32HzyPZLmvhaMJQuCbPqUdHo2O+G7Y0m48GEUpAYMLHgTa7l0oaz86ybg44Z
        idL8qxIbfJa+qH4NXzMJ8oI/l85r7mWTsL5BWx1yhdFCxqvLRUAd9/2OQ8jQ8b/j
        hcdHH9hZ9iPykvGWgPIslKUp3sW0RxnTfFg==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
        by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id j-QY0TRgSnpx for <devicetree@vger.kernel.org>;
        Thu, 25 Nov 2021 20:41:21 -0800 (PST)
Received: from [10.225.54.48] (unknown [10.225.54.48])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4J0hsD3RBnz1RtVl;
        Thu, 25 Nov 2021 20:41:20 -0800 (PST)
Message-ID: <adacaa4b-0afd-ef5a-f778-18ca5faee8a5@opensource.wdc.com>
Date:   Fri, 26 Nov 2021 13:41:18 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.3.2
Subject: Re: [PATCH 1/9] riscv: dts: canaan: Fix SPI FLASH node names
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
 <20211125153131.163533-2-geert@linux-m68k.org>
From:   Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital
In-Reply-To: <20211125153131.163533-2-geert@linux-m68k.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2021/11/26 0:31, Geert Uytterhoeven wrote:
> "make dtbs_check":
> 
>     arch/riscv/boot/dts/canaan/sipeed_maix_bit.dt.yaml: spi-flash@0: $nodename:0: 'spi-flash@0' does not match '^flash(@.*)?$'
> 	    From schema: Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml
> 
> Fix this by renaming all SPI FLASH nodes to "flash".
> 
> Signed-off-by: Geert Uytterhoeven <geert@linux-m68k.org>
> ---
>  arch/riscv/boot/dts/canaan/sipeed_maix_bit.dts  | 2 +-
>  arch/riscv/boot/dts/canaan/sipeed_maix_dock.dts | 2 +-
>  arch/riscv/boot/dts/canaan/sipeed_maix_go.dts   | 2 +-
>  arch/riscv/boot/dts/canaan/sipeed_maixduino.dts | 2 +-
>  4 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/riscv/boot/dts/canaan/sipeed_maix_bit.dts b/arch/riscv/boot/dts/canaan/sipeed_maix_bit.dts
> index 0bcaf35045e795ed..984872f3d3a9b9ea 100644
> --- a/arch/riscv/boot/dts/canaan/sipeed_maix_bit.dts
> +++ b/arch/riscv/boot/dts/canaan/sipeed_maix_bit.dts
> @@ -199,7 +199,7 @@ slot@0 {
>  };
>  
>  &spi3 {
> -	spi-flash@0 {
> +	flash@0 {
>  		compatible = "jedec,spi-nor";
>  		reg = <0>;
>  		spi-max-frequency = <50000000>;
> diff --git a/arch/riscv/boot/dts/canaan/sipeed_maix_dock.dts b/arch/riscv/boot/dts/canaan/sipeed_maix_dock.dts
> index ac8a03f5867adbd0..7ba99b4da304218e 100644
> --- a/arch/riscv/boot/dts/canaan/sipeed_maix_dock.dts
> +++ b/arch/riscv/boot/dts/canaan/sipeed_maix_dock.dts
> @@ -201,7 +201,7 @@ slot@0 {
>  };
>  
>  &spi3 {
> -	spi-flash@0 {
> +	flash@0 {
>  		compatible = "jedec,spi-nor";
>  		reg = <0>;
>  		spi-max-frequency = <50000000>;
> diff --git a/arch/riscv/boot/dts/canaan/sipeed_maix_go.dts b/arch/riscv/boot/dts/canaan/sipeed_maix_go.dts
> index 623998194bc18aab..be9b12c9b374acb3 100644
> --- a/arch/riscv/boot/dts/canaan/sipeed_maix_go.dts
> +++ b/arch/riscv/boot/dts/canaan/sipeed_maix_go.dts
> @@ -209,7 +209,7 @@ slot@0 {
>  };
>  
>  &spi3 {
> -	spi-flash@0 {
> +	flash@0 {
>  		compatible = "jedec,spi-nor";
>  		reg = <0>;
>  		spi-max-frequency = <50000000>;
> diff --git a/arch/riscv/boot/dts/canaan/sipeed_maixduino.dts b/arch/riscv/boot/dts/canaan/sipeed_maixduino.dts
> index cf605ba0d67e43cd..031c0c28f8195777 100644
> --- a/arch/riscv/boot/dts/canaan/sipeed_maixduino.dts
> +++ b/arch/riscv/boot/dts/canaan/sipeed_maixduino.dts
> @@ -174,7 +174,7 @@ slot@0 {
>  };
>  
>  &spi3 {
> -	spi-flash@0 {
> +	flash@0 {
>  		compatible = "jedec,spi-nor";
>  		reg = <0>;
>  		spi-max-frequency = <50000000>;
> 

Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Tested-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>

-- 
Damien Le Moal
Western Digital Research
