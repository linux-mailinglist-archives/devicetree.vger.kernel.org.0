Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0A401337A47
	for <lists+devicetree@lfdr.de>; Thu, 11 Mar 2021 18:01:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229552AbhCKRAd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Mar 2021 12:00:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35588 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229711AbhCKRAW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Mar 2021 12:00:22 -0500
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com [IPv6:2607:f8b0:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2EBFDC061574
        for <devicetree@vger.kernel.org>; Thu, 11 Mar 2021 09:00:22 -0800 (PST)
Received: by mail-ot1-x32e.google.com with SMTP id b8so2109860oti.7
        for <devicetree@vger.kernel.org>; Thu, 11 Mar 2021 09:00:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=opGBE+10vyFaw9yXptg7nxWBvuTnyAQM8hdaMx9w63c=;
        b=brsWF+hhAjGXFFBDF/+wE9hkQEfxCxVG9WwxUYGy0YrIruOCy/gpJr1OTPPPQp6TFX
         pimPD/7tOSiiErUv0ZHaOzqZH7N17QLIqjEbQMh4YjgkVe7i4GfcXScqpisWEe51wGCe
         szgDZvd8S2j6aEQ3W+xcFs9PlC0JkJtK0t0Geq/Y/lE0LVyzwrTtZwcs/uEwrwBXEYZn
         awU/zYxTi79Hyp5BOftlNMELaOgbldq3DXkUuVd3wmUxmuAGyZFr2hXDw3S0rO0EWKFT
         OPmXNgmIbZ2CTq0FjvRIRA47m7fmieCHb3QtXRy4le1tr0A78eyFwC2WArzrTwcdTx0N
         2/3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=opGBE+10vyFaw9yXptg7nxWBvuTnyAQM8hdaMx9w63c=;
        b=cXSzea8AbBT9Y3qqf0jmW5KZHmo4onxNJqYwQQXxscEwX1MiqewlIBWdrf15+2zMWo
         oiUUfbH+3iqNYNlrfwQZGz4r9b766P84/7DndnzhNaJUoBBcDAotQscNHUj0Y0NAi5r5
         FrGGA+QmrfjGFUjB5hNDthcuf9vNr0dDeQLTr3uin6YmQ8DVKZ7CTHZbitGSJKVy0XZ4
         v/g6exVi1mTvnBzpveUrTln5RR/33YjS3lLWtwWmbVAJkZWehUasv3ggYoYr+r0BWnC0
         WU8Dbu9W1g39qVtS34BrhVKiuJh9yJEr9+HT2evpGvZsw34UjRm512/aoy+UZYhrdmUc
         1Slw==
X-Gm-Message-State: AOAM5331vEhXlGZ1HwVlMyGGHbvGgzizRHEgFPO/sQhSoldXz7etMey7
        nhlClAUfqTIPw6ogyo9SEuSOiw==
X-Google-Smtp-Source: ABdhPJxb/Ex4VAjYa21hjLYf0d1Ge004JUzrWfI/sBuWi06jxYSkVf7WHk4QVjENxnVkm0u/bx0vZw==
X-Received: by 2002:a9d:7f1a:: with SMTP id j26mr7543565otq.244.1615482019502;
        Thu, 11 Mar 2021 09:00:19 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id k9sm757214ots.24.2021.03.11.09.00.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Mar 2021 09:00:18 -0800 (PST)
Date:   Thu, 11 Mar 2021 11:00:16 -0600
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     satya priya <skakit@codeaurora.org>
Cc:     Alessandro Zummo <a.zummo@towertech.it>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Lee Jones <lee.jones@linaro.org>, linux-rtc@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, kgunda@codeaurora.org
Subject: Re: [PATCH 1/3] rtc: pm8xxx: Add RTC support for PMIC PMK8350
Message-ID: <YEpMoP5Efk19YJAA@builder.lan>
References: <1615447798-6959-1-git-send-email-skakit@codeaurora.org>
 <1615447798-6959-2-git-send-email-skakit@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1615447798-6959-2-git-send-email-skakit@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu 11 Mar 01:29 CST 2021, satya priya wrote:

> Add the comaptible string for PMIC PMK8350.
> 

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

> Signed-off-by: satya priya <skakit@codeaurora.org>
> ---
>  drivers/rtc/rtc-pm8xxx.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/drivers/rtc/rtc-pm8xxx.c b/drivers/rtc/rtc-pm8xxx.c
> index eb20659..29a1c65 100644
> --- a/drivers/rtc/rtc-pm8xxx.c
> +++ b/drivers/rtc/rtc-pm8xxx.c
> @@ -445,6 +445,16 @@ static const struct pm8xxx_rtc_regs pm8941_regs = {
>  	.alarm_en	= BIT(7),
>  };
>  
> +static const struct pm8xxx_rtc_regs pmk8350_regs = {
> +	.ctrl		= 0x6146,
> +	.write		= 0x6140,
> +	.read		= 0x6148,
> +	.alarm_rw	= 0x6240,
> +	.alarm_ctrl	= 0x6246,
> +	.alarm_ctrl2	= 0x6248,
> +	.alarm_en	= BIT(7),
> +};
> +
>  /*
>   * Hardcoded RTC bases until IORESOURCE_REG mapping is figured out
>   */
> @@ -453,6 +463,7 @@ static const struct of_device_id pm8xxx_id_table[] = {
>  	{ .compatible = "qcom,pm8018-rtc", .data = &pm8921_regs },
>  	{ .compatible = "qcom,pm8058-rtc", .data = &pm8058_regs },
>  	{ .compatible = "qcom,pm8941-rtc", .data = &pm8941_regs },
> +	{ .compatible = "qcom,pmk8350-rtc", .data = &pmk8350_regs },
>  	{ },
>  };
>  MODULE_DEVICE_TABLE(of, pm8xxx_id_table);
> -- 
> QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member 
> of Code Aurora Forum, hosted by The Linux Foundation
> 
