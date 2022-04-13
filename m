Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AD8C34FFB9E
	for <lists+devicetree@lfdr.de>; Wed, 13 Apr 2022 18:46:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232702AbiDMQsL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Apr 2022 12:48:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55948 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237078AbiDMQrb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Apr 2022 12:47:31 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF7736948B
        for <devicetree@vger.kernel.org>; Wed, 13 Apr 2022 09:45:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1649868306; x=1681404306;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=aa06mSmCxQVUAJSKFbISrcxjwrjolahdE4p3gf3sExo=;
  b=THskDsISjU60+IlroAb7pYLhVM+tzVeTEOG/YbBQCAhmIguwpJ/PvJDy
   ZsU4FeDFRJ5+i5C6ntHZFZj0Tw6TDqQrEAHuGb6uhb2S8QWDSdOl+cRlA
   hmEnVltEo/aOcojBiLfNFLbGzFnOVYnEbNeH974uZ0hp0sOZjHZvjLLhW
   IJPMzU88NwYMPiygsRmj/uRUzZYa4+cYi8GYxnKhcaeDQ6BOhdej026Ii
   ucb7lT/Ca6lPupk73TLrIRtfiOV/oLBIOxXOoRKdQUpicZpONZHDYz5fz
   NjjEIU8zhZGm1mLOhDRH/rg62Ub8+MKcJW4c2LmHe3n95ThEAxXDuolx1
   g==;
X-IronPort-AV: E=Sophos;i="5.90,257,1643698800"; 
   d="scan'208";a="160001748"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 13 Apr 2022 09:45:04 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.17; Wed, 13 Apr 2022 09:45:03 -0700
Received: from [10.12.72.146] (10.10.115.15) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.2375.17 via Frontend
 Transport; Wed, 13 Apr 2022 09:45:01 -0700
Message-ID: <2ece2c68-789e-9df9-dd22-c1da5d402179@microchip.com>
Date:   Wed, 13 Apr 2022 18:45:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2 0/2] ARM: dts: at91: Fixes for AT91SAM9G20-EK DTS
Content-Language: en-US
To:     Mark Brown <broonie@kernel.org>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Claudiu Beznea <claudiu.beznea@microchip.com>,
        Codrin Ciubotariu <codrin.ciubotariu@microchip.com>,
        Rob Herring <robh+dt@kernel.org>
CC:     <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
References: <20220404102806.581374-1-broonie@kernel.org>
From:   Nicolas Ferre <nicolas.ferre@microchip.com>
Organization: microchip
In-Reply-To: <20220404102806.581374-1-broonie@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/04/2022 at 12:28, Mark Brown wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> The DT description for the audio subsystem on the AT91SAM9G20-EK
> reference board is a bit bitrotted, the clocking for the WM8731 audio
> CODEC is not described. Previously this was handled in the machine
> driver but at some point in the transition to the common clock framework
> that code was broken and rendered mostly redundant so the first patch
> adds a mapping of the MCLK on the CODEC which is used via existing code
> in it's driver.
> 
> We also have some warnings on the WM8731, EEPROM and the MMC from the
> regulator framework since the supplies on the board aren't described.
> These don't fundamentally matter since they are fixed voltage regulators
> and not controlled by software at runtime but it's nicer to fix them.
> 
> v2:
>   - Rebase onto v5.18-rc1.
>   - Also cover the serial EEPROM supply which is requested by that driver.
> 
> Mark Brown (2):
>    ARM: dts: at91: Map MCLK for wm8731 on at91sam9g20ek
>    ARM: dts: at91: Describe regulators on at91sam9g20ek

For the whole series:
Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>

I'm gonna queue these patches for 5.18 "fixes".

Thanks a lot Mark, that's really appreciated!
Best regards,
   Nicolas

> 
>   arch/arm/boot/dts/at91sam9g20ek_common.dtsi | 43 +++++++++++++++++++++
>   1 file changed, 43 insertions(+)
> 
> 
> base-commit: 3123109284176b1532874591f7c81f3837bbdc17
> --
> 2.30.2
> 


-- 
Nicolas Ferre
