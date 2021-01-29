Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 55AA83088B9
	for <lists+devicetree@lfdr.de>; Fri, 29 Jan 2021 13:00:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232447AbhA2L7Q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Jan 2021 06:59:16 -0500
Received: from a1.mail.mailgun.net ([198.61.254.60]:12752 "EHLO
        a1.mail.mailgun.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232039AbhA2L5L (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Jan 2021 06:57:11 -0500
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org; q=dns/txt;
 s=smtp; t=1611921234; h=In-Reply-To: Content-Type: MIME-Version:
 References: Message-ID: Subject: Cc: To: From: Date: Sender;
 bh=5AabeFLj+R2/kUqGBVgyCe3CiNQ0rCCGgoMltFDsJ10=; b=pHRXFG4nX3pTQbc/YKjI5GHjiAOKtI/GhfRz/m0DGo0jd1Nv5PrvXAOrH/C8sXMnPMjY39Nu
 3+PCJUL5UbXelkwM4Ckq/lp7XKSP5+ltRAIyxBz/1/yiTKRsZjHbrFhPM6CvHeO6RpqnHz19
 HwwWIGlAE2EZpKdCzSjxAjTUVNM=
X-Mailgun-Sending-Ip: 198.61.254.60
X-Mailgun-Sid: WyI1YmJiNiIsICJkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n02.prod.us-east-1.postgun.com with SMTP id
 6013d448bcde41216200dc17 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 29 Jan 2021 09:24:24
 GMT
Sender: jackp=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
        id E81E4C433ED; Fri, 29 Jan 2021 09:24:23 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
        aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=2.0 tests=ALL_TRUSTED,BAYES_00,SPF_FAIL,
        URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from jackp-linux.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: jackp)
        by smtp.codeaurora.org (Postfix) with ESMTPSA id BDBEBC433CA;
        Fri, 29 Jan 2021 09:24:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org BDBEBC433CA
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=fail smtp.mailfrom=jackp@codeaurora.org
Date:   Fri, 29 Jan 2021 01:24:18 -0800
From:   Jack Pham <jackp@codeaurora.org>
To:     Wesley Cheng <wcheng@codeaurora.org>
Cc:     agross@kernel.org, bjorn.andersson@linaro.org, balbi@kernel.org,
        gregkh@linuxfoundation.org, robh+dt@kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v7 4/5] usb: dwc3: dwc3-qcom: Enable tx-fifo-resize
 property by default
Message-ID: <20210129092418.GA1879@jackp-linux.qualcomm.com>
References: <1611895604-4496-1-git-send-email-wcheng@codeaurora.org>
 <1611895604-4496-5-git-send-email-wcheng@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1611895604-4496-5-git-send-email-wcheng@codeaurora.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Wesley,

On Thu, Jan 28, 2021 at 08:46:43PM -0800, Wesley Cheng wrote:
> In order to take advantage of the TX fifo resizing logic, manually add
> these properties to the DWC3 child node by default.  This will allow
> the DWC3 gadget to resize the TX fifos for the IN endpoints, which
> help with performance.
> 
> Signed-off-by: Wesley Cheng <wcheng@codeaurora.org>
> ---
>  drivers/usb/dwc3/dwc3-qcom.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/drivers/usb/dwc3/dwc3-qcom.c b/drivers/usb/dwc3/dwc3-qcom.c
> index d803ee9..4ea6be3 100644
> --- a/drivers/usb/dwc3/dwc3-qcom.c
> +++ b/drivers/usb/dwc3/dwc3-qcom.c
> @@ -564,6 +564,7 @@ static int dwc3_qcom_clk_init(struct dwc3_qcom *qcom, int count)
>  
>  static const struct property_entry dwc3_qcom_acpi_properties[] = {
>  	PROPERTY_ENTRY_STRING("dr_mode", "host"),
> +	PROPERTY_ENTRY_BOOL("tx-fifo-resize"),
>  	{}
>  };
>  
> @@ -634,6 +635,7 @@ static int dwc3_qcom_of_register_core(struct platform_device *pdev)
>  	struct dwc3_qcom	*qcom = platform_get_drvdata(pdev);
>  	struct device_node	*np = pdev->dev.of_node, *dwc3_np;
>  	struct device		*dev = &pdev->dev;
> +	struct property		*prop;
>  	int			ret;
>  
>  	dwc3_np = of_get_child_by_name(np, "dwc3");
> @@ -642,6 +644,14 @@ static int dwc3_qcom_of_register_core(struct platform_device *pdev)
>  		return -ENODEV;
>  	}
>  
> +	prop = kzalloc(sizeof(*prop), GFP_KERNEL);
> +	if (prop) {
> +		prop->name = "tx-fifo-resize";
> +		ret = of_add_property(dwc3_np, prop);
> +		if (ret < 0)
> +			dev_info(dev, "unable to add tx-fifo-resize prop\n");

You'll need to kfree(prop) both in case of error here as well as in the
driver's .remove() callback. Maybe easier to devm_kzalloc()?

Jack
