Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B98B362B5B5
	for <lists+devicetree@lfdr.de>; Wed, 16 Nov 2022 09:55:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232277AbiKPIzt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Nov 2022 03:55:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51652 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231829AbiKPIzs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Nov 2022 03:55:48 -0500
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 759C71142
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 00:55:47 -0800 (PST)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 2AG8tbHP039252;
        Wed, 16 Nov 2022 02:55:37 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1668588938;
        bh=WEbC7WMTfGrgChfo7W+Q2BPZp4dRd8UXwkvFSbkFuBc=;
        h=Date:Subject:To:CC:References:From:In-Reply-To;
        b=sxO09LfTAf2l/bmkYLsC7mq4pGKIRIwL30joX5w9UGKrnL0IhjWVR+OaFT9Ip7O9k
         +6k1SsGXJJ5SrPpPuWR/BhsIN2ZH/D8weWCugIeyj7rY4hhtsHZVBHcrxTLSiTdOSl
         CeSaFyav+AFNqjchV/KdjGFRAAKcyXPR8H33BKEM=
Received: from DFLE107.ent.ti.com (dfle107.ent.ti.com [10.64.6.28])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 2AG8tb2D095029
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 16 Nov 2022 02:55:37 -0600
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Wed, 16
 Nov 2022 02:55:37 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Wed, 16 Nov 2022 02:55:37 -0600
Received: from [10.24.69.79] (ileaxei01-snat2.itg.ti.com [10.180.69.6])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 2AG8tYvR001099;
        Wed, 16 Nov 2022 02:55:35 -0600
Message-ID: <96058a13-4903-2b8c-8de2-f37fdfd3672b@ti.com>
Date:   Wed, 16 Nov 2022 14:25:34 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH v5 5/8] arm64: dts: ti: k3-j721s2-common-proc-board: Add
 USB support
Content-Language: en-US
To:     Matt Ranostay <mranostay@ti.com>, <nm@ti.com>, <vigneshr@ti.com>,
        <kristo@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>
CC:     <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>
References: <20221103044125.172864-1-mranostay@ti.com>
 <20221103044125.172864-6-mranostay@ti.com>
From:   Ravi Gunasekaran <r-gunasekaran@ti.com>
In-Reply-To: <20221103044125.172864-6-mranostay@ti.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 03/11/22 10:11 am, Matt Ranostay wrote:
> From: Aswath Govindraju <a-govindraju@ti.com>
> 
> The board uses lane 1 of SERDES for USB. Set the mux
> accordingly.
> 
> The USB controller and EVM supports super-speed for USB0
> on the Type-C port. However, the SERDES has a limitation
> that upto 2 protocols can be used at a time. The SERDES is
> wired for PCIe, eDP and USB super-speed. It has been
> chosen to use PCIe and eDP as default. So restrict
> USB0 to high-speed mode.
> 
> Cc: Vignesh Raghavendra <vigneshr@ti.com>
> Cc: Nishanth Menon <nm@ti.com>
> Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
> Signed-off-by: Matt Ranostay <mranostay@ti.com>
> ---
>  .../dts/ti/k3-j721s2-common-proc-board.dts    | 22 +++++++++++++++++++
>  1 file changed, 22 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dts b/arch/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dts
> index c3a397484c70..c787d46f89de 100644
> --- a/arch/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dts
> +++ b/arch/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dts
> @@ -147,6 +147,12 @@ vdd_sd_dv_pins_default: vdd-sd-dv-pins-default {
>  			J721S2_IOPAD(0x020, PIN_INPUT, 7) /* (AA23) MCAN15_RX.GPIO0_8 */
>  		>;
>  	};
> +
> +	main_usbss0_pins_default: main-usbss0-pins-default {
> +		pinctrl-single,pins = <
> +			J721S2_IOPAD(0x0ec, PIN_OUTPUT, 6) /* (AG25) TIMER_IO1.USB0_DRVVBUS */
> +		>;
> +	};
>  };
>  
>  &wkup_pmx0 {
> @@ -318,6 +324,22 @@ serdes0_pcie_link: phy@0 {
>  	};
>  };
>  
> +&usb_serdes_mux {
> +	idle-states = <1>; /* USB0 to SERDES lane 1 */
> +};
> +
> +&usbss0 {
> +	pinctrl-0 = <&main_usbss0_pins_default>;
> +	pinctrl-names = "default";
> +	ti,vbus-divider;
> +	ti,usb2-only;
> +};
> +
> +&usb0 {
> +	dr_mode = "otg";
> +	maximum-speed = "high-speed";
> +};
> +
>  &mcu_mcan0 {
>  	status = "okay";
>  	pinctrl-names = "default";

Reviewed-by: Ravi Gunasekaran <r-gunasekaran@ti.com>

-- 
Regards,
Ravi
