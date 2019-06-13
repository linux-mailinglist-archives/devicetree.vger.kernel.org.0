Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DC7E944E7F
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2019 23:32:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726817AbfFMVcE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jun 2019 17:32:04 -0400
Received: from mail-pg1-f196.google.com ([209.85.215.196]:41046 "EHLO
        mail-pg1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726734AbfFMVcD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jun 2019 17:32:03 -0400
Received: by mail-pg1-f196.google.com with SMTP id 83so229619pgg.8
        for <devicetree@vger.kernel.org>; Thu, 13 Jun 2019 14:32:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ymOhlE+xa8t9JEEo9mNLV0I7BKApQL/CgsnjJcqWwnw=;
        b=W7F7meZmql+xmtsD6F8SeYXfmxj4ZMwphRvRIL3/3538NCpxSWiZbIScibSMYMBClF
         9ZGzcXlTIwjfTBg1NNgdVmrxiYNF1mDviKz8tX5gCGLknHfBAAjIjMngemnFdqAyFK0B
         Qe+6JV19LSXJFv4BG/z5tqga5W5pCLU1LddMNWJ4WkSkhuf4Xe2UvdM08TY4hrOCQbyq
         DGM8YDtQnyx2mUWyloVjyrMlita6lJzKoRW7Zeos5GwWM5i5dkC9CopLZE+vRxpGUKY8
         7x28RrnXLWlKu+Re0A+TdMVOpqmFma0pRY4uJUHSDhXgY8SNQUyP8xhoIRWLP5K231yj
         DHUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ymOhlE+xa8t9JEEo9mNLV0I7BKApQL/CgsnjJcqWwnw=;
        b=chSJlNTUMcLjtjWF3QdCCTRtQ5Z0k1VgxBUwXmkeycA94xiQi0xB2fwmm6iLWmRZfw
         lmjWBWy7kUADwPoI6OC/wIL9RsUifY4Rvsa+aqptJFLwHPdu76GrPKbNBsDtX1KpUWha
         SB2n2cqSmNuXK+55Im8gjIllIIYZUPBBon9LPNF/EnlNZJAlFCj5z0HoWmOWQoi68rAZ
         DLGYTlSM7mW3r45rAp7+CXo3b2DP2rxoZRCQ4eJ1upYxgAdFb/lBWsZ3R98LLDdnWkzy
         t26TUQOIYsg/g0IGEOiPnjg7fP9zAO1RVXPE/aGj9OjY7LeSHqOBV1roIFK4PV5kTXqK
         v4Hw==
X-Gm-Message-State: APjAAAWatIHgXRxFqcHtVpovUHNscSyFfSNZlL3sDJg44cYRcDL+F5U0
        wYc5lrnOJ1DHd7SPNIVnVJVisQ==
X-Google-Smtp-Source: APXvYqzGurJ91Zfd3l/UxqC3ptIHpGeO+A3L5IahoXBkAOKagO0xBVne2G0CxYJHJVoRCx57eCns/A==
X-Received: by 2002:a63:5207:: with SMTP id g7mr31497760pgb.356.1560461522867;
        Thu, 13 Jun 2019 14:32:02 -0700 (PDT)
Received: from minitux (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id 23sm574395pfn.176.2019.06.13.14.32.01
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 13 Jun 2019 14:32:02 -0700 (PDT)
Date:   Thu, 13 Jun 2019 14:32:00 -0700
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
Cc:     lgirdwood@gmail.com, broonie@kernel.org, agross@kernel.org,
        robh+dt@kernel.org, mark.rutland@arm.com,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v4 2/7] regulator: qcom_spmi: Refactor get_mode/set_mode
Message-ID: <20190613213200.GC4814@minitux>
References: <20190613212436.6940-1-jeffrey.l.hugo@gmail.com>
 <20190613212531.10452-1-jeffrey.l.hugo@gmail.com>
 <20190613212531.10452-2-jeffrey.l.hugo@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190613212531.10452-2-jeffrey.l.hugo@gmail.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu 13 Jun 14:25 PDT 2019, Jeffrey Hugo wrote:

> spmi_regulator_common_get_mode and spmi_regulator_common_set_mode use
> multi-level ifs which mirror a switch statement.  Refactor to use a switch
> statement to make the code flow more clear.
> 

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> Signed-off-by: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
> ---
>  drivers/regulator/qcom_spmi-regulator.c | 26 +++++++++++++++++--------
>  1 file changed, 18 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/regulator/qcom_spmi-regulator.c b/drivers/regulator/qcom_spmi-regulator.c
> index 42c429d50743..1b3383a24c9d 100644
> --- a/drivers/regulator/qcom_spmi-regulator.c
> +++ b/drivers/regulator/qcom_spmi-regulator.c
> @@ -911,13 +911,16 @@ static unsigned int spmi_regulator_common_get_mode(struct regulator_dev *rdev)
>  
>  	spmi_vreg_read(vreg, SPMI_COMMON_REG_MODE, &reg, 1);
>  
> -	if (reg & SPMI_COMMON_MODE_HPM_MASK)
> -		return REGULATOR_MODE_NORMAL;
> +	reg &= SPMI_COMMON_MODE_HPM_MASK | SPMI_COMMON_MODE_AUTO_MASK;
>  
> -	if (reg & SPMI_COMMON_MODE_AUTO_MASK)
> +	switch (reg) {
> +	case SPMI_COMMON_MODE_HPM_MASK:
> +		return REGULATOR_MODE_NORMAL;
> +	case SPMI_COMMON_MODE_AUTO_MASK:
>  		return REGULATOR_MODE_FAST;
> -
> -	return REGULATOR_MODE_IDLE;
> +	default:
> +		return REGULATOR_MODE_IDLE;
> +	}
>  }
>  
>  static int
> @@ -925,12 +928,19 @@ spmi_regulator_common_set_mode(struct regulator_dev *rdev, unsigned int mode)
>  {
>  	struct spmi_regulator *vreg = rdev_get_drvdata(rdev);
>  	u8 mask = SPMI_COMMON_MODE_HPM_MASK | SPMI_COMMON_MODE_AUTO_MASK;
> -	u8 val = 0;
> +	u8 val;
>  
> -	if (mode == REGULATOR_MODE_NORMAL)
> +	switch (mode) {
> +	case REGULATOR_MODE_NORMAL:
>  		val = SPMI_COMMON_MODE_HPM_MASK;
> -	else if (mode == REGULATOR_MODE_FAST)
> +		break;
> +	case REGULATOR_MODE_FAST:
>  		val = SPMI_COMMON_MODE_AUTO_MASK;
> +		break;
> +	default:
> +		val = 0;
> +		break;
> +	}
>  
>  	return spmi_vreg_update_bits(vreg, SPMI_COMMON_REG_MODE, val, mask);
>  }
> -- 
> 2.17.1
> 
