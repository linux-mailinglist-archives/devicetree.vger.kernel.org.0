Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5D47F3DEAB6
	for <lists+devicetree@lfdr.de>; Tue,  3 Aug 2021 12:17:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235287AbhHCKRp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Aug 2021 06:17:45 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:44304 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235373AbhHCKRp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Aug 2021 06:17:45 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 173AHSoW091963;
        Tue, 3 Aug 2021 05:17:28 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1627985848;
        bh=wiSccX59p4oWXM6CGtP36vtA86aZv/+iD4t+2GKMTmg=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=YAqvvszk4zil8PSvF5PuhAKIVxr+E+7gfOdqnIPMvzldlTZ9xrN7dg6VY+h+HSh3w
         ef7k9QmLfhOSx5FjE8QnPeiCSlceoi/t/SOjvLplp9V1jUoFuD+5jj3sewP6sfPy6H
         05OAOwM44SJdNouunNpXa6LPfqJUmB5QXzFiUDaw=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 173AHS7c089590
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 3 Aug 2021 05:17:28 -0500
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Tue, 3 Aug
 2021 05:17:28 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Tue, 3 Aug 2021 05:17:27 -0500
Received: from [10.250.100.73] (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 173AHP2g033253;
        Tue, 3 Aug 2021 05:17:25 -0500
Subject: Re: [PATCH] dt-bindings: soc: ti: pruss: Add dma-coherent property
To:     Suman Anna <s-anna@ti.com>,
        Santosh Shilimkar <ssantosh@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
CC:     Kishon Vijay Abraham I <kishon@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Grzegorz Jaszczyk <grzegorz.jaszczyk@linaro.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>
References: <20210730031901.26243-1-s-anna@ti.com>
From:   Grygorii Strashko <grygorii.strashko@ti.com>
Message-ID: <60d2172e-92cc-85b4-f0d1-c64724e5a42f@ti.com>
Date:   Tue, 3 Aug 2021 13:17:23 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210730031901.26243-1-s-anna@ti.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 30/07/2021 06:19, Suman Anna wrote:
> Update the PRUSS schema file to include the dma-coherent property
> that indicates the coherency of the IP. The PRUSS IPs on 66AK2G
> SoCs do use this property.
> 
> Signed-off-by: Suman Anna <s-anna@ti.com>
> ---
> Hi Santosh,
> 
> This patch updates the PRUSS binding in preparation for adding the
> PRUSS nodes for 66AK2G SoCs. Without this, the dtbs_check would
> complain about the undefined dma-coherent property. Patch is top
> of the AM64 ICSSG binding update patch [1].
> 
> regards
> Suman
> 
> [1] https://patchwork.kernel.org/project/linux-arm-kernel/patch/20210623165032.31223-2-s-anna@ti.com/
> 
>   .../devicetree/bindings/soc/ti/ti,pruss.yaml  | 37 +++++++++++++------
>   1 file changed, 25 insertions(+), 12 deletions(-)
> 
Reviewed-by: Grygorii Strashko <grygorii.strashko@ti.com>

-- 
Best regards,
grygorii
