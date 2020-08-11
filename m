Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 421872420B5
	for <lists+devicetree@lfdr.de>; Tue, 11 Aug 2020 22:02:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726527AbgHKUCK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Aug 2020 16:02:10 -0400
Received: from m43-7.mailgun.net ([69.72.43.7]:56622 "EHLO m43-7.mailgun.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726164AbgHKUCI (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 11 Aug 2020 16:02:08 -0400
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org; q=dns/txt;
 s=smtp; t=1597176128; h=Content-Transfer-Encoding: Content-Type:
 In-Reply-To: MIME-Version: Date: Message-ID: From: References: Cc: To:
 Subject: Sender; bh=Eg0yaT7k7a3ozvjvXJg0xCTB4GB4zNL/QNKAE2MeKPE=; b=faC1ldrV0D8SnWmA4XQv5XqTpM+KsZFK0Yxepjg9sahfQH/4eMD4Iiryn6I4YL5garjSnP1j
 /n9ZcG3Z2n9uAXI2IFmJneS/2oSos1zvlUwJ9DAt+w8zTl8Y11oeeh1nEkcmW4xbY8fQWd4v
 uQiv9/QeJQ7iBs1Iz62DU7ija8I=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyI1YmJiNiIsICJkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n06.prod.us-east-1.postgun.com with SMTP id
 5f32f937440a07969ae5f5d2 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Tue, 11 Aug 2020 20:01:59
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
        id 39C92C433C9; Tue, 11 Aug 2020 20:01:59 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
        aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,NICE_REPLY_A,
        SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.0
Received: from [10.206.24.160] (unknown [202.46.22.19])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: sanm)
        by smtp.codeaurora.org (Postfix) with ESMTPSA id B4793C433C6;
        Tue, 11 Aug 2020 20:01:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org B4793C433C6
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=none smtp.mailfrom=sanm@codeaurora.org
Subject: Re: [PATCH v11 1/2] usb: dwc3: qcom: Add interconnect support in dwc3
 driver
To:     Matthias Kaehlcke <mka@chromium.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Felipe Balbi <balbi@kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Doug Anderson <dianders@chromium.org>,
        linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Manu Gautam <mgautam@codeaurora.org>,
        Chandana Kishori Chiluveru <cchiluve@codeaurora.org>
References: <1595869597-26049-1-git-send-email-sanm@codeaurora.org>
 <1595869597-26049-2-git-send-email-sanm@codeaurora.org>
 <20200727192050.GD3191083@google.com>
From:   "Sandeep Maheswaram (Temp)" <sanm@codeaurora.org>
Message-ID: <cd5c6c99-d8ee-da59-1abf-e64e5f7f6f8f@codeaurora.org>
Date:   Wed, 12 Aug 2020 01:31:52 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200727192050.GD3191083@google.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Felipe,

On 7/28/2020 12:50 AM, Matthias Kaehlcke wrote:
> On Mon, Jul 27, 2020 at 10:36:36PM +0530, Sandeep Maheswaram wrote:
>> Add interconnect support in dwc3-qcom driver to vote for bus
>> bandwidth.
>>
>> This requires for two different paths - from USB to
>> DDR. The other is from APPS to USB.
>>
>> Signed-off-by: Sandeep Maheswaram <sanm@codeaurora.org>
>> Signed-off-by: Chandana Kishori Chiluveru <cchiluve@codeaurora.org>
> Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
Please ack if you are ok with this patch.

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum, hosted by The Linux Foundation

