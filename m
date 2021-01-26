Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 63303303341
	for <lists+devicetree@lfdr.de>; Tue, 26 Jan 2021 05:52:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728155AbhAZEtY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jan 2021 23:49:24 -0500
Received: from a1.mail.mailgun.net ([198.61.254.60]:28468 "EHLO
        a1.mail.mailgun.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387449AbhAZBYA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jan 2021 20:24:00 -0500
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org; q=dns/txt;
 s=smtp; t=1611624220; h=Content-Transfer-Encoding: Content-Type:
 In-Reply-To: MIME-Version: Date: Message-ID: From: References: Cc: To:
 Subject: Sender; bh=7OsIShq8IRb2YDHJ4/j58ebi3yNhkVmimR5GqE3wAqY=; b=ffkg1KF1BUELs0kXin/54tyDsdpZTLLwy4F2DxJ/1vqjUcTWNST5Q0CG/anLY09E3YzqVyCH
 tYxb7gehb5O/tYqV1VsMO9rQyc/0VJf/3xqB1n6ZA9F2Y1VkTZSqWie38dBDj3rztw0YyO+T
 bafgiSGEBgdCNgiU3P9bzSr1/lk=
X-Mailgun-Sending-Ip: 198.61.254.60
X-Mailgun-Sid: WyI1YmJiNiIsICJkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n07.prod.us-west-2.postgun.com with SMTP id
 600f6cfe5677aca7bd490abe (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Tue, 26 Jan 2021 01:14:38
 GMT
Sender: wcheng=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
        id D725AC43463; Tue, 26 Jan 2021 01:14:37 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
        aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=2.0 tests=ALL_TRUSTED,BAYES_00,
        NICE_REPLY_A,SPF_FAIL autolearn=no autolearn_force=no version=3.4.0
Received: from [10.110.78.65] (i-global254.qualcomm.com [199.106.103.254])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: wcheng)
        by smtp.codeaurora.org (Postfix) with ESMTPSA id 91F3AC433C6;
        Tue, 26 Jan 2021 01:14:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 91F3AC433C6
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=fail smtp.mailfrom=wcheng@codeaurora.org
Subject: Re: [PATCH v6 3/4] usb: dwc3: Resize TX FIFOs to meet EP bursting
 requirements
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     balbi@kernel.org, gregkh@linuxfoundation.org, robh+dt@kernel.org,
        agross@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org, peter.chen@nxp.com,
        jackp@codeaurora.org
References: <1611288100-31118-1-git-send-email-wcheng@codeaurora.org>
 <1611288100-31118-4-git-send-email-wcheng@codeaurora.org>
 <YAsHbj/mITeiY5Cq@builder.lan>
From:   Wesley Cheng <wcheng@codeaurora.org>
Message-ID: <724cb274-36ce-fb48-a156-4eaf9e686fdf@codeaurora.org>
Date:   Mon, 25 Jan 2021 17:14:35 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <YAsHbj/mITeiY5Cq@builder.lan>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 1/22/2021 9:12 AM, Bjorn Andersson wrote:
> On Thu 21 Jan 22:01 CST 2021, Wesley Cheng wrote:
> 

Hi Bjorn,
> 
> Under what circumstances should we specify this? And in particular are
> there scenarios (in the Qualcomm platforms) where this must not be set?
>The TXFIFO dynamic allocation is actually a feature within the DWC3
controller, and isn't specifically for QCOM based platforms.  It won't
do any harm functionally if this flag is not set, as this is meant for
enhancing performance/bandwidth.

> In particular, the composition can be changed in runtime, so should we
> set this for all Qualcomm platforms?
> 
Ideally yes, if we want to increase bandwith for situations where SS
endpoint bursting is set to a higher value.

> And if that's the case, can we not just set it from the qcom driver?
> 
Since this is a common DWC3 core feature, I think it would make more
sense to have it in DWC3 core instead of a vendor's DWC3 glue driver.

Thanks
Wesley Cheng

> Regards,
> Bjorn


-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project
