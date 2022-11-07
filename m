Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2FBB061FCC3
	for <lists+devicetree@lfdr.de>; Mon,  7 Nov 2022 19:06:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233034AbiKGSGD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Nov 2022 13:06:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232711AbiKGSFW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Nov 2022 13:05:22 -0500
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B1A52648A
        for <devicetree@vger.kernel.org>; Mon,  7 Nov 2022 10:02:37 -0800 (PST)
Received: from jupiter.universe (dyndsl-091-096-035-235.ewe-ip-backbone.de [91.96.35.235])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (4096 bits))
        (No client certificate requested)
        (Authenticated sender: sre)
        by madras.collabora.co.uk (Postfix) with ESMTPSA id 00F11660038D;
        Mon,  7 Nov 2022 18:02:36 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
        s=mail; t=1667844156;
        bh=ZdgOH6lGZhFE+KlJP4uiV6KrqS4r/DXVf5QVCbko1Gc=;
        h=From:To:Cc:Subject:Date:From;
        b=Ecg5FseGtNWkruj8IeyJzL0xvhHhnXGS5KtTndcH/17eXzpQt8yV7j6sj/j6bI+ge
         dyQ8ltOcdfQ2lQ2He14QsFQfhE+M135Ooz8ndqwGfe6vuLEsRdn1ugbBOxZ7Y0tsMK
         fVIH0qIh8cGZqCE8yKAY6IANdJkrqIhmVAUi9XTS17x/pv7l8kY8lby25E+BJ5mkoC
         HUrdKFxehBclFHQay3EV3pDgs481zFHsQThX7UwRhWe5vi9tKKNkk+YqvU7V7zG2te
         trx0rBg4achmbgh4M2VsEAMp5JRu/bnEjDcqLoWwrHTMq17vH60PAUG36wg2u3sna/
         K+8g5HOKQNGRg==
Received: by jupiter.universe (Postfix, from userid 1000)
        id 5D56D48011F; Mon,  7 Nov 2022 19:02:33 +0100 (CET)
From:   Sebastian Reichel <sebastian.reichel@collabora.com>
To:     Heiko Stuebner <heiko@sntech.de>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        kernel@collabora.com
Subject: [PATCHv2 1/1] dt-bindings: power: rockchip: Increase pm_qos number
Date:   Mon,  7 Nov 2022 19:02:31 +0100
Message-Id: <20221107180231.73663-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On RK3588 some power domains require multiple qos blocks to be
saved. The maximum required number for RK3588 is 8 (for VDPU).

Acked-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
Changes since PATCHv1:
 * https://lore.kernel.org/all/20221021171405.86509-1-sebastian.reichel@collabora.com/
 * add minItems: 1
 * add Ack from Heiko
---
 .../devicetree/bindings/power/rockchip,power-controller.yaml   | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
index 0d5e999a58f1..dc877416e1fd 100644
--- a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
+++ b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
@@ -134,7 +134,8 @@ $defs:
       pm_qos:
         $ref: /schemas/types.yaml#/definitions/phandle-array
         items:
-          maxItems: 1
+          minItems: 1
+          maxItems: 8
         description: |
           A number of phandles to qos blocks which need to be saved and restored
           while power domain switches state.
-- 
2.35.1

