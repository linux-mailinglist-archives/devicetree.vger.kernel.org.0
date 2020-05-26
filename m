Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 38E371E1BB2
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2020 09:01:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731399AbgEZHBv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 May 2020 03:01:51 -0400
Received: from mail26.static.mailgun.info ([104.130.122.26]:16813 "EHLO
        mail26.static.mailgun.info" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1729956AbgEZHBv (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 26 May 2020 03:01:51 -0400
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org; q=dns/txt;
 s=smtp; t=1590476510; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=bxN1ySkS5OLFnpjDUyutSFYIlYJ92O/h8wsCXEUhy+Y=;
 b=Mb7BzEUTmZvc6PcLmjyBGqH93cejpwnWp7di0UUv1WxQ3BRPcKp29dEjvxFM5Dd4fCT4T2/B
 3PuYIg3K4DjQoJsbUHBpGcgSZlpZk+QXqdSSCWEgXqfQPSUVl20bTuIf7hsmWS1EAWBOVmFk
 3KrPQacE14e4PSy3J+Gjd80cRMg=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyI1YmJiNiIsICJkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n01.prod.us-east-1.postgun.com with SMTP id
 5eccbedc2c54998475ff99d5 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Tue, 26 May 2020 07:01:48
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
        id 61A5AC43395; Tue, 26 May 2020 07:01:47 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
        aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
        autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
        (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: saiprakash.ranjan)
        by smtp.codeaurora.org (Postfix) with ESMTPSA id E5A78C433C6;
        Tue, 26 May 2020 07:01:46 +0000 (UTC)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date:   Tue, 26 May 2020 12:31:46 +0530
From:   Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To:     Mathieu Poirier <mathieu.poirier@linaro.org>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
Cc:     Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>,
        devicetree-owner@vger.kernel.org
Subject: Re: [PATCHv3 0/2] Add support for replicators which loses context on
 clock removal
In-Reply-To: <20200525161553.GA31527@xps15>
References: <cover.1590171891.git.saiprakash.ranjan@codeaurora.org>
 <20200525161553.GA31527@xps15>
Message-ID: <8b3592edb443a091891d00e0fa32debc@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Mathieu,

On 2020-05-25 21:45, Mathieu Poirier wrote:
> Hi Sai,
> 
> On Sat, May 23, 2020 at 12:06:50AM +0530, Sai Prakash Ranjan wrote:
>> This series is mainly to add support for replicators
>> which lose context on removing AMBA clock like on SC7180
>> SoC where replicator in AOSS domain loses context.
>> 
> 
> I am good with this set but need a reviewed-by on the DT binding before 
> I can
> add it to my tree.  The same goes for your other set[1].
> 

Sure, let's wait for an ack from Rob and thanks for the reviews.

Thanks,
Sai

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a 
member
of Code Aurora Forum, hosted by The Linux Foundation
