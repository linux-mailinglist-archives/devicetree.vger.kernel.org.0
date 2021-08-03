Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4D6033DF5BB
	for <lists+devicetree@lfdr.de>; Tue,  3 Aug 2021 21:32:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239837AbhHCTcv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Aug 2021 15:32:51 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:49952 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239696AbhHCTcv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Aug 2021 15:32:51 -0400
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 173JWXom024809;
        Tue, 3 Aug 2021 14:32:33 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1628019153;
        bh=oYJNprOGjNnIz98plZrrtDsPSonFJRFwNrmEHyNUR2Q=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=KmfYUXwnrxiUTkSwSWFsOVPpJRA9Vw7hXH1emNXT92XtmXWO1E7iAsUHmMiiYpybF
         GJEOMmwuS3mkc4vtg0jcziTkujGV+oQLfNiCUps39p9iPj5FZVH1vdOJaJyV7t8BSA
         l9Elh0eto0WX0qkr0765rWzKstCla0EghSKJH8aw=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 173JWXkv043681
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 3 Aug 2021 14:32:33 -0500
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Tue, 3 Aug
 2021 14:32:33 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Tue, 3 Aug 2021 14:32:33 -0500
Received: from [10.250.38.176] (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 173JWWQl075957;
        Tue, 3 Aug 2021 14:32:32 -0500
Subject: Re: [PATCH] dt-bindings: soc: ti: pruss: Add dma-coherent property
To:     Rob Herring <robh@kernel.org>
CC:     Santosh Shilimkar <ssantosh@kernel.org>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Grzegorz Jaszczyk <grzegorz.jaszczyk@linaro.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>
References: <20210730031901.26243-1-s-anna@ti.com>
 <YQmY7/OSHJxRkM5m@robh.at.kernel.org>
From:   Suman Anna <s-anna@ti.com>
Message-ID: <411c54ef-6ae6-2a17-c2c4-fb19580b5513@ti.com>
Date:   Tue, 3 Aug 2021 14:32:32 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <YQmY7/OSHJxRkM5m@robh.at.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 8/3/21 2:28 PM, Rob Herring wrote:
> On Thu, Jul 29, 2021 at 10:19:01PM -0500, Suman Anna wrote:
>> Update the PRUSS schema file to include the dma-coherent property
>> that indicates the coherency of the IP. The PRUSS IPs on 66AK2G
>> SoCs do use this property.
>>
>> Signed-off-by: Suman Anna <s-anna@ti.com>
>> ---
>> Hi Santosh,
>>
>> This patch updates the PRUSS binding in preparation for adding the
>> PRUSS nodes for 66AK2G SoCs. Without this, the dtbs_check would
>> complain about the undefined dma-coherent property. Patch is top
>> of the AM64 ICSSG binding update patch [1].
> 
> New required properties are not backwards compatible. You are kind of 
> saying that here (not used yet?), but make that clear in the commit msg.

OK. Yeah, we haven't added the K2G dts nodes yet, and the new required property
is only applicable for that SoC and not others.

regards
Suman

> 
> With that fixed,
> 
> Reviewed-by: Rob Herring <robh@kernel.org>
> 
>>
>> regards
>> Suman
>>
>> [1] https://patchwork.kernel.org/project/linux-arm-kernel/patch/20210623165032.31223-2-s-anna@ti.com/
>>
>>  .../devicetree/bindings/soc/ti/ti,pruss.yaml  | 37 +++++++++++++------
>>  1 file changed, 25 insertions(+), 12 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/soc/ti/ti,pruss.yaml b/Documentation/devicetree/bindings/soc/ti/ti,pruss.yaml
>> index 47d7fd24bc56..9d128b9e7deb 100644
>> --- a/Documentation/devicetree/bindings/soc/ti/ti,pruss.yaml
>> +++ b/Documentation/devicetree/bindings/soc/ti/ti,pruss.yaml
>> @@ -85,6 +85,8 @@ properties:
>>    dma-ranges:
>>      maxItems: 1
>>  
>> +  dma-coherent: true
>> +
>>    power-domains:
>>      description: |
>>        This property is as per sci-pm-domain.txt.
>> @@ -324,18 +326,29 @@ additionalProperties: false
>>  # - interrupt-controller
>>  # - pru
>>  
>> -if:
>> -  properties:
>> -    compatible:
>> -      contains:
>> -        enum:
>> -          - ti,k2g-pruss
>> -          - ti,am654-icssg
>> -          - ti,j721e-icssg
>> -          - ti,am642-icssg
>> -then:
>> -  required:
>> -    - power-domains
>> +allOf:
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - ti,k2g-pruss
>> +              - ti,am654-icssg
>> +              - ti,j721e-icssg
>> +              - ti,am642-icssg
>> +    then:
>> +      required:
>> +        - power-domains
>> +
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - ti,k2g-pruss
>> +    then:
>> +      required:
>> +        - dma-coherent
>>  
>>  examples:
>>    - |
>> -- 
>> 2.32.0
>>
>>

