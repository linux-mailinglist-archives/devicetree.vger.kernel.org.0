Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0CFB3729C90
	for <lists+devicetree@lfdr.de>; Fri,  9 Jun 2023 16:18:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240770AbjFIOR6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jun 2023 10:17:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43768 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240665AbjFIOR5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jun 2023 10:17:57 -0400
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B527930E7
        for <devicetree@vger.kernel.org>; Fri,  9 Jun 2023 07:17:55 -0700 (PDT)
Received: from pps.filterd (m0241204.ppops.net [127.0.0.1])
        by mx07-00178001.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 359BNxqC021297;
        Fri, 9 Jun 2023 16:17:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=selector1;
 bh=dL9ryM5Vt0DSVKlhlWXhvwgnM1YarL/LX0Jq8bjZ/2M=;
 b=rPKsbEPI86c5sgJMgfq2QTI89QIRpynTd3i6jZ8LVb4RSBPwon8o3tVewZHDZX2pQGV2
 P8L853y9Y5YHQ0Lvht6RXPUbjzY8DlqSG7NvUu/Mvij3yhzL89lJ7FdvY65eKO9aIEAW
 OZ+QbHIrCcRiAQDMJBBDSmGE/kzeyBfvO34d+XtEUyM2VS2tQxHWJFSHz2pr+alr1lkn
 oWnxK42UswT9cRgw8C4oZ/YqVDvGOUz6GFg9g0DvPdPQ18Z0KuaoXdvPDbSAasjNMYdz
 T8q7YT11oO2yV7BV422k573d+x+nkPAentptiTIGTNR5ggS4YMXUU0zhC/5Yti3+TC4g 3Q== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
        by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3r4187hvnb-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Fri, 09 Jun 2023 16:17:33 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
        by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 0D4A910003B;
        Fri,  9 Jun 2023 16:17:27 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node2.st.com [10.75.129.70])
        by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id E6C2C236937;
        Fri,  9 Jun 2023 16:17:27 +0200 (CEST)
Received: from [10.129.178.187] (10.129.178.187) by SHFDAG1NODE2.st.com
 (10.75.129.70) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.21; Fri, 9 Jun
 2023 16:17:27 +0200
Message-ID: <2d13447a-bcdb-36d2-f988-b1f416244e1d@foss.st.com>
Date:   Fri, 9 Jun 2023 16:17:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] ARM: dts: stm32: Deduplicate DSI node
To:     Marek Vasut <marex@denx.de>,
        <linux-arm-kernel@lists.infradead.org>,
        Philippe CORNU - foss <philippe.cornu@foss.st.com>,
        yannick Fertre <yannick.fertre@foss.st.com>
CC:     Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, <devicetree@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>
References: <20230531231044.574541-1-marex@denx.de>
 <b343ab21-2787-4602-57f8-4c2bf62db523@foss.st.com>
 <94a89ca7-bc29-5a2e-f99d-9b2577882c92@denx.de>
Content-Language: en-US
From:   Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>
In-Reply-To: <94a89ca7-bc29-5a2e-f99d-9b2577882c92@denx.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.129.178.187]
X-ClientProxiedBy: SHFCAS1NODE1.st.com (10.75.129.72) To SHFDAG1NODE2.st.com
 (10.75.129.70)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.957,Hydra:6.0.573,FMLib:17.11.176.26
 definitions=2023-06-09_10,2023-06-09_01,2023-05-22_02
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marek,

On 6/1/23 22:32, Marek Vasut wrote:
> On 6/1/23 18:46, Raphael Gallais-Pou wrote:
>> Hi Marek,
>
> Hi,
>
>> On 6/1/23 01:10, Marek Vasut wrote:
>>> All boards using the DSI node duplicate the same pattern common pattern
>>> in board DTs, that pattern is ports with endpoint labels and the same
>>> in-SoC regulator connection. Move that common pattern into stm32mp157.dtsi
>>> instead.
>>
>> I think that is a good idea, while it did not crossed my mind implementing it
>> this way on the first time.
>>
>> I'll let my peers Philippe and Yannick review and ack it this time. I tested it
>> on DK2, it seems fine.
>
> Thanks for testing. There's no rush, so take your time.


Acked-by: Raphaël Gallais-Pou <raphael.gallais-pou@foss.st.com>


Thank you,
Raphaël

