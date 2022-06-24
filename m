Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BB1355593AA
	for <lists+devicetree@lfdr.de>; Fri, 24 Jun 2022 08:43:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229496AbiFXGm7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Jun 2022 02:42:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50530 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229522AbiFXGm6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Jun 2022 02:42:58 -0400
X-Greylist: delayed 1210 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Thu, 23 Jun 2022 23:42:54 PDT
Received: from 6.mo552.mail-out.ovh.net (6.mo552.mail-out.ovh.net [188.165.49.222])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E4B87F3B
        for <devicetree@vger.kernel.org>; Thu, 23 Jun 2022 23:42:54 -0700 (PDT)
Received: from mxplan5.mail.ovh.net (unknown [10.108.1.179])
        by mo552.mail-out.ovh.net (Postfix) with ESMTPS id DCFD726D1E;
        Fri, 24 Jun 2022 06:06:17 +0000 (UTC)
Received: from kaod.org (37.59.142.97) by DAG4EX1.mxp5.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.9; Fri, 24 Jun
 2022 08:06:17 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-97G002a741d817-3ab1-43d1-972f-d7ae1c10c91a,
                    5EF2319963E9DB1A14486A5EC8730A2EE4B20F29) smtp.auth=clg@kaod.org
X-OVh-ClientIp: 82.64.250.170
Message-ID: <3114efc7-5131-2de5-4ebc-6b6deeea1f23@kaod.org>
Date:   Fri, 24 Jun 2022 08:06:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [PATCH] ARM: dts: aspeed: ast2600-evb: Update I2C devices
Content-Language: en-US
To:     Joel Stanley <joel@jms.id.au>,
        Ryan Chen <ryan_chen@aspeedtech.com>,
        <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <linux-aspeed@lists.ozlabs.org>
References: <20220623094717.3873328-1-joel@jms.id.au>
From:   =?UTF-8?Q?C=c3=a9dric_Le_Goater?= <clg@kaod.org>
In-Reply-To: <20220623094717.3873328-1-joel@jms.id.au>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-Originating-IP: [37.59.142.97]
X-ClientProxiedBy: DAG5EX1.mxp5.local (172.16.2.41) To DAG4EX1.mxp5.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: 77572050-9480-412a-a6cc-5d4782b5fe48
X-Ovh-Tracer-Id: 6077889174570503075
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvfedrudefkedguddthecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefkffggfgfuvfhfhfgjtgfgihesthekredttdefjeenucfhrhhomhepveorughrihgtpgfnvggpifhorghtvghruceotghlgheskhgrohgurdhorhhgqeenucggtffrrghtthgvrhhnpeeigedvffekgeeftedutddttdevudeihfegudffkeeitdekkeetkefhffelveelleenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddrleejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpohhuthdphhgvlhhopehmgihplhgrnhehrdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomheptghlgheskhgrohgurdhorhhgpdhnsggprhgtphhtthhopedupdhrtghpthhtoheplhhinhhugidqrghsphgvvggusehlihhsthhsrdhoiihlrggsshdrohhrghdpoffvtefjohhsthepmhhoheehvd
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 6/23/22 11:47, Joel Stanley wrote:
> The AST2600A3 EVB has the following I2C devices:
> 
>   - ADT7490 at 0x2e
>   - EEPROM at 0xa0
>   - LM75 at 0x9a
> 
> The bus these devices appear on can be configured by jumpers. The device
> tree is configured with the buses given by the default jumper settings.
> 
> Signed-off-by: Joel Stanley <joel@jms.id.au>

Reviewed-by: Cédric Le Goater <clg@kaod.org>

Thanks,

C.

> ---
>   arch/arm/boot/dts/aspeed-ast2600-evb.dts | 21 ++++++++++++++++-----
>   1 file changed, 16 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/aspeed-ast2600-evb.dts b/arch/arm/boot/dts/aspeed-ast2600-evb.dts
> index 5a6063bd4508..9da70b873ab6 100644
> --- a/arch/arm/boot/dts/aspeed-ast2600-evb.dts
> +++ b/arch/arm/boot/dts/aspeed-ast2600-evb.dts
> @@ -207,11 +207,6 @@ &uart5 {
>   
>   &i2c0 {
>   	status = "okay";
> -
> -	temp@2e {
> -		compatible = "adi,adt7490";
> -		reg = <0x2e>;
> -	};
>   };
>   
>   &i2c1 {
> @@ -240,10 +235,26 @@ &i2c6 {
>   
>   &i2c7 {
>   	status = "okay";
> +
> +	temp@2e {
> +		compatible = "adi,adt7490";
> +		reg = <0x2e>;
> +	};
> +
> +	eeprom@50 {
> +		compatible = "atmel,24c08";
> +		reg = <0x50>;
> +		pagesize = <16>;
> +	};
>   };
>   
>   &i2c8 {
>   	status = "okay";
> +
> +	lm75@4d {
> +		compatible = "national,lm75";
> +		reg = <0x4d>;
> +	};
>   };
>   
>   &i2c9 {

