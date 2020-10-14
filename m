Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A081D28E47D
	for <lists+devicetree@lfdr.de>; Wed, 14 Oct 2020 18:31:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730954AbgJNQbc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Oct 2020 12:31:32 -0400
Received: from foss.arm.com ([217.140.110.172]:53164 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728084AbgJNQbc (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 14 Oct 2020 12:31:32 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D20EBD6E;
        Wed, 14 Oct 2020 09:31:31 -0700 (PDT)
Received: from [10.57.48.76] (unknown [10.57.48.76])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4477F3F71F;
        Wed, 14 Oct 2020 09:31:19 -0700 (PDT)
Subject: Re: [PATCH v2 0/3] Arm CMN-600 PMU driver
To:     Will Deacon <will@kernel.org>,
        "Zidenberg, Tsahi" <tsahee@amazon.com>
Cc:     "mark.rutland@arm.com" <mark.rutland@arm.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "Saidi, Ali" <alisaidi@amazon.com>,
        "harb@amperecomputing.com" <harb@amperecomputing.com>,
        "tuanphan@os.amperecomputing.com" <tuanphan@os.amperecomputing.com>,
        "james.yang@arm.com" <james.yang@arm.com>,
        "patrik.berglund@arm.com" <patrik.berglund@arm.com>
References: <cover.1600357241.git.robin.murphy@arm.com>
 <55205AE5-EBBD-47F3-AA22-3B2A370CCF22@amazon.com>
 <20201005102115.GA23702@willie-the-truck>
From:   Robin Murphy <robin.murphy@arm.com>
Message-ID: <b86a8e7e-4def-3cd0-d2c1-b9560304cf15@arm.com>
Date:   Wed, 14 Oct 2020 17:31:17 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.3.2
MIME-Version: 1.0
In-Reply-To: <20201005102115.GA23702@willie-the-truck>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2020-10-05 11:21, Will Deacon wrote:
> On Mon, Oct 05, 2020 at 09:16:13AM +0000, Zidenberg, Tsahi wrote:
>>
>>
>> ﻿On 18/09/2020, 16:29, "Robin Murphy" <robin.murphy@arm.com> wrote:
>>      > Here's an update with some very minor cleanup tweaks, plus a proposal
>>      > for some more in-depth debug information. Given that nobody seems to
>>      > have any significant complaints about the interface, I assume we're all
>>      > happy to merge the basic driver as-is and fix anything later if needed.
>>      >
>>      > Robin.
>>
>> Agree with merging the driver as-is.
>> Tested both the updated driver and the debugfs on Graviton2 (ACPI).
>> Both map and initial numbers seem right.
>>
>> Tested-by: Tsahi Zidenberg <tsahee@amazon.com>
>>
>> May I offer a small addition to the documentation?
>> Something along these lines:
>>
>> --- a/Documentation/admin-guide/perf/arm-cmn.rst
>> +++ b/Documentation/admin-guide/perf/arm-cmn.rst
>> @@ -41,8 +41,14 @@ specified by "occupid".
>>   
>>   By default each event provides an aggregate count over all nodes of the
>>   given type. To target a specific node, "bynodeid" must be set to 1 and
>> -"nodeid" to the appropriate value derived from the CMN configuration
>> -(as defined in the "Node ID Mapping" section of the TRM).
>> +"nodeid" to the appropriate value derived from the CMN configuration.
>> +
>> +The CMN map is available in /sys/kernel/debug/arm-cmn/map.
>> +A nodeid could be calculated with this formulae:
>> +  node-id = d | (p << 2) | (y << 3) | (x << (3 + xybits))
>> +where:
>> +  x,y,p,d are node location as can be seen in the map
>> +  xybits is 2 for meshes <= 2*2, and 3 otherwise.

Note that I disagree strongly with removing the reference to the 
documentation that canonically defines the node ID format, especially 
when the proposal is to replace it with a harder-to-read definition that 
is also wrong ;)

If there's actually interest in using the coordinate format rather than 
just whole ID values, then we should generate format attributes that 
overlay the appropriate sections of the nodeid field. I haven't tried to 
implement that so far since it's not entirely trivial and I wasn't sure 
if anyone would care.

> I already queued the driver, but if you send this as a stand-alone patch (on
> top of the arm64 for-next/perf branch) then I'm happy to take it.

Ha, so much for taking my holiday after -rc6 and expecting to come back 
to chasing this up at -rc1... cheers Will, that was a very nice surprise 
to return to!

Robin.
