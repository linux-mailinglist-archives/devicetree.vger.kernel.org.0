Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 859E1629C86
	for <lists+devicetree@lfdr.de>; Tue, 15 Nov 2022 15:47:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229833AbiKOOrf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Nov 2022 09:47:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34202 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229752AbiKOOre (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Nov 2022 09:47:34 -0500
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F17F1136
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 06:47:34 -0800 (PST)
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 2AFElUAe063009;
        Tue, 15 Nov 2022 08:47:30 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1668523650;
        bh=mV1jlikb7UF3h7WG8p5eA86yV0lOOsDzj59L8XKacZA=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=amw+6l506vwyn4h+zM8n8dht64+4P4vvsiQzjh1bZMFdsRDaW1TrtAuJdQ08a9MbE
         vT58AWyFDoJgnj1WdyRlyDSfPWbxh+SLgN9j6aLD/8H3rE9V5AzwHdPUhEs1XzMySM
         IdmJH6aY1vbAsrWPMvRvfxRf3zJFIhO2n/65oMg4=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 2AFElU6Q076483
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 15 Nov 2022 08:47:30 -0600
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Tue, 15
 Nov 2022 08:47:30 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Tue, 15 Nov 2022 08:47:30 -0600
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 2AFElUKW008056;
        Tue, 15 Nov 2022 08:47:30 -0600
Date:   Tue, 15 Nov 2022 08:47:30 -0600
From:   Nishanth Menon <nm@ti.com>
To:     Tony Lindgren <tony@atomide.com>
CC:     Vignesh Raghavendra <vigneshr@ti.com>,
        <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Keerthy <j-keerthy@ti.com>,
        Georgi Vlaev <g-vlaev@ti.com>
Subject: Re: [PATCH v2 4/4] arm64: dts: ti: k3-am625-sk: Use pwm-led instead
 of gpio-led
Message-ID: <20221115144730.sewbrukm5yjuka35@stinging>
References: <20221107163533.48777-1-tony@atomide.com>
 <20221107163533.48777-5-tony@atomide.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20221107163533.48777-5-tony@atomide.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18:35-20221107, Tony Lindgren wrote:
[...]

> ---
>  arch/arm64/boot/dts/ti/k3-am625-sk.dts | 17 ++++++++++++-----
>  1 file changed, 12 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am625-sk.dts b/arch/arm64/boot/dts/ti/k3-am625-sk.dts
> --- a/arch/arm64/boot/dts/ti/k3-am625-sk.dts
> +++ b/arch/arm64/boot/dts/ti/k3-am625-sk.dts
[...]
> +
> +	main_pwm7: dmtimer-main-pwm-7 {
> +		pinctrl-0 = <&usr_led_pins_default>;
> +		pinctrl-names = "default";
> +		compatible = "ti,omap-dmtimer-pwm";


we'd need to convert
Documentation/devicetree/bindings/pwm/pwm-omap-dmtimer.txt to
yaml for me to be able to accept this :(

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
