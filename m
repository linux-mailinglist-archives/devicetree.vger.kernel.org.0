Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 336E8586688
	for <lists+devicetree@lfdr.de>; Mon,  1 Aug 2022 10:45:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229987AbiHAIpE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Aug 2022 04:45:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53038 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229689AbiHAIpD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Aug 2022 04:45:03 -0400
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 496DF2F67B
        for <devicetree@vger.kernel.org>; Mon,  1 Aug 2022 01:45:01 -0700 (PDT)
Received: from pps.filterd (m0241204.ppops.net [127.0.0.1])
        by mx07-00178001.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 2716fT31028373;
        Mon, 1 Aug 2022 10:44:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=selector1;
 bh=I7b/hxGMS8TVVccr6yHPdrkzx6SCaQqi8VD8U+Ok7Xg=;
 b=1IkGg+7obZoE0ft8TJqYz+tnL7JDta0hS3yx+4L8KUlVtXvxV7f35QjDy95IeR/ZX7Ef
 Keqtf5B6Onr9FLw8gwZwCDfKP8xPmw4y9g6XMA22Cg9rAXNh0l3yAkWjxL0SUZTFpGrJ
 kHqxKFCtkxBGcu5OV6ArYjPhkQ5PwpTT6eJlAg5hVXquqMxVB0lNThnq43ktFJNwpYjF
 epupnwDLMGRtYOlsK1AN1FGjWol+xoIqemlZwixIsTNaXAEwvEw+WOk2/c4ynGoU1miW
 tNxDeF8pqk1SeYgfjmr5LIOywp7Tn979sfW6VNj28wuNrZKIXMnMD3cG7OFu+K/1fxwi Gg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
        by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3hmv013c5s-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Mon, 01 Aug 2022 10:44:32 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
        by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 8E52A10002A;
        Mon,  1 Aug 2022 10:44:30 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
        by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 886F62194F6;
        Mon,  1 Aug 2022 10:44:30 +0200 (CEST)
Received: from [10.201.21.93] (10.75.127.45) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.2308.20; Mon, 1 Aug
 2022 10:44:29 +0200
Message-ID: <dcb245b7-1d2f-0f90-8be8-26688d184b5a@foss.st.com>
Date:   Mon, 1 Aug 2022 10:44:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
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
 <20220720071834.augn2mtytqzqcixo@pengutronix.de>
From:   Alexandre TORGUE <alexandre.torgue@foss.st.com>
In-Reply-To: <20220720071834.augn2mtytqzqcixo@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG2NODE3.st.com (10.75.127.6) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.883,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-08-01_04,2022-07-28_02,2022-06-22_01
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Uwe

On 7/20/22 09:18, Uwe Kleine-König wrote:
> Hello,
> 
> On Thu, May 19, 2022 at 06:28:38PM +0200, Uwe Kleine-König wrote:
>> The timer units in the stm32mp15x CPUs have interrupts, depending on the
>> timer flavour either one "global" or four dedicated ones. Add the irqs
>> to the timer units on stm32mp15x.
>>
>> Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
> 
> This patch wasn't picked up yet (at least nobody told to have done it
> and it's not in next). Is there a problem other than no maintainer time?
> 
> Best regards
> Uwe
> 

I was waiting for a review from Rob or Krzysztof on bindings patch [1]. 
Let me know if I missed it.

Alex

