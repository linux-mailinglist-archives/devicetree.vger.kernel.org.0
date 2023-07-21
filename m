Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1FE4075C56C
	for <lists+devicetree@lfdr.de>; Fri, 21 Jul 2023 13:08:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229557AbjGULIr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Jul 2023 07:08:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54138 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230064AbjGULHg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Jul 2023 07:07:36 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 680D646A4
        for <devicetree@vger.kernel.org>; Fri, 21 Jul 2023 04:04:08 -0700 (PDT)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <m.felsch@pengutronix.de>)
        id 1qMnvL-0000Ly-A7; Fri, 21 Jul 2023 13:03:51 +0200
From:   Marco Felsch <m.felsch@pengutronix.de>
To:     davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
        pabeni@redhat.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        peppe.cavallaro@st.com, alexandre.torgue@foss.st.com,
        joabreu@synopsys.com, mcoquelin.stm32@gmail.com
Cc:     devicetree@vger.kernel.org, netdev@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel@pengutronix.de,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH net-next v4 2/3] net: stmmac: introduce small helper to check STMMAC_FLAG_USE_PHY_WOL
Date:   Fri, 21 Jul 2023 13:03:44 +0200
Message-Id: <20230721110345.3925719-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230721110345.3925719-1-m.felsch@pengutronix.de>
References: <20230721110345.3925719-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::28
X-SA-Exim-Mail-From: m.felsch@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a convenient helper to make it easier to check the
STMMAC_FLAG_USE_PHY_WOL flag which is useful for the follow up commit.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Changelog:
v4:
- new patch

 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index e7ca52f0d2f2d..add271ec8d801 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -6949,6 +6949,11 @@ static void stmmac_service_task(struct work_struct *work)
 	clear_bit(STMMAC_SERVICE_SCHED, &priv->state);
 }
 
+static bool stmmac_use_phy_wol(struct stmmac_priv *priv)
+{
+	return priv->plat->flags & STMMAC_FLAG_USE_PHY_WOL;
+}
+
 /**
  *  stmmac_hw_init - Init the MAC device
  *  @priv: driver private structure
@@ -6983,7 +6988,7 @@ static int stmmac_hw_init(struct stmmac_priv *priv)
 		 */
 		priv->plat->enh_desc = priv->dma_cap.enh_desc;
 		priv->plat->pmt = priv->dma_cap.pmt_remote_wake_up &&
-				!(priv->plat->flags & STMMAC_FLAG_USE_PHY_WOL);
+				!stmmac_use_phy_wol(priv);
 		priv->hw->pmt = priv->plat->pmt;
 		if (priv->dma_cap.hash_tb_sz) {
 			priv->hw->multicast_filter_bins =
-- 
2.39.2

