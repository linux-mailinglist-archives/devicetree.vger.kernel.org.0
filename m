Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 18F7A30C7CA
	for <lists+devicetree@lfdr.de>; Tue,  2 Feb 2021 18:33:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237095AbhBBRas (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Feb 2021 12:30:48 -0500
Received: from 8bytes.org ([81.169.241.247]:54070 "EHLO theia.8bytes.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S234186AbhBBONC (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 2 Feb 2021 09:13:02 -0500
X-Greylist: delayed 673 seconds by postgrey-1.27 at vger.kernel.org; Tue, 02 Feb 2021 09:13:01 EST
Received: by theia.8bytes.org (Postfix, from userid 1000)
        id AF3843D4; Tue,  2 Feb 2021 15:01:02 +0100 (CET)
Date:   Tue, 2 Feb 2021 15:01:01 +0100
From:   Joerg Roedel <joro@8bytes.org>
To:     Chunyan Zhang <zhang.lyra@gmail.com>
Cc:     Robin Murphy <robin.murphy@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
        Baolin Wang <baolin.wang7@gmail.com>,
        linux-kernel@vger.kernel.org, Orson Zhai <orsonzhai@gmail.com>,
        Sheng Xu <sheng.xu@unisoc.com>,
        Chunyan Zhang <chunyan.zhang@unisoc.com>
Subject: Re: [PATCH 2/2] iommu: add Unisoc iommu basic driver
Message-ID: <20210202140101.GA32671@8bytes.org>
References: <20210202073258.559443-3-zhang.lyra@gmail.com>
 <20210202104257.736836-1-zhang.lyra@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210202104257.736836-1-zhang.lyra@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Feb 02, 2021 at 06:42:57PM +0800, Chunyan Zhang wrote:
> From: Chunyan Zhang <chunyan.zhang@unisoc.com>
> 
> This iommu module can be used by Unisoc's multimedia devices, such as
> display, Image codec(jpeg) and a few signal processors, including
> VSP(video), GSP(graphic), ISP(image), and CPP(camera pixel processor), etc.
> 
> Signed-off-by: Chunyan Zhang <chunyan.zhang@unisoc.com>
> ---
>  drivers/iommu/Kconfig      |  12 +
>  drivers/iommu/Makefile     |   1 +
>  drivers/iommu/sprd-iommu.c | 598 +++++++++++++++++++++++++++++++++++++

This looks like it actually belongs under drivers/iommu/arm/, no?

