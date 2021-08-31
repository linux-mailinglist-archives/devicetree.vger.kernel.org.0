Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5186B3FCAC8
	for <lists+devicetree@lfdr.de>; Tue, 31 Aug 2021 17:28:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239190AbhHaP24 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 Aug 2021 11:28:56 -0400
Received: from so254-9.mailgun.net ([198.61.254.9]:34269 "EHLO
        so254-9.mailgun.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239120AbhHaP2w (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 Aug 2021 11:28:52 -0400
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org; q=dns/txt;
 s=smtp; t=1630423677; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=scuK1ehy5HtupVmZPQITLXq3WGLemHWuLYY7u5ziWo0=;
 b=AG/p6jyCNt7PXYrFNjgDF734ukwnR8pu73FUnkwcpCPlYNoa+9HIpIB61VJEbVV9wNzDMyPG
 trKRWAGfHJRX+vJk3E9W0+4jx8cwMlKQWdacIyNHKxXN5AWBy5fa6P9ZC6wHiHhKyszP2+a8
 QX1d5MJz0CF/CDYAl9P6AGQcqhY=
X-Mailgun-Sending-Ip: 198.61.254.9
X-Mailgun-Sid: WyI1YmJiNiIsICJkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n06.prod.us-east-1.postgun.com with SMTP id
 612e4a5de0fcecca190b561d (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Tue, 31 Aug 2021 15:27:25
 GMT
Sender: rajpat=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
        id D3E1DC43460; Tue, 31 Aug 2021 15:27:24 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
        aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=2.0 tests=ALL_TRUSTED,BAYES_00
        autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
        (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: rajpat)
        by smtp.codeaurora.org (Postfix) with ESMTPSA id C044FC4338F;
        Tue, 31 Aug 2021 15:27:22 +0000 (UTC)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date:   Tue, 31 Aug 2021 20:57:22 +0530
From:   rajpat@codeaurora.org
To:     Matthias Kaehlcke <mka@chromium.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, rnayak@codeaurora.org,
        saiprakash.ranjan@codeaurora.org, msavaliy@qti.qualcomm.com,
        skakit@codeaurora.org, sboyd@kernel.org
Subject: Re: [PATCH V6 4/7] arm64: dts: sc7280: Update QUPv3 UART5 DT node
In-Reply-To: <YSgBOP/hMob3Ff+4@google.com>
References: <1629983731-10595-1-git-send-email-rajpat@codeaurora.org>
 <1629983731-10595-5-git-send-email-rajpat@codeaurora.org>
 <YSgBOP/hMob3Ff+4@google.com>
Message-ID: <c4ec1824d9bc36499cea0cc2d1f56415@codeaurora.org>
X-Sender: rajpat@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2021-08-27 02:31, Matthias Kaehlcke wrote:
> On Thu, Aug 26, 2021 at 06:45:28PM +0530, Rajesh Patil wrote:
>> From: Roja Rani Yarubandi <rojay@codeaurora.org>
>> 
>> Update the compatible string as "qcom,geni-uart".
>> Add interconnects and power-domains. Split the pinctrl
>> functions and correct the gpio pins.
> 
> You could say that uart5 was formerly treated as special
> (dedicated debug uart) and that the change removes this
> specialness and makes it look like any other UART.
> 

Okay

>> split the pinctrl functions to match with SoC dt
> 
> The message should say that this is about the 7280-idp
> 
>> Signed-off-by: Roja Rani Yarubandi <rojay@codeaurora.org>
>> Signed-off-by: Rajesh Patil <rajpat@codeaurora.org>
> 
> The change itself looks good to me, the above are only nits to improve
> the commit message, so:
> 
> Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
