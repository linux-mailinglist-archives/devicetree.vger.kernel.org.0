Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C43AA549029
	for <lists+devicetree@lfdr.de>; Mon, 13 Jun 2022 18:25:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240983AbiFMP3S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Jun 2022 11:29:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48222 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346463AbiFMP2t (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Jun 2022 11:28:49 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6BE9713FBEE
        for <devicetree@vger.kernel.org>; Mon, 13 Jun 2022 06:01:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1655125313; x=1686661313;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=YMnZ33SM5U1abmebXntp6fWIupf9wB2VK1WQbCLSPe0=;
  b=XkLqx5BsTRQAsA9dWmm9oA+As8XI/i0IUAAMkyCnypwYqXKdRpysQp9i
   9oSLFoVmE8Y+BnKKV5y/4uqPuyxHgRDdM0R1MaT+lKWIHNBIY77EEKJNQ
   nE5zWp+7tlNbLGaKxivC7P0RjPoiBCef2Te0ZjOPDRvsfEI8MZ+avbFfr
   1GKgLCG10t+EbjjZZdTqmQX9oAJoP5jEBJvzo8+CcpAMKro9CNGQAQGbw
   RyFpsij5s6T1xBzV5H1faeKXL96HsONNwah5Q1+Mr7+7/e/hTE8KusQKz
   m7Y8nF9aYudCaooX7wYO7Yv9DXUz6prbnZqDAvmXzprZMmiQjpFoaqKg8
   Q==;
X-IronPort-AV: E=Sophos;i="5.91,297,1647298800"; 
   d="scan'208";a="24419856"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 13 Jun 2022 15:01:49 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Mon, 13 Jun 2022 15:01:49 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Mon, 13 Jun 2022 15:01:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1655125309; x=1686661309;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=YMnZ33SM5U1abmebXntp6fWIupf9wB2VK1WQbCLSPe0=;
  b=g4CJah4DMHPkWANvs6hyBOeKhSQzevN3Jd5xdLxYFGkWHuIzGBvb4nRq
   2I/isJxVJmVukT0L+YuJbK1w1vXnn3T/M+CGEGsOrf45E43uKaCy++AJ1
   1g3iWELP3zz4HPhOwIoazXZ1F2K7ryauzJ/UALjDRkGsZW2LWRw0Rftkf
   9DLAvNo9w1YUQ9m/9+0lHZiA114jFplAPIBO4hZ8GCQfusy2WVZEo+XvE
   ONRc6ZdlZZ0jvlzjokiYiTVYkM+yTESuwZc0ndQY9locIpiWWanF530G8
   ZkCDGaTBKhJ5/IDTWpegrvAQwWc0uh3k2zXp80TVvgMnPzi0jxD77HGjg
   Q==;
X-IronPort-AV: E=Sophos;i="5.91,297,1647298800"; 
   d="scan'208";a="24419855"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 13 Jun 2022 15:01:49 +0200
Received: from steina-w.localnet (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 3DA45280056;
        Mon, 13 Jun 2022 15:01:49 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Baruch Siach <baruch@tkos.co.il>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: (EXT) Re: [PATCH 4/7] ARM: dts: imx6ul: remove unsupported adc property
Date:   Mon, 13 Jun 2022 15:01:48 +0200
Message-ID: <2635944.mvXUDI8C0e@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <87k09kwx26.fsf@tarshish>
References: <20220613123357.441779-1-alexander.stein@ew.tq-group.com> <20220613123357.441779-4-alexander.stein@ew.tq-group.com> <87k09kwx26.fsf@tarshish>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Baruch,

Am Montag, 13. Juni 2022, 14:44:09 CEST schrieb Baruch Siach:
> Hi Alexander,
> 
> On Mon, Jun 13 2022, Alexander Stein wrote:
> > 'num-channels' is not supported by binding, nor driver, remove it. Fixes
> > the dt_binding_check warning:
> > adc@2198000: 'num-channels' does not match any of the regexes:
> > 'pinctrl-[0-9]+'
> > 
> > Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> 
> Shawn's imx/dt branch has commit 71b81f1cac29297 that removes
> num-channels from all imx6ul DT files:
> 
>  
> https://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git/commit/?
> h=imx/dt&id=71b81f1cac29297769ec81fe29a3fcc40bc2c31c

Ah, it's not in next-20220610, so I wasn't aware of it. Thanks for the hint 
though.

Best regards,
Alexander

> > ---
> > 
> >  arch/arm/boot/dts/imx6ul.dtsi | 1 -
> >  1 file changed, 1 deletion(-)
> > 
> > diff --git a/arch/arm/boot/dts/imx6ul.dtsi b/arch/arm/boot/dts/imx6ul.dtsi
> > index df8b4ad62418..b951bdb793d2 100644
> > --- a/arch/arm/boot/dts/imx6ul.dtsi
> > +++ b/arch/arm/boot/dts/imx6ul.dtsi
> > @@ -924,7 +924,6 @@ adc1: adc@2198000 {
> > 
> >  				reg = <0x02198000 0x4000>;
> >  				interrupts = <GIC_SPI 100 
IRQ_TYPE_LEVEL_HIGH>;
> >  				clocks = <&clks IMX6UL_CLK_ADC1>;
> > 
> > -				num-channels = <2>;
> > 
> >  				clock-names = "adc";
> >  				fsl,adck-max-frequency = 
<30000000>, <40000000>,
> >  				
> >  							 
<20000000>;




