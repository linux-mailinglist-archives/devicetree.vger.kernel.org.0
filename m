Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 374012EF124
	for <lists+devicetree@lfdr.de>; Fri,  8 Jan 2021 12:15:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727163AbhAHLPg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Jan 2021 06:15:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52926 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727075AbhAHLPf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Jan 2021 06:15:35 -0500
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF3A0C0612F5
        for <devicetree@vger.kernel.org>; Fri,  8 Jan 2021 03:14:55 -0800 (PST)
Received: by mail-pj1-x1032.google.com with SMTP id j13so5969889pjz.3
        for <devicetree@vger.kernel.org>; Fri, 08 Jan 2021 03:14:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=iDPzHwkjsTkAD1Mw6MWGrS58dCqLiAXWEIlIfgXIsz0=;
        b=H+cAe7WRpd5OceyKAkBLVVK3lWt0NmaFOfNVrKpUD7w5kNqrFpsAuPUP8axFspVRkH
         tv/CQ38zUF3CLl4A516dqH9ZcVZtY0PO+vlU2OGdJzBG4Jytg2PK1Jc5PIVfvPIkaJ+F
         qL0aGActIFb7ShvkBEWopm+Szp+xFBspbKiUneyrwdUZBoFsZQTYdvjaPh3bfahAJzJ2
         2HpFYKteLXXN1jDKmSipRWkNPeq8l1C/cjiRPMPTR29GWAa7ZNzqCN4gywlDApcyz9DC
         CDw12P6gRhNgJEi8MCxHwnr/M3ozKycT3lqKvulsLsCUwsJi84nD/YHIypmarMV8OgXY
         RQeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=iDPzHwkjsTkAD1Mw6MWGrS58dCqLiAXWEIlIfgXIsz0=;
        b=WBpilbCIYRF/FRiCYnWax+Fsw3kSFTZl9P9L2dJwdQKQ4j4ekE/hvjCUm168aOB50E
         CYN+YoTuC6462FzKa/7etvSX3KV+lyrIaoaqadEnSpDqO+9BqIAKaS7rYsPnPIhkMQy4
         L5bsABDuGhd9xOHJ/ImHoFkgS8ZBQ3eBzt4Dkn+au8LqMrFyV5IoPW5d6DHV2oqwAebR
         9/M9UyQT4ThXO6ZQoAZVhQl/0ws0ltZzjQsmqCg2wCzB/5tajp0ZynefKkBuR6CQ0qvR
         iKu942T/BMMy1sZ1F5ag0r/IaKRJIf/51wa7ypwxypV3cKndeUlJndFCFzD43n1uEbQR
         Tc4w==
X-Gm-Message-State: AOAM532de0FvTRJWj/+AH/VAyLvWgtf5dbbGH3LNTQQyaHiRK+/38dbT
        z8PRGPm7OmZ1sAGSq7ckkORg
X-Google-Smtp-Source: ABdhPJykxqlj1kTzfUydKgsPfFlM4j0Zz+C4wHy/9kI8sjN1024WhAXsPIlo7pUMSzjC0B6pabFphw==
X-Received: by 2002:a17:902:7596:b029:da:b7a3:cdd0 with SMTP id j22-20020a1709027596b02900dab7a3cdd0mr3353005pll.14.1610104495148;
        Fri, 08 Jan 2021 03:14:55 -0800 (PST)
Received: from thinkpad ([103.77.37.188])
        by smtp.gmail.com with ESMTPSA id p22sm9635613pgk.21.2021.01.08.03.14.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Jan 2021 03:14:54 -0800 (PST)
Date:   Fri, 8 Jan 2021 16:44:48 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     Konrad Dybcio <konrad.dybcio@somainline.org>
Cc:     mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
        jassisinghbrar@gmail.com, viresh.kumar@linaro.org,
        ulf.hansson@linaro.org, bjorn.andersson@linaro.org,
        agross@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 4/5] clk: qcom: Add A7 PLL support
Message-ID: <20210108111448.GA74017@thinkpad>
References: <20210104081125.147300-1-manivannan.sadhasivam@linaro.org>
 <20210104081125.147300-5-manivannan.sadhasivam@linaro.org>
 <a880d96f-d879-52d0-48ff-cbcdb88a3f29@somainline.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a880d96f-d879-52d0-48ff-cbcdb88a3f29@somainline.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jan 04, 2021 at 04:30:11PM +0100, Konrad Dybcio wrote:
> Hi,
> 
> could you explicitly state in the probe function (or just in the driver in general, as there's not much more?) and the config structs that the target SoC is X55?
> 

The compatible says it...

> A few more SoCs (MDM9607, MSM8x26 and some others) also use what's known as "A7PLL" downstream, but all of them have a separate configuration for their specific PLLs, which aren't compatible with each other.
> 

Yes, but that difference can be factored using the SoC specific compatibles in
future. The idea here is to have a generic A7 PLL driver much like A53 one and
use SoC specific PLL settings.

Thanks,
Mani

> 
> Konrad
> 
