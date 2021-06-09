Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B7A913A15CF
	for <lists+devicetree@lfdr.de>; Wed,  9 Jun 2021 15:41:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230507AbhFINnR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Jun 2021 09:43:17 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:59740 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230297AbhFINnR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Jun 2021 09:43:17 -0400
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 159DfD19034758;
        Wed, 9 Jun 2021 08:41:13 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1623246073;
        bh=+auUiyb0I87uGB2Y002e34VTCveCPZYoAbJKlHKA53s=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=Mibau5f5YrZ/KBZWbKX5BOq6WA465yzLDtV8My7CYyl7QStBoB9O7dOVA1oQLQLR/
         TkdEDB8DmF2XalQDLa+Mrbet8zA1gfTVhtIMLItmrV5Nid4hqfD4sB4jJjtuLq605+
         fz6KGAtyfvRkB/hRevHpApmgMW3hBKWq3lYwKB14=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 159DfD0J083990
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 9 Jun 2021 08:41:13 -0500
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Wed, 9 Jun
 2021 08:41:13 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Wed, 9 Jun 2021 08:41:13 -0500
Received: from [10.250.234.148] (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 159Df8HR012856;
        Wed, 9 Jun 2021 08:41:09 -0500
Subject: Re: [PATCH V2 2/2] arm64: dts: ti: Add support for J721E EAIK
To:     Sinthu Raja <sinthu.raja@mistralsolutions.com>,
        Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
CC:     Device Tree Mailing List <devicetree@vger.kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Amarnath MB <amarnath.mb@ti.com>,
        Sinthu Raja <sinthu.raja@ti.com>
References: <20210607093314.23909-1-sinthu.raja@ti.com>
 <20210607093314.23909-3-sinthu.raja@ti.com>
From:   Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <aace7e34-3f58-86f9-9ec3-f7782eac2c2c@ti.com>
Date:   Wed, 9 Jun 2021 19:11:08 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210607093314.23909-3-sinthu.raja@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 6/7/21 3:03 PM, Sinthu Raja wrote:
> +
> +&ospi0 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&mcu_fss0_ospi0_pins_default>;
> +
> +	flash@0{
> +		compatible = "jedec,spi-nor";
> +		reg = <0x0>;
> +		spi-tx-bus-width = <8>;
> +		spi-rx-bus-width = <8>;
> +		spi-max-frequency = <25000000>;
> +		cdns,tshsl-ns = <60>;
> +		cdns,tsd2d-ns = <60>;
> +		cdns,tchsh-ns = <60>;
> +		cdns,tslch-ns = <60>;
> +		cdns,read-delay = <4>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;

> +		partition@3fc0000 {
> +			label = "ospi.phypattern";
> +			reg = <0x3fc0000 0x40000>;
> +			u-boot,dm-spl;
> +		};

OSPI PHY calibration support is not yet final in mainline. Please drop
partition@3fc0000

Also, please drop u-boot,dm-spl here and elsewhere. This is U-Boot
specific property.

> +	};
> +};
> +
> +&ospi1 {
> +	/* Unused */
> +	status = "disabled";
> +};
> +

Regards
Vignesh
