Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 69F926EE541
	for <lists+devicetree@lfdr.de>; Tue, 25 Apr 2023 18:08:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234677AbjDYQIM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Apr 2023 12:08:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45414 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234473AbjDYQIL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Apr 2023 12:08:11 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.13])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7757F15468
        for <devicetree@vger.kernel.org>; Tue, 25 Apr 2023 09:08:06 -0700 (PDT)
Received: from [192.168.1.141] ([37.4.248.58]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1Mg6qO-1qVKVE3Ogg-00heSW; Tue, 25 Apr 2023 18:02:30 +0200
Message-ID: <0a23575f-8079-2d72-2151-dd0785984d1d@i2se.com>
Date:   Tue, 25 Apr 2023 18:02:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v3 2/3] ARM: dts: Add nvmem node for BCM2711 bootloader
 public key
To:     Tim Gover <tim.gover@raspberrypi.com>
Cc:     Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        "Ivan T. Ivanov" <iivanov@suse.de>
References: <20230420122924.37997-1-iivanov@suse.de>
 <20230420122924.37997-3-iivanov@suse.de>
Content-Language: en-US
From:   Stefan Wahren <stefan.wahren@i2se.com>
In-Reply-To: <20230420122924.37997-3-iivanov@suse.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Provags-ID: V03:K1:fet8WGT6ramD2+KnvYPih7hbYjcHVK6IN148tYPmbvyX/K6C9Mx
 q2iBwJq8d9VwtFmayZ7XAWf5Kke2fPMWSFQLgzCa4KLijFUoyoLft0S72fIt5qRQT2rIp2L
 LMcq2b9BiVzKjiODrJ/jYSLERDShs/ZVA5mRp6clImDw8Mj6BN+K4HW+T4EpxfyazV+PB+f
 ce+GV8kKN01LeoWwsSxBA==
UI-OutboundReport: notjunk:1;M01:P0:wfN9kbCpg3o=;Rhsjhw0ZcaStAozgXop6aVPNIIL
 04uV55a3ryiM9wPmaQHmGigfxyIzLEvwdbhz27X0NZ8hhgUydhvfg3h74L2JFeE7BO9VHmY2l
 88brPBvlrrR5VQnEvUnOSehlv3FpyQ81Rw1GCHsg/d1ciSrCir8a0iZhnGzE+uJXLRGaw2sUj
 bRetPIjqoKwOYarfARvJDK25L9Tkg2MDvhNo8seUzxulFtpNoKvvEf1+LDoQ6TTMRU/JJ5SSR
 k/v8ZahUdOeAeR9L+Vw7PJvfDGELc4K6+Z7kB7W78HNWwlQXVw9Rv7qMQoH24rOIxEAl4GRAz
 51HTVBiGTZpymtlrnph0jlNOsKeY4rd2oo4fO9IH/ufQGUAIx8yZW5uqnm85ziBomMWZx82gm
 o5NANOzhJ2sJsSAx9ABD9z/ltUZmvoh6uazCwKZn8tW5+5v3k/ETSziUmkrllhasORlx4DPVX
 xElLSenSGkjmsQEQxtJCLpOcuF40VHXudPGDin6TFccrjUtM5QEdT+SwW24HkfC2dwEsi1db3
 HrGSyNo0AZIRFApAdy6t21d1Wyt0YqtnFDI3EcedZejvwBZwveuGqdq9xZTY8jQZp0p0gD9Rg
 9SClKhK5PGX9Crem+hBUa3Le7+sk+HV4hO7Ea+rTs0eT5DkeAyk7blPkPBOuvRkESFJqn1Mve
 uVD2QpG4PiFH1gMzdtmz9+tC1U6RBA0004rivsClEg==
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Tim,

Am 20.04.23 um 14:29 schrieb Ivan T. Ivanov:
> From: Tim Gover <tim.gover@raspberrypi.com>
> 
> Make a copy of the bootloader secure-boot public key available to the OS
> via an nvmem node. The placement information is populated by the
> Raspberry Pi firmware[1] if a public key is present in the BCM2711
> bootloader EEPROM.
> 
> [1] https://www.raspberrypi.com/documentation/computers/configuration.html#nvmem-nodes
> 
> Signed-off-by: Tim Gover <tim.gover@raspberrypi.com>
> [iivanov] Added link to documentation.
> Signed-off-by: Ivan T. Ivanov <iivanov@suse.de>
> ---
>   arch/arm/boot/dts/bcm2711-rpi.dtsi | 14 ++++++++++++++
>   1 file changed, 14 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/bcm2711-rpi.dtsi b/arch/arm/boot/dts/bcm2711-rpi.dtsi
> index 98817a6675b9..e30fbe84f9c3 100644
> --- a/arch/arm/boot/dts/bcm2711-rpi.dtsi
> +++ b/arch/arm/boot/dts/bcm2711-rpi.dtsi
> @@ -15,6 +15,7 @@ aliases {
>   		ethernet0 = &genet;
>   		pcie0 = &pcie0;
>   		blconfig = &blconfig;
> +		blpubkey = &blpubkey;
>   	};
>   };
>   
> @@ -67,6 +68,19 @@ blconfig: nvram@0 {
>   		no-map;
>   		status = "disabled";
>   	};
> +
> +	/*
> +	 * RPi4 will copy the binary public key blob (if present) from the bootloader
> +	 * into memory for use by the OS.

is the public key also possibly available for CM4 and RPi 400?

> +	 */
> +	blpubkey: nvram@1 {
> +		compatible = "raspberrypi,bootloader-public-key", "nvmem-rmem";
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		reg = <0x0 0x0 0x0>;
> +		no-map;
> +		status = "disabled";
> +	};
>   };
>   
>   &v3d {
