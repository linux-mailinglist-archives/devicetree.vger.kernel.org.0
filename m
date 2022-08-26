Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 25B6E5A22D5
	for <lists+devicetree@lfdr.de>; Fri, 26 Aug 2022 10:20:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230109AbiHZIUf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Aug 2022 04:20:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245678AbiHZIU1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Aug 2022 04:20:27 -0400
Received: from mx07-00178001.pphosted.com (mx08-00178001.pphosted.com [91.207.212.93])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C8A26427
        for <devicetree@vger.kernel.org>; Fri, 26 Aug 2022 01:20:25 -0700 (PDT)
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
        by mx07-00178001.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 27Q0bUuq002123;
        Fri, 26 Aug 2022 10:20:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=selector1;
 bh=iwdNRJes/FHUbLpSzkbIp+P/N5DO2F/eXU20QGD2NMg=;
 b=0KqZ22H/Nhw4+lcjNxGq8zl8VFEYKLeU82wVeZHdysHWCdqk5d8SQpfbwSd+gmo7QeK0
 ZfjLtyzWmtT4jd2uPJNgP0+3T+Lcwrnl5iRqUUR76cecFKKOAGW5PCNFkzJiqT/onLYZ
 laCZclHC9sdco5rMuqS4pVo0w7VC8xiY+h+2LB4K2/3LxrxvhAtfH5Uyih00FRbsxzQz
 ikowau0Yj63JLpAfUFBi3nrO8leWZmz4b8VYF0uYF0AMBCuC8WPBZZ1WXMusd17M6jZL
 K1wP/JT/IgEYLxsPTFKjg88gp5tCJlMAaZE9XUiM6b/5rSvVmBmZu7ZONWVy1nwt0Mvu Ew== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
        by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3j5h4wmvag-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Fri, 26 Aug 2022 10:20:19 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
        by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id E551F100038;
        Fri, 26 Aug 2022 10:20:18 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
        by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 99E59216838;
        Fri, 26 Aug 2022 10:20:18 +0200 (CEST)
Received: from [10.201.21.93] (10.75.127.47) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.2308.20; Fri, 26 Aug
 2022 10:20:18 +0200
Message-ID: <983664cb-ca09-6283-9e5a-8517cb324505@foss.st.com>
Date:   Fri, 26 Aug 2022 10:20:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2] ARM: dts: stm32: Fix typo in license text for Engicam
 boards
Content-Language: en-US
To:     Jagan Teki <jagan@amarulasolutions.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>
CC:     <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-amarula@amarulasolutions.com>
References: <20220823125517.1232448-1-jagan@amarulasolutions.com>
From:   Alexandre TORGUE <alexandre.torgue@foss.st.com>
In-Reply-To: <20220823125517.1232448-1-jagan@amarulasolutions.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG2NODE3.st.com (10.75.127.6) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-08-26_03,2022-08-25_01,2022-06-22_01
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Jagan

On 8/23/22 14:55, Jagan Teki wrote:
> Fix the Amarula Solutions typo mistake in license text added in below
> commits.
> 
> commit <3ff0810ffc479> ("ARM: dts: stm32: Add Engicam i.Core STM32MP1
> C.TOUCH 2.0 10.1" OF")
> commit <6ca2898df59f7> ("ARM: dts: stm32: Add Engicam i.Core STM32MP1
> C.TOUCH 2.0")
> commit <adc0496104b64> ("ARM: dts: stm32: Add Engicam i.Core STM32MP1
> EDIMM2.2 Starter Kit")
> commit <30f9a9da4ee13> ("ARM: dts: stm32: Add Engicam i.Core STM32MP1
> SoM")
> commit <1d278204cbaa1> ("ARM: dts: stm32: Add Engicam MicroGEA STM32MP1
> MicroDev 2.0 7" OF")
> commit <f838dae7afd00> ("ARM: dts: stm32: Add Engicam MicroGEA STM32MP1
> MicroDev 2.0 board")
> commit <0be81dfaeaf89> ("ARM: dts: stm32: Add Engicam MicroGEA STM32MP1
> SoM")
> 
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
> Changes for v2:
> - s/lisense/license/
> 
>   arch/arm/boot/dts/stm32mp157a-icore-stm32mp1-ctouch2-of10.dts   | 2 +-
>   arch/arm/boot/dts/stm32mp157a-icore-stm32mp1-ctouch2.dts        | 2 +-
>   arch/arm/boot/dts/stm32mp157a-icore-stm32mp1-edimm2.2.dts       | 2 +-
>   arch/arm/boot/dts/stm32mp157a-icore-stm32mp1.dtsi               | 2 +-
>   .../boot/dts/stm32mp157a-microgea-stm32mp1-microdev2.0-of7.dts  | 2 +-
>   arch/arm/boot/dts/stm32mp157a-microgea-stm32mp1-microdev2.0.dts | 2 +-
>   arch/arm/boot/dts/stm32mp157a-microgea-stm32mp1.dtsi            | 2 +-
>   7 files changed, 7 insertions(+), 7 deletions(-)
> 
Applied on stm32-next.

Thanks.
Alex
