Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 97C6E6D4D42
	for <lists+devicetree@lfdr.de>; Mon,  3 Apr 2023 18:11:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230108AbjDCQLS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Apr 2023 12:11:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42026 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230080AbjDCQLR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Apr 2023 12:11:17 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF0D1AB
        for <devicetree@vger.kernel.org>; Mon,  3 Apr 2023 09:11:16 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 1A89183AA4;
        Mon,  3 Apr 2023 18:11:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1680538275;
        bh=FcmaPUPqe9Yg3VZFvzWFPVFfNahe4d7BH9GnamqcLmU=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=Wc5T1pB/g9qHPtv+6YtSYI8k8Fg9TWqiJQ4m/a3a9XwDs67hGIGsfp9YYOTytjNch
         Mk3E1znZEqCgnAwghf52M5JWsZpwnfr+j06qjLvQBX3PPv6inpPWFoveiohnCvAHmI
         ZZj4Xx1iVzPqWO8h0zucyigBvkTXWbwvhEr9FuNMS7JAVJX7c9zi2y+alcQzm+WySi
         07b4Y6bTz7m9vLCgLXdk111/+EFZgsG/X06y6FqdnTZeVIYwPRzhegEkA+Uej4bx55
         vhjSUw/c8elvtK6nZvKxScSGbqnMzYOXlT4zUOECwE1yK+uakSkDfxoTqNFZis+AAs
         tBdMKhiBIGd0Q==
Message-ID: <642bd444-9cc3-43aa-53d9-90cebbcd9000@denx.de>
Date:   Mon, 3 Apr 2023 18:11:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH] dt-bindings: bridge: Convert Samsung MIPI DSIM bridge to
 yaml
Content-Language: en-US
To:     Fabio Estevam <festevam@gmail.com>, neil.armstrong@linaro.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        jagan@amarulasolutions.com, inki.dae@samsung.com,
        Fabio Estevam <festevam@denx.de>
References: <20230331195746.114840-1-festevam@gmail.com>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <20230331195746.114840-1-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-3.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 3/31/23 21:57, Fabio Estevam wrote:
[...]

> -Example:
> -
> -	dsi@11c80000 {
> -		compatible = "samsung,exynos4210-mipi-dsi";
> -		reg = <0x11C80000 0x10000>;
> -		interrupts = <0 79 0>;
> -		clocks = <&clock 286>, <&clock 143>;
> -		clock-names = "bus_clk", "sclk_mipi";
> -		phys = <&mipi_phy 1>;
> -		phy-names = "dsim";
> -		vddcore-supply = <&vusb_reg>;
> -		vddio-supply = <&vmipi_reg>;
> -		power-domains = <&pd_lcd0>;
> -		#address-cells = <1>;
> -		#size-cells = <0>;

(*)

> -		samsung,pll-clock-frequency = <24000000>;
> -
> -		panel@1 {
> -			reg = <0>;
> -			...
> -			port {
> -				panel_ep: endpoint {
> -					remote-endpoint = <&dsi_ep>;
> -				};
> -			};
> -		};
> -
> -		ports {
> -			#address-cells = <1>;
> -			#size-cells = <0>;

You likely don't need the address/size cells here if the super-node 
already defined those (*) above
