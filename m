Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E9FA73B1FD8
	for <lists+devicetree@lfdr.de>; Wed, 23 Jun 2021 19:48:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229688AbhFWRul (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Jun 2021 13:50:41 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:39592 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229660AbhFWRuk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Jun 2021 13:50:40 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 15NHmGQX056111;
        Wed, 23 Jun 2021 12:48:16 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1624470496;
        bh=EP1URvb8pTsnQtMOqc4qF/i5jNGfwgWvCXyojXtfqPM=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=VysaeR0EZv+gxl7dNiHp4ZQUF6u3Ry69UMeClrTUB94g+gCEF7c0BphyCIwiO4Y3C
         Y33GnD6bAwFF/o6i363plWbpBU7rAg0pBROmQEI9p3t+g6Qz9QtkKRSMREtutxjYKP
         kiH864xK0ZV+4tfQnr6hliXeyQ30djTiCkvtehGM=
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 15NHmGtd103964
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 23 Jun 2021 12:48:16 -0500
Received: from DFLE102.ent.ti.com (10.64.6.23) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Wed, 23
 Jun 2021 12:48:15 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Wed, 23 Jun 2021 12:48:15 -0500
Received: from [10.250.100.73] (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 15NHmCO3019777;
        Wed, 23 Jun 2021 12:48:13 -0500
Subject: Re: [PATCH 1/2] dt-bindings: soc: ti: pruss: Update bindings for K3
 AM64x SoCs
To:     Suman Anna <s-anna@ti.com>,
        Santosh Shilimkar <ssantosh@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
CC:     <devicetree@vger.kernel.org>,
        Grzegorz Jaszczyk <grzegorz.jaszczyk@linaro.org>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Jan Kiszka <jan.kiszka@siemens.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        <linux-arm-kernel@lists.infradead.org>
References: <20210623165032.31223-1-s-anna@ti.com>
 <20210623165032.31223-2-s-anna@ti.com>
From:   Grygorii Strashko <grygorii.strashko@ti.com>
Message-ID: <5bc8ecab-d5b4-fba3-b79f-dee3e8e65977@ti.com>
Date:   Wed, 23 Jun 2021 20:48:04 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210623165032.31223-2-s-anna@ti.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 23/06/2021 19:50, Suman Anna wrote:
> The K3 AM64x SoCs also have the Gigabit Ethernet capable PRU-ICSS IP
> that is present on existing K3 AM65x and J721E SoCs (ICSSG). The IP
> is similar to the ones used on K3 J721E or AM65x SR2.0 SoCs.
> 
> Update the PRUSS bindings for these ICSSG instances.
> 
> Signed-off-by: Suman Anna <s-anna@ti.com>
> ---
>   Documentation/devicetree/bindings/soc/ti/ti,pruss.yaml | 6 ++++--
>   1 file changed, 4 insertions(+), 2 deletions(-)
> 

Reviewed-by: Grygorii Strashko <grygorii.strashko@ti.com>

-- 
Best regards,
grygorii
