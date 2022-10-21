Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B6886607D3E
	for <lists+devicetree@lfdr.de>; Fri, 21 Oct 2022 19:14:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230099AbiJUROL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Oct 2022 13:14:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36204 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230261AbiJUROK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Oct 2022 13:14:10 -0400
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D403B280804
        for <devicetree@vger.kernel.org>; Fri, 21 Oct 2022 10:14:09 -0700 (PDT)
Received: from jupiter.universe (dyndsl-037-138-189-087.ewe-ip-backbone.de [37.138.189.87])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (4096 bits))
        (No client certificate requested)
        (Authenticated sender: sre)
        by madras.collabora.co.uk (Postfix) with ESMTPSA id 94D41660253A;
        Fri, 21 Oct 2022 18:14:08 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
        s=mail; t=1666372448;
        bh=dZP1LqE3ISpjRhgKEIoPvIQMRHq56nH3yeV/sP67VRg=;
        h=From:To:Cc:Subject:Date:From;
        b=d93vNOFREv6wj+Y5ytyPCRWNKstQwy1WrnpMwp4DAPL+1RSFF43GjUJbYlYNKhyp+
         ckzxqHVjN8kOtw7n7gYz0hUrlp2ZvSOPgl9TpAHIuVqAQu/IAghcYO4Pegrgurse71
         46IJuYu6mHG1UMGuIX0AYnf4xB48xI5Lmb2pws1PJVJPdi1NFMOaLG48H2LR6TwR49
         es4duQ50LX9vFNP4sKUbVc1A0Wjen0UGcA83B1I76PfWuwW14oHDiM5ke2bC6KuXly
         1FwuZ1s6ijnRHLK95MBqZXsCBy+nZGtYhLid+ing0JZJ4oX+JmYwB2XHWnkkbbsw2w
         XuwIRLAlNwPpw==
Received: by jupiter.universe (Postfix, from userid 1000)
        id 6C78448082E; Fri, 21 Oct 2022 19:14:06 +0200 (CEST)
From:   Sebastian Reichel <sebastian.reichel@collabora.com>
To:     Heiko Stuebner <heiko@sntech.de>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        kernel@collabora.com
Subject: [PATCH 1/1] dt-bindings: power: rockchip: Increase pm_qos number
Date:   Fri, 21 Oct 2022 19:14:05 +0200
Message-Id: <20221021171405.86509-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On RK3588 some power domains require multiple qos blocks to be
saved. The maximum required number for RK3588 is 8 (for VDPU).

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../devicetree/bindings/power/rockchip,power-controller.yaml    | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
index 0d5e999a58f1..cf0f2946fea1 100644
--- a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
+++ b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
@@ -134,7 +134,7 @@ $defs:
       pm_qos:
         $ref: /schemas/types.yaml#/definitions/phandle-array
         items:
-          maxItems: 1
+          maxItems: 8
         description: |
           A number of phandles to qos blocks which need to be saved and restored
           while power domain switches state.
-- 
2.35.1

