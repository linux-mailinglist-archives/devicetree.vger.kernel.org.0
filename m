Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 02E6B395A2D
	for <lists+devicetree@lfdr.de>; Mon, 31 May 2021 14:12:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231327AbhEaMNx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 May 2021 08:13:53 -0400
Received: from m43-7.mailgun.net ([69.72.43.7]:33159 "EHLO m43-7.mailgun.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231436AbhEaMNx (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 31 May 2021 08:13:53 -0400
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org; q=dns/txt;
 s=smtp; t=1622463133; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=kj0/j5b+35di4Lm+Repozi+vu/XaMEIvwlRxt8/z5/w=;
 b=fX4rCQBrmwyx7SoAOL0HCfr3O8Z1J5DGwU6MDyFx3jfL6mDavsaYq5dimWlnnojMmoC9M80s
 wrGgy+EsKyODWT93giqaTXI1LtGJFzkbtek1U+csRaYYr4MQSPxUqM4Se+LVSAfvW9plo12I
 ek6DQbDpowhjIWNZJ3OYMLaKwKA=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyI1YmJiNiIsICJkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n07.prod.us-east-1.postgun.com with SMTP id
 60b4d299265e7370f727ebc2 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Mon, 31 May 2021 12:12:09
 GMT
Sender: kathirav=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
        id E8836C4338A; Mon, 31 May 2021 12:12:08 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
        aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=2.0 tests=ALL_TRUSTED,BAYES_00,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
        (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: kathirav)
        by smtp.codeaurora.org (Postfix) with ESMTPSA id 92A9EC433F1;
        Mon, 31 May 2021 12:12:08 +0000 (UTC)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date:   Mon, 31 May 2021 17:42:08 +0530
From:   Kathiravan T <kathirav@codeaurora.org>
To:     Robert Marko <robimarko@gmail.com>
Cc:     agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: ipq8074: disable USB phy by default
In-Reply-To: <20210526150125.1816335-1-robimarko@gmail.com>
References: <20210526150125.1816335-1-robimarko@gmail.com>
Message-ID: <92bd27423bbec56881c47eea6c382f42@codeaurora.org>
X-Sender: kathirav@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2021-05-26 20:31, Robert Marko wrote:
> One of the QUSB USB PHY-s has been left enabled by
> default, this is probably just a mistake as other
> USB PHY-s are disabled by default.
> 
> It makes no sense to have it enabled by default as
> not all board implement USB ports, so disable it.
> 
> Signed-off-by: Robert Marko <robimarko@gmail.com>

Always, it is better to disable in SOC DTS and enable only in the board 
DTS files.

Reviewed-by: Kathiravan T <kathirav@codeaurora.org>

> ---
>  arch/arm64/boot/dts/qcom/ipq8074.dtsi | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq8074.dtsi
> b/arch/arm64/boot/dts/qcom/ipq8074.dtsi
> index 555a107959831..20059d0f7d714 100644
> --- a/arch/arm64/boot/dts/qcom/ipq8074.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq8074.dtsi
> @@ -286,6 +286,7 @@ qusb_phy_0: phy@79000 {
>  			clock-names = "cfg_ahb", "ref";
> 
>  			resets = <&gcc GCC_QUSB2_0_PHY_BCR>;
> +			status = "disabled";
>  		};
> 
>  		qmp_pcie_phy0: phy@84000 {

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a 
member of Code Aurora Forum, hosted by The Linux Foundation
