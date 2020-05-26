Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 795971C4003
	for <lists+devicetree@lfdr.de>; Mon,  4 May 2020 18:36:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729702AbgEDQgG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 May 2020 12:36:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43664 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728655AbgEDQgG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 May 2020 12:36:06 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BFA51C061A0E
        for <devicetree@vger.kernel.org>; Mon,  4 May 2020 09:36:05 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id k1so21768422wrx.4
        for <devicetree@vger.kernel.org>; Mon, 04 May 2020 09:36:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=Kl5xt2RTiHls+O1+Q0mo8BGBZHrI/nlz87XckVdCL1g=;
        b=ie+B2GQn0xE9JMPS6WF8xSO2Nb3Bq/Z6k2tntw6DutFeL6B9N4DPWVklfbNH4FnjaN
         t/FdSJpizjKhO8r7qWYTVIfj5tsh0Pyre46+FgQl/czQpS77eCKBAx7l0fXzqe5oMoJN
         srD+3dXDSZ1b8gDIeuMqWa8VuGSbuKmcgrBbHkW2D7hnwsTKJTes6Tw8OLdAyIdx9DsB
         hoEzpcXksJ2R6iwRnxlq1Hy4FZn4zTesCpGIx+6colQIPrKfNOCzGL8j1llscgSmy5B/
         5cauF3xMhaLP0b+LA+EjuCFSF43vHxSqLu21aoJ22r7LNEmYy0ZayKBxq3kGlHDl94a6
         bpsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Kl5xt2RTiHls+O1+Q0mo8BGBZHrI/nlz87XckVdCL1g=;
        b=Dyanh3Ovwtyl+b5rLzAeG+BsPsRsD36eRAPVaOgCPmdnNZ9AeGHGpclqcf+ZQT+7kt
         umbnMPyJXFXaUuMyWiKzdE9eIEhyurFJ+dvLMKZ14gAx2+A1DGjh7rZvz7rvbNHL90oF
         atFXfvBQivAkNZO4L2msIPx479fDW2e/PZTi3FMekp+l7RBRxzyKB8X4+zhK0Oi5ZKfz
         36KHwLqddI3dKk/UuZ579LVMlaV6aH8q/3XTZlZbCkPYlvB0PTGj0wZ8ZuRi3cSowtZt
         8Z82ktCJaIuIfDoEs08AXqW1qMyMEEhRRTQ89hYLwrxLgmW0E+TVeThVmtNDjvMFwou3
         20Tw==
X-Gm-Message-State: AGi0PuaKT2mFRUt30rb7xBePQK6+py/L96UYJ7ow2ggreShyyKWT5k0k
        B45MdbgfNFkuMtRdHGxslGjpaA==
X-Google-Smtp-Source: APiQypLd6vuo0MczRTSEBPfkSN84zUGhA14hWPmpa6tAN+ckf2g+Pmwwtmh//IwEutIpZVdWAHOW4g==
X-Received: by 2002:a05:6000:10c4:: with SMTP id b4mr20516301wrx.203.1588610164479;
        Mon, 04 May 2020 09:36:04 -0700 (PDT)
Received: from myrica ([2001:171b:226e:c200:c43b:ef78:d083:b355])
        by smtp.gmail.com with ESMTPSA id z1sm13717417wmf.15.2020.05.04.09.36.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 May 2020 09:36:03 -0700 (PDT)
Date:   Mon, 4 May 2020 18:35:53 +0200
From:   Jean-Philippe Brucker <jean-philippe@linaro.org>
To:     Prabhakar Kushwaha <prabhakar.pkin@gmail.com>
Cc:     iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-pci@vger.kernel.org, linux-mm@kvack.org, joro@8bytes.org,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>, kevin.tian@intel.com,
        baolu.lu@linux.intel.com, Jonathan.Cameron@huawei.com,
        jacob.jun.pan@linux.intel.com, christian.koenig@amd.com,
        felix.kuehling@amd.com, zhangfei.gao@linaro.org, jgg@ziepe.ca,
        xuzaibo@huawei.com, fenghua.yu@intel.com, hch@infradead.org,
        Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>,
        tanmay@marvell.com
Subject: Re: [PATCH v6 19/25] iommu/arm-smmu-v3: Add support for Hardware
 Translation Table Update
Message-ID: <20200504163553.GI170104@myrica>
References: <20200430143424.2787566-1-jean-philippe@linaro.org>
 <20200430143424.2787566-20-jean-philippe@linaro.org>
 <CAJ2QiJLUxiJRnxQmO3O_48ZcTtNwziCWT6i2SJdAruDi+KGEFw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAJ2QiJLUxiJRnxQmO3O_48ZcTtNwziCWT6i2SJdAruDi+KGEFw@mail.gmail.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, May 04, 2020 at 07:54:03PM +0530, Prabhakar Kushwaha wrote:
> Dear Jean,
> 
> On Thu, Apr 30, 2020 at 8:11 PM Jean-Philippe Brucker
> <jean-philippe@linaro.org> wrote:
> >
> > If the SMMU supports it and the kernel was built with HTTU support, enable
> 
> is there any framework/config for HTTU which must be enabled to use this patch?
> 
> 
> > We can enable HTTU even if CPUs don't support it, because the kernel
> > always checks for HW dirty bit and updates the PTE flags atomically.
> >
> I believe, this statement is valid in context of this patch-set only.
> 
> One cannot use code snipped to test HTTU because exiting
> io-pgtable-arm.c driver doesn't have framework to leverage HTTU
> benfits. It by-default sets AF=1 and does not set DBM.

Right, this patch only sets the hardware access and dirty flags for SVA
(page tables shared with the CPU through iommu_bind*()), it doesn't enable
anything for iommu_map/unmap(). Although I remember discussing it for VM
migration, I don't know of any effort to use hardware access/dirty bits
outside of SVA.

Thanks,
Jean
