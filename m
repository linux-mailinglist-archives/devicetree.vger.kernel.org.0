Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2C8F1276DB2
	for <lists+devicetree@lfdr.de>; Thu, 24 Sep 2020 11:43:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726603AbgIXJnc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Sep 2020 05:43:32 -0400
Received: from foss.arm.com ([217.140.110.172]:40174 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726522AbgIXJnc (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 24 Sep 2020 05:43:32 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2A4C012FC;
        Thu, 24 Sep 2020 02:43:31 -0700 (PDT)
Received: from [10.57.52.232] (unknown [10.57.52.232])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 654D13F73B;
        Thu, 24 Sep 2020 02:43:29 -0700 (PDT)
Subject: Re: [PATCH 19/19] dts: bindings: coresight: ETMv4.4 system register
 access only units
To:     mike.leach@linaro.org
Cc:     linux-arm-kernel@lists.infradead.org, coresight@lists.linaro.org,
        mathieu.poirier@linaro.org, leo.yan@linaro.org,
        anshuman.khandual@arm.com, devicetree@vger.kernel.org,
        robh@kernel.org
References: <20200911084119.1080694-1-suzuki.poulose@arm.com>
 <20200911084119.1080694-20-suzuki.poulose@arm.com>
 <CAJ9a7ViGcasXU2e8HV2RzzobQ7YBHE=YQSqQkCqcb7OyDk_aKA@mail.gmail.com>
From:   Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <f9614d47-4abc-ea14-9d51-068cbb5e9265@arm.com>
Date:   Thu, 24 Sep 2020 10:48:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <CAJ9a7ViGcasXU2e8HV2RzzobQ7YBHE=YQSqQkCqcb7OyDk_aKA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/18/2020 04:35 PM, Mike Leach wrote:
> On Fri, 11 Sep 2020 at 09:41, Suzuki K Poulose <suzuki.poulose@arm.com> wrote:
>>
>> Document the bindings for ETMv4.4 and later with only system register
>> access.
>>
>> Cc: devicetree@vger.kernel.org
>> Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
>> Cc: Mike Leach <mike.leach@linaro.org>
>> Reviewed-by: Rob Herring <robh@kernel.org>
>> Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
>> ---
>>   Documentation/devicetree/bindings/arm/coresight.txt | 6 +++++-
>>   1 file changed, 5 insertions(+), 1 deletion(-)
>>
>> diff --git a/Documentation/devicetree/bindings/arm/coresight.txt b/Documentation/devicetree/bindings/arm/coresight.txt
>> index d711676b4a51..cfe47bdda728 100644
>> --- a/Documentation/devicetree/bindings/arm/coresight.txt
>> +++ b/Documentation/devicetree/bindings/arm/coresight.txt
>> @@ -34,9 +34,13 @@ its hardware characteristcs.
>>                                          Program Flow Trace Macrocell:
>>                          "arm,coresight-etm3x", "arm,primecell";
>>
>> -               - Embedded Trace Macrocell (version 4.x):
>> +               - Embedded Trace Macrocell (version 4.x), with memory mapped access.
>>                          "arm,coresight-etm4x", "arm,primecell";
>>
>> +               - Embedded Trace Macrocell (version 4.4 and later) with system
>> +                 register access only.
>> +                       "arm,coresight-etm-v4.4";
> 
> Any version of ETM can implement register access - including those pre
> ETM 4.4. Perhaps the new name should simply reflect sys reg access
> rather than a version.
> 

You're right. I got it confused with the v8.4 SelfHosted Extensions, which
mandates the sysreg access and makes the mem I/O obsolete. How about :

	"arm,coresight-etm4x-sysreg" ?


> Given that the two compatibility strings should be mutually exclusive
> for a given device, should the bindings doc (or at least the etm4x
> component part) be re-written into the .yaml format so that this can
> be enforced?

I will take a look, haven't played with the yaml.

Thanks for the review !

Suzuki
