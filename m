Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E28703030B5
	for <lists+devicetree@lfdr.de>; Tue, 26 Jan 2021 00:59:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726563AbhAYX7D (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jan 2021 18:59:03 -0500
Received: from gloria.sntech.de ([185.11.138.130]:33954 "EHLO gloria.sntech.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1732149AbhAYX5N (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 25 Jan 2021 18:57:13 -0500
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74] helo=phil.fritz.box)
        by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <heiko@sntech.de>)
        id 1l4Bif-00066j-Qp; Tue, 26 Jan 2021 00:56:29 +0100
From:   Heiko Stuebner <heiko@sntech.de>
To:     Johan Jonker <jbx6244@gmail.com>
Cc:     Heiko Stuebner <heiko@sntech.de>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, robh+dt@kernel.org
Subject: Re: (subset) [PATCH 1/5] ARM: dts: rockchip: assign a fixed index to mmc devices on rk322x boards
Date:   Tue, 26 Jan 2021 00:56:18 +0100
Message-Id: <161161878917.2050283.16404617664067738024.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210118155242.7172-1-jbx6244@gmail.com>
References: <20210118155242.7172-1-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 18 Jan 2021 16:52:38 +0100, Johan Jonker wrote:
> Recently introduced async probe on mmc devices can shuffle block IDs.
> Pin them to fixed values to ease booting in environments where UUIDs are
> not practical. Use newly introduced aliases for mmcblk devices from [1].
> The sort order is based on reg address.
> 
> [1] https://patchwork.kernel.org/patch/11747669/

Applied, thanks!

[1/5] ARM: dts: rockchip: assign a fixed index to mmc devices on rk322x boards
      commit: 94e8a5f6d0dee8e81bdcef6d3e86a027459df225
[2/5] ARM: dts: rockchip: assign a fixed index to mmc devices on rv1108 boards
      commit: 1034e2b6b8435758c0d699b77761365fd09a5f4a

Patches 3-5 as well, just before didn't like the separate branches


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
