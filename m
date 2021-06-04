Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 85BCD39BC2B
	for <lists+devicetree@lfdr.de>; Fri,  4 Jun 2021 17:45:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229925AbhFDPrp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Jun 2021 11:47:45 -0400
Received: from 8bytes.org ([81.169.241.247]:42400 "EHLO theia.8bytes.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229809AbhFDPrp (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 4 Jun 2021 11:47:45 -0400
Received: by theia.8bytes.org (Postfix, from userid 1000)
        id EBB623A9; Fri,  4 Jun 2021 17:45:57 +0200 (CEST)
Date:   Fri, 4 Jun 2021 17:45:56 +0200
From:   Joerg Roedel <joro@8bytes.org>
To:     Rob Herring <robh@kernel.org>
Cc:     Will Deacon <will@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Frank Rowand <frowand.list@gmail.com>,
        iommu@lists.linux-foundation.org
Subject: Re: [PATCH 1/2] iommu: Remove unused of_get_dma_window()
Message-ID: <YLpKtG1dnVrcXRSR@8bytes.org>
References: <20210527193710.1281746-1-robh@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210527193710.1281746-1-robh@kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 27, 2021 at 02:37:09PM -0500, Rob Herring wrote:
>  drivers/iommu/of_iommu.c | 68 ----------------------------------------
>  include/linux/of_iommu.h | 17 ++--------
>  2 files changed, 3 insertions(+), 82 deletions(-)

Applied both, thanks.
