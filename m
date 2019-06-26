Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4AB6E5745A
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2019 00:38:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726347AbfFZWi2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jun 2019 18:38:28 -0400
Received: from gloria.sntech.de ([185.11.138.130]:56856 "EHLO gloria.sntech.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726289AbfFZWi2 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 26 Jun 2019 18:38:28 -0400
Received: from ip5f5a6320.dynamic.kabel-deutschland.de ([95.90.99.32] helo=phil.localnet)
        by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.89)
        (envelope-from <heiko@sntech.de>)
        id 1hgGYb-0004Ub-O1; Thu, 27 Jun 2019 00:38:25 +0200
From:   Heiko Stuebner <heiko@sntech.de>
To:     Vivek Unune <npcomplete13@gmail.com>
Cc:     linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add support for Hugsun X99 TV Box
Date:   Thu, 27 Jun 2019 00:38:25 +0200
Message-ID: <3247989.aGYRIomCNH@phil>
In-Reply-To: <20190621205308.5177-1-npcomplete13@gmail.com>
References: <2273961.GTPgWWlV5T@phil> <20190621205308.5177-1-npcomplete13@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Freitag, 21. Juni 2019, 22:53:08 CEST schrieb Vivek Unune:
> Add devicetree support for Hugsun X99 TV Box based on RK3399 SoC
> 
> Tested with LibreElec running kernel v5.1.2.
> Following peripherals tested and work:
> 
> Peripheral works:
> - UART2 debug
> - eMMC
> - USB 3.0 port
> - USB 2.0 port
> - sdio, sd-card
> - HDMI
> - Ethernet
> - WiFi/BT
> 
> Not tested:
> - Type-C port
> - OPTICAL
> - IR
> 
> Signed-off-by: Vivek Unune <npcomplete13@gmail.com>

applied for 5.3 after doing some reordering to make things
alphabetical.

Heiko


