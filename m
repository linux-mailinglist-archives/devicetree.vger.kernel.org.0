Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6C8029CD17
	for <lists+devicetree@lfdr.de>; Mon, 26 Aug 2019 12:12:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730388AbfHZKMd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Aug 2019 06:12:33 -0400
Received: from lelv0143.ext.ti.com ([198.47.23.248]:38584 "EHLO
        lelv0143.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730287AbfHZKMd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Aug 2019 06:12:33 -0400
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7QACHem020466;
        Mon, 26 Aug 2019 05:12:17 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1566814337;
        bh=ZNs6U4m8I4snjz0a7R+a3bK5jQt7SGpowKEruEugN2E=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=gbvUPApNIe6GKxn4HyFlLM+Z5dP2BG7IQ2Y6MkcnUAQryYyGZ9vYFGRoTBokGpY/J
         hM0HtJGPsp05wXnQc/VpZmgpZ7jRvT9ecyzeLu35otBuWKIg0TK1ySF2QNUIQHJAEb
         EbKtyK3zghwiUtI+J84/KBt62+jjrt6Ogwo54O9w=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7QACHGQ080207
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 26 Aug 2019 05:12:17 -0500
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 26
 Aug 2019 05:12:17 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 26 Aug 2019 05:12:16 -0500
Received: from [172.24.190.117] (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7QACD72092396;
        Mon, 26 Aug 2019 05:12:14 -0500
Subject: Re: [PATCH v5 0/3] soc: ti: k3: Allow for exclusive and shared device
 requests
To:     <santosh.shilimkar@oracle.com>, Nishanth Menon <nm@ti.com>,
        Tero Kristo <t-kristo@ti.com>,
        Santosh Shilimkar <ssantosh@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
CC:     Sekhar Nori <nsekhar@ti.com>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>
References: <20190729122453.32252-1-lokeshvutla@ti.com>
 <05218f41-9601-9a6c-8ac1-3bf1482e1c3d@ti.com>
 <226a7b55-8a4d-aa25-9392-004d5ea097e4@oracle.com>
From:   Lokesh Vutla <lokeshvutla@ti.com>
Message-ID: <ad77afd4-feb6-8123-3207-2518d7a98106@ti.com>
Date:   Mon, 26 Aug 2019 15:41:28 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <226a7b55-8a4d-aa25-9392-004d5ea097e4@oracle.com>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 21/08/19 1:36 PM, santosh.shilimkar@oracle.com wrote:
> On 8/20/19 2:48 PM, Lokesh Vutla wrote:
>>
>>
>> On 29/07/19 5:54 PM, Lokesh Vutla wrote:
>>> Sysfw provides an option for requesting exclusive access for a
>>> device using the flags MSG_FLAG_DEVICE_EXCLUSIVE. If this flag is
>>> not used, the device is meant to be shared across hosts. Once a device
>>> is requested from a host with this flag set, any request to this
>>> device from a different host will be nacked by sysfw.
>>>
>>> Current tisci firmware and pm drivers always requests for device with
>>> exclusive permissions set. But this is not be true for certain devices
>>> that are expcted to be shared across different host contexts.
>>> So add support for getting the shared or exclusive permissions from DT
>>> and request firmware accordingly.
>>
>> Gentle Ping on this series.
>>
> I can queue this up.

Thanks Santosh.

Regards,
Lokesh

