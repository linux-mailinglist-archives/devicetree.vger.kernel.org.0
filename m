Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1CA93477140
	for <lists+devicetree@lfdr.de>; Thu, 16 Dec 2021 13:01:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230525AbhLPMBy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Dec 2021 07:01:54 -0500
Received: from mx08-00178001.pphosted.com ([91.207.212.93]:49944 "EHLO
        mx07-00178001.pphosted.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S234431AbhLPMBx (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 16 Dec 2021 07:01:53 -0500
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
        by mx07-00178001.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id 1BGA4u6Y019166;
        Thu, 16 Dec 2021 13:01:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=selector1;
 bh=BlxJ/KcuqiZTziMNtbSlTE15YMer7BEcDIATVeKEJjk=;
 b=LltUx46FHnAcbyR391/muOa6N5zrj2E7AhPikD5P0Z3b7wskTmg7YeVnyCH3SMu7z4Z5
 t1lWhwSwQD7a3ObqJj1mmxrPfsWsmc8Sx7OhFYw7Fqiggi9KVXMkLMBB1cy23X+qu6a+
 FGPtz5Q+TrOP5rsvhqDgVWCZmdUF2uotqcNt+lw8yVnzqrXEszr92VPFq+gVdCEQCnFu
 G1GFOAjhOFWc8I3b6FEcQCF7BvCNrc6rZap/20EVVDShkZcdySGLXDURmteKeEYRHFne
 VkgKFgGrGjZQ0reHA2DxDgrT9VM34IMZkuXLfFF+gY4Vfgm0zxmKkmxJgcWoTlM22WOL lg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
        by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3cyv8ru5y9-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Thu, 16 Dec 2021 13:01:39 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
        by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 37C7E10002A;
        Thu, 16 Dec 2021 13:01:38 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag2node2.st.com [10.75.127.5])
        by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 2ECB4237D78;
        Thu, 16 Dec 2021 13:01:38 +0100 (CET)
Received: from [10.48.0.126] (10.75.127.45) by SFHDAG2NODE2.st.com
 (10.75.127.5) with Microsoft SMTP Server (TLS) id 15.0.1497.26; Thu, 16 Dec
 2021 13:01:37 +0100
Subject: Re: [PATCH] ARM: dts: stm32: Add timer interrupts
To:     =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
CC:     Rob Herring <robh+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        <devicetree@vger.kernel.org>,
        Olivier MOYSAN <olivier.moysan@foss.st.com>,
        <linux-stm32@st-md-mailman.stormreply.com>, <kernel@pengutronix.de>
References: <20211215152535.41200-1-u.kleine-koenig@pengutronix.de>
 <4ecadf77-0fa7-80eb-7f1f-0404a236ce58@foss.st.com>
 <20211215182018.2ro7vt2qbgpbjzk5@pengutronix.de>
From:   Fabrice Gasnier <fabrice.gasnier@foss.st.com>
Message-ID: <cf37970e-0d7b-da16-b9ce-e5091be1dbf2@foss.st.com>
Date:   Thu, 16 Dec 2021 13:01:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20211215182018.2ro7vt2qbgpbjzk5@pengutronix.de>
Content-Type: text/plain; charset="windows-1252"
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG1NODE3.st.com (10.75.127.3) To SFHDAG2NODE2.st.com
 (10.75.127.5)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.11.62.513
 definitions=2021-12-16_04,2021-12-16_01,2021-12-02_01
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/15/21 7:20 PM, Uwe Kleine-König wrote:
> Hello Fabrice,
> 
> On Wed, Dec 15, 2021 at 06:43:06PM +0100, Fabrice Gasnier wrote:
>> On 12/15/21 4:25 PM, Uwe Kleine-König wrote:
>>>  .../bindings/mfd/st,stm32-timers.yaml         | 13 +++++++
>>>  arch/arm/boot/dts/stm32mp151.dtsi             | 34 +++++++++++++++++++
>>>  2 files changed, 47 insertions(+)
> 
>> Could you split dt-bindings into a separate patch ?
> 
> sure. I considered that before sending, but wasn't sure it's worth these
> two little changes.
> 
>> I'm a bit curious... I don't see driver update here, to use the timer
>> interrupts from the MFD, or child drivers.
>> Do you have particular use case in mind ?
> 
> My usecase is the compare-capture functionality. The eventual goal is to
> measure the frequency of rising edges on an input.

Hi Uwe,

Thanks for sharing this.
Currently there's one option you could use to achieve this. PWM capture
is implemented in pwm-stm32 driver. It's based on DMAs via a routine
exported in the MFD driver.

Could this fit your need here ?

I'd rather prefer to avoid having concurrent implementations e.g. DMA or
IRQ, for maintenance reason, to address the same use case.
Of course there maybe some case where this may not be avoided, such as:
shortage on DMA channels, no DMA available on some particular timer
instance. Do you hit some limitation around these ?

> 
> The current situation is that there is already a custom driver for the
> i.MX25 SoC, the short-term goal is to replicate it's functionality on
> stm32mp1. The long-term goal is to create a counter driver for both.

There's a counter driver also for STM32 timer (stm32-timer-cnt). For
sure, it could be extended/enhanced with the new chrdev interface, with
IRQs.
Is it what you have in mind ?

Regarding this patch (and the V2), I've no objection, mainly Rob's
comment to address.

Best Regards,
Fabrice

> 
> Best regards
> Uwe
> 
