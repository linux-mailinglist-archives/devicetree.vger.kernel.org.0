Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D383BFFCAC
	for <lists+devicetree@lfdr.de>; Mon, 18 Nov 2019 02:05:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725978AbfKRBFC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 17 Nov 2019 20:05:02 -0500
Received: from gloria.sntech.de ([185.11.138.130]:40448 "EHLO gloria.sntech.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725905AbfKRBFC (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 17 Nov 2019 20:05:02 -0500
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102] helo=phil.localnet)
        by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.89)
        (envelope-from <heiko@sntech.de>)
        id 1iWVTO-0003jf-2X; Mon, 18 Nov 2019 02:04:58 +0100
From:   Heiko Stuebner <heiko@sntech.de>
To:     Kever Yang <kever.yang@rock-chips.com>
Cc:     linux-rockchip@lists.infradead.org,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: Fix min voltage for rk3399-firefly vdd_log
Date:   Mon, 18 Nov 2019 02:04:57 +0100
Message-ID: <2125664.Zgi4m6pvVL@phil>
In-Reply-To: <20191111005158.25070-1-kever.yang@rock-chips.com>
References: <20191111005158.25070-1-kever.yang@rock-chips.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Montag, 11. November 2019, 01:51:56 CET schrieb Kever Yang:
> The min/max value of vdd_log is decide by pwm IO voltage and its
> resistors, the rk3399-firefly board's pwm regulator circuit is designed
> for IO voltage at 1.8V, while the board actually use 3.0V for IO, which
> at last lead to the min-microvolt to '430mV' instead of '800mV'.
> 
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>

applied for 5.6 (or maybe still 5.5)

Thanks
Heiko


