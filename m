Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EB9F01E68CF
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2020 19:45:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2405597AbgE1RpR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 May 2020 13:45:17 -0400
Received: from mail.manjaro.org ([176.9.38.148]:54664 "EHLO mail.manjaro.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2405629AbgE1RpR (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 28 May 2020 13:45:17 -0400
Received: from localhost (localhost [127.0.0.1])
        by mail.manjaro.org (Postfix) with ESMTP id C2A9C37CC72C;
        Thu, 28 May 2020 19:26:09 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at manjaro.org
Received: from mail.manjaro.org ([127.0.0.1])
        by localhost (manjaro.org [127.0.0.1]) (amavisd-new, port 10024)
        with ESMTP id BUbnoqicuD8a; Thu, 28 May 2020 19:26:05 +0200 (CEST)
From:   Tobias Schramm <t.schramm@manjaro.org>
To:     Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc:     devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Tobias Schramm <t.schramm@manjaro.org>
Subject: [PATCH 0/1] Add fuel gauge to Pinbook Pro dts
Date:   Thu, 28 May 2020 19:25:49 +0200
Message-Id: <20200528172550.2324722-1-t.schramm@manjaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

since the cw2015 fuel gauge will be supported in 5.8 this patch
adds a node for it to the Pinbook Pro device tree.

Best regards,

Tobias

Tobias Schramm (1):
  arm64: dts: rockchip: add fuel gauge to Pinebook Pro dts

 .../boot/dts/rockchip/rk3399-pinebook-pro.dts | 25 +++++++++++++++++++
 1 file changed, 25 insertions(+)

-- 
2.26.0

