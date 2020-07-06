Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8022B215668
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2020 13:30:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728441AbgGFL3v (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Jul 2020 07:29:51 -0400
Received: from m43-7.mailgun.net ([69.72.43.7]:49641 "EHLO m43-7.mailgun.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728836AbgGFL3v (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 6 Jul 2020 07:29:51 -0400
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org; q=dns/txt;
 s=smtp; t=1594034990; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Date: Message-ID: From: References: Cc: To: Subject:
 Sender; bh=B4x/MNKnw7dNqtrqeARr2ZbfiWYvHwIO7a3zTHiX2RQ=; b=H4EH98DL+GHc4hPZehrYbX+ML77ClbmaiW10FZDiDLUA7BXF/5c7ddOAru2z6ymMcpiQdw2l
 vb/l226gmdgVrKGN1+tv90J41O2M9kDD0tShxqrCRg/lk2wfSfL803pfP62xXJvLrwUktEaa
 Tj3J8KBSkPKFXz+CK/zo9gQMWTw=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyI1YmJiNiIsICJkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n07.prod.us-east-1.postgun.com with SMTP id
 5f030b2a86de6ccd44b789fd (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Mon, 06 Jul 2020 11:29:46
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
        id 95BB1C43387; Mon,  6 Jul 2020 11:29:45 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
        aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
        autolearn=unavailable autolearn_force=no version=3.4.0
Received: from [192.168.0.129] (unknown [183.83.142.110])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: rohitkr)
        by smtp.codeaurora.org (Postfix) with ESMTPSA id 536EBC433C8;
        Mon,  6 Jul 2020 11:29:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 536EBC433C8
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=none smtp.mailfrom=rohitkr@codeaurora.org
Subject: Re: [PATCH v2 1/7] Documentation: device-tree: sound: Update
 lpass-cpu driver binding
To:     Ajit Pandey <ajitp@codeaurora.org>, Mark Brown <broonie@kernel.org>
Cc:     devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
        bgoswami@codeaurora.org, plai@codeaurora.org,
        linux-kernel@vger.kernel.org, srinivas.kandagatla@linaro.org
References: 
From:   Rohit Kumar <rohitkr@codeaurora.org>
Message-ID: <f44e2526-3497-7900-0db6-39b6b5af2d9b@codeaurora.org>
Date:   Mon, 6 Jul 2020 16:59:39 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On 5/16/2020 11:07 PM, Ajit Pandey wrote:
> On 5/14/2020 10:14 PM, Mark Brown wrote:
>> On Thu, May 14, 2020 at 10:08:12PM +0530, Ajit Pandey wrote:
>>> Done the required cleanups to update lpass-cpu binding with newer
>>> yaml formats.
>> Please do YAML conversions as the last thing in any patch series, there
>> is quite a big backlog of reviews of YAML conversions so they can slow
>> down the code development.� It's good to do them, just try to make sure
>> other patches don't depend on them.
>>
>> Please submit patches using subject lines reflecting the style for the
>> subsystem, this makes it easier for people to identify relevant patches.
>> Look at what existing commits in the area you're changing are doing and
>> make sure your subject lines visually resemble what they're doing.
>> There's no need to resubmit to fix this alone.
>
> Ok.. we'll do the yaml conversion as a separate patch chain so that it 
> won't block
>
> merging of this feature in ASoC core.

@Mark, I was planning to post v3 patchset series for this and keep yaml 
change as

last patch in the series as suggested. However, we have one update in 
the driver to

support another compatible string. If we keep Documentation change at 
the last, the

driver change will have checkpatch errors. Can you please suggest if 
should make

first Documentation change in text file itself before driver change and 
finally have a

patch to convert it to yaml at the end?


Thanks,

Rohit

-- 
Qualcomm INDIA, on behalf of Qualcomm Innovation Center, Inc.is a member
of the Code Aurora Forum, hosted by the Linux Foundation.

