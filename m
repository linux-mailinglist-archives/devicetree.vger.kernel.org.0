Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E36F01074D5
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2019 16:29:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726686AbfKVP3A (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Nov 2019 10:29:00 -0500
Received: from mail-wr1-f65.google.com ([209.85.221.65]:46416 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726664AbfKVP3A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Nov 2019 10:29:00 -0500
Received: by mail-wr1-f65.google.com with SMTP id z7so5682601wrl.13
        for <devicetree@vger.kernel.org>; Fri, 22 Nov 2019 07:28:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=bulVco3x5RbtgZKCmOeZiFAb5Gkkb3vLwxv8AF+VAkY=;
        b=Q9GzTlqVYlBDZzMNegrITDii27IgR3IK5WfFZHntNMd+fNndRTZvnF0Y9JXBAp02j4
         Q3utWX2LIc6T71HyM443zyXV0xcbCnl+7tukYnqFwJc40A9d02yrOs1la2NUbRKNCzHc
         IoAjBkwePqj9yyEES+NAqG4qSs4BbjDNH0lJH5BxANRbRJaZc6M9jxWOfwf7FAMgGZqa
         IY/IfM2G+F4zOvbk1MFrxQzo4GdIgvSZStHTXJ6+8FpSzNlFpmCsO6KzRp9YXbjUGGsk
         Ech/tSuTMEFaXw+1Hv0u5F0mEbnjnjC0uk2C+xWaC7ZQ4JPuvhOun/zz9+4v8SAroEss
         72Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=bulVco3x5RbtgZKCmOeZiFAb5Gkkb3vLwxv8AF+VAkY=;
        b=deaaV6qGwJJZIL7u7F97Gd2sNcQZgE3W8Tlb8TMBZm9MAoScJdGcAessm6WTSz0nqO
         yibBh3afV7zXH5xx5QFXC0ghp7O9JcFtQ7OyeBawGuV4vAVr+BcS2MRhXxQbmdO1bsyn
         jScsXZgOchjGlYNiVhTYFzC11YcEH0vQPh+9gJ8x0Sg2FOfAASP14IfNcBpBwCtkr6Gi
         IJ7lsO7KuYZLSG6OCo0VlTc8s5c10Zb2HQBzFj2xlEkz3BUVr1KNpd/KQTnksmTCe3l4
         HNaPG8zghWnd8Q8p1T/Xt2ORUK9CbFJ27PwCBxDocxOvh+t0Cup5aNxZB9qTtGk8Jgid
         MpBw==
X-Gm-Message-State: APjAAAXWbdkW2zvAGS046n2HBfuhslxnC4/v4SNKFsuHNJ4SAODoEiUI
        aLurfFkEHDIXWDBTApD0zMQe3Q==
X-Google-Smtp-Source: APXvYqwOX0Dilhgc/nDjGbOaBj9FTyzevqPcc87fg5C6SHcB5UJa1/dVicXnsRQ/Z3QR3D9DkVOWGQ==
X-Received: by 2002:a5d:5308:: with SMTP id e8mr10812570wrv.77.1574436538287;
        Fri, 22 Nov 2019 07:28:58 -0800 (PST)
Received: from lophozonia (xdsl-188-155-204-106.adslplus.ch. [188.155.204.106])
        by smtp.gmail.com with ESMTPSA id o21sm3789117wmc.17.2019.11.22.07.28.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Nov 2019 07:28:57 -0800 (PST)
Date:   Fri, 22 Nov 2019 16:28:55 +0100
From:   Jean-Philippe Brucker <jean-philippe@linaro.org>
To:     Jonathan Cameron <jonathan.cameron@huawei.com>
Cc:     iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
        linux-acpi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        joro@8bytes.org, robh+dt@kernel.org, mark.rutland@arm.com,
        lorenzo.pieralisi@arm.com, guohanjun@huawei.com,
        sudeep.holla@arm.com, rjw@rjwysocki.net, lenb@kernel.org,
        will@kernel.org, robin.murphy@arm.com, zhangfei.gao@linaro.org,
        eric.auger@redhat.com
Subject: Re: [PATCH v2 4/8] iommu/arm-smmu-v3: Prepare for SSID support
Message-ID: <20191122152855.GA810215@lophozonia>
References: <20191108152508.4039168-1-jean-philippe@linaro.org>
 <20191108152508.4039168-5-jean-philippe@linaro.org>
 <20191111143811.000006cc@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191111143811.000006cc@huawei.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Nov 11, 2019 at 02:38:11PM +0000, Jonathan Cameron wrote:
> Hmm. There are several different refactors in here alongside a few new
> bits.  Would be nice to break it up more to make life even easier for
> reviewers.   It's not 'so' complex that it's really a problem though
> so could leave it as is if you really want to.

Sure, I'll see if I can split it more in next version.

> > +	table->ptr = dmam_alloc_coherent(smmu->dev, size, &table->ptr_dma,
> > +					 GFP_KERNEL | __GFP_ZERO);
> 
> We dropped dma_zalloc_coherent because we now zero in dma_alloc_coherent
> anyway.  Hence I'm fairly sure that __GFP_ZERO should have no effect.
> 
> https://lore.kernel.org/patchwork/patch/1031536/
> 
> Am I missing some special corner case here?

Here I just copied the GFP flags already in use. But removing all
__GFP_ZERO from the driver would make a good cleanup patch.

> > -	if (smmu_domain->stage == ARM_SMMU_DOMAIN_S1)
> > -		arm_smmu_write_ctx_desc(smmu, &smmu_domain->s1_cfg);
> > -
> 
> Whilst it seems fine, perhaps a note on the 'why' of moving this into
> finalise_s1 would be good in the patch description.

Ok. Since it's only to simplify the handling of allocation failure in a
subsequent patch, I think I'll move that part over there.

Thanks,
Jean
