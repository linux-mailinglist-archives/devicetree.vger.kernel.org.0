Return-Path: <devicetree+bounces-965-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D2B27A432C
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 09:44:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 50D811C210BA
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 07:44:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2143E6FB2;
	Mon, 18 Sep 2023 07:44:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A12BF748E
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 07:44:13 +0000 (UTC)
X-Greylist: delayed 533 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Mon, 18 Sep 2023 00:41:51 PDT
Received: from m177126.mail.qiye.163.com (m177126.mail.qiye.163.com [123.58.177.126])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D0DDFCE8;
	Mon, 18 Sep 2023 00:41:51 -0700 (PDT)
DKIM-Signature: a=rsa-sha256;
	b=Dx/i0c+8V9/7en//12Jz5c5gBRAnA8seIFegWNqTloJQOPfPosEIAnxJ1nBsv+tCOpQGQCpkO+lYIuC78m77ZmKAjoLc/754Y4JguuMLbdU4uEus9lhZ8++WIk9IK1EHT6o4fxKHB5bOa6uEL0UmZCgFwQY0OyBrVcqhRHUdll8=;
	s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=FkT1/NwLGJhJV/2v8LOqPw2GTHqfJkCBrpYsiomQWlQ=;
	h=date:mime-version:subject:message-id:from;
Received: from localhost.localdomain (unknown [58.22.7.114])
	by mail-m11879.qiye.163.com (Hmail) with ESMTPA id 5EF406804E8;
	Mon, 18 Sep 2023 15:32:00 +0800 (CST)
From: Elaine Zhang <zhangqing@rock-chips.com>
To: mturquette@baylibre.com,
	sboyd@kernel.org,
	kever.yang@rock-chips.com,
	zhangqing@rock-chips.com,
	heiko@sntech.de,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	huangtao@rock-chips.com,
	xxx@rock-chips.com,
	xf@rock-chips.com
Subject: [PATCH v1 8/8] clk: rockchip: fix the clk config to support module build
Date: Mon, 18 Sep 2023 15:31:51 +0800
Message-Id: <20230918073151.7660-9-zhangqing@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230918073151.7660-1-zhangqing@rock-chips.com>
References: <20230918073151.7660-1-zhangqing@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGRgZTVZKS0JISRoaHh5PHhpVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk1PSU5JVUpLS1VKQl
	kG
X-HM-Tid: 0a8aa7340c5a2eb5kusn5ef406804e8
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Ngg6NBw5OT1CL0oWIgwPSBMy
	QkxPFBVVSlVKTUJOS0lJSElKSE9CVTMWGhIXVQETGhUcChIVHDsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUhLQ003Bg++
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_SORBS_WEB,SPF_HELO_NONE,
	SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Mark COMMON_CLK_ROCKCHIP\CONFIG_CLK_RK3399\CONFIG_CLK_RK3568\
CONFIG_CLK_RK3588 to "tristate",
to support building Rk3399\Rk3568\Rk3588 SoC clock driver as module.

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
---
 drivers/clk/rockchip/Kconfig | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/rockchip/Kconfig b/drivers/clk/rockchip/Kconfig
index 9aad86925cd2..8574c2f6ecf6 100644
--- a/drivers/clk/rockchip/Kconfig
+++ b/drivers/clk/rockchip/Kconfig
@@ -2,7 +2,7 @@
 # common clock support for ROCKCHIP SoC family.
 
 config COMMON_CLK_ROCKCHIP
-	bool "Rockchip clock controller common support"
+	tristate "Rockchip clock controller common support"
 	depends on ARCH_ROCKCHIP
 	default ARCH_ROCKCHIP
 	help
@@ -87,21 +87,21 @@ config CLK_RK3368
 	  Build the driver for RK3368 Clock Driver.
 
 config CLK_RK3399
-	bool "Rockchip RK3399 clock controller support"
+	tristate "Rockchip RK3399 clock controller support"
 	depends on ARM64 || COMPILE_TEST
 	default y
 	help
 	  Build the driver for RK3399 Clock Driver.
 
 config CLK_RK3568
-	bool "Rockchip RK3568 clock controller support"
+	tristate "Rockchip RK3568 clock controller support"
 	depends on ARM64 || COMPILE_TEST
 	default y
 	help
 	  Build the driver for RK3568 Clock Driver.
 
 config CLK_RK3588
-	bool "Rockchip RK3588 clock controller support"
+	tristate "Rockchip RK3588 clock controller support"
 	depends on ARM64 || COMPILE_TEST
 	default y
 	help
-- 
2.17.1


