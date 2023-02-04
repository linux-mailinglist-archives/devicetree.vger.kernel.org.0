Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C89EC68A905
	for <lists+devicetree@lfdr.de>; Sat,  4 Feb 2023 09:48:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231499AbjBDIs1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 4 Feb 2023 03:48:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54386 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231247AbjBDIs0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 4 Feb 2023 03:48:26 -0500
Received: from smtp-out2.suse.de (smtp-out2.suse.de [IPv6:2001:67c:2178:6::1d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D0125241C1
        for <devicetree@vger.kernel.org>; Sat,  4 Feb 2023 00:48:25 -0800 (PST)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
        (No client certificate requested)
        by smtp-out2.suse.de (Postfix) with ESMTPS id 874515D656;
        Sat,  4 Feb 2023 08:48:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
        t=1675500504; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=V5b1kCfDGCU5YcLqwmfOEQh2ID5lw/xCgrao4KcPQ+Q=;
        b=L541wiwkzTIVzs0gseWewF1wgmx9zlLPdqWbiM42I5YTJ/UPglAmk/XHOh3Gbvx1OokdQl
        eCflQA6XXnSpEUeZXp36IQ4YrHNqf920jUoL3PnsoriM0tmB1TybzT/nWqgzkFMiTsHYZL
        /wxQDqPZhdQkik7AMvL100KhZFtBq3A=
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
        (No client certificate requested)
        by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 4498C133F5;
        Sat,  4 Feb 2023 08:48:23 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
        by imap2.suse-dmz.suse.de with ESMTPSA
        id UOkpBtcb3mMKLAAAMHmgww
        (envelope-from <wqu@suse.com>); Sat, 04 Feb 2023 08:48:23 +0000
From:   Qu Wenruo <wqu@suse.com>
To:     linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     sebastian.reichel@collabora.com, heiko@sntech.de
Subject: [PATCH RFC 2/5] dt-bindings: pci: controller: add pcie controller binding for RK3588
Date:   Sat,  4 Feb 2023 16:47:59 +0800
Message-Id: <fe221481f4df1b552183648489a02ab5ac3216e6.1675498628.git.wqu@suse.com>
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

All the properties are the same with RK3568 PCIE controllers, and in
fact the driver can also be reused between RK3568 and RK3588
PCIE controllers.

Signed-off-by: Qu Wenruo <wqu@suse.com>
---
 Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
index 2be72ae1169f..473c90a163b1 100644
--- a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
@@ -21,8 +21,9 @@ allOf:
 
 properties:
   compatible:
-    items:
-      - const: rockchip,rk3568-pcie
+    enum:
+      - rockchip,rk3568-pcie
+      - rockchip,rk3588-pcie
 
   reg:
     items:
-- 
2.39.1

