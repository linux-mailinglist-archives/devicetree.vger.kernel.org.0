Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0852929DDB8
	for <lists+devicetree@lfdr.de>; Thu, 29 Oct 2020 01:40:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731953AbgJ2AkW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Oct 2020 20:40:22 -0400
Received: from mickerik.phytec.de ([195.145.39.210]:43204 "EHLO
        mickerik.phytec.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729273AbgJ2AkW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Oct 2020 20:40:22 -0400
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1603875314; x=1606467314;
        h=From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=ZIw5NWfpswqzXPm03egnXC+h7efe52A2H31FN19SXJA=;
        b=AY35mTw6+n4OwdjRFKuP3swRzFERhsruxcCoksPsCus6KvpvJnWdEMOvGWmYUC4e
        aPU2iR/oHWm6oZk2R1p4giicnnH/2vpgd4kELWN1dPC8+DFqCyEbLCldL/rIkdJs
        wk+3SOcky0n0d2bklOLXKedbrxk5hQYUO6uXG/Q3w/E=;
X-AuditID: c39127d2-253ff70000001c25-f9-5f9931f24a79
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id E1.46.07205.2F1399F5; Wed, 28 Oct 2020 09:55:14 +0100 (CET)
Received: from [172.16.23.108] ([172.16.23.108])
          by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
          with ESMTP id 2020102809551405-682845 ;
          Wed, 28 Oct 2020 09:55:14 +0100 
Subject: Re: [PATCH 4/6] ARM: dts: imx6ul: segin: Add phyBOARD-Segin with eMMC
 phyCORE-i.MX6UL
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, Yunus Bas <y.bas@phytec.de>
References: <20200922092313.151293-1-s.riedmueller@phytec.de>
 <20200922092313.151293-4-s.riedmueller@phytec.de>
 <20201028084627.GE28755@dragon>
From:   =?UTF-8?Q?Stefan_Riedm=c3=bcller?= <s.riedmueller@phytec.de>
Message-ID: <f2c641e9-be33-260e-e225-ca36212800f5@phytec.de>
Date:   Wed, 28 Oct 2020 09:55:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201028084627.GE28755@dragon>
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 28.10.2020 09:55:14,
        Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 28.10.2020 09:55:14,
        Serialize complete at 28.10.2020 09:55:14
X-TNEFEvaluated: 1
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrBLMWRmVeSWpSXmKPExsWyRoCBS/eT4cx4g+X/OCzmHznHavHwqr/F
        psfXWC3+79nBbvF3+yYWixdbxB3YPHbOusvusWlVJ5vH5iX1Hv1/DTw+b5ILYI3isklJzcks
        Sy3St0vgyphz6D9zwRvJihONM1gaGJtEuhg5OSQETCT+33vE1MXIxSEksJVR4nD/SxYI5wyj
        xNJ/15hBqoQFEiQuTvvBDmKLCChLnNrYxw5SxCxwmlHi9OdVUO2TGSXO7jjIAlLFJuAksfh8
        BxuIzStgI3G3dRcjiM0ioCpxeNstoAYODlGBSImdOywhSgQlTs58AtbKKaAjsXfSSrAFEgKN
        TBKXd/1ig7hVSOL04rNgFzELyEtsfzsHyjaTmLf5IZQtLnHryXymCYxCs5DMnYWkZRaSlllI
        WhYwsqxiFMrNTM5OLcrM1ivIqCxJTdZLSd3ECIyNwxPVL+1g7JvjcYiRiYPxEKMEB7OSCO8L
        wZnxQrwpiZVVqUX58UWlOanFhxilOViUxHk38JaECQmkJ5akZqemFqQWwWSZODilGhhlq6PX
        Ohnrs3dLh5WYsR4+yB/f0zft1dG1HqvP+H1miwvaeCHy0H0+NT5WMfH9bq9b/lTsZFR4WXvI
        K20Z06w/BakPNr06qGL5ZaX3A/Xu2De9taedhA7purxkK/iWXzlB0Wmvs3RcsnzrginiGetU
        bnikt7S1ftXXeHuCb+2EnzqrdtjrSCuxFGckGmoxFxUnAgDGxlaLewIAAA==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Shawn,

On 28.10.20 09:46, Shawn Guo wrote:
> On Tue, Sep 22, 2020 at 11:23:11AM +0200, Stefan Riedmueller wrote:
>> From: Yunus Bas <y.bas@phytec.de>
>>
>> Add a PHYTEC phyBOARD-Segin full featured with phyCORE-i.MX 6UL with
>> eMMC and following features:
>>      - i.MX 6UL
>>      - 512 MB RAM
>>      - eMMC
>>      - USB Host/OTG
>>      - 2x 100 Mbit/s Ethernet
>>      - RS232
>>      - CAN
>>
>> Signed-off-by: Yunus Bas <y.bas@phytec.de>
>> Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
>> ---
>>   arch/arm/boot/dts/Makefile                    |  1 +
>>   .../dts/imx6ul-phytec-segin-ff-rdk-emmc.dts   | 93 +++++++++++++++++++
>>   2 files changed, 94 insertions(+)
>>   create mode 100644 arch/arm/boot/dts/imx6ul-phytec-segin-ff-rdk-emmc.dts
>>
>> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
>> index 4572db3fa5ae..81ede0707a51 100644
>> --- a/arch/arm/boot/dts/Makefile
>> +++ b/arch/arm/boot/dts/Makefile
>> @@ -615,6 +615,7 @@ dtb-$(CONFIG_SOC_IMX6UL) += \
>>   	imx6ul-pico-dwarf.dtb \
>>   	imx6ul-pico-hobbit.dtb \
>>   	imx6ul-pico-pi.dtb \
>> +	imx6ul-phytec-segin-ff-rdk-emmc.dtb \
>>   	imx6ul-phytec-segin-ff-rdk-nand.dtb \
>>   	imx6ul-tx6ul-0010.dtb \
>>   	imx6ul-tx6ul-0011.dtb \
>> diff --git a/arch/arm/boot/dts/imx6ul-phytec-segin-ff-rdk-emmc.dts b/arch/arm/boot/dts/imx6ul-phytec-segin-ff-rdk-emmc.dts
>> new file mode 100644
>> index 000000000000..934c05fad615
>> --- /dev/null
>> +++ b/arch/arm/boot/dts/imx6ul-phytec-segin-ff-rdk-emmc.dts
>> @@ -0,0 +1,93 @@
>> +// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
>> +/*
>> + * Copyright (C) 2020 PHYTEC Messtechnik GmbH
>> + * Author: Yunus Bas <y.bas@phytec.de>
>> + */
>> +
>> +/dts-v1/;
>> +#include "imx6ul.dtsi"
>> +#include "imx6ul-phytec-phycore-som.dtsi"
>> +#include "imx6ul-phytec-segin.dtsi"
>> +#include "imx6ul-phytec-segin-peb-eval-01.dtsi"
>> +
>> +/ {
>> +	model = "PHYTEC phyBOARD-Segin i.MX6 UltraLite Full Featured with eMMC";
>> +	compatible = "phytec,imx6ul-pbacd10-emmc", "phytec,imx6ul-pbacd10",
>> +		     "phytec,imx6ul-pcl063","fsl,imx6ul";
>> +};
>> +
>> +&adc1 {
>> +	status = "okay";
>> +};
>> +
>> +&can1 {
>> +	status = "okay";
>> +};
>> +
>> +&tlv320 {
>> +	status = "okay";
>> +};
> 
> It breaks the alphabetic order.

Ah sorry, I missed that. I'll send a v2.

Thanks,
Stefan

> 
> Shawn
> 
>> +
>> +&ecspi3 {
>> +	status = "okay";
>> +};
>> +
>> +&ethphy1 {
>> +	status = "okay";
>> +};
>> +
>> +&ethphy2 {
>> +	status = "okay";
>> +};
>> +
>> +&fec1 {
>> +	status = "okay";
>> +};
>> +
>> +&fec2 {
>> +	status = "okay";
>> +};
>> +
>> +&i2c_rtc {
>> +	status = "okay";
>> +};
>> +
>> +&reg_can1_en {
>> +	status = "okay";
>> +};
>> +
>> +&reg_sound_1v8 {
>> +	status = "okay";
>> +};
>> +
>> +&reg_sound_3v3 {
>> +	status = "okay";
>> +};
>> +
>> +&sai2 {
>> +	status = "okay";
>> +};
>> +
>> +&sound {
>> +	status = "okay";
>> +};
>> +
>> +&uart5 {
>> +	status = "okay";
>> +};
>> +
>> +&usbotg1 {
>> +	status = "okay";
>> +};
>> +
>> +&usbotg2 {
>> +	status = "okay";
>> +};
>> +
>> +&usdhc1 {
>> +	status = "okay";
>> +};
>> +
>> +&usdhc2 {
>> +	status = "okay";
>> +};
>> -- 
>> 2.25.1
>>
