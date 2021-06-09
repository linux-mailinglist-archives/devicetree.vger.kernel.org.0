Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DD4153A0E0F
	for <lists+devicetree@lfdr.de>; Wed,  9 Jun 2021 09:49:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236073AbhFIHvP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Jun 2021 03:51:15 -0400
Received: from 8bytes.org ([81.169.241.247]:43214 "EHLO theia.8bytes.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S237024AbhFIHvP (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 9 Jun 2021 03:51:15 -0400
Received: by theia.8bytes.org (Postfix, from userid 1000)
        id 5816036A; Wed,  9 Jun 2021 09:49:20 +0200 (CEST)
Date:   Wed, 9 Jun 2021 09:49:19 +0200
From:   Joerg Roedel <joro@8bytes.org>
To:     Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc:     will@kernel.org, robh+dt@kernel.org, heiko@sntech.de,
        xxm@rock-chips.com, robin.murphy@arm.com,
        iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v8 0/4] Add IOMMU driver for rk356x
Message-ID: <YMByf1BX7cOKdZd+@8bytes.org>
References: <20210604164441.798362-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210604164441.798362-1-benjamin.gaignard@collabora.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jun 04, 2021 at 06:44:37PM +0200, Benjamin Gaignard wrote:
> This series adds the IOMMU driver for rk356x SoC.
> Since a new compatible is needed to distinguish this second version of 
> IOMMU hardware block from the first one, it is an opportunity to convert
> the binding to DT schema.
> 
> version 8:
>  - Fix compilation issue.

Applied, thanks.
