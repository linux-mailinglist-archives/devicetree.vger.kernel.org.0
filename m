Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 510382FD583
	for <lists+devicetree@lfdr.de>; Wed, 20 Jan 2021 17:26:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2391414AbhATQWx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jan 2021 11:22:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2403877AbhATQVO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jan 2021 11:21:14 -0500
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BB80C0613D3
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 08:20:34 -0800 (PST)
Received: by mail-pl1-x634.google.com with SMTP id t6so12782156plq.1
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 08:20:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=cRKedHZD4eQd4YutMVRkvvYFpo5E79xcV0d35RU4DKE=;
        b=tMRsDwdM2AL2jqj+gv2iqJMEhTJRRzQEsTI6NwNp/PsKyl2dFfsVvGWLiak44FAsHR
         rRtjrYE/+DvQ7MLsesV8llOWlxkItubFUXlRrSC9LLP4Wj3Ta5s9wWOydHLrestFCSvP
         L/0N0111LisRF4JX2S7tQsndrJcfYAwDgHyid0/vh+Ux0M4HBi8x4NhnOInb2/lWDeOA
         t9cQHFSRKzvkyvictDOaby54khjlTKHjmv8GhuhgRcDjb58CAnf45DMoRnc5diYij+Xn
         D17ToApYnM/1OHDaGyxtOsgpZ6nyn8vZ6t4WNlQGPsIc+z7c4+BslU1PVnBMQm/03+vT
         UM8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=cRKedHZD4eQd4YutMVRkvvYFpo5E79xcV0d35RU4DKE=;
        b=cYh/sPFz0Lc6cz9e7ukJKMFHJrLi7wVQVs9Zv3/2B5iD5GtlmzVsz4kpsbE3ul/v/y
         lbi2odSCqQxIDT+JIgewA29PKhwWj/y/pRH0zjtx+28+HhAerMO1rxRCTPl57oTgh2G6
         XBYZHdCn4Jrnxk5nAgvnA1wf+cWyp2dC7hufy4xXJ43gowaJM673eb9s1mU41S76tmmO
         Cuvk9fUmfnbX1mdjc7JYZTsrDKtuotdZIEkMGp+/8fPxRaJTgvS/SKyZj8mEjIobuJs2
         OgCZes1i3iMG4EpZ6kuEsXPcmXQBk7rhm8UmLE4Zb7pA0NVaQUvcPHg8TCTjv+Iu9wD/
         ++ow==
X-Gm-Message-State: AOAM531Y67e1ByNn9pUszCtcuVnPlomq8Vefm3zlEt2khlSkz7SZJBzb
        TrmYUjdpXMyAKJ2sNVy/R6ly
X-Google-Smtp-Source: ABdhPJzF+19oudVJqy1cqnehphkReFwLuVjvpXl1jxFMDn7okWClCz7xrwAHD3KkDPFCIK7RLkYrjg==
X-Received: by 2002:a17:902:7596:b029:da:b7a3:cdd0 with SMTP id j22-20020a1709027596b02900dab7a3cdd0mr10336255pll.14.1611159633964;
        Wed, 20 Jan 2021 08:20:33 -0800 (PST)
Received: from thinkpad ([2409:4072:409:c713:3d52:1d51:c724:155d])
        by smtp.gmail.com with ESMTPSA id n15sm2972057pgl.31.2021.01.20.08.20.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Jan 2021 08:20:32 -0800 (PST)
Date:   Wed, 20 Jan 2021 21:50:21 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     Rob Herring <robh@kernel.org>
Cc:     bjorn.andersson@linaro.org, sboyd@kernel.org,
        jassisinghbrar@gmail.com, viresh.kumar@linaro.org,
        linux-clk@vger.kernel.org, mturquette@baylibre.com,
        robh+dt@kernel.org, linux-kernel@vger.kernel.org,
        agross@kernel.org, ulf.hansson@linaro.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 3/5] dt-bindings: clock: Add Qualcomm A7 PLL binding
Message-ID: <20210120162021.GA54606@thinkpad>
References: <20210118041156.50016-1-manivannan.sadhasivam@linaro.org>
 <20210118041156.50016-4-manivannan.sadhasivam@linaro.org>
 <20210120155018.GA213895@robh.at.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210120155018.GA213895@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jan 20, 2021 at 09:50:18AM -0600, Rob Herring wrote:
> On Mon, 18 Jan 2021 09:41:54 +0530, Manivannan Sadhasivam wrote:
> > Add devicetree YAML binding for Cortex A7 PLL clock in Qualcomm
> > platforms like SDX55.
> > 
> > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > ---
> >  .../devicetree/bindings/clock/qcom,a7pll.yaml | 51 +++++++++++++++++++
> >  1 file changed, 51 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/clock/qcom,a7pll.yaml
> > 
> 
> 
> Please add Acked-by/Reviewed-by tags when posting new versions. However,
> there's no need to repost patches *only* to add the tags. The upstream
> maintainer will do that for acks received on the version they apply.
> 
> If a tag was not added on purpose, please state why and what changed.
> 

Oops! Sorry, I missed your review for this patch:

Reviewed-by: Rob Herring <robh@kernel.org>

Thanks,
Mani
