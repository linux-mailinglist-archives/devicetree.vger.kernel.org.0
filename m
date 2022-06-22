Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7639E554704
	for <lists+devicetree@lfdr.de>; Wed, 22 Jun 2022 14:11:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1357795AbiFVLuE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Jun 2022 07:50:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60252 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1357576AbiFVLuA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Jun 2022 07:50:00 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B6753CA74
        for <devicetree@vger.kernel.org>; Wed, 22 Jun 2022 04:49:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1655898599; x=1687434599;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=Z9hL412KLOHeMl9VQ4HYxqKPve4xW8eHFASPU9x4kPU=;
  b=j5NAkx4FVYwqGhYvWwUmTI2xuBmkhztG7az8sxmgiKP93a9yha/qqcSZ
   y9FOl983og3XfHP3cxs23deY4i3YUFYrs4mPFUNd6nu2GZWPWJE464nTz
   thbPEKn/0/WjHxngvinEAM27u0OpUG9DyKQwg79g/7yaoZFImNysmRH9Y
   XigNLleYujFMK6pMunpxvvdYvTD80Vd7xCJi1fIs/aed2aVp0IogQIXye
   DeSTQnYNaiuQZ5ZT71cz8D4di8Rjtzndf32xAWMfhRN9RHwrgkVFp42w6
   snypXg4WU/UU1qBzCD2eyqkSQEbkpgnjZ1XqKP3143e6QnpQyJodXj8la
   g==;
X-IronPort-AV: E=Sophos;i="5.92,212,1650924000"; 
   d="scan'208";a="24603207"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 22 Jun 2022 13:49:55 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Wed, 22 Jun 2022 13:49:55 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Wed, 22 Jun 2022 13:49:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1655898595; x=1687434595;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=Z9hL412KLOHeMl9VQ4HYxqKPve4xW8eHFASPU9x4kPU=;
  b=Z+HWzkqSazxJWPEpZ5PWNNFHfzssypApR8/NAE73AsRyyYMa/wR9MyR0
   eDtafE6zs+mJiRcWgBvwEvuX7e7c4XfG1hXtuRDg+Mj9g8+BFTET1n4q7
   I33v3TfI2p8K64R99GfZFBKFd3TfGo7/aiY94YtwlzEuTluMqUC6q2921
   TRlnuSv5aT+b8n/FF0I7zyxa9j73xIygnrerkjaVw3aKRHloww5uv2njN
   uqkIKgwkYsHcgwWHKV6UiNqphHzYsqPtAsb2jcRDC3VujnfgVNUZTY/Qk
   zLZRcMkQ6YZfMyYUwC9+7XXuiWUhoW55sUmuwJz0Hcg7Bj7pOnwZyJYA+
   Q==;
X-IronPort-AV: E=Sophos;i="5.92,212,1650924000"; 
   d="scan'208";a="24603206"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 22 Jun 2022 13:49:55 +0200
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 77911280072;
        Wed, 22 Jun 2022 13:49:55 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Markus Niebel <Markus.Niebel@tq-group.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 1/3] dt-bindings: arm: add TQMa8MPxL board
Date:   Wed, 22 Jun 2022 13:49:47 +0200
Message-Id: <20220622114949.889274-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220622114949.889274-1-alexander.stein@ew.tq-group.com>
References: <20220622114949.889274-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Markus Niebel <Markus.Niebel@tq-group.com>

TQMa8MPxL is a SOM family using NXP i.MX8MP CPU family
MBa8MPxL is an evaluation mainbord for this SOM

The SOM needs a mainboard, therefore we provide two compatibles here:

"tq,imx8mp-<SOM>" for the module and
"tq,imx8mp-<SOM>-<SBC>"

Signed-off-by: Markus Niebel <Markus.Niebel@tq-group.com>
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
Changes in v2:
* Added a-b of Krzysztof

 Documentation/devicetree/bindings/arm/fsl.yaml | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index a4a3621a8a85..b7ffba541c98 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -961,6 +961,18 @@ properties:
           - const: toradex,verdin-imx8mp          # Verdin iMX8M Plus Module
           - const: fsl,imx8mp
 
+      - description:
+          TQMa8MPxL is a series of LGA SOM featuring NXP i.MX8MP system-on-chip
+          variants. It is designed to be soldered on different carrier boards.
+          All CPU variants use the same device tree hence only one compatible
+          is needed. MBa8MPxL mainboard can be used as starterkit or in a boxed
+          version as an industrial computing device.
+        items:
+          - enum:
+              - tq,imx8mp-tqma8mpql-mba8mpxl # TQ-Systems GmbH i.MX8MP TQMa8MPQL SOM on MBa8MPxL
+          - const: tq,imx8mp-tqma8mpql       # TQ-Systems GmbH i.MX8MP TQMa8MPQL SOM
+          - const: fsl,imx8mp
+
       - description: i.MX8MQ based Boards
         items:
           - enum:
-- 
2.25.1

