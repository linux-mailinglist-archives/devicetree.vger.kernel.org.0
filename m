Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C013726207F
	for <lists+devicetree@lfdr.de>; Tue,  8 Sep 2020 22:12:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731057AbgIHUMT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Sep 2020 16:12:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730114AbgIHPLR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Sep 2020 11:11:17 -0400
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com [IPv6:2607:f8b0:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4D55C08C5ED
        for <devicetree@vger.kernel.org>; Tue,  8 Sep 2020 08:11:08 -0700 (PDT)
Received: by mail-pf1-x444.google.com with SMTP id k15so11173245pfc.12
        for <devicetree@vger.kernel.org>; Tue, 08 Sep 2020 08:11:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=DqQzdsNyVZxQfTKZQ3YstL3rPQCUat0ck3Wbh+a/dRg=;
        b=A42L4iBc1CLoIwG4vjkgmHVXssQmnn3pAMqht8EDGn5jdLIp0DEMm5fr4fRpNNZ6GB
         cYpBWQkG770jRLy7OaKNz1ax7PjmhebIMH94oOt0oJsVF+Dwlh/vxyjmbAEUSlWYeX7j
         nrYDiolhDL3/k31KAqubdudhePJwyIK4M16TzYv5GMRUnXe56k6P77Mwl6Dvu7VEGcgq
         bEapsJBiR0hlNw0O9U16OsSNqLJc2hWQmHmQZyXyzvMHCvFZEJxBP9L4835Zv9l944bW
         h6pGAmzhouGRV/7qtqbJ86YEqHShEZKpc1wDIxcNthdw4Kb+uUMDhUZ4ixEXFRS0sHq7
         pWog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=DqQzdsNyVZxQfTKZQ3YstL3rPQCUat0ck3Wbh+a/dRg=;
        b=Lq8k7xHFVtQN3R2BxUme+qkqX7uX5KQM7guYYi8ONzLrOoGKDu3mdchVzYMT8+R62n
         AmAxDA8C5CG+LLMVqfSYyKRO3moDJnV0F9U6pnxhYvs78M6Cy9xtzoUWPcsz0+b+ZxTd
         MfvWDfJ/T2jFchB/2IXj6Wkfk0Mz9PE0hsa57f6fHQj6WmonW5nexZD5M5ZLLrNDJuGD
         HN6yEvfQswhMg73n30+q6iG3woT8PuXYzWM30Br4F3CrZkpfYvvaVZnH5H9RsUZWcvHr
         ZQ18EYqMVh3S3bE0Ih862HjFx3XqT2RU3CoqttiXqmPEp6kvnyS1/RVaKz/8A4xIyC2K
         YrUQ==
X-Gm-Message-State: AOAM531+TQjBT8oYqEZm8dvUVAW0ZdEAtr/cVOPpiFOAGkp9Anj7O8/B
        jXoLy8j8/tUb08o5hM0oG3s+
X-Google-Smtp-Source: ABdhPJygg2wc2pJ6EFNe7SN5QXwBrjuD9HtWHBZlXZcCYsz145npyX1ctKgCmabtN4zCr836QQoSxA==
X-Received: by 2002:aa7:9201:0:b029:13e:d13d:a10c with SMTP id 1-20020aa792010000b029013ed13da10cmr1456521pfo.40.1599577868308;
        Tue, 08 Sep 2020 08:11:08 -0700 (PDT)
Received: from mani-NUC7i5DNKE ([2409:4072:6213:6149:cb0:8a44:a6a5:e3bd])
        by smtp.gmail.com with ESMTPSA id t25sm15461220pgn.13.2020.09.08.08.11.03
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 08 Sep 2020 08:11:07 -0700 (PDT)
Date:   Tue, 8 Sep 2020 20:40:58 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     rjw@rjwysocki.net, viresh.kumar@linaro.org, robh+dt@kernel.org,
        agross@kernel.org, amitk@kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, dmitry.baryshkov@linaro.org,
        tdas@codeaurora.org
Subject: Re: [PATCH 1/7] dt-bindings: cpufreq: cpufreq-qcom-hw: Document
 SM8250 compatible
Message-ID: <20200908151050.GC2352@mani-NUC7i5DNKE>
References: <20200908075716.30357-1-manivannan.sadhasivam@linaro.org>
 <20200908075716.30357-2-manivannan.sadhasivam@linaro.org>
 <20200908145819.GN3715@yoga>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200908145819.GN3715@yoga>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 0908, Bjorn Andersson wrote:
> On Tue 08 Sep 02:57 CDT 2020, Manivannan Sadhasivam wrote:
> 
> > Document the SM8250 SoC specific compatible for Qualcomm Cpufreq HW. The
> > hardware block which carries out CPUFreq operations on SM8250 SoC is
> > called EPSS.
> > 
> > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> 
> Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> 
> Please follow up, after this has been accepted, with a conversion of
> this binding to yaml.
> 

Sure.

Thanks,
Mani

> Regards,
> Bjorn
> 
> > ---
> >  Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.txt | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.txt b/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.txt
> > index 33856947c561..aea4ddb2b9e8 100644
> > --- a/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.txt
> > +++ b/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.txt
> > @@ -8,7 +8,7 @@ Properties:
> >  - compatible
> >  	Usage:		required
> >  	Value type:	<string>
> > -	Definition:	must be "qcom,cpufreq-hw".
> > +	Definition:	must be "qcom,cpufreq-hw" or "qcom,sm8250-epss".
> >  
> >  - clocks
> >  	Usage:		required
> > -- 
> > 2.17.1
> > 
