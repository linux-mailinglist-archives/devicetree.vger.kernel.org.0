Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 596935AEEBF
	for <lists+devicetree@lfdr.de>; Tue,  6 Sep 2022 17:29:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239612AbiIFP27 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Sep 2022 11:28:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48324 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240401AbiIFP2m (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Sep 2022 11:28:42 -0400
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D5B36D9E9
        for <devicetree@vger.kernel.org>; Tue,  6 Sep 2022 07:39:52 -0700 (PDT)
Received: from jupiter.universe (dyndsl-037-138-186-136.ewe-ip-backbone.de [37.138.186.136])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (4096 bits))
        (No client certificate requested)
        (Authenticated sender: sre)
        by madras.collabora.co.uk (Postfix) with ESMTPSA id 7B3526601F4E;
        Tue,  6 Sep 2022 15:38:29 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
        s=mail; t=1662475109;
        bh=daMVbHhJlfYnraGydjiMLwVLDPoX/A9fX4QnmXX8FIc=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=kPKg7OlumI98E1w2CGAoqiEg7NrnHFPXDytTJoVkxWzpc4V4uzvpxFBFpXR1bXYo9
         uAiwbj9eeS0wZuGI115xXJa6a23zJQ+esPTjd7VVZjbjAXvODTYU7amNNqvq//Z/3j
         kb0xqFJRlDQUtbVpzJH4T9nmWhIEU54+Tt/LKGAULvpTspD9Gn4E+tYbtRGXyIe1mP
         Nb4cZxx9WZr3KHqG4NCQ0rTehmbotouIOOnNORp4TqkUc5xDY4gMc1qtNF4yNWAA83
         T02IMHi7v3OON+Oa3qQ8v9qb5IPHIT0dmgJPpFpFZiwK8AMByAg7tedLatiJNk3t+4
         RiBKcitiuRZ6g==
Received: by jupiter.universe (Postfix, from userid 1000)
        id 4252348016E; Tue,  6 Sep 2022 16:38:27 +0200 (CEST)
From:   Sebastian Reichel <sebastian.reichel@collabora.com>
To:     Heiko Stuebner <heiko@sntech.de>, Lee Jones <lee@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        kernel@collabora.com,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCHv3 4/6] dt-bindings: mfd: syscon: Add rk3588 QoS register compatible
Date:   Tue,  6 Sep 2022 16:38:23 +0200
Message-Id: <20220906143825.199089-5-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220906143825.199089-1-sebastian.reichel@collabora.com>
References: <20220906143825.199089-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document rk3588 compatible for QoS registers.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 Documentation/devicetree/bindings/mfd/syscon.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index c10f0b577268..5369a56b8be1 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -59,6 +59,7 @@ properties:
               - rockchip,rk3368-qos
               - rockchip,rk3399-qos
               - rockchip,rk3568-qos
+              - rockchip,rk3588-qos
               - samsung,exynos3-sysreg
               - samsung,exynos4-sysreg
               - samsung,exynos5-sysreg
-- 
2.35.1

