Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0131B5743A
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2019 00:22:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726328AbfFZWWn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jun 2019 18:22:43 -0400
Received: from gloria.sntech.de ([185.11.138.130]:56660 "EHLO gloria.sntech.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726239AbfFZWWn (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 26 Jun 2019 18:22:43 -0400
Received: from ip5f5a6320.dynamic.kabel-deutschland.de ([95.90.99.32] helo=phil.localnet)
        by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.89)
        (envelope-from <heiko@sntech.de>)
        id 1hgGJJ-0004QM-GH; Thu, 27 Jun 2019 00:22:37 +0200
From:   Heiko Stuebner <heiko@sntech.de>
To:     Peter Geis <pgwipeout@gmail.com>
Cc:     "Leonidas P . Papadakos" <papadakospan@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Jose Abreu <jose.abreu@synopsys.com>,
        Robin Murphy <robin.murphy@arm.com>,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: improve rk3328-roc-cc rgmii performance.
Date:   Thu, 27 Jun 2019 00:22:36 +0200
Message-ID: <1609807.FCSDk0ZevM@phil>
In-Reply-To: <20190626130443.22025-1-pgwipeout@gmail.com>
References: <20190626130443.22025-1-pgwipeout@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Mittwoch, 26. Juni 2019, 15:04:43 CEST schrieb Peter Geis:
> Currently the rk3328-roc-cc ethernet is enabled using "snps,force_thresh_dma_mode".
> While this works, the performance leaves a lot to be desired.
> A previous attempt to improve performance used "snps,txpbl = <0x4>".
> This also allowed networking to function, but performance varied between boards.
> 
> This patch takes that one step further.
> Set txpbl and rxpbl to 0x4.
> This can also be accomplished with "snps,pbl =<0x4>" which affects both.
> Also set "snps,aal" which forces address aligned DMA mode.
> 
> Fixes: 4bc4d6013b7f (arm64: dts: rockchip: fix rk3328-roc-cc gmac2io stability issues)
> 
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> 
> Tested-by: Leonidas P. Papadakos <papadakospan@gmail.com>

applied for 5.3 after sorting the new properties alphabetically.

Thanks
Heiko


