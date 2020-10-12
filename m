Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 821B228C2CD
	for <lists+devicetree@lfdr.de>; Mon, 12 Oct 2020 22:43:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728966AbgJLUnZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Oct 2020 16:43:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40366 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728944AbgJLUnZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Oct 2020 16:43:25 -0400
Received: from antares.kleine-koenig.org (antares.kleine-koenig.org [IPv6:2a01:4f8:c0c:3a97::2])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 247D8C0613D0
        for <devicetree@vger.kernel.org>; Mon, 12 Oct 2020 13:43:25 -0700 (PDT)
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
        id 52098A5218D; Mon, 12 Oct 2020 22:43:21 +0200 (CEST)
From:   =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To:     Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        Aditya Prayoga <aditya@kobol.io>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, Rob Herring <robh@kernel.org>
Subject: [PATCH v2 1/2] dt-bindings: vendor-prefixes: Add kobol prefix
Date:   Mon, 12 Oct 2020 22:43:16 +0200
Message-Id: <20201012204317.1581752-2-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201012204317.1581752-1-uwe@kleine-koenig.org>
References: <20201012204317.1581752-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The prefix is already used in arm/armada-388-helios4.dts.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Uwe Kleine-König <uwe@kleine-koenig.org>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 63996ab03521..b2cbdad45846 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -545,6 +545,8 @@ patternProperties:
     description: Kionix, Inc.
   "^kobo,.*":
     description: Rakuten Kobo Inc.
+  "^kobol,.*":
+    description: Kobol Innovations Pte. Ltd.
   "^koe,.*":
     description: Kaohsiung Opto-Electronics Inc.
   "^kontron,.*":
-- 
2.28.0

