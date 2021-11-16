Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A231D453634
	for <lists+devicetree@lfdr.de>; Tue, 16 Nov 2021 16:43:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238424AbhKPPqN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Nov 2021 10:46:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56516 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238428AbhKPPpf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Nov 2021 10:45:35 -0500
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47DA4C061220
        for <devicetree@vger.kernel.org>; Tue, 16 Nov 2021 07:42:28 -0800 (PST)
Received: by mail-ed1-x532.google.com with SMTP id e3so53382889edu.4
        for <devicetree@vger.kernel.org>; Tue, 16 Nov 2021 07:42:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=O6sbtn5xvEBNaOtn9UEFFKe+g7L6F0RYzfYTzDVMF/I=;
        b=eynKHH0QO52xWjqQj6zrLoZm4ne3qN6aPkoTwvfBmLf1pr+gN5PTFe0ZpIhs7trXsb
         VIRQf5PFhG4ylLXFO+F5NADxLSlh8zZUYIftK4zfmYQ+FuLfvfLGkmPd7bBIA3ptmxSs
         vEX/J9mh5TBHuw7EznlL46fXe3JhT1PW1Oz7czW7O8jyDO+km6g04eb1asxwOCh0YQBh
         /V8rgoUFfN3FEqjPtmj+MOM4OcVXl3nX6JMUb1gPH51N+cflV74s2RiDTN06CKqjzUGF
         O2lZmiYL1xWw/1NugBNnlbDenbgP6jVEPaRsWaFCmeOV5PNXi2ntm6GEyx1IxOtYUoKj
         bhVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=O6sbtn5xvEBNaOtn9UEFFKe+g7L6F0RYzfYTzDVMF/I=;
        b=2ujr9bSvkMicjbuSbHlLTQDbwp/rmyZJsgN7eXujaDSTeNZtP+JZmIa8gNYNumuPF8
         zs9HNzAA4Tkabl23ZZMcd2nlF09vCradcY6R7HwLa2dC4JBX9TGtpoWofIKwKZLZZxgv
         CG0qeeLELXTrQto5swlY2ByEpfjsYpmOBvUHViLYzbzmBTNb1NxjiwzGagBbQQP1+CYW
         MgXPLCmz7VwBlwTvyu4sAX1IvG1DEOXmeDElM/IAI+BmAWOPXNZgtvdP3Lq7cC40S858
         33dkEKHSqdB5suNW0K5tYK5xnRX2fz+HXuJbhEvezokWT07CVuk+GQhl3YTxphsa4deN
         MMrw==
X-Gm-Message-State: AOAM530dazEpLbbFo9kDloIOXCW7mQHAbEQEv3XXh+CerXKJxeBltW7I
        l95wS81Wnyc3Q1x5o0pLrtd6cw==
X-Google-Smtp-Source: ABdhPJx0eQ+PslF4hYTTpI2Xpbj5O8GvvC/hQB20eDbfaRVoh8niF5Qt3h1b6H5RW7O+XXP7v5RzyQ==
X-Received: by 2002:a17:906:fcb0:: with SMTP id qw16mr10483926ejb.495.1637077346511;
        Tue, 16 Nov 2021 07:42:26 -0800 (PST)
Received: from myrica (cpc92880-cmbg19-2-0-cust679.5-4.cable.virginm.net. [82.27.106.168])
        by smtp.gmail.com with ESMTPSA id bo20sm9763810edb.31.2021.11.16.07.42.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Nov 2021 07:42:26 -0800 (PST)
Date:   Tue, 16 Nov 2021 15:42:05 +0000
From:   Jean-Philippe Brucker <jean-philippe@linaro.org>
To:     Robin Murphy <robin.murphy@arm.com>
Cc:     robh+dt@kernel.org, iommu@lists.linux-foundation.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        will@kernel.org, joro@8bytes.org, mark.rutland@arm.com,
        jkchen@linux.alibaba.com, leo.yan@linaro.org,
        uchida.jun@socionext.com
Subject: Re: [PATCH 0/2] perf/smmuv3: Support devicetree
Message-ID: <YZPRTUis+G279XIO@myrica>
References: <20211116113536.69758-1-jean-philippe@linaro.org>
 <3b5cb536-5a11-5096-4369-cec3d369ec52@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3b5cb536-5a11-5096-4369-cec3d369ec52@arm.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Nov 16, 2021 at 12:02:47PM +0000, Robin Murphy wrote:
> On 2021-11-16 11:35, Jean-Philippe Brucker wrote:
> > Add devicetree binding for the SMMUv3 PMU, called Performance Monitoring
> > Counter Group (PMCG) in the spec. Each SMMUv3 implementation can have
> > multiple independent PMCGs, for example one for the Translation Control
> > Unit (TCU) and one per Translation Buffer Unit (TBU).
> > 
> > I previously sent the binding as reply to Jay Chen's thread implementing
> > device tree support [1]. This posting addresses the comments from that
> > thread.
> 
> Ha, I'd also resurrected this and was planning to post it at some point this
> week[0] - you should have said :)

Ah sorry about that, I just resent because there was some demand for it at
Linaro

> > Patch 1 adds two compatible strings. "arm,smmu-v3-pmcg" is common to all
> > PMCGs. "hisilicon,smmu-v3-pmcg-hip08" allows to support the same quirk
> > as IORT for that implementation (see patch 2). We'll probably want to
> > also introduce compatible strings for each implementation that has
> > additional perf events. For example the MMU-600 implementation has
> > different events for TCU and TBU PMCGs [2], but both components have the
> > same device IDs. So the driver could differentiate them if they had two
> > distinct compatible strings such as "arm,mmu-600-pmcg-tbu" and
> > "arm,mmu-600-pmcg-tcu".
> 
> Actually it only needs a general MMU-600 compatible, since once you know
> it's an Arm Ltd. implementation, you can assume the pattern for the IMP_DEF
> ID registers to figure out the rest.

It might be an error in the MMU-600 spec specifically, both TBU and TCU
PMU registers have a 0x83 PIDR0, where I think the TBU should be 0x84 (the
revC model uses that value). It's possible that the implementation
actually has 0x84 instead.

Thanks,
Jean

