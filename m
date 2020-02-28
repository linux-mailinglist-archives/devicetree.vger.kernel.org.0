Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 78602173A78
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2020 15:57:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726980AbgB1O5V (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Feb 2020 09:57:21 -0500
Received: from mail-qt1-f193.google.com ([209.85.160.193]:39825 "EHLO
        mail-qt1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726562AbgB1O5V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Feb 2020 09:57:21 -0500
Received: by mail-qt1-f193.google.com with SMTP id p34so2192767qtb.6
        for <devicetree@vger.kernel.org>; Fri, 28 Feb 2020 06:57:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=aXNQ0NABVZ/Zc8fXXYZpSz3dqh4Ns6QlhvK6/kwYM2k=;
        b=fx3F0RVJpvuGR0vU2fusOG/NqXxNQdLCppTq9XL99VJF79clWgcp5+agQ8Bkdn764W
         /6H4SP43zfEgHKiNsbn3EkZXEI5eftR/AZNv5GJYTZnxTXZRyq9aw7ICgIKMn8l0jnUx
         9LorGB67BgZ2aphSqsGjJO2u/nt3IEPqyy6blQp30BdEWnEUxTjjCoo7zwPmwtZJlkI3
         e+qGqpZDRkSLznZ8x2vUdH6CsaxJ2HRW27+fCzEtPp5EqdbjknklIN9PHhf1PYIBAg+F
         PuUEX6g64YI1DZfAu0ym87ZYgi2PkqOOc/+5zxlIRaH10PX0tdO8PBQJ2rqvbzBeuTgk
         IVvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=aXNQ0NABVZ/Zc8fXXYZpSz3dqh4Ns6QlhvK6/kwYM2k=;
        b=BjGG5/im3ovAY+oeawQuZSpxbGPUSDBwcQRW2NaJgjACFEEgCzS67C3NsmyOTxScwT
         P5CkREUVD2PEbB8otPmBD72LOJovQq0JFf8NMoTZNP5qwxBqs9hRlzcGrhuNkVGxzt/W
         q+l+OizicdxZXh7xqrQTjYMArvrBVJ/EJJr87fevkeSGT0uHJmQdUoiJLM96DWubk7pO
         hjXWesse9Lz/YisWymOabaeZaQshhwyeXPbXpZzmY35kF+W6HZ9QQ3RrtUnixF3L57Vu
         Looz9YwP/FUwQ8lOKoCeeHJ3CvVxKi5BoZICCmVrsGe8bOGgpkf+pWNxhK5JO1D++aFk
         Gjag==
X-Gm-Message-State: APjAAAVaczLScb5PxPIHZlReKKYniHlHAw3Ej0BynqSvqI0ly7Y+zQR7
        TpnZl59wQ7cXCtrA9mxS7T7y5Q==
X-Google-Smtp-Source: APXvYqxZGwk4KQ+YAY4GsyBgYKpbiHklk+KncMw+8qgpUr+ys9QfMTdjm4TizVQ6yPrtfGJb79x/jw==
X-Received: by 2002:ac8:2939:: with SMTP id y54mr4410279qty.109.1582901840269;
        Fri, 28 Feb 2020 06:57:20 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-68-57-212.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.68.57.212])
        by smtp.gmail.com with ESMTPSA id f7sm5133445qtj.92.2020.02.28.06.57.19
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 28 Feb 2020 06:57:19 -0800 (PST)
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)
        (envelope-from <jgg@ziepe.ca>)
        id 1j7h4p-00034R-0q; Fri, 28 Feb 2020 10:57:19 -0400
Date:   Fri, 28 Feb 2020 10:57:19 -0400
From:   Jason Gunthorpe <jgg@ziepe.ca>
To:     Jean-Philippe Brucker <jean-philippe@linaro.org>
Cc:     Jacob Pan <jacob.jun.pan@linux.intel.com>,
        iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
        linux-mm@kvack.org, joro@8bytes.org, robh+dt@kernel.org,
        mark.rutland@arm.com, catalin.marinas@arm.com, will@kernel.org,
        robin.murphy@arm.com, kevin.tian@intel.com,
        baolu.lu@linux.intel.com, Jonathan.Cameron@huawei.com,
        christian.koenig@amd.com, yi.l.liu@intel.com,
        zhangfei.gao@linaro.org,
        Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
Subject: Re: [PATCH v4 02/26] iommu/sva: Manage process address spaces
Message-ID: <20200228145718.GR31668@ziepe.ca>
References: <20200224182401.353359-1-jean-philippe@linaro.org>
 <20200224182401.353359-3-jean-philippe@linaro.org>
 <20200226111320.3b6e6d3d@jacob-builder>
 <20200228144007.GB2156@myrica>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200228144007.GB2156@myrica>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Feb 28, 2020 at 03:40:07PM +0100, Jean-Philippe Brucker wrote:
> > > Device
> > > + * 00:00.0 accesses address spaces X and Y, each corresponding to an
> > > mm_struct.
> > > + * Devices 00:01.* only access address space Y. In addition each
> > > + * IOMMU_DOMAIN_DMA domain has a private address space, io_pgtable,
> > > that is
> > > + * managed with iommu_map()/iommu_unmap(), and isn't shared with the
> > > CPU MMU.
> > So this would allow IOVA and SVA co-exist in the same address space?
> 
> Hmm, not in the same address space, but they can co-exist in a device. In
> fact the endpoint I'm testing (hisi zip accelerator) already needs normal
> DMA alongside SVA for queue management. This one is integrated on an
> Arm-based platform so shouldn't be a concern for VT-d at the moment, but
> I suspect we might see more of this kind of device with mixed DMA.

Probably the most interesting usecases for PASID definately require
this, so this is more than a "suspect we might see"

We want to see the privileged kernel control the general behavior of
the PCI function and delegate only some DMAs to PASIDs associated with
the user mm_struct. The device is always trusted the label its DMA
properly.

These programming models are already being used for years now with the
opencapi implementation.

Jason
