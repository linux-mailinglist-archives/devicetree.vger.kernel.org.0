Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DE6E368A907
	for <lists+devicetree@lfdr.de>; Sat,  4 Feb 2023 09:48:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232696AbjBDIs3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 4 Feb 2023 03:48:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54416 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230101AbjBDIs2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 4 Feb 2023 03:48:28 -0500
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.220.29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7BC49241C1
        for <devicetree@vger.kernel.org>; Sat,  4 Feb 2023 00:48:27 -0800 (PST)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
        (No client certificate requested)
        by smtp-out2.suse.de (Postfix) with ESMTPS id 269285D655;
        Sat,  4 Feb 2023 08:48:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
        t=1675500506; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=LfXFDj2zbKch59pbOhh+rRsUmyO2+PkAEbeDIy2JVk4=;
        b=GRstlmIUesSyP7u9eKKfjBsZplR+yuatbBaqcEPRVuJe85wg2Q27xBgyMnk3s2XT/P37vR
        5YWRxCWqaZeVt5kMqGrrRhJgeg92r7YEZCKAHzRiURKQRCsx00S27+mPEBHi9FXEpckcSL
        3ZkWEYe+QuHhCFuJLWsYRJbLbZPkUgY=
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
        (No client certificate requested)
        by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id D978C133F5;
        Sat,  4 Feb 2023 08:48:24 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
        by imap2.suse-dmz.suse.de with ESMTPSA
        id aCxVKtgb3mMKLAAAMHmgww
        (envelope-from <wqu@suse.com>); Sat, 04 Feb 2023 08:48:24 +0000
From:   Qu Wenruo <wqu@suse.com>
To:     linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     sebastian.reichel@collabora.com, heiko@sntech.de
Subject: [PATCH RFC 3/5] drivers: pci: controller: add PCIE controller driver for RK3588
Date:   Sat,  4 Feb 2023 16:48:00 +0800
Message-Id: <5ec4caab3fa934c173bbbfbbf711b1d2429426a7.1675498628.git.wqu@suse.com>
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

According to the downstream code, the RK3568 and RK3588 share the same
driver.

Downstream code only has extra handling for the following cases:

- RK1808 driver
- Bifurcation handling
- Endpoint handling

All of the above features are not available upstream anyway.

Thus here we only need to add a new compatible string for the existing
driver.

Signed-off-by: Qu Wenruo <wqu@suse.com>
---
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index c1e7653e508e..435b717e5bc6 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -354,6 +354,7 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
 
 static const struct of_device_id rockchip_pcie_of_match[] = {
 	{ .compatible = "rockchip,rk3568-pcie", },
+	{ .compatible = "rockchip,rk3588-pcie", },
 	{},
 };
 
-- 
2.39.1

