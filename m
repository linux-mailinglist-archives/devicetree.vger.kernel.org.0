Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1BBC2A1412
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2019 10:49:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726990AbfH2Itt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Aug 2019 04:49:49 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:43842 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726070AbfH2Itt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Aug 2019 04:49:49 -0400
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7T8ng8w111003;
        Thu, 29 Aug 2019 03:49:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1567068582;
        bh=hb1qfncjpjyooL2xBRQ/iE6DhSxUJnJBzoFjZ644LWk=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=w+Y+5KcFVkNAl319jUaVFUDgo5s2HL05wlhZeU+ROONxq4FOLieh3EdySpd8XiLKw
         Z/45Ke1aJncrqIUDrXAF72FsCK8Ok7Y4uQfg4NmNFR8YhdQguKdeBWojbRYomjOVK9
         r/Z3YwI8X/h7kMFVkuR6rTA2tv+znkK59PZZPAb4=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7T8ng7f009077
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 29 Aug 2019 03:49:42 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 29
 Aug 2019 03:49:42 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 29 Aug 2019 03:49:42 -0500
Received: from [172.24.190.117] (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7T8naMX001450;
        Thu, 29 Aug 2019 03:49:38 -0500
Subject: Re: [PATCH v5 0/2] arm64: dts: ti: k3: Update the power-domain cells
To:     Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>,
        Santosh Shilimkar <ssantosh@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
CC:     Sekhar Nori <nsekhar@ti.com>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>
References: <20190729123023.32702-1-lokeshvutla@ti.com>
 <9aa7eeaf-36ee-3d5f-9654-d8fa37577877@ti.com>
 <4dab34ae-e7cc-6c6e-4adb-3a061027ab39@ti.com>
From:   Lokesh Vutla <lokeshvutla@ti.com>
Message-ID: <1ad82ac9-b59b-3698-feca-f92a4be992a0@ti.com>
Date:   Thu, 29 Aug 2019 14:18:49 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <4dab34ae-e7cc-6c6e-4adb-3a061027ab39@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Tero,

On 29/08/19 1:01 PM, Tero Kristo wrote:
> On 20/08/2019 15:48, Lokesh Vutla wrote:
>>
>>
>> On 29/07/19 6:00 PM, Lokesh Vutla wrote:
>>> Update the power-domains cells on all K3 based devices to reflect
>>> exclusive and shared permissions in each device.
>>
>> Gentle Ping on this series.
>>
>> Thanks and regards,
>> Lokesh
>>
> 
> This can't be merged until the driver portion is in. I could probably live with
> an immutable branch though.

Santosh already sent a pull request[0] with the driver changes. IMHO, dt changes
can be merged in. I don't think we need to wait for one release for DT changes
to get in or did I mis-understood your statement?

[0] https://lkml.org/lkml/2019/8/26/1124

Thanks and regards,
Lokesh

> 
> -Tero
> -- 
> Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
> Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki
