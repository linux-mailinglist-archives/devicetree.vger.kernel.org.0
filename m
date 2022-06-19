Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A3364550DA0
	for <lists+devicetree@lfdr.de>; Mon, 20 Jun 2022 01:39:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232633AbiFSXjB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Jun 2022 19:39:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46488 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231539AbiFSXjA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Jun 2022 19:39:00 -0400
Received: from esa6.hgst.iphmx.com (esa6.hgst.iphmx.com [216.71.154.45])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5CA8195AF
        for <devicetree@vger.kernel.org>; Sun, 19 Jun 2022 16:38:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1655681940; x=1687217940;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=+r2le/0cYQHWtPMNeCxIXB43Y8pcNDHfGVPeVoKPk1w=;
  b=dN/w0Goa9LIIMMkR3p5Fc3y+i5vAZM7WcaW7ZqfVEdjOiEwg0HtRgGkm
   pUicSdAW+b5jQ3C8JWGn1d/9LXFcubOvN9po5a+BvG6moOPOJLVE+HBob
   9bABJTkk6d1z6YLb6OOxDiyy2ZpgUIktGVs24HjPMFwDUMKeKd019GKF5
   /eHMw2BG4d20YGmL956P8ElPTtxXswFigNsdfFipe0m2wphB+88I1NbQa
   QRtoHlASozJL3PTElXyo1s/Pu/Nf0mQmm0BFHJXRjJEeswyW7XA5Zch1Y
   Hz2cQ/CUYlQgjjuArHsAIUTtJp9QpzkH/VUmdB92CEr5PTh1KKly7d7xZ
   w==;
X-IronPort-AV: E=Sophos;i="5.92,306,1650902400"; 
   d="scan'208";a="204332793"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 20 Jun 2022 07:39:00 +0800
IronPort-SDR: sMzxxQnGTeyPYFfRur/xpDpovs+7M6NJmhGNqW2UQLCyoEqr7NgSaRhd9d/gIQmQGxu1Ad+/CW
 TtNQmzBTvSlK5ZdFeOYC+FyaWD37vw5zav3TjCyXzzGdyu/oizhFcdhVpljYoqycG5VffTI2aH
 +mZZHeSxhNelZN1rZK+9tVO/s8yiSZzFHhPdn6eHooR4ayKgelLoIliYiAHWmOIEiOz2c9VUR0
 fCsl3Oz8pIeepZbccSKAMpJ8ewPOEgBiusT4CeemL5kjmXuwhrhfpPy1UESExhrOL0sBipkjvl
 HwUkNYQBi6qgTR8iV6U/q3oI
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 19 Jun 2022 16:01:30 -0700
IronPort-SDR: mdfYIzUhyDZ8bJxQK67OZxOVn3fuAO2wfRxSPCSlOyy2i4CT4Uf/5uNzzoDCB8X+1HCyZDr67s
 j+aMgad9zQPob2FjZVcPqvWxFEwOThf3VVptQZzSL8dBRsTfA3tHOEvecTOvRAnAudLX/+Rih5
 edfb+o7WiPywx7vmi6yhJjj+MIEKT3MBzt2dGcfAlrL0Yf6Mdp5dTNCnH5RnypR/I6qjwfe84f
 T+UraN9WVS+2lcV0RywYQiCgOBMIZqxXgR+5+7eQBDW8lyAWfvYaTQPpLxMywab4gnt7l7XA5H
 gKo=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 19 Jun 2022 16:38:59 -0700
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4LR8PG1DKkz1SVp2
        for <devicetree@vger.kernel.org>; Sun, 19 Jun 2022 16:38:58 -0700 (PDT)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
        reason="pass (just generated, assumed good)"
        header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
        opensource.wdc.com; h=content-transfer-encoding:content-type
        :in-reply-to:organization:from:references:to:content-language
        :subject:user-agent:mime-version:date:message-id; s=dkim; t=
        1655681937; x=1658273938; bh=+r2le/0cYQHWtPMNeCxIXB43Y8pcNDHfGVP
        eVoKPk1w=; b=fPh0jM8V9qqPW70mFILfn0oH/t6YdTP5j5nYoQaZ3qzqvNZhES8
        wM/NZ1NWJD/pJVvr1BUFf56nUIKAwsRI79NnrEmtxFiYpNl1e2IS0zFLirGVF58/
        /lWr6pXDvMN/aYVUroAahjbEZ3SknQqMnzGVcpJcirHyRBVnLNNACBcjw5W+w6Oi
        xx3LXiZvDtQes/ej6dBQtE/0UxPugLIFRuNlvSSDxKfHYhgDS+DzquTgm9yhteAd
        zxF/VPlxKkDnt0awf+PKnINUx01IznqbpZtT9I8xQTuWk9QlIfY0Ibek5uE3g8+F
        SWNFWnA6DEKhg0NU7wr0hzVc03FtrycJvSA==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
        by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id xNujrBbWYAUb for <devicetree@vger.kernel.org>;
        Sun, 19 Jun 2022 16:38:57 -0700 (PDT)
Received: from [10.225.163.87] (unknown [10.225.163.87])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4LR8P82TBvz1Rvlc;
        Sun, 19 Jun 2022 16:38:52 -0700 (PDT)
Message-ID: <9cd60b3b-44fe-62ac-9874-80ae2223d078@opensource.wdc.com>
Date:   Mon, 20 Jun 2022 08:38:50 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 07/14] riscv: dts: canaan: fix the k210's memory node
Content-Language: en-US
To:     Conor Dooley <mail@conchuod.ie>, David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
        Vinod Koul <vkoul@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Serge Semin <fancer.lancer@gmail.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Palmer Dabbelt <palmer@rivosinc.com>
Cc:     Thomas Gleixner <tglx@linutronix.de>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Conor Dooley <conor.dooley@microchip.com>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Niklas Cassel <niklas.cassel@wdc.com>,
        Dillon Min <dillon.minfei@gmail.com>,
        Heng Sia <jee.heng.sia@intel.com>,
        Jose Abreu <joabreu@synopsys.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org,
        alsa-devel@alsa-project.org, linux-spi@vger.kernel.org,
        linux-riscv@lists.infradead.org
References: <20220618123035.563070-1-mail@conchuod.ie>
 <20220618123035.563070-8-mail@conchuod.ie>
From:   Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital Research
In-Reply-To: <20220618123035.563070-8-mail@conchuod.ie>
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

On 6/18/22 21:30, Conor Dooley wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
> 
> The k210 memory node has a compatible string that does not match with
> any driver or dt-binding & has several non standard properties.
> Replace the reg names with a comment and delete the rest.
> 
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
> ---
>  arch/riscv/boot/dts/canaan/k210.dtsi | 6 ------
>  1 file changed, 6 deletions(-)
> 
> diff --git a/arch/riscv/boot/dts/canaan/k210.dtsi b/arch/riscv/boot/dts/canaan/k210.dtsi
> index 44d338514761..287ea6eebe47 100644
> --- a/arch/riscv/boot/dts/canaan/k210.dtsi
> +++ b/arch/riscv/boot/dts/canaan/k210.dtsi
> @@ -69,15 +69,9 @@ cpu1_intc: interrupt-controller {
>  
>  	sram: memory@80000000 {
>  		device_type = "memory";
> -		compatible = "canaan,k210-sram";
>  		reg = <0x80000000 0x400000>,
>  		      <0x80400000 0x200000>,
>  		      <0x80600000 0x200000>;
> -		reg-names = "sram0", "sram1", "aisram";
> -		clocks = <&sysclk K210_CLK_SRAM0>,
> -			 <&sysclk K210_CLK_SRAM1>,
> -			 <&sysclk K210_CLK_AI>;
> -		clock-names = "sram0", "sram1", "aisram";
>  	};

These are used by u-boot to setup the memory clocks and initialize the
aisram. Sure the kernel actually does not use this, but to be in sync with
u-boot DT, I would prefer keeping this as is. Right now, u-boot *and* the
kernel work fine with both u-boot internal DT and the kernel DT.

-- 
Damien Le Moal
Western Digital Research
