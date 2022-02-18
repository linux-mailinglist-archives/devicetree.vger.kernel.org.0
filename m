Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1B7004BB51B
	for <lists+devicetree@lfdr.de>; Fri, 18 Feb 2022 10:16:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231410AbiBRJQ2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Feb 2022 04:16:28 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:57860 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231174AbiBRJQ1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Feb 2022 04:16:27 -0500
Received: from cpanel.siel.si (cpanel.siel.si [46.19.9.99])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0752728BF62
        for <devicetree@vger.kernel.org>; Fri, 18 Feb 2022 01:16:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com;
        s=default; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Cc
        :To:Subject:From:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
        Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
        :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
        List-Post:List-Owner:List-Archive;
        bh=bE833ii6JBmVkFFXcZO7xdCOK5mk+A6Va/gURh5A52Q=; b=eUp0OXuV8NHIN2mwM2Ta8znO1S
        2PTSsHILY65SAMrFQVhDhur2u379KzvB+OihOB7rqv70dAJjoq0p85MxACwc68yZfYTPSOA2dKXex
        1xIBYYHtWEbUytn/u5gnv16B9McXIMdgydKYvYD4fBhyDAz/qxotrK/2ak5Nx2x4di5PD+BeaqDAQ
        zesfyI8Mpb5SqBe1Fs9WRexYP+x1L457parH+5sCuOXTmEq1wvGMH5IFs0E4e1dM0/XqddoMokOXp
        q/hnf7IDWC3ofPJJ4q+Xj4+yLOy8FxpsxWdTunlzwAKw293TZ+d+//zBgeF9Dv7dqx30AkYRfbHb4
        gyuAiXFw==;
Received: from 89-212-21-243.static.t-2.net ([89.212.21.243]:33112 helo=[192.168.69.86])
        by cpanel.siel.si with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
        (Exim 4.94.2)
        (envelope-from <andrej.picej@norik.com>)
        id 1nKzMp-006Wuz-UL; Fri, 18 Feb 2022 10:16:03 +0100
Message-ID: <c84bfc22-7fa7-d101-3f52-a775c72579f7@norik.com>
Date:   Fri, 18 Feb 2022 10:16:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
From:   Andrej Picej <andrej.picej@norik.com>
Subject: Re: [PATCH RESEND 3/4] ARM: dts: imx6ul: phycore: Change USB LDO
 voltage for usb compliance
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        robh+dt@kernel.org, kernel@pengutronix.de, leoyang.li@nxp.com,
        krzysztof.kozlowski@canonical.com, festevam@gmail.com,
        linux@rempel-privat.de, arnd@arndb.de, linux-imx@nxp.com,
        y.bas@phytec.de
References: <20220131080526.1171072-1-andrej.picej@norik.com>
 <20220131080526.1171072-4-andrej.picej@norik.com>
 <20220212054627.GZ4909@dragon>
Content-Language: en-GB
In-Reply-To: <20220212054627.GZ4909@dragon>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel.siel.si
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cpanel.siel.si: authenticated_id: andrej.picej@norik.com
X-Authenticated-Sender: cpanel.siel.si: andrej.picej@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_MSPIKE_H5,
        RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_NONE,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 12. 02. 22 06:46, Shawn Guo wrote:
> On Mon, Jan 31, 2022 at 09:05:25AM +0100, Andrej Picej wrote:
>> From: Yunus Bas <y.bas@phytec.de>
>>
>> According to the NXP usb compliance reference, the USB data lines for
>> Full/Low speed are connected to the ARM USB LDO, which is set to
>> minimum-voltage = 2.6V and maximum-voltage = 3.4 V. When the regulator
>> is deactivated, the data lines are defaulty driven with 2.6V, which is
>> not USB Full-Speed compliant. To be compliant, we need to activate the
>> USB LDO regulator and set it to the value of 3V, which is the specified
>> value in the USB specification.
>>
>> Signed-off-by: Yunus Bas <y.bas@phytec.de>
>> Signed-off-by: Andrej Picej <andrej.picej@norik.com>
>> ---
>>   arch/arm/boot/dts/imx6ul-phytec-phycore-som.dtsi | 5 +++++
>>   1 file changed, 5 insertions(+)
>>
>> diff --git a/arch/arm/boot/dts/imx6ul-phytec-phycore-som.dtsi b/arch/arm/boot/dts/imx6ul-phytec-phycore-som.dtsi
>> index 3cddc68917a0..2e03be3d43ec 100644
>> --- a/arch/arm/boot/dts/imx6ul-phytec-phycore-som.dtsi
>> +++ b/arch/arm/boot/dts/imx6ul-phytec-phycore-som.dtsi
>> @@ -83,6 +83,11 @@ eeprom@52 {
>>   	};
>>   };
>>   
>> +&reg_3p0 {
>> +	regulator-min-microvolt = <3000000>;
>> +	regulator-always-on;
> 
> Rather than setting it always-on, shouldn't the consumer of the
> regulator turn it on/off as needed?

Sorry for late response, but I had to look into this a bit to see the 
reason for using always-on.

The consumer should turn the regulator on/off, but the consumer doesn't 
do that. If regulator is not specified as always-on the regulator stays 
in disabled state, even when usb device is used. That's why this was 
added here.

This should probably be fixed on consumer side. If you want I can drop 
the patch from this series and submit the fixed version when the stuff 
gets resolved.

BR,
Andrej
