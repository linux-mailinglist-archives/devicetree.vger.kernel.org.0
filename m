Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3D45641E693
	for <lists+devicetree@lfdr.de>; Fri,  1 Oct 2021 06:23:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233167AbhJAEZW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Oct 2021 00:25:22 -0400
Received: from m43-7.mailgun.net ([69.72.43.7]:23048 "EHLO m43-7.mailgun.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232679AbhJAEZT (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 1 Oct 2021 00:25:19 -0400
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org; q=dns/txt;
 s=smtp; t=1633062216; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=Dip6+gsZTv4hc6KbmQol7EirdVFSF+SQtqWOT76YHBw=;
 b=u2Bs9Bcp5hgegRRAczorGuXXGuIXr6/HVmA4E43Vx4R68Wm5eTzvseh3WUU5YMuHrVdW8iWX
 IKIyDMwRiTU+j3DRpdNTMyHP0WrNoroJm8rW3WkB27iiR15fvAIZHzCn+IimqaDYRvr+mnl+
 WHel3J/M8ac/v4jbW5yN5t4xVSw=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyI1YmJiNiIsICJkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n03.prod.us-east-1.postgun.com with SMTP id
 61568d47713d5d6f96c62c82 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 01 Oct 2021 04:23:35
 GMT
Sender: saiprakash.ranjan=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
        id 6A6C6C43460; Fri,  1 Oct 2021 04:23:34 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
        aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=2.0 tests=ALL_TRUSTED,BAYES_00,
        URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
        (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: saiprakash.ranjan)
        by smtp.codeaurora.org (Postfix) with ESMTPSA id 81A92C4338F;
        Fri,  1 Oct 2021 04:23:33 +0000 (UTC)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date:   Fri, 01 Oct 2021 09:53:33 +0530
From:   Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Mailing List <devicetree-spec@vger.kernel.org>,
        devicetree@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rajendra Nayak <rnayak@codeaurora.org>
Subject: Re: [PATCH] Add system-cache-controller to the list of generic node
 names
In-Reply-To: <CAL_Jsq+vkpigu3P+dkAVXT7nypnJA_R8LBPGgj9wERcCW6P36w@mail.gmail.com>
References: <20210929052613.8589-1-saiprakash.ranjan@codeaurora.org>
 <CAL_JsqLzDejj99C6CPuW+19cgwdDVkctppL_SFeWnAG5LUkscw@mail.gmail.com>
 <d9894ca86ed9a56ebf118a91bfe1b91d@codeaurora.org>
 <CAL_Jsq+vkpigu3P+dkAVXT7nypnJA_R8LBPGgj9wERcCW6P36w@mail.gmail.com>
Message-ID: <84f956f861e55bbfc1df0761ce7b4786@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2021-09-30 19:03, Rob Herring wrote:
> On Wed, Sep 29, 2021 at 11:06 PM Sai Prakash Ranjan
> <saiprakash.ranjan@codeaurora.org> wrote:
>> 
>> On 2021-09-29 18:12, Rob Herring wrote:
>> > On Wed, Sep 29, 2021 at 12:26 AM Sai Prakash Ranjan
>> > <saiprakash.ranjan@codeaurora.org> wrote:
>> >>
>> >> System Cache Controller (Last Level Cache Controller/LLCC) does not
>> >> have a cache-level associated with it as enforced by the already
>> >> existing 'cache-controller' node name, so add system-cache-controller
>> >> to the list of generic node names as decided on the lkml in [1][2]
>> >> and already being used in the dts for sometime now.
>> >>
>> >> [1]
>> >> https://lore.kernel.org/lkml/5dcd8588.1c69fb81.2528a.3460@mx.google.com/
>> >> [2]
>> >> https://lore.kernel.org/lkml/cover.1573814758.git.saiprakash.ranjan@codeaurora.org/
>> >>
>> >> Cc: Stephen Boyd <swboyd@chromium.org>
>> >> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
>> >> Cc: Rajendra Nayak <rnayak@codeaurora.org>
>> >> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
>> >> ---
>> >>  source/chapter2-devicetree-basics.rst | 1 +
>> >>  1 file changed, 1 insertion(+)
>> >>
>> >> diff --git a/source/chapter2-devicetree-basics.rst
>> >> b/source/chapter2-devicetree-basics.rst
>> >> index 40be22192b2f..c06c5063c68b 100644
>> >> --- a/source/chapter2-devicetree-basics.rst
>> >> +++ b/source/chapter2-devicetree-basics.rst
>> >> @@ -276,6 +276,7 @@ name should be one of the following choices:
>> >>     * sram-controller
>> >>     * ssi-controller
>> >>     * syscon
>> >> +   * system-cache-controller
>> >
>> > I don't want to encourage others to use this over 'cache-controller'
>> > and the standard binding.
>> >
>> 
>> Right, but why would others use this over cache-controller? This is
>> supposed
>> to be used only for last level cache controllers where there is no
>> cache-level
>> associated with it like in the system cache controller/LLCC found in 
>> QTI
>> SoCs.
> 
> I don't agree there's never a level.
> 

More like it isn't used for now.

> Using the cache binding will be necessary if you want to populate the
> kernel's cache info. If your caches have MPAM support, they are going
> to need to follow the cache binding as well.
> 
>> Also you had acked the corresponding change in the DT binding for LLCC
>> [1].
> 
> Yes, but that doesn't mean it belongs in the spec. Maybe when we have
> more than 1 case that will change, but for now I don't think it should
> be in the spec.
> 

All right, will drop this change for now.

Thanks,
Sai

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a 
member
of Code Aurora Forum, hosted by The Linux Foundation
