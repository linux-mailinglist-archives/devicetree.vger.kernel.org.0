Return-Path: <devicetree+bounces-964-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A5CF57A432B
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 09:44:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B12DA1C210CA
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 07:44:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCD56F4F7;
	Mon, 18 Sep 2023 07:44:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 927516FB2
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 07:44:06 +0000 (UTC)
X-Greylist: delayed 540 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Mon, 18 Sep 2023 00:41:52 PDT
Received: from mail-m121151.qiye.163.com (mail-m121151.qiye.163.com [115.236.121.151])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C791CF9;
	Mon, 18 Sep 2023 00:41:51 -0700 (PDT)
DKIM-Signature: a=rsa-sha256;
	b=ZwXs1GBSjZwKqg5hCo8UmM8vhdPvEKScYskKbClAKbM69+rHkSipOVX1bZ5rwf04cZh5WM9QBIUraUuJpENVMO6HMsqvDQ3wYP8umDX2JY0yM5iymBOfd2KA5V0H2xHuRSM6OGCseOMObrN0tv30CZ9v/YchAXQTXa4hbRlND+M=;
	s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=FVjj8wFV8jwGPF8t4GJPuriYLO1LL7PtUtc22EoDAPI=;
	h=date:mime-version:subject:message-id:from;
Received: from localhost.localdomain (unknown [58.22.7.114])
	by mail-m11879.qiye.163.com (Hmail) with ESMTPA id 0E5E1680587;
	Mon, 18 Sep 2023 15:31:53 +0800 (CST)
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
Subject: [PATCH v1 1/8] clk: clk-fractional-divider: Export clk_fractional_divider_general_approximation API
Date: Mon, 18 Sep 2023 15:31:44 +0800
Message-Id: <20230918073151.7660-2-zhangqing@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230918073151.7660-1-zhangqing@rock-chips.com>
References: <20230918073151.7660-1-zhangqing@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUgZGVYeH0JOTkgaQx0aGklVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk1PSU5JVUpLS1VKQl
	kG
X-HM-Tid: 0a8aa733efbe2eb5kusn0e5e1680587
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OjI6Mjo*Lj1NDUoPIg1CSUgC
	KQ0wFC9VSlVKTUJOS0lJSEpPS0tLVTMWGhIXVQETGhUcChIVHDsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUlPSE83Bg++
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_WEB,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

This is used by the Rockchip clk driver, export it to allow that
driver to be compiled as a module.

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
---
 drivers/clk/clk-fractional-divider.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/clk-fractional-divider.c b/drivers/clk/clk-fractional-divider.c
index 479297763e70..44bf21c97034 100644
--- a/drivers/clk/clk-fractional-divider.c
+++ b/drivers/clk/clk-fractional-divider.c
@@ -142,6 +142,7 @@ void clk_fractional_divider_general_approximation(struct clk_hw *hw,
 			GENMASK(fd->mwidth - 1, 0), GENMASK(fd->nwidth - 1, 0),
 			m, n);
 }
+EXPORT_SYMBOL_GPL(clk_fractional_divider_general_approximation);
 
 static long clk_fd_round_rate(struct clk_hw *hw, unsigned long rate,
 			      unsigned long *parent_rate)
-- 
2.17.1


