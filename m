Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 018C0B0990
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2019 09:35:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726922AbfILHfy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Sep 2019 03:35:54 -0400
Received: from lelv0142.ext.ti.com ([198.47.23.249]:56572 "EHLO
        lelv0142.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725995AbfILHfy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Sep 2019 03:35:54 -0400
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x8C7Ziel064317;
        Thu, 12 Sep 2019 02:35:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1568273744;
        bh=UtRNQSOei870F1UMz+x4cIwhqM/N6k8wrjwGlx8UD8M=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=m5LJjrDeASCM6f2+RZE01c72Ff48HRTCXGlDjT8UXrrVZ5o+pYbEZez53lbYNkxb3
         e1SACDeG8dhymfNaCyP9wntN98hGXgPo33gmInma6oCSmRtn6VaqBxqtg89gj6jCAy
         eeARejbA0/Y6IA75F2Q4XrrcvCBeYd8VTWmrFYH0=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x8C7Zise005630
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 12 Sep 2019 02:35:44 -0500
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 12
 Sep 2019 02:35:43 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 12 Sep 2019 02:35:43 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x8C7ZfLR027068;
        Thu, 12 Sep 2019 02:35:42 -0500
Subject: Re: [PATCH 1/2] dt-bindings: clock: am33xx: Update GPIO number as per
 datasheet
To:     Ankur Tyagi <ankur.tyagi@gallagher.com>, <mark.rutland@arm.com>,
        <robh+dt@kernel.org>
CC:     <devicetree@vger.kernel.org>
References: <20190912014849.10684-1-ankur.tyagi@gallagher.com>
From:   Tero Kristo <t-kristo@ti.com>
Message-ID: <f3dae7f3-58ab-c55c-86c9-8633bd7a7d85@ti.com>
Date:   Thu, 12 Sep 2019 10:35:41 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190912014849.10684-1-ankur.tyagi@gallagher.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/09/2019 04:48, Ankur Tyagi wrote:
> Sitara technical reference manual numbers GPIO from 0-3 whereas
> in code GPIO are numbered from 1-4.
> 

You are right that TRM states these are 0-3, but just to change the 
numbering at this point seems unnecessary churn for the minor 
inconvenience it causes. Also, I think we have similar indexing issues 
all over the place, should we fix them all? At least am4 has exact same 
indexing issue for gpios. They have been historically called 1-4 since 
introduction to linux kernel some 6 years already (as hwmod data). :)

Also, your patches cause bisect break points, try to apply this patch 
only to kernel and try to compile and see what happens.... and you don't 
touch the DT side for these either which causes another compile breakage.

So, from my side, NAK for both patches, I can't see why we should do 
such a small change and cause so many problems... not to mention the 
compile issues.

Do you have some specific reason why you want these changed?

-Tero

> Signed-off-by: Ankur Tyagi <ankur.tyagi@gallagher.com>
> ---
>   include/dt-bindings/clock/am3.h | 16 ++++++++--------
>   1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/include/dt-bindings/clock/am3.h b/include/dt-bindings/clock/am3.h
> index 894951541276..980fdc05c3d0 100644
> --- a/include/dt-bindings/clock/am3.h
> +++ b/include/dt-bindings/clock/am3.h
> @@ -41,9 +41,9 @@
>   #define AM3_RNG_CLKCTRL	AM3_L4_PER_CLKCTRL_INDEX(0x90)
>   #define AM3_AES_CLKCTRL	AM3_L4_PER_CLKCTRL_INDEX(0x94)
>   #define AM3_SHAM_CLKCTRL	AM3_L4_PER_CLKCTRL_INDEX(0xa0)
> -#define AM3_GPIO2_CLKCTRL	AM3_L4_PER_CLKCTRL_INDEX(0xac)
> -#define AM3_GPIO3_CLKCTRL	AM3_L4_PER_CLKCTRL_INDEX(0xb0)
> -#define AM3_GPIO4_CLKCTRL	AM3_L4_PER_CLKCTRL_INDEX(0xb4)
> +#define AM3_GPIO1_CLKCTRL	AM3_L4_PER_CLKCTRL_INDEX(0xac)
> +#define AM3_GPIO2_CLKCTRL	AM3_L4_PER_CLKCTRL_INDEX(0xb0)
> +#define AM3_GPIO3_CLKCTRL	AM3_L4_PER_CLKCTRL_INDEX(0xb4)
>   #define AM3_TPCC_CLKCTRL	AM3_L4_PER_CLKCTRL_INDEX(0xbc)
>   #define AM3_D_CAN0_CLKCTRL	AM3_L4_PER_CLKCTRL_INDEX(0xc0)
>   #define AM3_D_CAN1_CLKCTRL	AM3_L4_PER_CLKCTRL_INDEX(0xc4)
> @@ -69,7 +69,7 @@
>   #define AM3_L4_WKUP_CLKCTRL_OFFSET	0x4
>   #define AM3_L4_WKUP_CLKCTRL_INDEX(offset)	((offset) - AM3_L4_WKUP_CLKCTRL_OFFSET)
>   #define AM3_CONTROL_CLKCTRL	AM3_L4_WKUP_CLKCTRL_INDEX(0x4)
> -#define AM3_GPIO1_CLKCTRL	AM3_L4_WKUP_CLKCTRL_INDEX(0x8)
> +#define AM3_GPIO0_CLKCTRL	AM3_L4_WKUP_CLKCTRL_INDEX(0x8)
>   #define AM3_L4_WKUP_CLKCTRL	AM3_L4_WKUP_CLKCTRL_INDEX(0xc)
>   #define AM3_DEBUGSS_CLKCTRL	AM3_L4_WKUP_CLKCTRL_INDEX(0x14)
>   #define AM3_WKUP_M3_CLKCTRL	AM3_L4_WKUP_CLKCTRL_INDEX(0xb0)
> @@ -121,9 +121,9 @@
>   #define AM3_L4LS_TIMER3_CLKCTRL	AM3_L4LS_CLKCTRL_INDEX(0x84)
>   #define AM3_L4LS_TIMER4_CLKCTRL	AM3_L4LS_CLKCTRL_INDEX(0x88)
>   #define AM3_L4LS_RNG_CLKCTRL	AM3_L4LS_CLKCTRL_INDEX(0x90)
> -#define AM3_L4LS_GPIO2_CLKCTRL	AM3_L4LS_CLKCTRL_INDEX(0xac)
> -#define AM3_L4LS_GPIO3_CLKCTRL	AM3_L4LS_CLKCTRL_INDEX(0xb0)
> -#define AM3_L4LS_GPIO4_CLKCTRL	AM3_L4LS_CLKCTRL_INDEX(0xb4)
> +#define AM3_L4LS_GPIO1_CLKCTRL	AM3_L4LS_CLKCTRL_INDEX(0xac)
> +#define AM3_L4LS_GPIO2_CLKCTRL	AM3_L4LS_CLKCTRL_INDEX(0xb0)
> +#define AM3_L4LS_GPIO3_CLKCTRL	AM3_L4LS_CLKCTRL_INDEX(0xb4)
>   #define AM3_L4LS_D_CAN0_CLKCTRL	AM3_L4LS_CLKCTRL_INDEX(0xc0)
>   #define AM3_L4LS_D_CAN1_CLKCTRL	AM3_L4LS_CLKCTRL_INDEX(0xc4)
>   #define AM3_L4LS_EPWMSS1_CLKCTRL	AM3_L4LS_CLKCTRL_INDEX(0xcc)
> @@ -184,7 +184,7 @@
>   
>   /* l4_wkup clocks */
>   #define AM3_L4_WKUP_CONTROL_CLKCTRL	AM3_CLKCTRL_INDEX(0x4)
> -#define AM3_L4_WKUP_GPIO1_CLKCTRL	AM3_CLKCTRL_INDEX(0x8)
> +#define AM3_L4_WKUP_GPIO0_CLKCTRL	AM3_CLKCTRL_INDEX(0x8)
>   #define AM3_L4_WKUP_L4_WKUP_CLKCTRL	AM3_CLKCTRL_INDEX(0xc)
>   #define AM3_L4_WKUP_UART1_CLKCTRL	AM3_CLKCTRL_INDEX(0xb4)
>   #define AM3_L4_WKUP_I2C1_CLKCTRL	AM3_CLKCTRL_INDEX(0xb8)
> 

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki
