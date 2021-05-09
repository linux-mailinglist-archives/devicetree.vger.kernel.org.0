Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 215C2377961
	for <lists+devicetree@lfdr.de>; Mon, 10 May 2021 01:55:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229939AbhEIX4T (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 9 May 2021 19:56:19 -0400
Received: from gloria.sntech.de ([185.11.138.130]:55622 "EHLO gloria.sntech.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229882AbhEIX4T (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 9 May 2021 19:56:19 -0400
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74] helo=phil.fritz.box)
        by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <heiko@sntech.de>)
        id 1lftGU-0007y6-PJ; Mon, 10 May 2021 01:55:14 +0200
From:   Heiko Stuebner <heiko@sntech.de>
To:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org,
        Peter Robinson <pbrobinson@gmail.com>,
        linux-arm-kernel@lists.infradead.org
Cc:     Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: Use only supported PCIe link speed on rk3399
Date:   Mon, 10 May 2021 01:55:08 +0200
Message-Id: <162060449718.1266480.9690323192320155631.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210413141709.845592-1-pbrobinson@gmail.com>
References: <20210413141709.845592-1-pbrobinson@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 13 Apr 2021 15:17:09 +0100, Peter Robinson wrote:
> The max link speed supported by the rk3399 is already set in the
> rk3399.dtsi file so don't set unsupported link speeds in device
> specific DTs. This is the same fix as 642fb27.

Applied, thanks!

[1/1] arm64: dts: rockchip: Use only supported PCIe link speed on rk3399
      commit: 954d5986afa50c178ea7554e6abdd611d08f5ade

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
