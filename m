Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8181841D218
	for <lists+devicetree@lfdr.de>; Thu, 30 Sep 2021 06:06:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232042AbhI3EIj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Sep 2021 00:08:39 -0400
Received: from m43-7.mailgun.net ([69.72.43.7]:30528 "EHLO m43-7.mailgun.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231302AbhI3EIi (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 30 Sep 2021 00:08:38 -0400
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org; q=dns/txt;
 s=smtp; t=1632974816; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=kdB++8u5uUaWcte0gyVx8sj/xtUcaItO0wH5nkjb72g=;
 b=Es/t6HjqQyFwYDDpKjuPBUo6ifKFOKsp8eVfa2772Hp9jNBBTYfS1usvDYH/+qxqIZghfdWr
 +Qfmbek1Dt58o7sE75A/9KjBks/d+Am5AODo8KGM81iLdH44OrBADvLc0Rkp5Dpb0W+L1yHh
 gOhih0ZRIrjZVAv961eXdT1rC0M=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyI1YmJiNiIsICJkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n01.prod.us-east-1.postgun.com with SMTP id
 615537d4a3e8d3c640ed3d30 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Thu, 30 Sep 2021 04:06:44
 GMT
Sender: saiprakash.ranjan=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
        id 90565C4360D; Thu, 30 Sep 2021 04:06:43 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
        aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=2.0 tests=ALL_TRUSTED,BAYES_00
        autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
        (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: saiprakash.ranjan)
        by smtp.codeaurora.org (Postfix) with ESMTPSA id C5050C4338F;
        Thu, 30 Sep 2021 04:06:42 +0000 (UTC)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date:   Thu, 30 Sep 2021 09:36:42 +0530
From:   Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Mailing List <devicetree-spec@vger.kernel.org>,
        devicetree@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rajendra Nayak <rnayak@codeaurora.org>
Subject: Re: [PATCH] Add system-cache-controller to the list of generic node
 names
In-Reply-To: <CAL_JsqLzDejj99C6CPuW+19cgwdDVkctppL_SFeWnAG5LUkscw@mail.gmail.com>
References: <20210929052613.8589-1-saiprakash.ranjan@codeaurora.org>
 <CAL_JsqLzDejj99C6CPuW+19cgwdDVkctppL_SFeWnAG5LUkscw@mail.gmail.com>
Message-ID: <d9894ca86ed9a56ebf118a91bfe1b91d@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2021-09-29 18:12, Rob Herring wrote:
> On Wed, Sep 29, 2021 at 12:26 AM Sai Prakash Ranjan
> <saiprakash.ranjan@codeaurora.org> wrote:
>> 
>> System Cache Controller (Last Level Cache Controller/LLCC) does not
>> have a cache-level associated with it as enforced by the already
>> existing 'cache-controller' node name, so add system-cache-controller
>> to the list of generic node names as decided on the lkml in [1][2]
>> and already being used in the dts for sometime now.
>> 
>> [1] 
>> https://lore.kernel.org/lkml/5dcd8588.1c69fb81.2528a.3460@mx.google.com/
>> [2] 
>> https://lore.kernel.org/lkml/cover.1573814758.git.saiprakash.ranjan@codeaurora.org/
>> 
>> Cc: Stephen Boyd <swboyd@chromium.org>
>> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
>> Cc: Rajendra Nayak <rnayak@codeaurora.org>
>> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
>> ---
>>  source/chapter2-devicetree-basics.rst | 1 +
>>  1 file changed, 1 insertion(+)
>> 
>> diff --git a/source/chapter2-devicetree-basics.rst 
>> b/source/chapter2-devicetree-basics.rst
>> index 40be22192b2f..c06c5063c68b 100644
>> --- a/source/chapter2-devicetree-basics.rst
>> +++ b/source/chapter2-devicetree-basics.rst
>> @@ -276,6 +276,7 @@ name should be one of the following choices:
>>     * sram-controller
>>     * ssi-controller
>>     * syscon
>> +   * system-cache-controller
> 
> I don't want to encourage others to use this over 'cache-controller'
> and the standard binding.
> 

Right, but why would others use this over cache-controller? This is 
supposed
to be used only for last level cache controllers where there is no 
cache-level
associated with it like in the system cache controller/LLCC found in QTI 
SoCs.
Also you had acked the corresponding change in the DT binding for LLCC 
[1].

[1] https://lore.kernel.org/lkml/20191203172235.GA18507@bogus/

Thanks,
Sai

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a 
member
of Code Aurora Forum, hosted by The Linux Foundation
