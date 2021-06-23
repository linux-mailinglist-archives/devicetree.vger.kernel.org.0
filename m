Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 419003B1FD9
	for <lists+devicetree@lfdr.de>; Wed, 23 Jun 2021 19:48:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230013AbhFWRvH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Jun 2021 13:51:07 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:34586 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229918AbhFWRuz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Jun 2021 13:50:55 -0400
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 15NHmTHa104344;
        Wed, 23 Jun 2021 12:48:29 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1624470509;
        bh=ga/9kkYhTXPKz5i7WY+r0FQT21XchSbKiujtvaAaGis=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=dc1msvYiJQV61GEaHX7LOzt20Nl13mIlwpLTlLzsuhLlElgCnWX9sSZuamjfYSBLn
         B51MwKh6LcpjPuoGsnSJU8Xt6974auLLark+Er5rfVevP9eaLlA3OoJ/z+CpyUxmRN
         KutPi0zUei7HNMgsf9wlHAjn1sANUH52y99dCmj8=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 15NHmTgv060248
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 23 Jun 2021 12:48:29 -0500
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Wed, 23
 Jun 2021 12:48:29 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Wed, 23 Jun 2021 12:48:29 -0500
Received: from [10.250.100.73] (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 15NHmQfk019957;
        Wed, 23 Jun 2021 12:48:27 -0500
Subject: Re: [PATCH 2/2] soc: ti: pruss: Enable support for ICSSG subsystems
 on K3 AM64x SoCs
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
 <20210623165032.31223-3-s-anna@ti.com>
From:   Grygorii Strashko <grygorii.strashko@ti.com>
Message-ID: <62088b80-5a8b-8b3e-8262-72cd11aa8de8@ti.com>
Date:   Wed, 23 Jun 2021 20:48:18 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210623165032.31223-3-s-anna@ti.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 23/06/2021 19:50, Suman Anna wrote:
> The K3 AM64x family of SoCs have a similar version of the PRU-ICSS (ICSSG)
> processor subsystem present on K3 J721E and K3 AM65x SR2.0 SoCs. These SoCs
> contain typically two ICSSG instances named ICSSG0 and ICSSG1. The two
> ICSSGs are identical to each other for the most part with minor SoC
> integration differences and capabilities. SGMII mode is not supported at
> all on these SoCs (unlike specific instances on AM65x, J721E). The ICSSG1
> also has limited pins connected on some sub-modules compared to ICSSG0.
> 
> There is no change in the Interrupt Controller w.r.t either of AM65x or
> J721E SoCs. All other integration aspects are also very similar to the
> existing SoCs.
> 
> The existing pruss platform driver has been updated to support these
> similar ICSSG instances through a new AM64x specific compatible.
> 
> Signed-off-by: Suman Anna <s-anna@ti.com>
> ---
>   drivers/soc/ti/pruss.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/soc/ti/pruss.c b/drivers/soc/ti/pruss.c
> index afc8aae68035..b36779309e49 100644
> --- a/drivers/soc/ti/pruss.c
> +++ b/drivers/soc/ti/pruss.c
> @@ -338,6 +338,7 @@ static const struct of_device_id pruss_of_match[] = {
>   	{ .compatible = "ti,k2g-pruss" },
>   	{ .compatible = "ti,am654-icssg", .data = &am65x_j721e_pruss_data, },
>   	{ .compatible = "ti,j721e-icssg", .data = &am65x_j721e_pruss_data, },
> +	{ .compatible = "ti,am642-icssg", .data = &am65x_j721e_pruss_data, },
>   	{},
>   };
>   MODULE_DEVICE_TABLE(of, pruss_of_match);
> 

Reviewed-by: Grygorii Strashko <grygorii.strashko@ti.com>

-- 
Best regards,
grygorii
