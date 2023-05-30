Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0AD297158ED
	for <lists+devicetree@lfdr.de>; Tue, 30 May 2023 10:42:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229455AbjE3Imd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 May 2023 04:42:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51270 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229540AbjE3Imc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 May 2023 04:42:32 -0400
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC756A1
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 01:42:30 -0700 (PDT)
Received: from pps.filterd (m0241204.ppops.net [127.0.0.1])
        by mx07-00178001.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 34U3teF6017376;
        Tue, 30 May 2023 09:46:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=selector1;
 bh=x0GEoyW7rRaXHjpZ8+iyqeJ8FgkTO+MOAPiHZlVPtCU=;
 b=WzS/j98Th+aGKl9A79ZeHpcmlpsuDU6IdFfMeiRYJu6QqO10YqiVtwXTmso9LmSpDEM9
 BaLkt8na2FXKBcXk2K4Claqjyg6f/npajuShTGXQqAiEAcNPoSd9V8aKbN1ZgWvH1pL9
 nwusJzwGR0oZxigeWFscMJxwzFM5OzUkYWpa6ztZ1LBy/O+K0erqEFKOe8lb3HkNNfCO
 GJSXLNs4r3T5QmCA8vckIxsMorwRvQiBWvffIDp8H6AOAXRL2DKmiuYq2EW0xNov1+oT
 bPJo+Tfc03zKwd5j2BUCcxMUokj7zr2ZKayjOv6gt5Kub+kqgaK4/Cl96N32InKJ2EHK pQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
        by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3quahy602g-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Tue, 30 May 2023 09:46:09 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
        by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D0F5010002A;
        Tue, 30 May 2023 09:46:07 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
        by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id C2AC92138D6;
        Tue, 30 May 2023 09:46:07 +0200 (CEST)
Received: from [10.201.21.93] (10.201.21.93) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.21; Tue, 30 May
 2023 09:46:07 +0200
Message-ID: <f0fd3fed-b2bb-539c-51da-f8abc4029930@foss.st.com>
Date:   Tue, 30 May 2023 09:46:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH] ARM: dts: stm32: Shorten the AV96 HDMI sound card name
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>, <linux-arm-kernel@lists.infradead.org>
CC:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, <devicetree@vger.kernel.org>,
        <kernel@dh-electronics.com>,
        <linux-stm32@st-md-mailman.stormreply.com>
References: <20230518004232.422893-1-marex@denx.de>
From:   Alexandre TORGUE <alexandre.torgue@foss.st.com>
In-Reply-To: <20230518004232.422893-1-marex@denx.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.201.21.93]
X-ClientProxiedBy: EQNCAS1NODE3.st.com (10.75.129.80) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.957,Hydra:6.0.573,FMLib:17.11.176.26
 definitions=2023-05-30_04,2023-05-29_02,2023-05-22_02
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marek

On 5/18/23 02:42, Marek Vasut wrote:
> Fix the following error in kernel log due to too long sound card name:
> "
> asoc-audio-graph-card sound: ASoC: driver name too long 'STM32MP1-AV96-HDMI' -> 'STM32MP1-AV96-H'
> "
> 
> Fixes: e027da342772 ("ARM: dts: stm32: Add bindings for audio on AV96")
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Marek Vasut <marex@denx.de>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: kernel@dh-electronics.com
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-stm32@st-md-mailman.stormreply.com
> ---
>   arch/arm/boot/dts/stm32mp15xx-dhcor-avenger96.dtsi | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/stm32mp15xx-dhcor-avenger96.dtsi b/arch/arm/boot/dts/stm32mp15xx-dhcor-avenger96.dtsi
> index 302efac5d26f0..2b52515457e4b 100644
> --- a/arch/arm/boot/dts/stm32mp15xx-dhcor-avenger96.dtsi
> +++ b/arch/arm/boot/dts/stm32mp15xx-dhcor-avenger96.dtsi
> @@ -87,7 +87,7 @@ sd_switch: regulator-sd_switch {
>   
>   	sound {
>   		compatible = "audio-graph-card";
> -		label = "STM32MP1-AV96-HDMI";
> +		label = "STM32-AV96-HDMI";
>   		dais = <&sai2a_port>;
>   		status = "okay";
>   	};

Applied on stm32-next.

Thanks.
Alex
