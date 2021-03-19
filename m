Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BEE6834170F
	for <lists+devicetree@lfdr.de>; Fri, 19 Mar 2021 09:04:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234266AbhCSIDs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 Mar 2021 04:03:48 -0400
Received: from m43-7.mailgun.net ([69.72.43.7]:37398 "EHLO m43-7.mailgun.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S233819AbhCSIDi (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 19 Mar 2021 04:03:38 -0400
X-Greylist: delayed 304 seconds by postgrey-1.27 at vger.kernel.org; Fri, 19 Mar 2021 04:03:37 EDT
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org; q=dns/txt;
 s=smtp; t=1616141017; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=kD7K9DxiFtQmfNrBA8zK6PDJ0b7lDWc1ajG5OkI+uAE=;
 b=oC10TBmQj8zcy2ldP4JFZnDcCJ7KMAiIgUeJiaJgSOY2fM5BjT/mWtRRjmKH2cNVEhh4wupX
 jFlSsIGuUfn4laAfXtEn/4wn8GEILm0oa4QK/6Ub7VwJM8KXqzixTc/4uiOqEfeJ/Wabd0cH
 MpvbJkpjcFBZDK8MgmD79kzZYIo=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyI1YmJiNiIsICJkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n05.prod.us-west-2.postgun.com with SMTP id
 6054599dc32ceb3a913d2c6e (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 19 Mar 2021 07:58:21
 GMT
Sender: skakit=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
        id 771ACC43462; Fri, 19 Mar 2021 07:58:21 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
        aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=2.0 tests=ALL_TRUSTED,BAYES_00
        autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
        (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: skakit)
        by smtp.codeaurora.org (Postfix) with ESMTPSA id 1135FC433CA;
        Fri, 19 Mar 2021 07:58:21 +0000 (UTC)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date:   Fri, 19 Mar 2021 13:28:21 +0530
From:   skakit@codeaurora.org
To:     Matthias Kaehlcke <mka@chromium.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, rnayak@codeaurora.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, kgunda@codeaurora.org,
        David Collins <collinsd@codeaurora.org>
Subject: Re: [PATCH V2 4/5] dt-bindings: regulator: Convert regulator bindings
 to YAML format
In-Reply-To: <YFD9T3fvPPBVj3pc@google.com>
References: <1615816454-1733-1-git-send-email-skakit@codeaurora.org>
 <1615816454-1733-5-git-send-email-skakit@codeaurora.org>
 <YFD9T3fvPPBVj3pc@google.com>
Message-ID: <ac23f0a5d125e599b7b586cbf0d940dc@codeaurora.org>
X-Sender: skakit@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2021-03-17 00:17, Matthias Kaehlcke wrote:
> Subject: dt-bindings: regulator: Convert regulator bindings to YAML 
> format
> 
> Make sure to mention that this is about the RPMh regulators, not the
> general regulator binding which was already converted.
> 

Okay, will change the commit message.
