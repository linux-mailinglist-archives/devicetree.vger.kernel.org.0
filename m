Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 294AF7269E5
	for <lists+devicetree@lfdr.de>; Wed,  7 Jun 2023 21:37:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230189AbjFGThS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Jun 2023 15:37:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51158 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230057AbjFGThR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Jun 2023 15:37:17 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 560E41FE0
        for <devicetree@vger.kernel.org>; Wed,  7 Jun 2023 12:37:15 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-5147f7d045bso1866802a12.2
        for <devicetree@vger.kernel.org>; Wed, 07 Jun 2023 12:37:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686166634; x=1688758634;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eDxBlqqSJP4BTdPtvAfTFeIDcm3naOpj8m5v/60N4ng=;
        b=Bcw+jxUmFepr5qOtAuShI24S3qZIhgNXiAlHtYUw3ieyXfSk0avo9N287CvRzoUfjz
         Bl+262NOa6rYwq+IitQyI+Z36ER6K4Vfr8o4Evj72E9XiY01Khk98ppgt9gNCzF4b0vn
         RtkJXqCaIjNZ/aKZowOwVyUyWtrvQ3TN33MTwAHhKu0e3XzW39vkqKyaq3Ck7HJ8FuMg
         smey8AW7WYkdi+hj26qXHhftTVYXgV3qZp30Mhc77/X2gaxI1VxVaVZszrNxbcDDJfuG
         rgplNpggJJh8WQi+VYJeORhilcrPcT4v7H7G8DgodsTeZMGa2yVosVzw4/MtSs0PRSQN
         nAcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686166634; x=1688758634;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eDxBlqqSJP4BTdPtvAfTFeIDcm3naOpj8m5v/60N4ng=;
        b=CrthwyrYma1HkrgdCvu2WIyNkZxoEbHGd7+2GCO9hxtOS58QyRox/jPDcGPPSRsOj/
         x1Sp7AmyJtsrUYSoiJXKOPYVpSbgEH/uxdxfQxKlWHGMLwvG69Yc0eQNONZBFfcfresI
         UTm3Vt+u4ca2psbXTcaAD8OpCe+NPYcJGGQfXGnFV9khURqlU52YN0nBpwrE1bFh3RI5
         b0JezGvuSj+maLqbmhX8WiIuu+cMHIvedx2Ke3UmMu6aBrSbLh0/GWnvDBvbg1XkREOz
         dqwQHS94sHGaBOyWhfl89wedeHNPa5V6YOLiT4BEZjYKb9tjHHSgt4AmdG/w8KYtNUFY
         pTjw==
X-Gm-Message-State: AC+VfDx2qTeEkbdOJJxYczoxVkYR5LK+mfH7VqK0yvlzSfdqmD+t5Ws3
        ncU8I0SU1tmh3IQhMR86h0Q=
X-Google-Smtp-Source: ACHHUZ7QOWIDGQ8CGdyV6bCcgKfgZCDXRP4jY5R5mojir2tNvKh7CRPFjmTr3gki9c9g6eO6SZ7yCQ==
X-Received: by 2002:a17:907:7f27:b0:96f:aadb:bf81 with SMTP id qf39-20020a1709077f2700b0096faadbbf81mr9072118ejc.45.1686166633497;
        Wed, 07 Jun 2023 12:37:13 -0700 (PDT)
Received: from shift.daheim (p4fd09b31.dip0.t-ipconnect.de. [79.208.155.49])
        by smtp.gmail.com with ESMTPSA id l1-20020a17090615c100b0096a742beb68sm7147693ejd.201.2023.06.07.12.37.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jun 2023 12:37:13 -0700 (PDT)
Received: from localhost ([127.0.0.1])
        by shift.daheim with esmtp (Exim 4.96)
        (envelope-from <chunkeey@gmail.com>)
        id 1q6yy0-002UOj-1n;
        Wed, 07 Jun 2023 21:37:12 +0200
Message-ID: <785c76d5-bfe2-3491-45d1-e78efd750e6a@gmail.com>
Date:   Wed, 7 Jun 2023 21:37:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] ARM: dts: BCM5301X: Describe switch ports in the main DTS
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Florian Fainelli <f.fainelli@gmail.com>
Cc:     Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20230605132109.7933-1-zajec5@gmail.com>
Content-Language: de-DE
From:   Christian Lamparter <chunkeey@gmail.com>
In-Reply-To: <20230605132109.7933-1-zajec5@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 6/5/23 15:21, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> All Northstar SoCs have BCM5301x switches (BCM53011, BCM53012) with 8
> ports (0-8 without 6). By design 3 switch ports (5, 7 and 8) are
> hardwired to 3 on-SoC Ethernet interfaces. Switch port 8 requires
> forcing link state.
> 
> It seems that global Northstar .dtsi file is the best place to describe
> those hw details. Only device specific bits (like labels) should go to
> device .dts files.
> 
> This seems to fit well with a tiny exception of Asus RT-AC88U which
> somehow was designed to have switch 5 connected to an extra switch. This
> case was simply handled with a /delete-property/.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
No, I was wrong. Both the MR26 and MR32 use the Gbit PHY integrated into
the SoCs. There is no extra PHY chip to be found anywhere on the PCBs.
phytool does confirm this.

# mr26 + mr32 outputs are indentical.
| $ phytool poe/0
| ieee-phy: id:0x600d8760
| ieee-phy: reg:BMCR(0x00) val:0x1140
|  flags:          -reset -loopback +aneg-enable -power-down -isolate -aneg-restart -collision-test
|  speed:          1000-full
|
| ieee-phy: reg:BMSR(0x01) val:0x79ed
|  capabilities:   -100-b4 +100-f +100-h +10-f +10-h -100-t2-f -100-t2-h
|  flags:          +ext-status +aneg-complete -remote-fault +aneg-capable +link -jabber +ext-register

Reviewed-by: Christian Lamparter <chunkeey@gmail.com> (MR32+MR26)

Thank you!
> ---

>   arch/arm/boot/dts/bcm53015-meraki-mr26.dts    |  3 --
>   arch/arm/boot/dts/bcm53016-meraki-mr32.dts    |  3 --
>   22 files changed, 51 insertions(+), 163 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/bcm-ns.dtsi b/arch/arm/boot/dts/bcm-ns.dtsi
> index 43d670746f05..dae9c47ace76 100644
> --- a/arch/arm/boot/dts/bcm-ns.dtsi
> +++ b/arch/arm/boot/dts/bcm-ns.dtsi
> @@ -313,10 +313,49 @@ srab: ethernet-switch@18007000 {
>   
>   		status = "disabled";
>   
> -		/* ports are defined in board DTS */
>   		ports {
>   			#address-cells = <1>;
>   			#size-cells = <0>;
> +
> +			port@0 {
> +				reg = <0>;
> +			};
> +
> +			port@1 {
> +				reg = <1>;
> +			};
> +
> +			port@2 {
> +				reg = <2>;
> +			};
> +
> +			port@3 {
> +				reg = <3>;
> +			};
> +
> +			port@4 {
> +				reg = <4>;
> +			};
> +
> +			port@5 {
> +				reg = <5>;
> +				ethernet = <&gmac0>;
> +			};
> +
> +			port@7 {
> +				reg = <7>;
> +				ethernet = <&gmac1>;
> +			};
> +
> +			port@8 {
> +				reg = <8>;
> +				ethernet = <&gmac2>;
> +
> +				fixed-link {
> +					speed = <1000>;
> +					full-duplex;
> +				};
> +			};
>   		};
>   	};
>   
> diff --git a/arch/arm/boot/dts/bcm53015-meraki-mr26.dts b/arch/arm/boot/dts/bcm53015-meraki-mr26.dts
> index 071f2cb97251..24ba467c67b9 100644
> --- a/arch/arm/boot/dts/bcm53015-meraki-mr26.dts
> +++ b/arch/arm/boot/dts/bcm53015-meraki-mr26.dts
> @@ -115,14 +115,11 @@ &srab {
>   
>   	ports {
>   		port@0 {
> -			reg = <0>;
>   			label = "poe";
>   		};
>   
>   		port@5 {
> -			reg = <5>;
>   			label = "cpu";
> -			ethernet = <&gmac0>;
>   
>   			fixed-link {
>   				speed = <1000>;
> diff --git a/arch/arm/boot/dts/bcm53016-meraki-mr32.dts b/arch/arm/boot/dts/bcm53016-meraki-mr32.dts
> index 46c2c93b01d8..559d6c371d67 100644
> --- a/arch/arm/boot/dts/bcm53016-meraki-mr32.dts
> +++ b/arch/arm/boot/dts/bcm53016-meraki-mr32.dts
> @@ -176,14 +176,11 @@ &srab {
>   
>   	ports {
>   		port@0 {
> -			reg = <0>;
>   			label = "poe";
>   		};
>   
>   		port@5 {
> -			reg = <5>;
>   			label = "cpu";
> -			ethernet = <&gmac0>;
>   
>   			fixed-link {
>   				speed = <1000>;

