Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 394163BF7B1
	for <lists+devicetree@lfdr.de>; Thu,  8 Jul 2021 11:39:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230079AbhGHJm3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Jul 2021 05:42:29 -0400
Received: from 8bytes.org ([81.169.241.247]:33318 "EHLO theia.8bytes.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231371AbhGHJm3 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 8 Jul 2021 05:42:29 -0400
Received: by theia.8bytes.org (Postfix, from userid 1000)
        id 236A7312; Thu,  8 Jul 2021 11:39:47 +0200 (CEST)
Date:   Thu, 8 Jul 2021 11:39:45 +0200
From:   Joerg Roedel <joro@8bytes.org>
To:     Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc:     will@kernel.org, robh+dt@kernel.org, heiko@sntech.de,
        xxm@rock-chips.com, robin.murphy@arm.com, dan.carpenter@oracle.com,
        iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v2] iommu: rockchip: Fix physical address decoding
Message-ID: <YObH4cb4vji/IvF5@8bytes.org>
References: <20210618130047.547986-1-benjamin.gaignard@collabora.com>
 <e2c3d5c2-3f45-90b9-1b55-54df133a952f@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e2c3d5c2-3f45-90b9-1b55-54df133a952f@collabora.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Benjamin,

On Mon, Jul 05, 2021 at 01:40:24PM +0200, Benjamin Gaignard wrote:
> Gentle ping on this patch :-)

Please fix the subject to match the IOMMU tree conventions. This would
be:

	iommu/rockchip: Fix physical address decoding

Re-send the patch after the merge window is closed.

Thanks,

	Joerg
