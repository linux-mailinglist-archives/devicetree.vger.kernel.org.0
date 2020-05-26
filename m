Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DEE641C3FBB
	for <lists+devicetree@lfdr.de>; Mon,  4 May 2020 18:22:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729580AbgEDQWz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 May 2020 12:22:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41530 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728158AbgEDQWy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 May 2020 12:22:54 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 615EBC061A0E
        for <devicetree@vger.kernel.org>; Mon,  4 May 2020 09:22:54 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id 188so154470wmc.2
        for <devicetree@vger.kernel.org>; Mon, 04 May 2020 09:22:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=MCHVg2/8+pArsDEcibsWYzrGnqgIsL6O2tKqGg2boGQ=;
        b=iSM+uzVb/Wm9o2OFV1sl72Hl6D+zeT7joT4vOaOlq68PXnFwe/TAk2ttWj8v9dU1dp
         pnF/omBOpYMJB4/th5D32NG9HLmrLVMes4cCMc8VMzYdg2qLFT6vSgmCDp0Aw1nUm0uZ
         zskO35wWlL+RbvHkboG5mUQ/L/n+3y61s2o0w7CQDO57+OpdcBSazwAbkdt1PSVLTLBo
         UV1pf09sh92pKqxAH7nSVA1ZYxhO3wvKQTlkwY+OI6YzOkNriXNcGNotaZCNb5aVlTZL
         xKffUZeH5WhVXFHQFh1APhUCIeRsfiN64kn4VSmarUHBvmY+F0QmpO3mbkXMwkZKQxvG
         rmfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=MCHVg2/8+pArsDEcibsWYzrGnqgIsL6O2tKqGg2boGQ=;
        b=kTxWNfb7PZOb9j3ybzGPRecqDpogcJoshMBgdlGZxwho6104fooK45fLiBAwLiuFpl
         pHTgpSxAxSxULJcxGIghqzj1rMgFv7ZzlDdtxXX6pBcklG5ofjyZHdtbtrWM27R7pQt/
         evcnhMssEzSFOJvJOC4DRM8SX0NX0FYJi7gzahMsqsmfURJ/djx4fXPI+mhmkKJdQnKA
         5GI/bs5mRIAfl/zqaNe8plm/5gSUjjk0hqjpgalsXjUgN/kDS6e/Ugr6paVQirYXpWzz
         pfHIUqLY1vKiV1jXLDpMtd5U87xNpCUgmqTBPDQbDsqRhWrBOU6CvSIWUG26Ym4zBvHG
         9q9A==
X-Gm-Message-State: AGi0PuabG2keipAOlgalVrpfVrvNagZwohki/2tWG4+Jd90uyM3IdwTQ
        21ZCJvZuBKOUqG7Ub8FmBAqU6g==
X-Google-Smtp-Source: APiQypIIfd6fa9/u+aeLTQxZQ97zHXvpxVqHN8qn939cucwqFuaXUhEBZSvGLYaIJPT3wr7V8s6L9Q==
X-Received: by 2002:a7b:c14b:: with SMTP id z11mr15041535wmi.44.1588609373077;
        Mon, 04 May 2020 09:22:53 -0700 (PDT)
Received: from myrica ([2001:171b:226e:c200:c43b:ef78:d083:b355])
        by smtp.gmail.com with ESMTPSA id s8sm16208905wrt.69.2020.05.04.09.22.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 May 2020 09:22:52 -0700 (PDT)
Date:   Mon, 4 May 2020 18:22:42 +0200
From:   Jean-Philippe Brucker <jean-philippe@linaro.org>
To:     Lu Baolu <baolu.lu@linux.intel.com>
Cc:     iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
        linux-mm@kvack.org, joro@8bytes.org, catalin.marinas@arm.com,
        will@kernel.org, robin.murphy@arm.com, kevin.tian@intel.com,
        Jonathan.Cameron@huawei.com, jacob.jun.pan@linux.intel.com,
        christian.koenig@amd.com, felix.kuehling@amd.com,
        zhangfei.gao@linaro.org, jgg@ziepe.ca, xuzaibo@huawei.com,
        fenghua.yu@intel.com, hch@infradead.org
Subject: Re: [PATCH v6 04/25] iommu: Add a page fault handler
Message-ID: <20200504162242.GF170104@myrica>
References: <20200430143424.2787566-1-jean-philippe@linaro.org>
 <20200430143424.2787566-5-jean-philippe@linaro.org>
 <9a8ec004-0a9c-d772-8e7a-f839002a40b5@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9a8ec004-0a9c-d772-8e7a-f839002a40b5@linux.intel.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, May 03, 2020 at 01:49:01PM +0800, Lu Baolu wrote:
> > +static void iopf_handle_group(struct work_struct *work)
> > +{
> > +	struct iopf_group *group;
> > +	struct iopf_fault *iopf, *next;
> > +	enum iommu_page_response_code status = IOMMU_PAGE_RESP_SUCCESS;
> > +
> > +	group = container_of(work, struct iopf_group, work);
> > +
> > +	list_for_each_entry_safe(iopf, next, &group->faults, head) {
> > +		/*
> > +		 * For the moment, errors are sticky: don't handle subsequent
> > +		 * faults in the group if there is an error.
> > +		 */
> > +		if (status == IOMMU_PAGE_RESP_SUCCESS)
> > +			status = iopf_handle_single(iopf);
> > +
> > +		if (!(iopf->fault.prm.flags &
> > +		      IOMMU_FAULT_PAGE_REQUEST_LAST_PAGE))
> > +			kfree(iopf);
> 
> The iopf is freed,but not removed from the list. This will cause wild
> pointer in code.

We free the list with the group below, so this one is fine.

> 
> > +	}
> > +
> > +	iopf_complete_group(group->dev, &group->last_fault, status);
> > +	kfree(group);
> > +}
> > +
> 
> [...]
> 
> > +/**
> > + * iopf_queue_flush_dev - Ensure that all queued faults have been processed
> > + * @dev: the endpoint whose faults need to be flushed.
> > + * @pasid: the PASID affected by this flush
> > + *
> > + * The IOMMU driver calls this before releasing a PASID, to ensure that all
> > + * pending faults for this PASID have been handled, and won't hit the address
> > + * space of the next process that uses this PASID. The driver must make sure
> > + * that no new fault is added to the queue. In particular it must flush its
> > + * low-level queue before calling this function.
> > + *
> > + * Return: 0 on success and <0 on error.
> > + */
> > +int iopf_queue_flush_dev(struct device *dev, int pasid)
> > +{
> > +	int ret = 0;
> > +	struct iopf_device_param *iopf_param;
> > +	struct dev_iommu *param = dev->iommu;
> > +
> > +	if (!param)
> > +		return -ENODEV;
> > +
> > +	mutex_lock(&param->lock);
> > +	iopf_param = param->iopf_param;
> > +	if (iopf_param)
> > +		flush_workqueue(iopf_param->queue->wq);
> 
> There may be other pasid iopf in the workqueue. Flush all tasks in
> the workqueue will hurt other pasids. I might lose any context.

Granted this isn't optimal because we don't take the PASID argument into
account (I think I'll remove it, don't know how to use it). But I don't
think it affects other PASIDs, because all flush_workqueue() does is wait
until all faults currently in the worqueue are processed. So it only
blocks the current thread, but nothing is lost.

> 
> > +	else
> > +		ret = -ENODEV;
> > +	mutex_unlock(&param->lock);
> > +
> > +	return ret;
> > +}
> > +EXPORT_SYMBOL_GPL(iopf_queue_flush_dev);
> > +
> > +/**
> > + * iopf_queue_discard_partial - Remove all pending partial fault
> > + * @queue: the queue whose partial faults need to be discarded
> > + *
> > + * When the hardware queue overflows, last page faults in a group may have been
> > + * lost and the IOMMU driver calls this to discard all partial faults. The
> > + * driver shouldn't be adding new faults to this queue concurrently.
> > + *
> > + * Return: 0 on success and <0 on error.
> > + */
> > +int iopf_queue_discard_partial(struct iopf_queue *queue)
> > +{
> > +	struct iopf_fault *iopf, *next;
> > +	struct iopf_device_param *iopf_param;
> > +
> > +	if (!queue)
> > +		return -EINVAL;
> > +
> > +	mutex_lock(&queue->lock);
> > +	list_for_each_entry(iopf_param, &queue->devices, queue_list) {
> > +		list_for_each_entry_safe(iopf, next, &iopf_param->partial, head)
> > +			kfree(iopf);
> 
> iopf is freed but not removed from the list.

Ouch yes this is wrong, will fix.

> 
> > +	}
> > +	mutex_unlock(&queue->lock);
> > +	return 0;
> > +}
> > +EXPORT_SYMBOL_GPL(iopf_queue_discard_partial);
> > +
> > +/**
> > + * iopf_queue_add_device - Add producer to the fault queue
> > + * @queue: IOPF queue
> > + * @dev: device to add
> > + *
> > + * Return: 0 on success and <0 on error.
> > + */
> > +int iopf_queue_add_device(struct iopf_queue *queue, struct device *dev)
> > +{
> > +	int ret = -EBUSY;
> > +	struct iopf_device_param *iopf_param;
> > +	struct dev_iommu *param = dev->iommu;
> > +
> > +	if (!param)
> > +		return -ENODEV;
> > +
> > +	iopf_param = kzalloc(sizeof(*iopf_param), GFP_KERNEL);
> > +	if (!iopf_param)
> > +		return -ENOMEM;
> > +
> > +	INIT_LIST_HEAD(&iopf_param->partial);
> > +	iopf_param->queue = queue;
> > +	iopf_param->dev = dev;
> > +
> > +	mutex_lock(&queue->lock);
> > +	mutex_lock(&param->lock);
> > +	if (!param->iopf_param) {
> > +		list_add(&iopf_param->queue_list, &queue->devices);
> > +		param->iopf_param = iopf_param;
> > +		ret = 0;
> > +	}
> > +	mutex_unlock(&param->lock);
> > +	mutex_unlock(&queue->lock);
> > +
> > +	if (ret)
> > +		kfree(iopf_param);
> > +
> > +	return ret;
> > +}
> > +EXPORT_SYMBOL_GPL(iopf_queue_add_device);
> > +
> > +/**
> > + * iopf_queue_remove_device - Remove producer from fault queue
> > + * @queue: IOPF queue
> > + * @dev: device to remove
> > + *
> > + * Caller makes sure that no more faults are reported for this device.
> > + *
> > + * Return: 0 on success and <0 on error.
> > + */
> > +int iopf_queue_remove_device(struct iopf_queue *queue, struct device *dev)
> > +{
> > +	int ret = 0;
> > +	struct iopf_fault *iopf, *next;
> > +	struct iopf_device_param *iopf_param;
> > +	struct dev_iommu *param = dev->iommu;
> > +
> > +	if (!param || !queue)
> > +		return -EINVAL;
> > +
> > +	mutex_lock(&queue->lock);
> > +	mutex_lock(&param->lock);
> > +	iopf_param = param->iopf_param;
> > +	if (iopf_param && iopf_param->queue == queue) {
> > +		list_del(&iopf_param->queue_list);
> > +		param->iopf_param = NULL;
> > +	} else {
> > +		ret = -EINVAL;
> > +	}
> > +	mutex_unlock(&param->lock);
> > +	mutex_unlock(&queue->lock);
> > +	if (ret)
> > +		return ret;
> > +
> > +	/* Just in case some faults are still stuck */
> > +	list_for_each_entry_safe(iopf, next, &iopf_param->partial, head)
> > +		kfree(iopf);
> 
> The same here.

Here is fine, we free the iopf_param below

Thanks,
Jean

> 
> > +
> > +	kfree(iopf_param);
> > +
> > +	return 0;
> > +}
> > +EXPORT_SYMBOL_GPL(iopf_queue_remove_device);
