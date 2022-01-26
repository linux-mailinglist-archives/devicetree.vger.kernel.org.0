Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E434F49CEF6
	for <lists+devicetree@lfdr.de>; Wed, 26 Jan 2022 16:54:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231247AbiAZPyb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jan 2022 10:54:31 -0500
Received: from foss.arm.com ([217.140.110.172]:49210 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231177AbiAZPyb (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 26 Jan 2022 10:54:31 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 37572D6E;
        Wed, 26 Jan 2022 07:54:31 -0800 (PST)
Received: from [10.57.68.47] (unknown [10.57.68.47])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F387C3F766;
        Wed, 26 Jan 2022 07:54:29 -0800 (PST)
Message-ID: <447f89ca-86c0-dc35-e7ac-e6639a573670@arm.com>
Date:   Wed, 26 Jan 2022 15:54:25 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.5.1
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: xen: document Xen iommu device
Content-Language: en-GB
To:     Sergiy Kibrik <Sergiy_Kibrik@epam.com>
Cc:     Stefano Stabellini <sstabellini@kernel.org>,
        Julien Grall <julien@xen.org>,
        Oleksandr Tyshchenko <olekstysh@gmail.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "xen-devel@lists.xenproject.org" <xen-devel@lists.xenproject.org>
References: <20220117123251.140867-1-Sergiy_Kibrik@epam.com>
 <20220117123251.140867-2-Sergiy_Kibrik@epam.com>
 <e88b882f-4b5d-a801-fc68-66b7f790e11c@arm.com>
 <PAXPR03MB81144A63E18CAF10E785E2A7F0209@PAXPR03MB8114.eurprd03.prod.outlook.com>
From:   Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <PAXPR03MB81144A63E18CAF10E785E2A7F0209@PAXPR03MB8114.eurprd03.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2022-01-26 15:09, Sergiy Kibrik wrote:
> Hi Robin,
> 
>>
>> This could break Linux guests, since depending on the deferred probe
>> timeout setting it could lead to drivers never probing because the "IOMMU"
>> never becomes available.
>>
> 
> I've noticed no deferred probe timeouts when booting with this patch. Could you please explain more on how this would break guests?

Right now I think it would actually require command-line intervention, 
e.g. "fw_devlink=on" or "deferred_probe_timeout=3600" (with modules 
enabled for the latter to take full effect), but I'm wary of the 
potential for future config options to control those behaviours by default.

Robin.

> Thank you!
> 
>   -- Sergiy
