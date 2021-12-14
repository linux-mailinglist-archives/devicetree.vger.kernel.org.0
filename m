Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6804A47446C
	for <lists+devicetree@lfdr.de>; Tue, 14 Dec 2021 15:04:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230431AbhLNOEq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Dec 2021 09:04:46 -0500
Received: from ams.source.kernel.org ([145.40.68.75]:33332 "EHLO
        ams.source.kernel.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234660AbhLNOEq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Dec 2021 09:04:46 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 603DAB819BC
        for <devicetree@vger.kernel.org>; Tue, 14 Dec 2021 14:04:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A0B52C34609;
        Tue, 14 Dec 2021 14:04:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1639490684;
        bh=R2yYzdfAUMdXI+rHDFOCMcqQHOwzK5dqvhI3qK51N7g=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=I9kugNlFqqdj9kOOEbtHWUckO09tFTPQHhnNjKszX0GgBgf31pU2X2swpO2CbNej2
         EQz7XTWDmGrs2MdvvmjnV6cjUVhHRolhK9t+Xr4xs9P06ex60uLDDxtliedWMAI+C2
         jGSicEHIuDw5DMve8HZYsQt/16NDKHU5TfMeQN8gGjewqVZBgtM46YCHxninb3lt70
         xH8+7M+qzD0FFwKHVB8Eqs2mndC+KpE4YzTpKCn0aAfgxLwrta5hMpQmfzni4G4qy3
         jqNzZ3KzpZqJ9hlYHNSTlLcchT3memO/an5L7TpOs6UkRO5DVlqqVxUZ/eiA0fgdE9
         icumL5pWvAeUQ==
From:   Will Deacon <will@kernel.org>
To:     robh+dt@kernel.org,
        Jean-Philippe Brucker <jean-philippe@linaro.org>
Cc:     catalin.marinas@arm.com, kernel-team@android.com,
        Will Deacon <will@kernel.org>, uchida.jun@socionext.com,
        leo.yan@linaro.org, joro@8bytes.org, devicetree@vger.kernel.org,
        jkchen@linux.alibaba.com, iommu@lists.linux-foundation.org,
        mark.rutland@arm.com, robin.murphy@arm.com,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 0/3] perf/smmuv3: Support devicetree
Date:   Tue, 14 Dec 2021 14:04:33 +0000
Message-Id: <163948379278.3583372.10472496054779146145.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20211117144844.241072-1-jean-philippe@linaro.org>
References: <20211117144844.241072-1-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 17 Nov 2021 14:48:42 +0000, Jean-Philippe Brucker wrote:
> Add devicetree binding for the SMMUv3 PMU, called Performance Monitoring
> Counter Group (PMCG) in the spec. Each SMMUv3 implementation can have
> multiple independent PMCGs, for example one for the Translation Control
> Unit (TCU) and one per Translation Buffer Unit (TBU).
> 
> Since v1 [1]:
> * Fixed warnings in the binding doc
> * Removed hip08 support
> * Merged Robin's version. I took the liberty of splitting the driver
>   patch into 2 and 3. One fix in patch 3, and whitespace changes (the
>   driver uses spaces instead of tabs to align #define values, which I
>   was going to fix but actually seems more common across the tree.)
> 
> [...]

Applied to arm64 (for-next/perf-smmu), thanks!

[1/3] dt-bindings: Add Arm SMMUv3 PMCG binding
      https://git.kernel.org/arm64/c/2704e7594383
[2/3] perf/smmuv3: Add devicetree support
      https://git.kernel.org/arm64/c/3f7be4356176
[3/3] perf/smmuv3: Synthesize IIDR from CoreSight ID registers
      https://git.kernel.org/arm64/c/df457ca973fe

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev
https://will.arm64.dev
