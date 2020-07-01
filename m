Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 343172103C2
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2020 08:17:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727075AbgGAGRo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Jul 2020 02:17:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58648 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727069AbgGAGRn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Jul 2020 02:17:43 -0400
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com [IPv6:2607:f8b0:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B980C03E979
        for <devicetree@vger.kernel.org>; Tue, 30 Jun 2020 23:17:43 -0700 (PDT)
Received: by mail-pf1-x443.google.com with SMTP id j1so10535252pfe.4
        for <devicetree@vger.kernel.org>; Tue, 30 Jun 2020 23:17:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=DnO9Dbm5aKhNDV/xMOJzvJqucQG5L1b5w3UlETsElwI=;
        b=CNzrNl4ewU4Y4og7xI7FL9lkFyOtdzgBv6Dpsy7pNn1vwTQA/VkxQGNK5L9EDaqlpR
         8e5yjCeJDEnaPZk02a5dNv3Ogk912Zb+i+LwNSMKiLUO//KUPrBHWxSaVVFALoNTPp8w
         AE2wlailQpidFfipAWCVfGWRITt0v4Y9QqplA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=DnO9Dbm5aKhNDV/xMOJzvJqucQG5L1b5w3UlETsElwI=;
        b=LUmHTabetlsHC7hIvHea7lr3hvgSCo8jkmLJd7Lp0vM+jgBTIj6hR/dFRsmZ6MlP9U
         1EHSXY20HJjI2mbh+33P07AAWgGUW0w15L5tXxr/0mY87pXYCecrPwX9Oj8OmS7dt65R
         HBRPXSR9dtAZ+Ci2S/HLCAyUKPlZG08USMEQwf743UCwNAabq/Q6Stjav/h9Bvt0p2gT
         ShYAUT9B2nnXJBkt0jW3l0GpsJeKt1bOYiT0655UhrXDgpqlpd1erJEMlFUEy82+hHgZ
         Tqtld7p2XRBM+UR0pPlAif8ulXHskEse+a/6KiljFnWP0n1wLdMJFCjMXBms7Icc/aqn
         0+YA==
X-Gm-Message-State: AOAM531geQbYGG40gMCIpVBIOXTVFxcPFVPqC3vRh5iFEh/+HCaSq1yj
        NNYiNLKNTLCPPnpXE1dKJwSeuA==
X-Google-Smtp-Source: ABdhPJzBfwpx18inVlPQA63juajFMREtwAWJwIcDgv2LrM96Z/BOUv9CquZaNeqE/BFFF7WCNyikOQ==
X-Received: by 2002:a63:3f42:: with SMTP id m63mr18898284pga.310.1593584263134;
        Tue, 30 Jun 2020 23:17:43 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:356d:fc3d:92ff:192e])
        by smtp.gmail.com with ESMTPSA id n189sm4555744pfn.108.2020.06.30.23.17.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jun 2020 23:17:42 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>
Cc:     Tom Cubie <tom@radxa.com>,
        Suniel Mahesh <sunil@amarulasolutions.com>,
        Michael Trimarchi <michael@amarulasolutions.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        linux-amarula <linux-amarula@amarulasolutions.com>,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v2 2/4] dt-bindings: arm: rockchip: Add Rock Pi N8 binding
Date:   Wed,  1 Jul 2020 11:47:15 +0530
Message-Id: <20200701061717.143753-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200701061717.143753-1-jagan@amarulasolutions.com>
References: <20200701061717.143753-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Rock Pi N8 is a Rockchip RK3288 based SBC, which has
- VMARC RK3288 SOM (as per SMARC standard) from Vamrs.
- Compatible carrier board from Radxa.

VMARC RK3288 SOM need to mount on top of dalang carrier
board for making Rock PI N8 SBC.

Add dt-bindings for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- none

 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index d4a4045092df..db2e35796795 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -435,6 +435,12 @@ properties:
           - const: radxa,rockpi4
           - const: rockchip,rk3399
 
+      - description: Radxa ROCK Pi N8
+        items:
+          - const: radxa,rockpi-n8
+          - const: vamrs,rk3288-vmarc-som
+          - const: rockchip,rk3288
+
       - description: Radxa ROCK Pi N10
         items:
           - const: radxa,rockpi-n10
-- 
2.25.1

