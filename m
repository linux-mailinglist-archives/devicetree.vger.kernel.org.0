Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A4BAA129114
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2019 04:07:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726557AbfLWDHE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 22 Dec 2019 22:07:04 -0500
Received: from mail.kernel.org ([198.145.29.99]:55412 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726539AbfLWDHE (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 22 Dec 2019 22:07:04 -0500
Received: from localhost.localdomain (unknown [180.106.222.238])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 64A1D2067C;
        Mon, 23 Dec 2019 03:07:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1577070424;
        bh=tGKbfl4nYGrpKIa7XUFcKI6UndQrGfcsMQv6v2wYn+w=;
        h=From:To:Cc:Subject:Date:From;
        b=GzISkFog5/WYeLvQ6e67aPyPLaYVJi9UQ++LfgRVU4St0TSUfomA/94/uqYIbTXHN
         qYAln6E/rrLnFBFYhUtlL4EhDfihUCZgT/TCTcRoLYS0kH1UTadC1IX63CSj3snuIR
         3+qvqGD/l+5GK7Q7hUoohObyHM4LBHbRndWOyb9U=
From:   Shawn Guo <shawnguo@kernel.org>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Russell King - ARM Linux admin <linux@armlinux.org.uk>,
        Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH] bindings: fsl: document compatibles of lx2160a boards
Date:   Mon, 23 Dec 2019 11:05:09 +0800
Message-Id: <20191223030509.13298-1-shawnguo@kernel.org>
X-Mailer: git-send-email 2.18.0
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The lx2160a board compatibles "fsl,lx2160a-qds" and "fsl,lx2160a-rdb"
have been in use.  Let's document them.

Signed-off-by: Shawn Guo <shawnguo@kernel.org>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 6f241a3b5a20..ee538f3a7f4d 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -389,6 +389,13 @@ properties:
               - fsl,ls2088a-rdb
           - const: fsl,ls2088a
 
+      - description: LX2160A based Boards
+        items:
+          - enum:
+              - fsl,lx2160a-qds
+              - fsl,lx2160a-rdb
+          - const: fsl,lx2160a
+
       - description: S32V234 based Boards
         items:
           - enum:
-- 
2.18.0

