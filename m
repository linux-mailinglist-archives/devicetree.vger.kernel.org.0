Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0F4CF31C5AD
	for <lists+devicetree@lfdr.de>; Tue, 16 Feb 2021 03:51:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229703AbhBPCvG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Feb 2021 21:51:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43144 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229497AbhBPCvF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Feb 2021 21:51:05 -0500
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C984C061574
        for <devicetree@vger.kernel.org>; Mon, 15 Feb 2021 18:50:25 -0800 (PST)
Received: by mail-pl1-x636.google.com with SMTP id a9so2601984plh.8
        for <devicetree@vger.kernel.org>; Mon, 15 Feb 2021 18:50:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=qT6Qv4UO7iY9weRE2pinF3cQtgAQDH67e9aE6oV7US8=;
        b=VTw5bnwgM46SmQHugcyDBnaVKnlvjtWxo+FwmCCiP4lm70NYZENdCq3jMlcy33R1sf
         GmO1FPmVGB2/nSdbUYaBQ+QVLcdLnne4Bdhp5VNe1m+RwgDyX7+Vjw8ymv9350QVGGXN
         IN/bgnvde8D1HfCJmb2iRIAo7F78IZyiG3fAiAS0mRrDGs0TtEriOBmNazHstJMsHT2V
         eEx3S5kwSBw1w3z8kx5QP1ZNGpGi78Q4XWnZFZWpJbx/azuPeLgbrdx8sButYaLpMFhs
         uKQabhX8JIXHYvifSg9FPz1aelWvsnnQQ0g+c2PDsLebn92oDsL89QW2TMotIM6ImD8c
         MOGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=qT6Qv4UO7iY9weRE2pinF3cQtgAQDH67e9aE6oV7US8=;
        b=feOzchtmH3tkzBOXmba1Qnh/pUVLUftdb4ubkedArrYgemkrsaulFCS5q7fOyO1Vsw
         QhUJp4Kgl8/lpIjFGq+iBKAcqy1iQaInffJl0TZtIl/zBhN6Rrdn2iuaK3s5m59cACmY
         1ZHpwjZOaGsZ5U7oVo/mRSnLQa5WAnYn6XCTfy439lkwF7tBqasZUyodVtUSlRm8/4qf
         fvWonyhoyMcHfn6d18WzSLVrY/F83zMkuO+FdnPYJrU3lvfmE3uvgvLo0zPJ3XlsEdwb
         iBChWzXgFTh2t0NSvAjwas1S0S4emik5UvyGKItJOKzgK/6cfpmGD0QNnsVboQJbU9qL
         3gFg==
X-Gm-Message-State: AOAM5310gumO3s/QMwfRA0fgmdmsgSXIoX8xE5IFnEVfrsH9j3JZcQb5
        ay25esuu//JPmENBn+7rEFw=
X-Google-Smtp-Source: ABdhPJwMY+WRg7dPTHvkttI/R5UVWGhD5gnVavDrd4ldSiaK1lwa3RDLCSckOSt9k2GLnxToVenJ0w==
X-Received: by 2002:a17:90a:62c1:: with SMTP id k1mr1891994pjs.79.1613443824866;
        Mon, 15 Feb 2021 18:50:24 -0800 (PST)
Received: from [10.230.29.30] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id x20sm18994562pfi.115.2021.02.15.18.50.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Feb 2021 18:50:24 -0800 (PST)
Subject: Re: [PATCH 2/5] arm64: dts: broadcom: bcm4908: describe Ethernet
 controller
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20210215204105.27830-1-zajec5@gmail.com>
 <20210215204105.27830-2-zajec5@gmail.com>
From:   Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <4b586f2c-851c-e4ea-6507-b9d9b7c08850@gmail.com>
Date:   Mon, 15 Feb 2021 18:50:17 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210215204105.27830-2-zajec5@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 2/15/2021 12:41 PM, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> BCM4908 SoCs have an integrated Ethernet controller.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---
>  .../boot/dts/broadcom/bcm4908/bcm4908.dtsi    | 20 +++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
> index 358958105337..2d2c23292508 100644
> --- a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
> +++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
> @@ -112,6 +112,14 @@ soc {
>  		#size-cells = <1>;
>  		ranges = <0x00 0x00 0x80000000 0x281000>;
>  
> +		enet: ethernet@2000 {
> +			compatible = "brcm,bcm4908-enet";
> +			reg = <0x2000 0x1000>;
> +
> +			interrupts = <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "rx";
> +		};
> +
>  		usb_phy: usb-phy@c200 {
>  			compatible = "brcm,bcm4908-usb-phy";
>  			reg = <0xc200 0x100>;
> @@ -199,6 +207,18 @@ port@3 {
>  						phy-mode = "internal";
>  						phy-handle = <&phy11>;
>  					};
> +
> +					port@8 {
> +						reg = <8>;
> +						phy-mode = "internal";
> +						ethernet = <&enet>;
> +						brcm,use-bcm-hdr;

This looks redundant, because we have an "ethernet" phandle property
here this will become the CPU port for DSA and so we would enable
Broadcom tags on that port. Did you somehow need that for the switch
driver to work?
-- 
Florian
