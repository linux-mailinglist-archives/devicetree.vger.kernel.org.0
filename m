Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 071DD6CC766
	for <lists+devicetree@lfdr.de>; Tue, 28 Mar 2023 18:02:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233512AbjC1QCk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Mar 2023 12:02:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33270 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232810AbjC1QCg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Mar 2023 12:02:36 -0400
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A7A4D10411
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 09:02:29 -0700 (PDT)
Received: from pps.filterd (m0288072.ppops.net [127.0.0.1])
        by mx07-00178001.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 32SE1Jsg013748;
        Tue, 28 Mar 2023 17:13:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=selector1;
 bh=SQXGnaDbwwAqhWy28fg6PYl/LX87EXqjPooUvFfvaWA=;
 b=DoQNXLSbauOt12XE0C+lN5W0LuS8+eFoiRPPHrgsrP7A6xlYgjqrIVSrp6xXe6/e9b0g
 avCOubgd4BfLsz23N8SRGCFNXNWbmvF5DJKorRy888hlk2taVJjDBDfwHGTCCK12ubYq
 U0EKx3bYUNVHUudIRLG0jlnt0E9cWvd46U2I6LnKsxdklU6KVBfPCN59y39DaMcKZVlL
 xH7bwaTAuvDA3qNNpXFYv7C/8FbY4SXcIp94J/0hVsChrPrcyGEkqpDZlKaNDY1czgIE
 CzKGSKSBlqhkOv57jgSByMuNQEKLz6kshxrLyOk3q8iHG0T3gb+3hmoDoCSOkqFY+Db7 mw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
        by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3phsqwk1wq-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Tue, 28 Mar 2023 17:13:02 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
        by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id E4EFF10002A;
        Tue, 28 Mar 2023 17:13:01 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
        by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id DEEDE216EFC;
        Tue, 28 Mar 2023 17:13:01 +0200 (CEST)
Received: from [10.201.21.93] (10.201.21.93) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.17; Tue, 28 Mar
 2023 17:13:01 +0200
Message-ID: <b71bff2f-7c71-62fe-0e99-a3b6dca71f26@foss.st.com>
Date:   Tue, 28 Mar 2023 17:13:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v6 09/10] ARM: dts: stm32: add STM32MP1-based Phytec SoM
Content-Language: en-US
To:     Steffen Trumtrar <s.trumtrar@pengutronix.de>,
        <linux-stm32@st-md-mailman.stormreply.com>
CC:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
References: <20230328121016.2472819-1-s.trumtrar@pengutronix.de>
 <20230328121016.2472819-10-s.trumtrar@pengutronix.de>
From:   Alexandre TORGUE <alexandre.torgue@foss.st.com>
In-Reply-To: <20230328121016.2472819-10-s.trumtrar@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.201.21.93]
X-ClientProxiedBy: EQNCAS1NODE3.st.com (10.75.129.80) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-24_11,2023-03-28_02,2023-02-09_01
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Steffen

On 3/28/23 14:10, Steffen Trumtrar wrote:
> The Phytec STM32MP1 based SoMs feature up to 1 GB DDR3LP RAM, up to 1 GB
> eMMC, up to 16 MB QSPI and up to 128 GB NAND flash.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
> 

...

> +		 <&rcc ETHSTP>;
> +	status = "okay";
> +
> +	mdio0 {

Use mdio instead of mdio0. It avoids YAML validation errors.


Alex


> +	
