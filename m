Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CC4CF5A22C6
	for <lists+devicetree@lfdr.de>; Fri, 26 Aug 2022 10:17:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245042AbiHZIR4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Aug 2022 04:17:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47698 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244788AbiHZIRz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Aug 2022 04:17:55 -0400
Received: from mx07-00178001.pphosted.com (mx08-00178001.pphosted.com [91.207.212.93])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D20A5D11F0
        for <devicetree@vger.kernel.org>; Fri, 26 Aug 2022 01:17:52 -0700 (PDT)
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
        by mx07-00178001.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 27Q1rmbk002258;
        Fri, 26 Aug 2022 10:17:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=selector1;
 bh=xTqTKT5qg+4P3M9I13cayvKlazY2ygk4YynAz0m1NCU=;
 b=Ah15l5VwbiNPYqz3AMkvaSMXDdvZYD4aHMSwmc1fn4/2m1G7aRMDpIC/RESzpY6k8F1v
 Q40NrJn+Bct0ZUiGhJOxnPbuPMQxq85v0x94QqXcIzpCxBQVeRAndzCh4PYI4TtFIcQc
 DneYrYrcP/NfSs+ISX721qWO8ybj7URi79s62OYIFQ4XwIsVePSdyo3q932Fpmjxbb6b
 y33ijFQgm+YDkucd7PUzQuvUVDeik7nObPLbnBncbIjLLIO/NSAVOLY4Y+UeSnGsMZfg
 6Kf8ZCAzBEyjCyT7VgDNGrVPMD8PLMFLYNp/M5ZJ+BacurIDfiG9qBE/TEcY3RKcOgEx Mg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
        by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3j5h4wmuqr-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Fri, 26 Aug 2022 10:17:27 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
        by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id BB4FD10002A;
        Fri, 26 Aug 2022 10:17:26 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
        by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id B5B14215157;
        Fri, 26 Aug 2022 10:17:26 +0200 (CEST)
Received: from [10.201.21.93] (10.75.127.46) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.2308.20; Fri, 26 Aug
 2022 10:17:26 +0200
Message-ID: <b181598a-a9db-45f0-5123-0e757fbeed29@foss.st.com>
Date:   Fri, 26 Aug 2022 10:17:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v4 2/2] ARM: dts: stm32mp15x: Add timer interrupts
Content-Language: en-US
To:     =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
        Fabrice Gasnier <fabrice.gasnier@foss.st.com>,
        Rob Herring <robh+dt@kernel.org>
CC:     <devicetree@vger.kernel.org>, <kernel@pengutronix.de>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Lee Jones <lee.jones@linaro.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>
References: <20220519162838.695404-1-u.kleine-koenig@pengutronix.de>
 <20220519162838.695404-2-u.kleine-koenig@pengutronix.de>
From:   Alexandre TORGUE <alexandre.torgue@foss.st.com>
In-Reply-To: <20220519162838.695404-2-u.kleine-koenig@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.75.127.46]
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

Hi Uwe

On 5/19/22 18:28, Uwe Kleine-König wrote:
> The timer units in the stm32mp15x CPUs have interrupts, depending on the
> timer flavour either one "global" or four dedicated ones. Add the irqs
> to the timer units on stm32mp15x.
> 
> Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
> ---
>   arch/arm/boot/dts/stm32mp151.dtsi | 34 +++++++++++++++++++++++++++++++
>   1 file changed, 34 insertions(+)
> 

Sorry for the delays.

Applied on stm32-next.

Thanks.
Alex
