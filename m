Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7CDC71D2FEE
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2020 14:38:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726161AbgENMi6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 May 2020 08:38:58 -0400
Received: from 8bytes.org ([81.169.241.247]:42836 "EHLO theia.8bytes.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725955AbgENMi6 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 14 May 2020 08:38:58 -0400
Received: by theia.8bytes.org (Postfix, from userid 1000)
        id 3314A379; Thu, 14 May 2020 14:38:57 +0200 (CEST)
Date:   Thu, 14 May 2020 14:38:55 +0200
From:   Joerg Roedel <joro@8bytes.org>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <mripard@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        iommu@lists.linux-foundation.org
Subject: Re: [PATCH v4 0/5] iommu: Add Allwinner H6 IOMMU driver
Message-ID: <20200514123855.GI18353@8bytes.org>
References: <cover.b27dedd61e008ffcf55a028ccddda3bb4d21dfc8.1589378833.git-series.maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.b27dedd61e008ffcf55a028ccddda3bb4d21dfc8.1589378833.git-series.maxime@cerno.tech>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, May 13, 2020 at 04:07:19PM +0200, Maxime Ripard wrote:
> Maxime Ripard (5):
>   dt-bindings: iommu: Add Allwinner H6 IOMMU bindings
>   dt-bindings: display: sun8i-mixer: Allow for an iommu property
>   iommu: Add Allwinner H6 IOMMU driver
>   arm64: dts: allwinner: h6: Add IOMMU
>   drm/sun4i: mixer: Call of_dma_configure if there's an IOMMU

Applied all to the IOMMU tree, thanks. The code lives in the
arm/allwinner branch. Please use 'iommu/sun50i: <Capital Letter>...' as
the pattern for your future subject lines when changing the driver.

I also have two fixes on-top which I will send out shortly and add to
that branch.

Regards,

	Joerg
