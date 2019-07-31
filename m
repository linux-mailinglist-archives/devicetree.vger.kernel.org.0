Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 980157C471
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2019 16:11:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728483AbfGaOLF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Jul 2019 10:11:05 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:53900 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729121AbfGaOLF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Jul 2019 10:11:05 -0400
Received: by mail-wm1-f67.google.com with SMTP id x15so61008674wmj.3
        for <devicetree@vger.kernel.org>; Wed, 31 Jul 2019 07:11:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=DaSfQVSBloP6ituQwd3gN2sNQYfvnC2s71RqutisBq0=;
        b=Pn45YGzOCoqVPj5ruMllJckodlhVBmgzWrH3x/e0USvGBmmg4/Ju4GVTO3/dRSpBTY
         576PmDDVUKYSxfaA1m94qhQ8UbmUNa4NfL1mXsG4Cq5I/yz4KkQozkzA+tTJ5oyrS9a5
         wahvQMETUJkBFk2+TS9+O3vcsd4sB1rUI5rgIBWJvS6kGoYyzNBRtoOh/brUuKjLVgqb
         lJkOws6k7U0nPUeGV0XD+Cc9eDsiWdIXbue+NdiSajyLETAOv5J2/b38B0MNu0VMg1ss
         pRO70fcoPMvX0eHH4aQKvcl9z9u4yPd3QOFBhz23Zxc8o6UX+WAxo7JKNb4ZvLBDrnWr
         m9Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=DaSfQVSBloP6ituQwd3gN2sNQYfvnC2s71RqutisBq0=;
        b=B488AzToOgM93KyC19Ppo6DMzbxL975D+IMdDk4kqcNdVqiTyOoXpTmPW4tEN1qlo6
         aNxMY3Z4ilaTBWYyKiflEsUis6vxLvi5xsPjv86QS5Xawv/WBa5mqPU19UMeepkHEnCB
         iG/26+5AjAbpu1jQoUnIETyHQSBfdzaMliqarF/jc51xxrPpD6VEMXrz53lDXx+ouOfI
         eL1FgC05259BWAWvqdEpyDcTP2h8gGaRcG5o78GmXcgTRxQCoV3Vtgy44MAzI+eWtHX9
         qqB39E15epHm5o4QjiRrglS5WElHqeB9MuqxOO4e7QDfSl1TuMeHSqbjsTsthTOM0+01
         Je1A==
X-Gm-Message-State: APjAAAWU5CKIt0nvUwDz5HU9i5k/FxnQp9HEWu35689Mjz0EiDhA1l3v
        d4kBP1Xv/0TZuNbQ2wfluw32NA==
X-Google-Smtp-Source: APXvYqw/pUX7GShISMzCbUQtESxSOCGVNvngtydQFUT3NN7ACbQtiRIRf1AbgIrVwpXKDn1FZaNSkQ==
X-Received: by 2002:a05:600c:34d:: with SMTP id u13mr85321496wmd.48.1564582262533;
        Wed, 31 Jul 2019 07:11:02 -0700 (PDT)
Received: from [192.168.1.6] (19.red-176-86-136.dynamicip.rima-tde.net. [176.86.136.19])
        by smtp.gmail.com with ESMTPSA id a81sm71773684wmh.3.2019.07.31.07.11.00
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Jul 2019 07:11:01 -0700 (PDT)
Subject: Re: [PATCH v3 02/14] mbox: qcom: add APCS child device for QCS404
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     sboyd@kernel.org, david.brown@linaro.org, jassisinghbrar@gmail.com,
        mark.rutland@arm.com, mturquette@baylibre.com, robh+dt@kernel.org,
        will.deacon@arm.com, arnd@arndb.de, horms+renesas@verge.net.au,
        heiko@sntech.de, sibis@codeaurora.org,
        enric.balletbo@collabora.com, jagan@amarulasolutions.com,
        olof@lixom.net, vkoul@kernel.org, niklas.cassel@linaro.org,
        georgi.djakov@linaro.org, amit.kucheria@linaro.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, khasim.mohammed@linaro.org
References: <20190625164733.11091-1-jorge.ramirez-ortiz@linaro.org>
 <20190625164733.11091-3-jorge.ramirez-ortiz@linaro.org>
 <20190711144424.GD7234@tuxbook-pro>
From:   Jorge Ramirez <jorge.ramirez-ortiz@linaro.org>
Message-ID: <5111bc6e-4155-e99e-71b2-1aac3610b71e@linaro.org>
Date:   Wed, 31 Jul 2019 16:10:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <20190711144424.GD7234@tuxbook-pro>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 7/11/19 16:44, Bjorn Andersson wrote:
> On Tue 25 Jun 09:47 PDT 2019, Jorge Ramirez-Ortiz wrote:
> 
>> There is clock controller functionality in the APCS hardware block of
>> qcs404 devices similar to msm8916.
>>
>> Co-developed-by: Niklas Cassel <niklas.cassel@linaro.org>
>> Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
>> Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
>> ---
>>  drivers/mailbox/qcom-apcs-ipc-mailbox.c | 18 ++++++++++--------
>>  1 file changed, 10 insertions(+), 8 deletions(-)
>>
>> diff --git a/drivers/mailbox/qcom-apcs-ipc-mailbox.c b/drivers/mailbox/qcom-apcs-ipc-mailbox.c
>> index 705e17a5479c..a05dc3aabac7 100644
>> --- a/drivers/mailbox/qcom-apcs-ipc-mailbox.c
>> +++ b/drivers/mailbox/qcom-apcs-ipc-mailbox.c
>> @@ -89,16 +89,18 @@ static int qcom_apcs_ipc_probe(struct platform_device *pdev)
>>  		return ret;
>>  	}
>>  
>> -	if (of_device_is_compatible(np, "qcom,msm8916-apcs-kpss-global")) {
>> -		apcs->clk = platform_device_register_data(&pdev->dev,
>> -							  "qcom-apcs-msm8916-clk",
>> -							  -1, NULL, 0);
>> -		if (IS_ERR(apcs->clk))
>> -			dev_err(&pdev->dev, "failed to register APCS clk\n");
>> -	}
>> -
>>  	platform_set_drvdata(pdev, apcs);
>>  
>> +	if (!of_device_is_compatible(np, "qcom,msm8916-apcs-kpss-global") &&
>> +	    !of_device_is_compatible(np, "qcom,qcs404-apcs-apps-global"))
> 
> If the remainder of the function was a long snippet I think this would
> motivate the somewhat unusual early return. But I think it would be
> cleaner to just add to the existing conditional.

sure can do that. I dont agree (I wouldnt have bothered otherwise :))
but will do

> 
> Regards,
> Bjorn
> 
>> +		return 0;
>> +
>> +	apcs->clk = platform_device_register_data(&pdev->dev,
>> +						  "qcom-apcs-msm8916-clk",
>> +						  -1, NULL, 0);
>> +	if (IS_ERR(apcs->clk))
>> +		dev_err(&pdev->dev, "failed to register APCS clk\n");
>> +
>>  	return 0;
>>  }
>>  
>> -- 
>> 2.21.0
>>
> 

