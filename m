Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 84E7526F7BF
	for <lists+devicetree@lfdr.de>; Fri, 18 Sep 2020 10:12:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726219AbgIRIMv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Sep 2020 04:12:51 -0400
Received: from lelv0142.ext.ti.com ([198.47.23.249]:60092 "EHLO
        lelv0142.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726154AbgIRIMv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Sep 2020 04:12:51 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08I8CkIQ042553;
        Fri, 18 Sep 2020 03:12:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1600416766;
        bh=otCbGnN9gY1aanuBooTtawLGLxFknZ21kuueHGOrEQY=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=mM1q2DrfRd3as1ezoNhfuLrmJLTF2DyrWjjmgBVzBrr7cubMX8u3jpyzX5ItavgLI
         MOv+FIMJEsZ2GgSbIWz+bGeOqdnxE0B7PHYXfWaTf8cKa9X9v/CHW8+Esjs20pibGl
         hrpPGICsdXTfBizssZHgbt2DUmC1k9Cn2yhcY4qo=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08I8CkAl094599
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Fri, 18 Sep 2020 03:12:46 -0500
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 18
 Sep 2020 03:12:45 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 18 Sep 2020 03:12:45 -0500
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08I8Ch9c127369;
        Fri, 18 Sep 2020 03:12:44 -0500
Subject: Re: [PATCH v3 1/2] dt-bindings: display: ti,am65x-dss: add missing
 properties to dt-schema
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
CC:     <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>, Jyri Sarha <jsarha@ti.com>,
        Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>,
        Rob Herring <robh@kernel.org>
References: <20200916131009.221252-1-tomi.valkeinen@ti.com>
 <20200916131009.221252-2-tomi.valkeinen@ti.com>
 <20200918011823.GD589@pendragon.ideasonboard.com>
From:   Tomi Valkeinen <tomi.valkeinen@ti.com>
Message-ID: <492a5a81-fcfa-3b18-b566-263696e2cd65@ti.com>
Date:   Fri, 18 Sep 2020 11:12:43 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200918011823.GD589@pendragon.ideasonboard.com>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/09/2020 04:18, Laurent Pinchart wrote:
> Hi Tomi,
> 
> Thank you for the patch.
> 
> On Wed, Sep 16, 2020 at 04:10:08PM +0300, Tomi Valkeinen wrote:
>> Add assigned-clocks, assigned-clock-parents and dma-coherent optional
>> properties.
>>
>> Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ti.com>
>> Reviewed-by: Rob Herring <robh@kernel.org>
>> ---
>>  .../devicetree/bindings/display/ti/ti,am65x-dss.yaml  | 11 +++++++++++
>>  1 file changed, 11 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml b/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml
>> index 4f9185462ed3..4dc30738ee57 100644
>> --- a/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml
>> +++ b/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml
>> @@ -55,6 +55,14 @@ properties:
>>        - const: vp1
>>        - const: vp2
>>  
>> +  assigned-clocks:
>> +    minItems: 1
>> +    maxItems: 3
>> +
>> +  assigned-clock-parents:
>> +    minItems: 1
>> +    maxItems: 3
>> +
> 
> Those properties can occur in any node that has clocks. Do we need to
> specify them explicitly in every schema ?

I don't really know the dt-schema stuff well enough yet to have a good answer, but if this
information would come from somewhere else, it would somehow need to know:

- are there clocks in this schema (i.e. is assigned-clocks allowed or not)
- how many clocks there are (for min and max items)

This would also apply to assigned-clock-rates.

 Tomi

-- 
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki
