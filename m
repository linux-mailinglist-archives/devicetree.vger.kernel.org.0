Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A555B4D27E9
	for <lists+devicetree@lfdr.de>; Wed,  9 Mar 2022 05:38:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229490AbiCIEjb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Mar 2022 23:39:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51062 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229482AbiCIEj3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Mar 2022 23:39:29 -0500
Received: from esa3.hgst.iphmx.com (esa3.hgst.iphmx.com [216.71.153.141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18D515BD22
        for <devicetree@vger.kernel.org>; Tue,  8 Mar 2022 20:38:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1646800709; x=1678336709;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=OSaPAy2Y2iAJhLNxMchb2w/Lfbz/1Dfnsnnrlz8Sf8g=;
  b=d4R94AKK9QvhPxX0lITRchFxRYpc/ADCNX7wH4n6oD7uBYu5T+XTi5sI
   YNrHQOjrjBSvdLDiPr4MOD2xZMwq9VSje5hUJfcFpWqN0pBYsGhC5R+d9
   zbNPiINvjuv9yS4bNN75uhklqCImFb7h/Fi+1Nl002fu7aB9OclOge1pO
   Uzn46sHOIoO9kV6x8+S+QXF9JPQ9nJiB3rMHNCt9cPTEFzwlW3COC6jdX
   ngGZTLYSjrZjlpkwtuU5m8qMvZ4eHRrm8xLAMFIx+j573X5LuyzEX+tHP
   DwysXKNFEbV8v/mPZtGjljzxodyqtdmWfFOdJd2umiOgGtfbXhDn7jN/e
   A==;
X-IronPort-AV: E=Sophos;i="5.90,166,1643644800"; 
   d="scan'208";a="199670645"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 09 Mar 2022 12:38:28 +0800
IronPort-SDR: tI9Ml5JrqJcTOU5qAayPEfVJ6aIoclmkCnC9x6860Xvbbw7ybe2b+KfJgrG+QFPnMSDumYEkML
 cOfTa+WFyDL0xYIim4/lemcxmKZaghUqONT0lYp9jvlVxJbKsxShYH7BxCGEw8Z4M61WVhvPih
 E0kgjcP59qNPyrllO76aAf53u3Eg2Cahjyo97LQ9YHuFXdGvyT5utmlySfo0C5r6uXR5mXdxoe
 7wvEs7p6zAMmJd9DI8lPuf7luGYakXcfpXihflrWU8q6MMNfF4SLyvYQWmT/F/TWh85/QyBjij
 c8XuzoraNIFpCoi/0do+T1uc
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Mar 2022 20:09:44 -0800
IronPort-SDR: wT5Yg2Ifbp4UE+Dqj/mY95Q6AuoO0q+iHosJ9Fno+ByM6vAQbEdPdde9rZ+To6q8DZf6DCiFeq
 7DyKwTWgA0hd6Sk3qyoZyg5PMCpEOvkdUhwilE4/hbanrGj1Qf9WazHPDHg8zxP/2FkpKEtwjC
 ieP2GifJji2zGAF7KgxXMPCcBzfPRHCMIWJ3nLVgmaTzWXUxluyDLvEVvrG/DKkmmAsbw0QQj6
 Qa+F1hmcKjtei4sDIzaroKXuTAt5rQ/72Wlqx8VOHmV+uJ6FvBZbcZEx81V6mb37kIPvrzeBfa
 NaE=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Mar 2022 20:38:29 -0800
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4KCzwN6cYdz1SVny
        for <devicetree@vger.kernel.org>; Tue,  8 Mar 2022 20:38:28 -0800 (PST)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
        reason="pass (just generated, assumed good)"
        header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
        opensource.wdc.com; h=content-transfer-encoding:content-type
        :in-reply-to:organization:from:references:to:content-language
        :subject:user-agent:mime-version:date:message-id; s=dkim; t=
        1646800690; x=1649392691; bh=OSaPAy2Y2iAJhLNxMchb2w/Lfbz/1Dfnsnn
        rlz8Sf8g=; b=KDYIk3R3+Ny/eXfGZGRSE+/hSASBkdVOgNhRZcMYySwlW3L+C5e
        gZhcuL28LQH9tYn7YCVqVhOzmseQTZKVGb+qf+NFsgDCj4drjcYylfQG4y7AYMNQ
        zb1WftXDK+fLbvN7Rbf1SQ9v9S/UKPRnG7qcehvziC+BZuyUn/v5g9nJrctelGGS
        a+gCLOoA12P77M+DYCJXTjz4KCvMKajV3bbR3kdic8fKPs4iSudC4y4vSvJ7irFZ
        updJC8kDXGyRVokrAlKkHADyHO8F/l8SpjLni/GN3RwcUi/d6j/SDrGcm7XsTKrq
        aQqwh8Y4pdT/6qwRAS2GcMXdCAxeXyhqsjg==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
        by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id IzKdSJjorbpz for <devicetree@vger.kernel.org>;
        Tue,  8 Mar 2022 20:38:10 -0800 (PST)
Received: from [10.225.163.91] (unknown [10.225.163.91])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4KCzw124Dgz1Rvlx;
        Tue,  8 Mar 2022 20:38:09 -0800 (PST)
Message-ID: <373656f5-63d8-6ee5-4f1f-ea7477b98b63@opensource.wdc.com>
Date:   Wed, 9 Mar 2022 13:38:07 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2] riscv: dts: canaan: Fix SPI3 bus width
Content-Language: en-US
To:     Niklas Cassel <Niklas.Cassel@wdc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>
Cc:     devicetree@vger.kernel.org, linux-riscv@lists.infradead.org
References: <20220308132806.96095-1-Niklas.Cassel@wdc.com>
From:   Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital Research
In-Reply-To: <20220308132806.96095-1-Niklas.Cassel@wdc.com>
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

On 3/8/22 22:28, Niklas Cassel wrote:
> From: Niklas Cassel <niklas.cassel@wdc.com>
> 
> According to the K210 Standalone SDK Programming guide:
> https://canaan-creative.com/wp-content/uploads/2020/03/kendryte_standalone_programming_guide_20190311144158_en.pdf
> 
> Section 15.4.3.3:
> SPI0 and SPI1 supports: standard, dual, quad and octal transfers.
> SPI3 supports: standard, dual and quad transfers (octal is not supported).
> 
> In order to support quad transfers (Quad SPI), SPI3 must have four IO wires
> connected to the SPI flash.
> 
> Update the device tree to specify the correct bus width.
> 
> Tested on maix bit, maix dock and maixduino, which all have the same
> SPI flash (gd25lq128d) connected to SPI3. maix go is untested, but it
> would not make sense for this k210 board to be designed differently.
> 
> Signed-off-by: Niklas Cassel <niklas.cassel@wdc.com>

Looks OK to me.

Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>

> ---
> Changes since v1:
> -Add the new properties directly after spi-max-frequency for all DT board
>  files.
> 
>  arch/riscv/boot/dts/canaan/sipeed_maix_bit.dts  | 2 ++
>  arch/riscv/boot/dts/canaan/sipeed_maix_dock.dts | 2 ++
>  arch/riscv/boot/dts/canaan/sipeed_maix_go.dts   | 2 ++
>  arch/riscv/boot/dts/canaan/sipeed_maixduino.dts | 2 ++
>  4 files changed, 8 insertions(+)
> 
> diff --git a/arch/riscv/boot/dts/canaan/sipeed_maix_bit.dts b/arch/riscv/boot/dts/canaan/sipeed_maix_bit.dts
> index 984872f3d3a9..b9e30df127fe 100644
> --- a/arch/riscv/boot/dts/canaan/sipeed_maix_bit.dts
> +++ b/arch/riscv/boot/dts/canaan/sipeed_maix_bit.dts
> @@ -203,6 +203,8 @@ flash@0 {
>  		compatible = "jedec,spi-nor";
>  		reg = <0>;
>  		spi-max-frequency = <50000000>;
> +		spi-tx-bus-width = <4>;
> +		spi-rx-bus-width = <4>;
>  		m25p,fast-read;
>  		broken-flash-reset;
>  	};
> diff --git a/arch/riscv/boot/dts/canaan/sipeed_maix_dock.dts b/arch/riscv/boot/dts/canaan/sipeed_maix_dock.dts
> index 7ba99b4da304..8d23401b0bbb 100644
> --- a/arch/riscv/boot/dts/canaan/sipeed_maix_dock.dts
> +++ b/arch/riscv/boot/dts/canaan/sipeed_maix_dock.dts
> @@ -205,6 +205,8 @@ flash@0 {
>  		compatible = "jedec,spi-nor";
>  		reg = <0>;
>  		spi-max-frequency = <50000000>;
> +		spi-tx-bus-width = <4>;
> +		spi-rx-bus-width = <4>;
>  		m25p,fast-read;
>  		broken-flash-reset;
>  	};
> diff --git a/arch/riscv/boot/dts/canaan/sipeed_maix_go.dts b/arch/riscv/boot/dts/canaan/sipeed_maix_go.dts
> index be9b12c9b374..24fd83b43d9d 100644
> --- a/arch/riscv/boot/dts/canaan/sipeed_maix_go.dts
> +++ b/arch/riscv/boot/dts/canaan/sipeed_maix_go.dts
> @@ -213,6 +213,8 @@ flash@0 {
>  		compatible = "jedec,spi-nor";
>  		reg = <0>;
>  		spi-max-frequency = <50000000>;
> +		spi-tx-bus-width = <4>;
> +		spi-rx-bus-width = <4>;
>  		m25p,fast-read;
>  		broken-flash-reset;
>  	};
> diff --git a/arch/riscv/boot/dts/canaan/sipeed_maixduino.dts b/arch/riscv/boot/dts/canaan/sipeed_maixduino.dts
> index 031c0c28f819..25341f38292a 100644
> --- a/arch/riscv/boot/dts/canaan/sipeed_maixduino.dts
> +++ b/arch/riscv/boot/dts/canaan/sipeed_maixduino.dts
> @@ -178,6 +178,8 @@ flash@0 {
>  		compatible = "jedec,spi-nor";
>  		reg = <0>;
>  		spi-max-frequency = <50000000>;
> +		spi-tx-bus-width = <4>;
> +		spi-rx-bus-width = <4>;
>  		m25p,fast-read;
>  		broken-flash-reset;
>  	};


-- 
Damien Le Moal
Western Digital Research
