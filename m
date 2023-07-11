Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D273C74F04F
	for <lists+devicetree@lfdr.de>; Tue, 11 Jul 2023 15:38:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230383AbjGKNiG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jul 2023 09:38:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53950 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233023AbjGKNiA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Jul 2023 09:38:00 -0400
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2740EBC
        for <devicetree@vger.kernel.org>; Tue, 11 Jul 2023 06:37:59 -0700 (PDT)
Received: from pps.filterd (m0288072.ppops.net [127.0.0.1])
        by mx07-00178001.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 36BC98m4015312;
        Tue, 11 Jul 2023 15:37:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=selector1;
 bh=RjPhbi1cT49sUS0SQLqiRDs+n9LacP3Eh9vVSfof8mY=;
 b=NuabFqUi3Do7nr3nqeSNc3InSpQChaW7caK3QrsZcViN9f2ahGdSe2o4/bYAnXj/c0OQ
 A6yRWEon2a10QrDoVLJTQAMdllZD/prVNMrbqG5ulvvI4zp/DI5lsAWlSy+0PwX1Nv/u
 /W+3iazEm3HiXvxa8ENFFq2zUbeJmecoSn6bviKeVa+XW6ONIQI5uWJd7T5ZuMb3MJNG
 CxnHjcKbIGQh9YcwmSinZbHq9oJcF6BeiXUd5/eyoJoc+RcTg9zcGG3K76qdxXw6AI2p
 x0SOgXd1wYBKSKe94y1MuWzqqyJZyNdzfLe1NkRKXiKB38a0gv8sEGH89L3hcm7x4eot Fw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
        by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3rs6u68j50-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Tue, 11 Jul 2023 15:37:35 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
        by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 2EAFC100053;
        Tue, 11 Jul 2023 15:37:35 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
        by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 19F6021863B;
        Tue, 11 Jul 2023 15:37:35 +0200 (CEST)
Received: from [10.201.21.122] (10.201.21.122) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.21; Tue, 11 Jul
 2023 15:37:34 +0200
Message-ID: <9e15a84e-33f7-3654-6ad2-66328c120ee6@foss.st.com>
Date:   Tue, 11 Jul 2023 15:37:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 4/5] ARM: dts: stm32: Add missing detach mailbox for DHCOR
 SoM
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>, <linux-arm-kernel@lists.infradead.org>
CC:     Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Richard Cochran <richardcochran@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, <devicetree@vger.kernel.org>,
        <kernel@dh-electronics.com>,
        <linux-stm32@st-md-mailman.stormreply.com>
References: <20230518011246.438097-1-marex@denx.de>
 <20230518011246.438097-4-marex@denx.de>
 <42b1d80b-9cbc-16e2-73a4-ee8b67f5cb2b@denx.de>
From:   Alexandre TORGUE <alexandre.torgue@foss.st.com>
In-Reply-To: <42b1d80b-9cbc-16e2-73a4-ee8b67f5cb2b@denx.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.201.21.122]
X-ClientProxiedBy: EQNCAS1NODE3.st.com (10.75.129.80) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-07-11_08,2023-07-11_01,2023-05-22_02
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marek

On 7/11/23 04:05, Marek Vasut wrote:
> On 5/18/23 03:12, Marek Vasut wrote:
>> Add missing "detach" mailbox to this board to permit the CPU to inform
>> the remote processor on a detach. This signal allows the remote processor
>> firmware to stop IPC communication and to reinitialize the resources for
>> a re-attach.
>>
>> Without this mailbox, detach is not possible and kernel log contains the
>> following warning to, so make sure all the STM32MP15xx platform DTs are
>> in sync regarding the mailboxes to fix the detach issue and the warning:
>> "
>> stm32-rproc 10000000.m4: mbox_request_channel_byname() could not 
>> locate channel named "detach"
>> "
>>
>> Fixes: 6257dfc1c412 ("ARM: dts: stm32: Add coprocessor detach mbox on 
>> stm32mp15x-dkx boards")
>> Signed-off-by: Marek Vasut <marex@denx.de>
>> ---
>> Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
>> Cc: Conor Dooley <conor+dt@kernel.org>
>> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
>> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
>> Cc: Richard Cochran <richardcochran@gmail.com>
>> Cc: Rob Herring <robh+dt@kernel.org>
>> Cc: devicetree@vger.kernel.org
>> Cc: kernel@dh-electronics.com
>> Cc: linux-arm-kernel@lists.infradead.org
>> Cc: linux-stm32@st-md-mailman.stormreply.com
>> ---
>>   arch/arm/boot/dts/stm32mp15xx-dhcor-som.dtsi | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/arch/arm/boot/dts/stm32mp15xx-dhcor-som.dtsi 
>> b/arch/arm/boot/dts/stm32mp15xx-dhcor-som.dtsi
>> index 864960387e634..f0351f599a508 100644
>> --- a/arch/arm/boot/dts/stm32mp15xx-dhcor-som.dtsi
>> +++ b/arch/arm/boot/dts/stm32mp15xx-dhcor-som.dtsi
>> @@ -227,8 +227,8 @@ &iwdg2 {
>>   &m4_rproc {
>>       memory-region = <&retram>, <&mcuram>, <&mcuram2>, <&vdev0vring0>,
>>               <&vdev0vring1>, <&vdev0buffer>;
>> -    mboxes = <&ipcc 0>, <&ipcc 1>, <&ipcc 2>;
>> -    mbox-names = "vq0", "vq1", "shutdown";
>> +    mboxes = <&ipcc 0>, <&ipcc 1>, <&ipcc 2>, <&ipcc 3>;
>> +    mbox-names = "vq0", "vq1", "shutdown", "detach";
>>       interrupt-parent = <&exti>;
>>       interrupts = <68 1>;
>>       status = "okay";
> 
> Is anything blocking 1/5..4/5 (i.e. the duplication in each board DT) 
> patches from being applied ?

Nothing. I was just waiting to discuss with you about patch 5 at Prague 
then merge windows.

So patch 1 to 4 applied on stm32-next.

Cheers
Alex
