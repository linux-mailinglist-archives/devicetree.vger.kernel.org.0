Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3207C4971C0
	for <lists+devicetree@lfdr.de>; Sun, 23 Jan 2022 14:51:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236516AbiAWNvZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 23 Jan 2022 08:51:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43504 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236510AbiAWNvX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 23 Jan 2022 08:51:23 -0500
Received: from mxout1.routing.net (mxout1.routing.net [IPv6:2a03:2900:1:a::a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81A5CC06173B;
        Sun, 23 Jan 2022 05:51:23 -0800 (PST)
Received: from mxbox1.masterlogin.de (unknown [192.168.10.88])
        by mxout1.routing.net (Postfix) with ESMTP id C829940177;
        Sun, 23 Jan 2022 13:51:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
        s=20200217; t=1642945881;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=Cp8maleWJkAj3g8Rqy87pKYRY7/YmFrFYofmm6M7tfU=;
        b=rZUsMfTkDgNskC1cunOKZfTFi99yjhL47JXnmLDGS6pskjcUKEnyazJKBsHKHMLB9giDpp
        YwM6J6xT8wE1XY8HckZS5Kgu5rL68FI7lsW1qqnWRlojCQn1GtcEl6ll78DA1Z2y/ghZfv
        qnqjk7nWNbWYtWMaYY2n4Rj+kAtpmEk=
Received: from localhost.localdomain (fttx-pool-80.245.79.232.bambit.de [80.245.79.232])
        by mxbox1.masterlogin.de (Postfix) with ESMTPSA id 1A67A406FA;
        Sun, 23 Jan 2022 13:51:21 +0000 (UTC)
From:   Frank Wunderlich <linux@fw-web.de>
To:     linux-rockchip@lists.infradead.org
Cc:     Frank Wunderlich <frank-w@public-files.de>,
        Rob Herring <robh+dt@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>,
        Johan Jonker <jbx6244@gmail.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: rockchip: Add BananaPi R2 Pro Board
Date:   Sun, 23 Jan 2022 14:51:15 +0100
Message-Id: <20220123135116.136846-2-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220123135116.136846-1-linux@fw-web.de>
References: <20220123135116.136846-1-linux@fw-web.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mail-ID: fd44d46b-3834-4f3f-8039-6be9dbcf7176
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Frank Wunderlich <frank-w@public-files.de>

Add Devicetree Binding for Bananapi R2 Pro Board based on rk3568 SoC

Co-developed-by: Peter Geis <pgwipeout@gmail.com>
Signed-off-by: Peter Geis <pgwipeout@gmail.com>
Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 4aed16176434..33d6423fe6c3 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -651,6 +651,11 @@ properties:
           - const: rockchip,rk3568-evb1-v10
           - const: rockchip,rk3568
 
+      - description: Rockchip RK3568 Banana Pi R2 Pro
+        items:
+          - const: rockchip,rk3568-bpi-r2pro
+          - const: rockchip,rk3568
+
 additionalProperties: true
 
 ...
-- 
2.25.1

