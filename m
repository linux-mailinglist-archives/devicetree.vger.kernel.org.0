Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0305B3A9B27
	for <lists+devicetree@lfdr.de>; Wed, 16 Jun 2021 14:53:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232790AbhFPMzZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Jun 2021 08:55:25 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:47210 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232403AbhFPMzY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Jun 2021 08:55:24 -0400
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 15GCrG42044621;
        Wed, 16 Jun 2021 07:53:16 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1623847996;
        bh=7YlCcdXJUV2VpWEd0FhMQzd3Mq9esRVlGdNAK2P+ZEU=;
        h=Date:From:To:CC:Subject;
        b=Lxwjcd15eEt5kf9dciJYIfikN4UabbuhlSd7+6NeRTnEh5oa+wK3W+F/A5SWEGjHa
         D1rwkI2iWOcsOD8b2i0g9OZ1izd/abn9uTAgryBxCfnTxKeGw1K+99gPjnfNjxDCaK
         rI9DL+UFU99obCnRazDAA0LnuVGV5Kw2H+NCLFGA=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 15GCrG35104507
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 16 Jun 2021 07:53:16 -0500
Received: from DFLE105.ent.ti.com (10.64.6.26) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Wed, 16
 Jun 2021 07:53:15 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Wed, 16 Jun 2021 07:53:15 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 15GCrFZL075193;
        Wed, 16 Jun 2021 07:53:15 -0500
Date:   Wed, 16 Jun 2021 18:23:14 +0530
From:   Pratyush Yadav <p.yadav@ti.com>
To:     Rob Herring <robh@kernel.org>
CC:     <devicetree@vger.kernel.org>
Subject: Fixing up non-standard schema with DT tooling (was "Re: [PATCH]
 dt-bindings: Drop redundant minItems/maxItems")
Message-ID: <20210616125314.65aufo3v2juiyeys@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

I am splitting this message out as a separate thread because the 
original one Cced lots of people and lists mainly because it touched 
lots of subsystems. This discussion is more focussed on device tree side 
of things.

On 15/06/21 01:15PM, Rob Herring wrote:
> If a property has an 'items' list, then a 'minItems' or 'maxItems' with the
> same size as the list is redundant and can be dropped. Note that is DT
> schema specific behavior and not standard json-schema behavior. The tooling
> will fixup the final schema adding any unspecified minItems/maxItems.

Please understand that things like this have a hidden cost involved.

For example, I was thoroughly confused a couple weeks back when I was 
looking at the binding for spi/cdns,qspi-nor.yaml. It has 4 properties 
for the subnode: 'cdns,read-delay', 'cdns,tshsl-ns', 'cdns,tsd2d-ns', 
and 'cdns,tslch-ns'. The latter three are fine with just a description 
and need nothing else to define their types. The first one needs a $ref 
to uint32. I could not figure out why. I even looked at the processed 
JSON schema and came out none the wiser.

After banging my head on the table for some time, I finally came across 
the dt-schema repo's property-units.yaml file which makes every property 
ending in "-ns" a uint32-array.

This is a neat feature and makes writing bindings slightly easier if you 
know about it. But it makes reading bindings a very difficult process if 
you don't know about it. The same applies to every little thing that the 
tooling does in the background in the name of convenience.

You are very familiar with the entire ecosystem so these things are 
obvious for you. They aren't as obvious for most other developers who 
don't deal with bindings or yaml or JSON schema on a regular basis. I 
don't know enough about the ecosystem to prescribe whether this or some 
other hidden behaviour is good or not. But I want you to keep this in 
mind. The more things tooling does in the background, the more things 
the average developer needs to know, and the harder it becomes to read 
and write bindings.

> 
> This condition is partially checked with the meta-schema already, but
> only if both 'minItems' and 'maxItems' are equal to the 'items' length.
> An improved meta-schema is pending.

-- 
Regards,
Pratyush Yadav
Texas Instruments Inc.
