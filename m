Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E58CA2FB7C8
	for <lists+devicetree@lfdr.de>; Tue, 19 Jan 2021 15:28:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389311AbhASLaz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Jan 2021 06:30:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43060 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732521AbhASJWK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Jan 2021 04:22:10 -0500
Received: from yawp.biot.com (yawp.biot.com [IPv6:2a01:4f8:10a:8e::fce2])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 43BE4C061574
        for <devicetree@vger.kernel.org>; Tue, 19 Jan 2021 01:21:30 -0800 (PST)
Received: from debian-spamd by yawp.biot.com with sa-checked (Exim 4.93)
        (envelope-from <bert@biot.com>)
        id 1l1nCa-00EDtv-KG
        for devicetree@vger.kernel.org; Tue, 19 Jan 2021 10:21:28 +0100
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on yawp
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.4
Received: from [2a02:578:460c:1:ae1f:6bff:fed1:9ca8] (helo=sumner.biot.com)
        by yawp.biot.com with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.93)
        (envelope-from <bert@biot.com>)
        id 1l1nCS-00EDsU-Ck; Tue, 19 Jan 2021 10:21:20 +0100
Received: from bert by sumner.biot.com with local (Exim 4.93)
        (envelope-from <bert@biot.com>)
        id 1l1nCR-000mDT-TT; Tue, 19 Jan 2021 10:21:19 +0100
From:   Bert Vermeulen <bert@biot.com>
To:     Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        Rob Herring <robh+dt@kernel.org>, linux-mips@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Sander Vanheule <sander@svanheule.net>,
        John Crispin <john@phrozen.org>,
        Birger Koblitz <mail@birger-koblitz.de>
Cc:     Bert Vermeulen <bert@biot.com>
Subject: [PATCH v4 4/5] dt-bindings: Add Cisco prefix to vendor list
Date:   Tue, 19 Jan 2021 10:21:08 +0100
Message-Id: <20210119092109.185282-5-bert@biot.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210119092109.185282-1-bert@biot.com>
References: <20210119092109.185282-1-bert@biot.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Signed-off-by: Bert Vermeulen <bert@biot.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 041ae90b0d8f..e6e3a51fc2e3 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -229,6 +229,8 @@ patternProperties:
     description: Computadora Industrial Abierta Argentina
   "^cirrus,.*":
     description: Cirrus Logic, Inc.
+  "^cisco,.*":
+    description: Cisco Systems, Inc.
   "^cloudengines,.*":
     description: Cloud Engines, Inc.
   "^cnm,.*":
-- 
2.25.1

