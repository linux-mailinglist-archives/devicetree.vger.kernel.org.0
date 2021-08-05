Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 42CBA3E0C9C
	for <lists+devicetree@lfdr.de>; Thu,  5 Aug 2021 05:01:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235755AbhHEDBb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Aug 2021 23:01:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55218 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231617AbhHEDBa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Aug 2021 23:01:30 -0400
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E26E9C061765
        for <devicetree@vger.kernel.org>; Wed,  4 Aug 2021 20:01:16 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: ezequiel)
        with ESMTPSA id B63181F43B34
From:   Ezequiel Garcia <ezequiel@collabora.com>
To:     devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        Kever Yang <kever.yang@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@st.com>,
        Peter Geis <pgwipeout@gmail.com>,
        Johan Jonker <jbx6244@gmail.com>,
        Ezequiel Garcia <ezequiel@collabora.com>
Subject: [PATCH v3 4/4] arm64: dts: rockchip: Enable the GPU on Quartz64 Model A
Date:   Wed,  4 Aug 2021 23:59:48 -0300
Message-Id: <20210805025948.10900-5-ezequiel@collabora.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210805025948.10900-1-ezequiel@collabora.com>
References: <20210805025948.10900-1-ezequiel@collabora.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable the GPU core on the Pine64 Quartz64 Model A.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
index b239f314b38a..2114c7404a07 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
@@ -147,6 +147,11 @@ &gmac1m0_clkinout
 	status = "okay";
 };
 
+&gpu {
+	mali-supply = <&vdd_gpu>;
+	status = "okay";
+};
+
 &i2c0 {
 	status = "okay";
 
-- 
2.32.0

