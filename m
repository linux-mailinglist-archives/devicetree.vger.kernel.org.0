Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E0506D3368
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2019 23:29:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726804AbfJJV3Q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Oct 2019 17:29:16 -0400
Received: from gloria.sntech.de ([185.11.138.130]:33780 "EHLO gloria.sntech.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725867AbfJJV3Q (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 10 Oct 2019 17:29:16 -0400
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102] helo=phil.localnet)
        by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.89)
        (envelope-from <heiko@sntech.de>)
        id 1iIfzl-0007B2-J1; Thu, 10 Oct 2019 23:29:13 +0200
From:   Heiko Stuebner <heiko@sntech.de>
To:     Robin Murphy <robin.murphy@arm.com>
Cc:     devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Update nanopi4 phy reset properties
Date:   Thu, 10 Oct 2019 23:29:12 +0200
Message-ID: <2606862.TP9lFruHDT@phil>
In-Reply-To: <4d16c24ae3651a2119cf5bb1213f46a9fce4b39a.1570444773.git.robin.murphy@arm.com>
References: <4d16c24ae3651a2119cf5bb1213f46a9fce4b39a.1570444773.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Montag, 7. Oktober 2019, 13:33:26 CEST schrieb Robin Murphy:
> Use the now-preferred generic phy reset properties instead of the
> dwmac-specific ones.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>

applied for 5.5

Thanks
Heiko


