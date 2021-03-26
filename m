Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 30EEB34A4E7
	for <lists+devicetree@lfdr.de>; Fri, 26 Mar 2021 10:51:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229695AbhCZJuq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Mar 2021 05:50:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47730 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230047AbhCZJuR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Mar 2021 05:50:17 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F20DC0613B1
        for <devicetree@vger.kernel.org>; Fri, 26 Mar 2021 02:50:17 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id v4so4968388wrp.13
        for <devicetree@vger.kernel.org>; Fri, 26 Mar 2021 02:50:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=MnI8RxXoHJw/2x8+1FFQSE5mboYTNfWyq0YhdaWKJtM=;
        b=quboBXKApWPPi+Sz+/0FkCmAg6Kixg1YdFbqHA178/Imd3WpW8k4YpPnDU3AYAZE1U
         rC+Ro1J3QVilPT4PwBMfYdVDZH7wz57EBkcZblYlFx15hruu5y4qR2vlnNHHETe/WtcI
         uyVKWYqEj8LFhnEuLeyGExbTpH692wtLRoQSiSbr0LrzyVM6FVKsEYAEO7T2ZdmHFNQl
         idPnV8krrh1WKw9A4izsTq80vIBW+1zP2qxvWYDpkS9yx0yoJ81ydGOZsjDLkYKidqJo
         vFyHyh6IRCsxZzSHsfDvs+RCVME7Lv75nUZ/VVIkp5mJt28scLPXIztaS3sNbN/X3XdQ
         3KFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=MnI8RxXoHJw/2x8+1FFQSE5mboYTNfWyq0YhdaWKJtM=;
        b=RYsC5kZtOnus6pfFM+ZvxVlJmPgFuIQOpeQOWn3kn8OvSnElI/fduNVumpTpswwTlP
         JcKsvoK0EnZmpaWz46ATBvJ18gyqBLsGvKz3SXs5xXvpw5yBSlvnQs0uq7lAs4KX3BpD
         Z2SRNGK3HkNUWzmx5czkrgQEB3uzQmbSmpEau7GtDYjUmtWXDkp9gExmJZuyfw4pShJf
         m2X6f81z7f9p5HNTs5zBiideZMIMSnRcNN5OXeYLQjVcN9gZMrWzbjn+OMeB9d3K9hw0
         H3ps9n6TtlZHdQHmLvmXZOfXGKSz5ybHTUDpQi9edUf2v6wi9eRmwUComs0NkEXm5tTb
         bDcQ==
X-Gm-Message-State: AOAM531EE7R1WPhMigJ2qXHVrkl24UldEOExwMqRJHtzifczvDkifsMw
        IrsMXxUfLOLC2jOBoXsnI/pNQg==
X-Google-Smtp-Source: ABdhPJy8IdrF20cvgAfp2ESQn+iJIkj1mkaWU5rGBnF/yaYKd5OSC6h+yUhCzFWqiLVTmxHEe4956A==
X-Received: by 2002:a5d:6381:: with SMTP id p1mr13820517wru.266.1616752216009;
        Fri, 26 Mar 2021 02:50:16 -0700 (PDT)
Received: from myrica ([2001:1715:4e26:a7e0:116c:c27a:3e7f:5eaf])
        by smtp.gmail.com with ESMTPSA id o7sm12079801wrs.16.2021.03.26.02.50.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Mar 2021 02:50:15 -0700 (PDT)
Date:   Fri, 26 Mar 2021 10:49:57 +0100
From:   Jean-Philippe Brucker <jean-philippe@linaro.org>
To:     Will Deacon <will@kernel.org>
Cc:     joro@8bytes.org, vivek.gautam@arm.com, guohanjun@huawei.com,
        linux-acpi@vger.kernel.org, zhangfei.gao@linaro.org,
        lenb@kernel.org, devicetree@vger.kernel.org, kevin.tian@intel.com,
        robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
        rjw@rjwysocki.net, iommu@lists.linux-foundation.org,
        sudeep.holla@arm.com, robin.murphy@arm.com,
        linux-accelerators@lists.ozlabs.org
Subject: Re: [PATCH v13 07/10] iommu/arm-smmu-v3: Maintain a SID->device
 structure
Message-ID: <YF2uRXoUwFSAmQWI@myrica>
References: <20210302092644.2553014-1-jean-philippe@linaro.org>
 <20210302092644.2553014-8-jean-philippe@linaro.org>
 <20210325174807.GD15504@willie-the-truck>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210325174807.GD15504@willie-the-truck>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Mar 25, 2021 at 05:48:07PM +0000, Will Deacon wrote:
> > +/* smmu->streams_mutex must be held */
> 
> Can you add a lockdep assertion for that?

Sure

> > +__maybe_unused
> > +static struct arm_smmu_master *
> > +arm_smmu_find_master(struct arm_smmu_device *smmu, u32 sid)
> > +{
> > +	struct rb_node *node;
> > +	struct arm_smmu_stream *stream;
> > +
> > +	node = smmu->streams.rb_node;
> > +	while (node) {
> > +		stream = rb_entry(node, struct arm_smmu_stream, node);
> > +		if (stream->id < sid)
> > +			node = node->rb_right;
> > +		else if (stream->id > sid)
> > +			node = node->rb_left;
> > +		else
> > +			return stream->master;
> > +	}
> > +
> > +	return NULL;
> > +}
> 
> [...]
> 
> > +static int arm_smmu_insert_master(struct arm_smmu_device *smmu,
> > +				  struct arm_smmu_master *master)
> > +{
> > +	int i;
> > +	int ret = 0;
> > +	struct arm_smmu_stream *new_stream, *cur_stream;
> > +	struct rb_node **new_node, *parent_node = NULL;
> > +	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(master->dev);
> > +
> > +	master->streams = kcalloc(fwspec->num_ids, sizeof(*master->streams),
> > +				  GFP_KERNEL);
> > +	if (!master->streams)
> > +		return -ENOMEM;
> > +	master->num_streams = fwspec->num_ids;
> > +
> > +	mutex_lock(&smmu->streams_mutex);
> > +	for (i = 0; i < fwspec->num_ids; i++) {
> > +		u32 sid = fwspec->ids[i];
> > +
> > +		new_stream = &master->streams[i];
> > +		new_stream->id = sid;
> > +		new_stream->master = master;
> > +
> > +		/*
> > +		 * Check the SIDs are in range of the SMMU and our stream table
> > +		 */
> > +		if (!arm_smmu_sid_in_range(smmu, sid)) {
> > +			ret = -ERANGE;
> > +			break;
> > +		}
> > +
> > +		/* Ensure l2 strtab is initialised */
> > +		if (smmu->features & ARM_SMMU_FEAT_2_LVL_STRTAB) {
> > +			ret = arm_smmu_init_l2_strtab(smmu, sid);
> > +			if (ret)
> > +				break;
> > +		}
> > +
> > +		/* Insert into SID tree */
> > +		new_node = &(smmu->streams.rb_node);
> > +		while (*new_node) {
> > +			cur_stream = rb_entry(*new_node, struct arm_smmu_stream,
> > +					      node);
> > +			parent_node = *new_node;
> > +			if (cur_stream->id > new_stream->id) {
> > +				new_node = &((*new_node)->rb_left);
> > +			} else if (cur_stream->id < new_stream->id) {
> > +				new_node = &((*new_node)->rb_right);
> > +			} else {
> > +				dev_warn(master->dev,
> > +					 "stream %u already in tree\n",
> > +					 cur_stream->id);
> > +				ret = -EINVAL;
> > +				break;
> > +			}
> > +		}
> > +		if (ret)
> > +			break;
> > +
> > +		rb_link_node(&new_stream->node, parent_node, new_node);
> > +		rb_insert_color(&new_stream->node, &smmu->streams);
> > +	}
> > +
> > +	if (ret) {
> > +		for (i--; i >= 0; i--)
> 
> Is 'i--' really what you want for the initial value? Doesn't that correspond
> to the ID you *didn't* add to the tree?

In case of error we break out of the loop, with i corresponding to the
stream that caused a fault but wasn't yet added to the tree. So i-- is
the last stream that was successfully added, or -1 in which case we don't
enter this for loop.

> > +			rb_erase(&master->streams[i].node, &smmu->streams);
> > +		kfree(master->streams);
> 
> Do you need to NULLify master->streams and/or reset master->num_streams
> after this? Seems like they're left dangling.

master is freed by arm_smmu_probe_device() when we return an error. Since
this function is unlikely to ever have another caller I didn't bother
cleaning up here

Thanks,
Jean
