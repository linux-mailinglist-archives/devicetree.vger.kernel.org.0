Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 09B98173A29
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2020 15:44:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726860AbgB1Oo3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Feb 2020 09:44:29 -0500
Received: from mail-wm1-f66.google.com ([209.85.128.66]:36518 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727031AbgB1Oo3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Feb 2020 09:44:29 -0500
Received: by mail-wm1-f66.google.com with SMTP id g83so1261380wme.1
        for <devicetree@vger.kernel.org>; Fri, 28 Feb 2020 06:44:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=EaNst+hWQycMu0KGsnv4CxZ9Si7qKvgKxC1mvggZU4w=;
        b=JCRrLIEo6Jpe8dHIBFGmuTXIFtETxczvLzWf5uy8Y4Rm9R7wgxKO+2afcz/GNnH0Y3
         q0tqjcxhgffbbsl10LWkrDKFYFGroNVipFdobpiY+ORfr6InAZrnVRnUUJdKxAKtACEM
         dTxklEFgeMyTkRclu9MCF6ibbvsenPwWRDYZLFrWvg+m8RzwfWoY6XELfqEtrbGkmQ5q
         TgpYmhbgZkm0bFXzLd85KOOeaNDPUJQuCrD90Ya9ovii8HTS+dVU1eWttG0owswwOm8u
         MFcNQWUAz9eoCClWH9QiIu0LftzF5ZzkomXsU1JPNJCynNEi1BYGHsYrU8xBnhT/OP6K
         8hMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=EaNst+hWQycMu0KGsnv4CxZ9Si7qKvgKxC1mvggZU4w=;
        b=Ty34LfSXZgjFOF8gV9RekbZDrqz+I8t6mlXGPZzcbFX7NuMhQgCeMGNpZkRrv8mGgP
         ZXcDIE8fdWtNdPQ9bPlSfs8S+1G7jU2YFzMJ6Ay5QeOkuwhnJe7qBy00NsGPUTY9kAgT
         XsnqPBvhDHQatvnmBSpyuHfOlJ51QAW3evC5aO+Dt+W2C6WT9ozaaBR1UlfJMhe87ixr
         /hFxbtqPdaWsyiwocdOJ36AONE2mvX9a1V0l5dxJAg8/oIC4/yZ64afjFtDh9uD1GkMS
         xVuOuIxBWPTBSw32gUfvUieuqFbqY7VZ+qEl8c3JlJnDOnEqYgIc2yxtLusMiE+CARgY
         iueg==
X-Gm-Message-State: APjAAAVsdcL3H6Gq3a50bO/aXEmwZCXZUVs6tuoTnVemswAWTlftaSGY
        ZtUk9ZVwwhFwMzWjxKliO+dSYQ==
X-Google-Smtp-Source: APXvYqwmzNWF57lJGnnMPvJ7KLRmrlfEQjMUS3cUSNh6ONuPqWLfuhP1DtkFcJz13ydjNSUlBxXNAQ==
X-Received: by 2002:a7b:c4d0:: with SMTP id g16mr3359111wmk.3.1582901067287;
        Fri, 28 Feb 2020 06:44:27 -0800 (PST)
Received: from myrica ([2001:171b:c9a8:fbc0:116c:c27a:3e7f:5eaf])
        by smtp.gmail.com with ESMTPSA id n11sm2001521wrq.40.2020.02.28.06.44.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Feb 2020 06:44:26 -0800 (PST)
Date:   Fri, 28 Feb 2020 15:44:20 +0100
From:   Jean-Philippe Brucker <jean-philippe@linaro.org>
To:     Jacob Pan <jacob.jun.pan@linux.intel.com>
Cc:     iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
        linux-mm@kvack.org, joro@8bytes.org, robh+dt@kernel.org,
        mark.rutland@arm.com, catalin.marinas@arm.com, will@kernel.org,
        robin.murphy@arm.com, kevin.tian@intel.com,
        baolu.lu@linux.intel.com, Jonathan.Cameron@huawei.com,
        christian.koenig@amd.com, yi.l.liu@intel.com,
        zhangfei.gao@linaro.org,
        Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
Subject: Re: [PATCH v4 06/26] iommu/sva: Register page fault handler
Message-ID: <20200228144420.GE2156@myrica>
References: <20200224182401.353359-1-jean-philippe@linaro.org>
 <20200224182401.353359-7-jean-philippe@linaro.org>
 <20200226113959.62621098@jacob-builder>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200226113959.62621098@jacob-builder>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Feb 26, 2020 at 11:39:59AM -0800, Jacob Pan wrote:
> > @@ -442,11 +444,20 @@ static void iommu_sva_unbind_locked(struct
> > iommu_bond *bond) 
> >  void iommu_sva_unbind_generic(struct iommu_sva *handle)
> >  {
> > +	int pasid;
> >  	struct iommu_param *param = handle->dev->iommu_param;
> >  
> >  	if (WARN_ON(!param))
> >  		return;
> >  
> > +	/*
> > +	 * Caller stopped the device from issuing PASIDs, now make
> > sure they are
> > +	 * out of the fault queue.
> > +	 */
> > +	pasid = iommu_sva_get_pasid_generic(handle);
> > +	if (pasid != IOMMU_PASID_INVALID)
> > +		iopf_queue_flush_dev(handle->dev, pasid);
> > +
> I have an ordering concern.
> The caller can only stop the device issuing page request but there will
> be in-flight request inside the IOMMU. If we flush here before clearing
> the PASID context, there might be new request coming in before the
> detach.

The goal of this flush is also to clear the IOMMU PRI queue. It calls the
IOMMU's flush() callback before flushing the workqueue. So when this
returns, there shouldn't be any more pending fault.

Thanks,
Jean

> How about detach first then flush? Then anything come after the detach
> would be faults. Flush will be clean.
> 
> >  	mutex_lock(&param->sva_lock);
> >  	mutex_lock(&iommu_sva_lock);
> >  	iommu_sva_unbind_locked(to_iommu_bond(handle));
> > @@ -484,6 +495,10 @@ int iommu_sva_enable(struct device *dev, struct
> > iommu_sva_param *sva_param) goto err_unlock;
> >  	}
> >  
> > +	ret = iommu_register_device_fault_handler(dev,
> > iommu_queue_iopf, dev);
> > +	if (ret)
> > +		goto err_unlock;
> > +
> >  	dev->iommu_param->sva_param = new_param;
> >  	mutex_unlock(&param->sva_lock);
> >  	return 0;
> > @@ -521,6 +536,7 @@ int iommu_sva_disable(struct device *dev)
> >  		goto out_unlock;
> >  	}
> >  
> > +	iommu_unregister_device_fault_handler(dev);
> >  	kfree(param->sva_param);
> >  	param->sva_param = NULL;
> >  out_unlock:
> 
> [Jacob Pan]
