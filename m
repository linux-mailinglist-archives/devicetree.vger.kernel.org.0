Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E94AE351B8C
	for <lists+devicetree@lfdr.de>; Thu,  1 Apr 2021 20:11:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235821AbhDASIz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Apr 2021 14:08:55 -0400
Received: from mail.kernel.org ([198.145.29.99]:38082 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S237933AbhDASFC (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 1 Apr 2021 14:05:02 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id A366661391;
        Thu,  1 Apr 2021 17:07:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1617296878;
        bh=qFocNvtPsf8pAsFshLPeo3aKoGr3THZgmZB1NTwW9/w=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=JAIYYfUn3RhCo4ZlQdbcFNHvyHYBatFPqxCXKTPP+iq474Dc5Sjcvp4yVsRsj1m6b
         w+gUCeSvoV5fo2+4P6Yg2EVHtuRhF1Ww0HfsZJ6CxKPikoELJYI7yb3RASqk39k5GL
         lM5SktP9m2fwyioniLazyU6S+ZyX4yhsKsDD78B6n2G2I5uJVFjPz2Kyvonk0/Z8i/
         Q5mhyhbJf0x8ptgTmu83TCHwNg++7ju+IjYUGbwmJgfUM4MWvMvP1GVApjwTTh5nVH
         E4HSGMchCOQEWcxLU8/5WhXWfLR0S6xwl3RY82Lc/NnSZzO48YAw8mSqnV7k4YIqlB
         UhWuS9IoV3JcQ==
Date:   Thu, 1 Apr 2021 18:07:52 +0100
From:   Will Deacon <will@kernel.org>
To:     Jean-Philippe Brucker <jean-philippe@linaro.org>
Cc:     joro@8bytes.org, vivek.gautam@arm.com, guohanjun@huawei.com,
        linux-acpi@vger.kernel.org, zhangfei.gao@linaro.org,
        lenb@kernel.org, devicetree@vger.kernel.org, kevin.tian@intel.com,
        robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
        rjw@rjwysocki.net, iommu@lists.linux-foundation.org,
        sudeep.holla@arm.com, robin.murphy@arm.com,
        linux-accelerators@lists.ozlabs.org
Subject: Re: [PATCH v14 07/10] iommu/arm-smmu-v3: Maintain a SID->device
 structure
Message-ID: <20210401170752.GA9447@willie-the-truck>
References: <20210401154718.307519-1-jean-philippe@linaro.org>
 <20210401154718.307519-8-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210401154718.307519-8-jean-philippe@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Apr 01, 2021 at 05:47:16PM +0200, Jean-Philippe Brucker wrote:
> When handling faults from the event or PRI queue, we need to find the
> struct device associated with a SID. Add a rb_tree to keep track of
> SIDs.
> 
> Acked-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
> Reviewed-by: Eric Auger <eric.auger@redhat.com>
> Reviewed-by: Keqian Zhu <zhukeqian1@huawei.com>
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>

Acked-by: Will Deacon <will@kernel.org>

Will
