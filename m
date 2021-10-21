Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A5743435E02
	for <lists+devicetree@lfdr.de>; Thu, 21 Oct 2021 11:31:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231433AbhJUJdQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Oct 2021 05:33:16 -0400
Received: from so254-9.mailgun.net ([198.61.254.9]:19176 "EHLO
        so254-9.mailgun.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231342AbhJUJdQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Oct 2021 05:33:16 -0400
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org; q=dns/txt;
 s=smtp; t=1634808660; h=Content-Transfer-Encoding: Content-Type:
 In-Reply-To: MIME-Version: Date: Message-ID: From: References: Cc: To:
 Subject: Sender; bh=LyEljRzq20zyjgTb+KieaG9lnuNsnLFhT3UsE8DSeY0=; b=cmcK8g0cimcFqAdnEmlbkw6E9AnGbvQJRpBPcMpdN4lylxymke770GltUZv8QoOOe3LAv9a4
 tMZAtQu2dLljpcGKcV32cjc9U3tI36bvyp1tGOOwZ+UNFFiEo0JXq6Kti/ElNRFsW1mLnYuJ
 iAG4ranRLZx3XkC9SK6F4zXi+bI=
X-Mailgun-Sending-Ip: 198.61.254.9
X-Mailgun-Sid: WyI1YmJiNiIsICJkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n04.prod.us-east-1.postgun.com with SMTP id
 6171334d59612e0100b09bd0 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Thu, 21 Oct 2021 09:30:53
 GMT
Sender: mkshah=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
        id C7E37C43619; Thu, 21 Oct 2021 09:30:52 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
        aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.8 required=2.0 tests=ALL_TRUSTED,BAYES_00,
        NICE_REPLY_A,SPF_FAIL autolearn=unavailable autolearn_force=no version=3.4.0
Received: from [192.168.43.137] (unknown [27.61.145.99])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: mkshah)
        by smtp.codeaurora.org (Postfix) with ESMTPSA id 7B6C0C43460;
        Thu, 21 Oct 2021 09:30:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 smtp.codeaurora.org 7B6C0C43460
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=fail smtp.mailfrom=codeaurora.org
Subject: Re: [PATCH 3/3] arm64: dts: qcom: msm8916: Add RPM sleep stats
To:     Stephan Gerhold <stephan@gerhold.net>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht
References: <20211018110803.32777-1-stephan@gerhold.net>
 <20211018110803.32777-4-stephan@gerhold.net>
From:   Maulik Shah <mkshah@codeaurora.org>
Message-ID: <574ae713-a620-e362-a801-7959eb61550d@codeaurora.org>
Date:   Thu, 21 Oct 2021 15:00:46 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211018110803.32777-4-stephan@gerhold.net>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

Reviewed-by: Maulik Shah <mkshah@codeaurora.org>

Thanks,
Maulik

On 10/18/2021 4:38 PM, Stephan Gerhold wrote:
> MSM8916 is similar to the other SoCs that had the RPM stats node added
> in commit 290bc6846547 ("arm64: dts: qcom: Enable RPM Sleep stats").
> However, the dynamic offset readable at 0x14 seems only available on
> some of the newer firmware versions. To be absolutely sure, make use
> of the new qcom,rpm-legacy-stats compatible that reads the sleep stats
> from a fixed offset of 0xdba0.
> 
> Statistics are available for a "vmin" and "xosd" low power mode:
> 
> $ cat /sys/kernel/debug/qcom_stats/vmin
> Count: 0
> Last Entered At: 0
> Last Exited At: 0
> Accumulated Duration: 0
> Client Votes: 0x0
> $ cat /sys/kernel/debug/qcom_stats/xosd
> Count: 0
> Last Entered At: 0
> Last Exited At: 0
> Accumulated Duration: 0
> Client Votes: 0x0
> 
> Cc: Maulik Shah <mkshah@codeaurora.org>
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
> ---
>   arch/arm64/boot/dts/qcom/msm8916.dtsi | 5 +++++
>   1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
> index 43464ac64f3e..99f7999aad2d 100644
> --- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
> @@ -445,6 +445,11 @@ rpm_msg_ram: sram@60000 {
>   			reg = <0x00060000 0x8000>;
>   		};
>   
> +		sram@290000 {
> +			compatible = "qcom,rpm-legacy-stats";
> +			reg = <0x00290000 0x10000>;
> +		};
> +
>   		bimc: interconnect@400000 {
>   			compatible = "qcom,msm8916-bimc";
>   			reg = <0x00400000 0x62000>;
> 

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a 
member of Code Aurora Forum, hosted by The Linux Foundation
