Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9B62242AC5E
	for <lists+devicetree@lfdr.de>; Tue, 12 Oct 2021 20:52:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235564AbhJLSuh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Oct 2021 14:50:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35070 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235506AbhJLSue (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Oct 2021 14:50:34 -0400
Received: from newton.telenet-ops.be (newton.telenet-ops.be [IPv6:2a02:1800:120:4::f00:d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98D96C06174E
        for <devicetree@vger.kernel.org>; Tue, 12 Oct 2021 11:48:32 -0700 (PDT)
Received: from andre.telenet-ops.be (andre.telenet-ops.be [IPv6:2a02:1800:120:4::f00:15])
        by newton.telenet-ops.be (Postfix) with ESMTPS id 4HTPTQ01FbzMqxwp
        for <devicetree@vger.kernel.org>; Tue, 12 Oct 2021 20:34:34 +0200 (CEST)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed20:9c93:91ff:d58:ecfb])
        by andre.telenet-ops.be with bizsmtp
        id 56ZX2600B0KW32a016ZXBv; Tue, 12 Oct 2021 20:33:33 +0200
Received: from rox.of.borg ([192.168.97.57])
        by ramsan.of.borg with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1maMah-004RU3-Ap; Tue, 12 Oct 2021 20:33:31 +0200
Received: from geert by rox.of.borg with local (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1maMag-002j6O-1c; Tue, 12 Oct 2021 20:33:30 +0200
From:   Geert Uytterhoeven <geert@linux-m68k.org>
To:     Miguel Ojeda <ojeda@kernel.org>
Cc:     Robin van der Gracht <robin@protonic.nl>,
        Rob Herring <robh+dt@kernel.org>,
        Paul Burton <paulburton@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Pavel Machek <pavel@ucw.cz>, Marek Behun <marek.behun@nic.cz>,
        devicetree@vger.kernel.org, linux-leds@vger.kernel.org,
        linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org,
        Geert Uytterhoeven <geert@linux-m68k.org>
Subject: [PATCH v7 11/21] auxdisplay: ht16k33: Use HT16K33_FB_SIZE in ht16k33_initialize()
Date:   Tue, 12 Oct 2021 20:33:17 +0200
Message-Id: <20211012183327.649865-12-geert@linux-m68k.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211012183327.649865-1-geert@linux-m68k.org>
References: <20211012183327.649865-1-geert@linux-m68k.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Use the existing HT16K33_FB_SIZE definition instead of open-coding the
same calculation using an hardcoded value.
While at it, restore reverse Christmas tree variable declaration order.

Signed-off-by: Geert Uytterhoeven <geert@linux-m68k.org>
Acked-by: Robin van der Gracht <robin@protonic.nl>
---
v7:
  - No changes,

v6:
  - No changes,

v5:
  - No changes,

v4:
  - No changes,

v3:
  - No changes,

v2:
  - Add Acked-by.
---
 drivers/auxdisplay/ht16k33.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/auxdisplay/ht16k33.c b/drivers/auxdisplay/ht16k33.c
index ed5808349990782c..fed2f8bd2d27c65b 100644
--- a/drivers/auxdisplay/ht16k33.c
+++ b/drivers/auxdisplay/ht16k33.c
@@ -168,9 +168,9 @@ static void ht16k33_fb_update(struct work_struct *work)
 
 static int ht16k33_initialize(struct ht16k33_priv *priv)
 {
+	uint8_t data[HT16K33_FB_SIZE];
 	uint8_t byte;
 	int err;
-	uint8_t data[HT16K33_MATRIX_LED_MAX_COLS * 2];
 
 	/* Clear RAM (8 * 16 bits) */
 	memset(data, 0, sizeof(data));
-- 
2.25.1

