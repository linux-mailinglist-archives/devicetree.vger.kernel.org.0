Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6B516304721
	for <lists+devicetree@lfdr.de>; Tue, 26 Jan 2021 19:54:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729961AbhAZRMl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jan 2021 12:12:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43392 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2392919AbhAZQ2r (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jan 2021 11:28:47 -0500
Received: from baptiste.telenet-ops.be (baptiste.telenet-ops.be [IPv6:2a02:1800:120:4::f00:13])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E0E66C0613D6
        for <devicetree@vger.kernel.org>; Tue, 26 Jan 2021 08:28:01 -0800 (PST)
Received: from ramsan.of.borg ([84.195.186.194])
        by baptiste.telenet-ops.be with bizsmtp
        id MUTz2400Y4C55Sk01UTzCN; Tue, 26 Jan 2021 17:27:59 +0100
Received: from rox.of.borg ([192.168.97.57])
        by ramsan.of.borg with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1l4RCB-000wY5-9w; Tue, 26 Jan 2021 17:27:59 +0100
Received: from geert by rox.of.borg with local (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1l4RCA-0086nN-TZ; Tue, 26 Jan 2021 17:27:58 +0100
From:   Geert Uytterhoeven <geert+renesas@glider.be>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org,
        Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH dt-schema 2/2] meta-schemas: vendor-props: Add percentage
Date:   Tue, 26 Jan 2021 17:27:56 +0100
Message-Id: <20210126162756.1932692-3-geert+renesas@glider.be>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210126162756.1932692-1-geert+renesas@glider.be>
References: <20210126162756.1932692-1-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add percentages to the list of recognized vendor properties.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 meta-schemas/vendor-props.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-schemas/vendor-props.yaml b/meta-schemas/vendor-props.yaml
index c620490d220a4518..35092ab5fef8d231 100644
--- a/meta-schemas/vendor-props.yaml
+++ b/meta-schemas/vendor-props.yaml
@@ -14,7 +14,7 @@ patternProperties:
   '^linux,.*$': true
   '-(gpio|gpios)$': true
   '-supply$': true
-  '-(bits|mhz|hz|sec|ms|us|ns|ps|mm)$': true
+  '-(bits|percent|mhz|hz|sec|ms|us|ns|ps|mm)$': true
   '-(microamp|microamp-hours|ohms|micro-ohms|microwatt-hours)$': true
   '-(microvolt|picofarads|celsius|millicelsius|kpascal)$': true
 
-- 
2.25.1

