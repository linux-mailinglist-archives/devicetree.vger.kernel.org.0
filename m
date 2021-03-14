Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 97E0633A7A1
	for <lists+devicetree@lfdr.de>; Sun, 14 Mar 2021 20:19:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233259AbhCNTTW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 14 Mar 2021 15:19:22 -0400
Received: from z11.mailgun.us ([104.130.96.11]:30027 "EHLO z11.mailgun.us"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229870AbhCNTTG (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 14 Mar 2021 15:19:06 -0400
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org; q=dns/txt;
 s=smtp; t=1615749546; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=lt4SGILbDHmJknFf4AtHkv1eM2Vns6KY4vPfJygmwIA=;
 b=u2wjhVnyd4LzLlXtPjoTpR8WxmI/vjL2Y9hDPrGQufPBOrm4VO1Lj00/DpqS8an1reUu6fMo
 mZtuGZoxydvmjMJtXNIaK5oQFHOXmRb+tBfjqwoVIbnJHRPLu5HeO5J1ADXAvrL59QngAv0U
 xlfB2Yt826TeWXqgupRgrrH4VTE=
X-Mailgun-Sending-Ip: 104.130.96.11
X-Mailgun-Sid: WyI1YmJiNiIsICJkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n04.prod.us-east-1.postgun.com with SMTP id
 604e61a91de5dd7b99f9751d (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Sun, 14 Mar 2021 19:19:05
 GMT
Sender: saiprakash.ranjan=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
        id CB402C43464; Sun, 14 Mar 2021 19:19:04 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
        aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=2.0 tests=ALL_TRUSTED,BAYES_00,
        URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
        (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: saiprakash.ranjan)
        by smtp.codeaurora.org (Postfix) with ESMTPSA id 15F03C433C6;
        Sun, 14 Mar 2021 19:19:04 +0000 (UTC)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date:   Mon, 15 Mar 2021 00:49:03 +0530
From:   Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     schowdhu@codeaurora.org, Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        sibis@codeaurora.org, Rajendra Nayak <rnayak@codeaurora.org>,
        vkoul@kernel.org
Subject: Re: [PATCH V1 2/6] soc: qcom: dcc: Add driver support for Data
 Capture and Compare unit(DCC)
In-Reply-To: <YEpGf7kQS53pByqC@builder.lan>
References: <cover.1615393454.git.schowdhu@codeaurora.org>
 <48556129a02c9f7cd0b31b2e8ee0f168e6d211b7.1615393454.git.schowdhu@codeaurora.org>
 <YElUCaBUOx7hEuIh@builder.lan>
 <7c189355ca6c472b05151673d27481c3@codeaurora.org>
 <YEpGf7kQS53pByqC@builder.lan>
Message-ID: <d7af44c2f9be4b50136b61ca39a814eb@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2021-03-11 22:04, Bjorn Andersson wrote:
> On Thu 11 Mar 04:06 CST 2021, schowdhu@codeaurora.org wrote:
> 
>> On 2021-03-11 04:49, Bjorn Andersson wrote:
>> > On Wed 10 Mar 10:46 CST 2021, Souradeep Chowdhury wrote:
>> >
>> > > The DCC is a DMA Engine designed to capture and store data
>> > > during system crash or software triggers. The DCC operates
>> > > based on link list entries which provides it with data and
>> > > addresses and the function it needs to perform. These
>> > > functions are read, write and loop. Added the basic driver
>> > > in this patch which contains a probe method which instantiates
>> > > the resources needed by the driver. DCC has it's own SRAM which
>> > > needs to be instantiated at probe time as well.
>> > >
>> >
>> > So to summarize, the DCC will upon a crash copy the configured region
>> > into the dcc-ram, where it can be retrieved either by dumping the memory
>> > over USB or from sysfs on the next boot?
>> 
>> Replied by Sai
>> 
> 
> Thanks Souradeep and Sai, I'm definitely interested in learning more
> about what the hardware block can do and how we can use it.
> 

Thanks Bjorn, hopefully example in the other thread provides some good
view of the capability of DCC. Please let us know if you need any more
details.

Thanks,
Sai
-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a 
member
of Code Aurora Forum, hosted by The Linux Foundation
