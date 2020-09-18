Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A713926FDC8
	for <lists+devicetree@lfdr.de>; Fri, 18 Sep 2020 15:06:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726475AbgIRNGW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Sep 2020 09:06:22 -0400
Received: from foss.arm.com ([217.140.110.172]:41908 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726436AbgIRNGW (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 18 Sep 2020 09:06:22 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9B46C30E;
        Fri, 18 Sep 2020 06:06:21 -0700 (PDT)
Received: from [10.57.47.84] (unknown [10.57.47.84])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DC2273F718;
        Fri, 18 Sep 2020 06:06:19 -0700 (PDT)
Subject: Re: [PATCH 0/2] Arm CMN-600 PMU driver
To:     Tuan Phan <tuanphan@amperemail.onmicrosoft.com>,
        "Zidenberg, Tsahi" <tsahee@amazon.com>
Cc:     "will@kernel.org" <will@kernel.org>,
        "mark.rutland@arm.com" <mark.rutland@arm.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "Saidi, Ali" <alisaidi@amazon.com>,
        "harb@amperecomputing.com" <harb@amperecomputing.com>,
        "tuanphan@os.amperecomputing.com" <tuanphan@os.amperecomputing.com>,
        "james.yang@arm.com" <james.yang@arm.com>
References: <09BE24FF-DF48-49C5-AAC4-669372276200@amazon.com>
 <082F0C98-4B73-4215-8B42-0C1B31780350@amperemail.onmicrosoft.com>
From:   Robin Murphy <robin.murphy@arm.com>
Message-ID: <0b3d6185-ceb1-2882-797c-ec34dc1eb80f@arm.com>
Date:   Fri, 18 Sep 2020 14:06:17 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.2.2
MIME-Version: 1.0
In-Reply-To: <082F0C98-4B73-4215-8B42-0C1B31780350@amperemail.onmicrosoft.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2020-09-09 17:54, Tuan Phan wrote:
> On Sep 9, 2020, at 2:34 AM, Zidenberg, Tsahi <tsahee@amazon.com> wrote:
>>
>>
>> ﻿On 05/08/2020, 15:57, "Robin Murphy" <robin.murphy@arm.com> wrote:
>>> At long last, here's an initial cut of the CMN PMU driver that's been
>>> festering in on-and-off development for years. It should be functionally
>>> complete now, although there is still scope for improving the current
>>> implementation (e.g. watchpoint register allocation could be cleverer).
>>
>> Booted on graviton2 (using ACPI). Cache-fill counter value (both general and
>> bynodeid) responds as expected to memory pressure from user processes.
>>
>> Tested-by: Tsahi Zidenberg <tsahee@amazon.com>
>>
> 
> Tested on Ampere Altra SOC platform. So far I have not seen any issues.
> 
> Tested-by: Tuan Phan <tuanphan@os.amperecomputing.com <mailto:tphan@os.amperecomputing.com>>
> 
>>> Of particular interest at this point is the user interface - is it
>>> sufficiently complete and useful? Is there any need for a third event
>>> targeting method in between "single node ID" and "all nodes"?
>>
>> The one thing I'm missing (or didn't find) is a way for the user to determine
>> the list of relevant node ids for each node type or counter.
>> Using a wrong nodeid just gave me <not supported> as a counter value.
>> I don't think that it's required for a first version, though.
>>
> 
> Yes, that bothers me for a while. I either dump nodeid during discovery phase or have
> a node list excel file to get correct nodeid.

For end users who want to measure straightforward things like SLC usage, 
the default of counting across all relevant nodes is usually what 
they're going to want anyway, and conveniently means they don't need to 
know the details. For targeted measurements, even if you know all the 
node IDs, how will you know which CPU/memory controller/peripheral/etc. 
they correspond to? Just like for CCN and CCI, to do pretty much 
anything *meaningful* you'll need independent information about the 
wider SoC configuration to know what's connected where, and that 
information should inherently give you the node/port IDs anyway.

That said, I did end up writing some more comprehensive debugfs output 
for my own development use, and also based on discussions around 
tangential development cases like CHI cache-stashing research. I've 
included that in v2, so if you think it deserves to be upstream please 
do say so.

Thanks,
Robin.
