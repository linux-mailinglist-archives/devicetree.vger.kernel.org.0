Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 737ED68A906
	for <lists+devicetree@lfdr.de>; Sat,  4 Feb 2023 09:48:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231247AbjBDIs2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 4 Feb 2023 03:48:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54384 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230101AbjBDIs0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 4 Feb 2023 03:48:26 -0500
Received: from smtp-out2.suse.de (smtp-out2.suse.de [IPv6:2001:67c:2178:6::1d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD2B0744BF
        for <devicetree@vger.kernel.org>; Sat,  4 Feb 2023 00:48:24 -0800 (PST)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
        (No client certificate requested)
        by smtp-out2.suse.de (Postfix) with ESMTPS id F2CCF5D654;
        Sat,  4 Feb 2023 08:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
        t=1675500503; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=d7z5XdZWoamkGn7uclimU2ACqm9qye4DCglVI+koIEk=;
        b=nATeYykF8rYYi8PGDJueJBr6A+n8QfcOfWScCp882P7FlYezgDoYWJTlaT47kwC2+80dMe
        qwfTyrzDtXWbJ1hztMkSqydo60Myctw7J09zWgiXw9qJvUmOgo7LLUO8vNymOovDIqzNaW
        gPBonH7+SxVwzhv1xBhS4R4U37ra4ew=
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
        (No client certificate requested)
        by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id A4C95133F5;
        Sat,  4 Feb 2023 08:48:21 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
        by imap2.suse-dmz.suse.de with ESMTPSA
        id wJSrHdUb3mMKLAAAMHmgww
        (envelope-from <wqu@suse.com>); Sat, 04 Feb 2023 08:48:21 +0000
From:   Qu Wenruo <wqu@suse.com>
To:     linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     sebastian.reichel@collabora.com, heiko@sntech.de
Subject: [PATCH RFC 1/5] drivers: phy: rockhip: remove 24M and 25M clock handling for naneng combphy
Date:   Sat,  4 Feb 2023 16:47:58 +0800
Message-Id: <90166337143165787f131516976032af7aa200e8.1675498628.git.wqu@suse.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <cover.1675498628.git.wqu@suse.com>
References: <cover.1675498628.git.wqu@suse.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Although the combphy supports 24M and 25M clocks, they are not utilized
at any upstream dts (RK3568) nor downstream vendor kernel (RK3568,
RK3588S, RK3588).

Another thing is, with those two clocks removed, it's easier to port the
rk3588 combphy, as 3588 combphy needs to write into cfg->pipe_clk_24m
for 24M clock case.

Signed-off-by: Qu Wenruo <wqu@suse.com>
---
 .../phy/rockchip/phy-rockchip-naneng-combphy.c  | 17 -----------------
 1 file changed, 17 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
index 7b213825fb5d..ae7083ae17a2 100644
--- a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
@@ -94,7 +94,6 @@ struct rockchip_combphy_grfcfg {
 	struct combphy_reg pipe_rxterm_set;
 	struct combphy_reg pipe_txelec_set;
 	struct combphy_reg pipe_txcomp_set;
-	struct combphy_reg pipe_clk_25m;
 	struct combphy_reg pipe_clk_100m;
 	struct combphy_reg pipe_phymode_sel;
 	struct combphy_reg pipe_rate_sel;
@@ -454,21 +453,6 @@ static int rk3568_combphy_cfg(struct rockchip_combphy_priv *priv)
 	rate = clk_get_rate(priv->refclk);
 
 	switch (rate) {
-	case REF_CLOCK_24MHz:
-		if (priv->type == PHY_TYPE_USB3 || priv->type == PHY_TYPE_SATA) {
-			/* Set ssc_cnt[9:0]=0101111101 & 31.5KHz. */
-			val = PHYREG15_SSC_CNT_VALUE << PHYREG15_SSC_CNT_SHIFT;
-			rockchip_combphy_updatel(priv, PHYREG15_SSC_CNT_MASK,
-						 val, PHYREG15);
-
-			writel(PHYREG16_SSC_CNT_VALUE, priv->mmio + PHYREG16);
-		}
-		break;
-
-	case REF_CLOCK_25MHz:
-		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_clk_25m, true);
-		break;
-
 	case REF_CLOCK_100MHz:
 		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_clk_100m, true);
 		if (priv->type == PHY_TYPE_PCIE) {
@@ -530,7 +514,6 @@ static const struct rockchip_combphy_grfcfg rk3568_combphy_grfcfgs = {
 	.pipe_rxterm_set	= { 0x0000, 12, 12, 0x00, 0x01 },
 	.pipe_txelec_set	= { 0x0004, 1, 1, 0x00, 0x01 },
 	.pipe_txcomp_set	= { 0x0004, 4, 4, 0x00, 0x01 },
-	.pipe_clk_25m		= { 0x0004, 14, 13, 0x00, 0x01 },
 	.pipe_clk_100m		= { 0x0004, 14, 13, 0x00, 0x02 },
 	.pipe_phymode_sel	= { 0x0008, 1, 1, 0x00, 0x01 },
 	.pipe_rate_sel		= { 0x0008, 2, 2, 0x00, 0x01 },
-- 
2.39.1

