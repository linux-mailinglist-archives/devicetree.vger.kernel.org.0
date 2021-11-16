Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CB9FC45386A
	for <lists+devicetree@lfdr.de>; Tue, 16 Nov 2021 18:21:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236295AbhKPRXz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Nov 2021 12:23:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51602 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235906AbhKPRXy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Nov 2021 12:23:54 -0500
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB3ADC061570
        for <devicetree@vger.kernel.org>; Tue, 16 Nov 2021 09:20:56 -0800 (PST)
Received: by mail-ed1-x531.google.com with SMTP id w1so25055217edc.6
        for <devicetree@vger.kernel.org>; Tue, 16 Nov 2021 09:20:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=Y7/ymhGPjLSJyJ+YNwQEo5utnlZQVkYRG4UA4vbBNwE=;
        b=Z6E7Zuy9PVFwXGePFb9KxhGg+daLtMwLGjckBQ7b2vySbEEd1DJ0lUYC6pLSnm7zSy
         kXaweByb8FcJBWyKrE0jB3m51ljQqHMdGCk7ZkQqVUt+khzHBmkhOhYe1GeFo2W6Nsso
         vazqnh/kK2bGZ911xdksNeaXzz4+eRLENNElhVi8yJ2J5xEZwstLoQikqgkyc4PHcOjs
         XhCdev6ycGAfTq4vNwHJOk+sXDN1s+oVbuSatxxkOwnnFrHnGr8o0dVBJWdYc+XtttBs
         NI6LHtNi5BKXpHXhsMPWOn1q/Bomz5sn42rCzH5vIJIZ7JDKmxvWD/Nouai7ne9MAmAZ
         Va+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Y7/ymhGPjLSJyJ+YNwQEo5utnlZQVkYRG4UA4vbBNwE=;
        b=kZXZYUHHz6RQ96XVljOiwcXw2Z6rPyKjUXmL588m/W6k4im/zY0qVAE5v2hNX5Wh5A
         4hxEhG7K6Ig1YSMCHlEDtwTgJeyRlBB5GOLZwsyCMv7ZfkRpkzJa7RKYiba5vj65DQcS
         XcbnJPQx83eYlQRfyDDXyL02GMRVm16gtgARuUaQxg874DOCSLPt/hYM6n+s6RTSVPRE
         udQmVM7Li+UtOGJT91bUqDqwzJR5eaDwXouHj8g3JR27d34/4gQLVeyxAT/BUIYbt050
         0HwBvjsF62S9e0shbHc6smgQ1EM4w38QCpvaO690YUZkT12QRuJIsO+t3kwNoMyeb9Ha
         ObNQ==
X-Gm-Message-State: AOAM531EaVK7uEfoQ51qj9LMg603+yI4HdJJUaRi67ehf3UTgaY/7834
        0/FGAKnOTCrdAz58ACSR0FuiHhbzLaRhCA==
X-Google-Smtp-Source: ABdhPJysrk4hn2MXFU1z+7fNFOPzdwH3NRQbppL+rDRVzDdxxgEucQ2rht9F4+xHJqZt9Jy1xcVSqg==
X-Received: by 2002:a17:907:629b:: with SMTP id nd27mr12055773ejc.24.1637083255412;
        Tue, 16 Nov 2021 09:20:55 -0800 (PST)
Received: from myrica (cpc92880-cmbg19-2-0-cust679.5-4.cable.virginm.net. [82.27.106.168])
        by smtp.gmail.com with ESMTPSA id j3sm8344871ejo.2.2021.11.16.09.20.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Nov 2021 09:20:54 -0800 (PST)
Date:   Tue, 16 Nov 2021 17:20:33 +0000
From:   Jean-Philippe Brucker <jean-philippe@linaro.org>
To:     Robin Murphy <robin.murphy@arm.com>
Cc:     robh+dt@kernel.org, iommu@lists.linux-foundation.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        will@kernel.org, joro@8bytes.org, mark.rutland@arm.com,
        jkchen@linux.alibaba.com, leo.yan@linaro.org,
        uchida.jun@socionext.com
Subject: Re: [PATCH 0/2] perf/smmuv3: Support devicetree
Message-ID: <YZPoYSIU/hBYgt3m@myrica>
References: <20211116113536.69758-1-jean-philippe@linaro.org>
 <3b5cb536-5a11-5096-4369-cec3d369ec52@arm.com>
 <YZPRTUis+G279XIO@myrica>
 <54be6173-59d3-7ce8-e04b-b5197fdc0e10@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <54be6173-59d3-7ce8-e04b-b5197fdc0e10@arm.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Nov 16, 2021 at 05:00:14PM +0000, Robin Murphy wrote:
> On 2021-11-16 15:42, Jean-Philippe Brucker wrote:
> > On Tue, Nov 16, 2021 at 12:02:47PM +0000, Robin Murphy wrote:
> > > On 2021-11-16 11:35, Jean-Philippe Brucker wrote:
> > > > Add devicetree binding for the SMMUv3 PMU, called Performance Monitoring
> > > > Counter Group (PMCG) in the spec. Each SMMUv3 implementation can have
> > > > multiple independent PMCGs, for example one for the Translation Control
> > > > Unit (TCU) and one per Translation Buffer Unit (TBU).
> > > > 
> > > > I previously sent the binding as reply to Jay Chen's thread implementing
> > > > device tree support [1]. This posting addresses the comments from that
> > > > thread.
> > > 
> > > Ha, I'd also resurrected this and was planning to post it at some point this
> > > week[0] - you should have said :)
> > 
> > Ah sorry about that, I just resent because there was some demand for it at
> > Linaro
> 
> Heh, no worries - it's not like you were even CC'ed on the thread where I
> only mentioned I *might* do it.
> 
> Can I get away with being cheeky and just saying that my review comments are
> the diff between my branch and yours, I wonder...

Sure, that works for me, I'll send a v2 this week or so

Thanks,
Jean
