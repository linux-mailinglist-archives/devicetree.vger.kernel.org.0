Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2663B5F791C
	for <lists+devicetree@lfdr.de>; Fri,  7 Oct 2022 15:38:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229810AbiJGNi2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Oct 2022 09:38:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44424 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229641AbiJGNi1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Oct 2022 09:38:27 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3402A9DD8B
        for <devicetree@vger.kernel.org>; Fri,  7 Oct 2022 06:38:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1665149904; x=1696685904;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=tsmSIjIJ46YXGPAI+5kmgawlLLaMNxEFDnlFEJVg1h4=;
  b=wwfsRmngrnsTw0sC4s75r8gXg6QdLkJ4V1QlyRAZxZ7qIzMtPRLPlbsG
   0gipOb/YdeM7cigPZer0MxX66xhiYFwxo+q2hkfAewcTtcgp/U6b1o2ne
   LAvvUycRulmsHt6I+U0Gtm+P0xcjsBYGwe29sulAUsx5QrzBAAuZs2DKO
   857Cwo1g5lmN0hB5KsP39IxYS62zmvvQQYWIao+/6On1S8m1q1UNrKQAK
   GDYNZVfBMu5xiFxLyCmKzYCCtiQRZQzpuq1NlS+NtWUEwvbwmcdTQKgMa
   7WWKX63i/0GM2q7zIrXJBYGbiKIzN/m1hpKQ0Ix999EPqV06Wvvv4woOt
   Q==;
X-IronPort-AV: E=Sophos;i="5.95,166,1661842800"; 
   d="scan'208";a="180892143"
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 07 Oct 2022 06:38:22 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.12; Fri, 7 Oct 2022 06:38:22 -0700
Received: from wendy (10.10.115.15) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.12 via Frontend
 Transport; Fri, 7 Oct 2022 06:38:21 -0700
Date:   Fri, 7 Oct 2022 14:37:59 +0100
From:   Conor Dooley <conor.dooley@microchip.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Daire McNamara <daire.mcnamara@microchip.com>
CC:     Hugh Breslin <hugh.breslin@microchip.com>,
        <devicetree@vger.kernel.org>, <linux-riscv@lists.infradead.org>
Subject: Re: [PATCH] riscv: dts: microchip: fix fabric i2c reg size
Message-ID: <Y0Art7TVBW8vTeUv@wendy>
References: <20220920093734.29287-1-conor.dooley@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20220920093734.29287-1-conor.dooley@microchip.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Sep 20, 2022 at 10:37:35AM +0100, Conor Dooley wrote:
> The size of the reg should've been changed when the address was changed,
> but obviously I forgot to do so.
> 
> Fixes: 7f3be227e818 ("riscv: dts: microchip: icicle: re-jig fabric peripheral addresses")

Forgot about this patch... Changed the fixes tag since I had to rebase
the branch it was based on, and applied:
https://git.kernel.org/conor/c/c210b91818e81068ca2573c20684644b8e110a07

Figured it was better to apply despite being in the merge window rather
than submit a PR for a dt that I know is not right.

> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  arch/riscv/boot/dts/microchip/mpfs-icicle-kit-fabric.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/riscv/boot/dts/microchip/mpfs-icicle-kit-fabric.dtsi b/arch/riscv/boot/dts/microchip/mpfs-icicle-kit-fabric.dtsi
> index c196bbfc0c24..917ed4c7b18f 100644
> --- a/arch/riscv/boot/dts/microchip/mpfs-icicle-kit-fabric.dtsi
> +++ b/arch/riscv/boot/dts/microchip/mpfs-icicle-kit-fabric.dtsi
> @@ -17,7 +17,7 @@ core_pwm0: pwm@40000000 {
>  
>  	i2c2: i2c@40000200 {
>  		compatible = "microchip,corei2c-rtl-v7";
> -		reg = <0x0 0x40000200 0x0 0x1000>;
> +		reg = <0x0 0x40000200 0x0 0x100>;
>  		#address-cells = <1>;
>  		#size-cells = <0>;
>  		clocks = <&ccc_nw CLK_CCC_PLL0_OUT3>;
> -- 
> 2.37.3
> 
> 
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv
> 
