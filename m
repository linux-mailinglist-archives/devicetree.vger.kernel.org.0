Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7881677284F
	for <lists+devicetree@lfdr.de>; Mon,  7 Aug 2023 16:56:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229655AbjHGO4K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Aug 2023 10:56:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58012 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229726AbjHGO4J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Aug 2023 10:56:09 -0400
Received: from bg4.exmail.qq.com (bg4.exmail.qq.com [43.154.54.12])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC0CB10CB
        for <devicetree@vger.kernel.org>; Mon,  7 Aug 2023 07:56:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=biqu3d.com;
        s=tfld2305; t=1691420125;
        bh=w4onGGyLcLbtLPOWhIoEFfJtdcT5u1mRgOwvinoJ4U0=;
        h=From:To:Subject:Date:Message-ID:MIME-Version;
        b=qk+WCQmPjuiS+G7d7ZR4mDLDblnKe1GyFAf0aPxavAuCau9qs9+MzYfyvxsnLakXb
         6cXCboS/HZTY20foLqZwGwLfHBt8IEE4I7tJZFRjlLCuqLafDBA7DjqAlIC2osgndJ
         NekHREnYNyKOqbxh2/hOiQC94n1jRLZKtecd0alQ=
X-QQ-mid: bizesmtp83t1691420122tc0446re
Received: from localhost.localdomain ( [178.41.211.221])
        by bizesmtp.qq.com (ESMTP) with 
        id ; Mon, 07 Aug 2023 22:55:07 +0800 (CST)
X-QQ-SSF: 01400000000000803000000A0000000
X-QQ-FEAT: D2GZf6M6C/icLTY6LpDVPwiJV0pcYgucis9l/FOXZKYyoRjP5hN+x6pYuTsEC
        m7ZxzrsEfIoXBIkxs1EnChdJud1XJ2d+ty2eSAAJvU60MpWitX25X2Tdvhz42Ym26xf/gSg
        Cnby8FhFs9xKdxDpMrIxuzEVNniXowH1DclUuohqxRIy0GcoaSA0I2PiRF4geFRhc2HQ54E
        K0LUIoq37TxHnxWdrs4ztxF2/L/PzKchfKujo3q6AvodzWC55lZx1rTaGuxwWQfhktWy4+r
        oMZhW9WvcjdJP4cRsKMw9qtIHP06PaKVeHWgAjLwDPOrfRuWU5+AzCWSVCKftVUMHPnJjKU
        8BB40q1Cp4RDMPJoGmbSTAQXx3GmQ4K3LYhewzLTdGBnP+HdYxEjJ8IOtVWiG5uZkgiVZ6q
X-QQ-GoodBg: 2
X-BIZMAIL-ID: 14542455143622571970
From:   Martin Botka <martin@biqu3d.com>
To:     Martin Botka <martin.botka1@gmail.com>
Cc:     Konrad Dybcio <konrad.dybcio@somainline.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Jami Kettunen <jamipkettunen@somainline.org>,
        Paul Bouchara <paul.bouchara@somainline.org>,
        Martin Botka <martin.botka@somainline.org>,
        Andre Przywara <andre.przywara@arm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        Icenowy Zheng <uwu@icenowy.me>,
        Ludwig Kormann <ludwig.kormann@ict42.de>,
        Andrew Lunn <andrew@lunn.ch>, Heiko Stuebner <heiko@sntech.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Chris Morgan <macromorgan@hotmail.com>,
        Jagan Teki <jagan@edgeble.ai>,
        Maxime Ripard <mripard@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
        linux-kernel@vger.kernel.org
Subject: [PATCH v4 1/4] dt-bindings: vendor-prefixes: Add BigTreeTech
Date:   Mon,  7 Aug 2023 16:53:21 +0200
Message-ID: <EB8B7A5FD2D8E12A+20230807145349.2220490-2-martin@biqu3d.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230807145349.2220490-1-martin@biqu3d.com>
References: <20230807145349.2220490-1-martin@biqu3d.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:biqu3d.com:qybglogicsvrgz:qybglogicsvrgz5a-1
X-Spam-Status: No, score=-0.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        RCVD_IN_MSPIKE_H2,RCVD_IN_VALIDITY_RPBL,SPF_HELO_NONE,SPF_PASS
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Martin Botka <martin.botka@somainline.org>

BigTreeTech is a company based in Shenzhen that makes
3D printers and accessories.

Add prefix for it.

Signed-off-by: Martin Botka <martin.botka@somainline.org>
Reviewed-by: Andre Przywara <andre.przywara@arm.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
Changes in V2:
    - Fix alphabetical order
Changes in V3,V4: none

 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index af60bf1a6664..a1f3bb7be860 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -192,6 +192,8 @@ patternProperties:
     description: BeagleBoard.org Foundation
   "^bhf,.*":
     description: Beckhoff Automation GmbH & Co. KG
+  "^bigtreetech,.*":
+    description: Shenzhen BigTree Tech Co., LTD
   "^bitmain,.*":
     description: Bitmain Technologies
   "^blutek,.*":
-- 
2.41.0

