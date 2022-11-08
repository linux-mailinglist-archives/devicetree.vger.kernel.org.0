Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 82B17620956
	for <lists+devicetree@lfdr.de>; Tue,  8 Nov 2022 07:11:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233230AbiKHGLJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Nov 2022 01:11:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33696 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233128AbiKHGLI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Nov 2022 01:11:08 -0500
Received: from gw.atmark-techno.com (gw.atmark-techno.com [13.115.124.170])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 843131E73A
        for <devicetree@vger.kernel.org>; Mon,  7 Nov 2022 22:11:06 -0800 (PST)
Received: from gw.atmark-techno.com (localhost [127.0.0.1])
        by gw.atmark-techno.com (Postfix) with ESMTP id 01F8660132
        for <devicetree@vger.kernel.org>; Tue,  8 Nov 2022 14:56:03 +0900 (JST)
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
        by gw.atmark-techno.com (Postfix) with ESMTPS id BA67860132
        for <devicetree@vger.kernel.org>; Tue,  8 Nov 2022 14:56:02 +0900 (JST)
Received: by mail-pl1-f200.google.com with SMTP id q3-20020a17090311c300b0017898180dddso10549655plh.0
        for <devicetree@vger.kernel.org>; Mon, 07 Nov 2022 21:56:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a8ltF6Z7hveQcIoHTD+Ocqy8FGU/fVCDeqON4Kuh0Nw=;
        b=TLGQ+bpFvKahxd97S1J6b6aSk9SJqC9sf5zZSy1isgbQO/tDVjykJE9rO9mxhWjebo
         QqguitWAYKvVCAj6ZL8GDHJCdXDnKiV6XuaCepTcxx64gZ/TpVCU1CFb4YtDp0by573L
         pAQ1x43K0rlBdGVRg+NHPuOlz8J3gJKc8HqEXyz3/qezop+oNoBqJRgQ2CmrEqolGvGP
         T8kk5u6jxl7eKavK7xRkZEBWOg//+im+lXFTjGjnuN382K28dgCKt7qxNyjJJWwTravc
         y3PONDVxjdjkV/zHaB+lm7scSjHpbOSPSVS37KUFaVY96mh0Dxu/NUSefXWztTXc2EF8
         oYxw==
X-Gm-Message-State: ACrzQf2pv6zoLrg7EgbVlv5L/gLC8TGrzfEvroLMTG7rfycfzWxI/tJM
        Xoev9OXnR9Ass2eLasiXdTVp6JgK3tSVo5nzyx3ucyea9vMa3+YYgckWbnsT1SNsexD0zjNNbC5
        L2ZdOGkyT6t6K/Ra+kI2YMRzBiQ==
X-Received: by 2002:a17:902:c948:b0:187:2d90:9fab with SMTP id i8-20020a170902c94800b001872d909fabmr38509290pla.42.1667886962288;
        Mon, 07 Nov 2022 21:56:02 -0800 (PST)
X-Google-Smtp-Source: AMsMyM51AQAM3Z9fEXEvq6HmWSn1u66y5bNSh60R/YuoHRFzhZ5NB8hMybzH+M6NCCVrPHnP1znooQ==
X-Received: by 2002:a17:902:c948:b0:187:2d90:9fab with SMTP id i8-20020a170902c94800b001872d909fabmr38509273pla.42.1667886962062;
        Mon, 07 Nov 2022 21:56:02 -0800 (PST)
Received: from pc-zest.atmarktech (103.131.189.35.bc.googleusercontent.com. [35.189.131.103])
        by smtp.gmail.com with ESMTPSA id q8-20020a170902a3c800b00186ad73e2d5sm5950422plb.208.2022.11.07.21.56.01
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Nov 2022 21:56:01 -0800 (PST)
Received: from martinet by pc-zest.atmarktech with local (Exim 4.96)
        (envelope-from <martinet@pc-zest>)
        id 1osHaa-0098Kr-1g;
        Tue, 08 Nov 2022 14:56:00 +0900
From:   Dominique Martinet <dominique.martinet@atmark-techno.com>
To:     Marcel Holtmann <marcel@holtmann.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Johan Hedberg <johan.hedberg@gmail.com>
Cc:     netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-bluetooth@vger.kernel.org,
        Paolo Abeni <pabeni@redhat.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Eric Dumazet <edumazet@google.com>,
        "David S . Miller" <davem@davemloft.net>, mizo@atmark-techno.com,
        Dominique Martinet <dominique.martinet@atmark-techno.com>
Subject: [RFC PATCH 1/2] dt-bindings: net: h4-bluetooth: add new bindings for hci_h4
Date:   Tue,  8 Nov 2022 14:55:30 +0900
Message-Id: <20221108055531.2176793-2-dominique.martinet@atmark-techno.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221108055531.2176793-1-dominique.martinet@atmark-techno.com>
References: <20221108055531.2176793-1-dominique.martinet@atmark-techno.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_PASS,
        SPF_PASS autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add devicetree binding to support defining a bluetooth device using the h4
uart protocol

This was tested with a NXP wireless+BT AW-XM458 module, but might
benefit others as the H4 protocol seems often used.

Signed-off-by: Dominique Martinet <dominique.martinet@atmark-techno.com>
---
 .../devicetree/bindings/net/h4-bluetooth.yaml | 49 +++++++++++++++++++
 1 file changed, 49 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/h4-bluetooth.yaml

diff --git a/Documentation/devicetree/bindings/net/h4-bluetooth.yaml b/Documentation/devicetree/bindings/net/h4-bluetooth.yaml
new file mode 100644
index 000000000000..5d11b89ca386
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/h4-bluetooth.yaml
@@ -0,0 +1,49 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/h4-bluetooth.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: H4 Bluetooth
+
+maintainers:
+  - Dominique Martinet <dominique.martinet@atmark-techno.com>
+
+description:
+  H4 is a common bluetooth over uart protocol.
+  For example, the AW-XM458 is a WiFi + BT module where the WiFi part is
+  connected over PCI (M.2), while BT is connected over serial speaking
+  the H4 protocol. Its firmware is sent on the PCI side.
+
+properties:
+  compatible:
+    enum:
+      - nxp,aw-xm458-bt
+
+  max-speed: true
+
+required:
+  - compatible
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/clock/imx8mp-clock.h>
+
+    uart1 {
+        pinctrl-names = "default";
+        pinctrl-0 = <&pinctrl_uart1>;
+        assigned-clocks = <&clk IMX8MP_CLK_UART1>;
+        assigned-clock-parents = <&clk IMX8MP_SYS_PLL1_80M>;
+        status = "okay";
+        fsl,dte-mode = <1>;
+        fsl,uart-has-rtscts;
+
+
+        bluetooth {
+            compatible = "nxp,aw-xm458-bt";
+            max-speed = <3000000>;
+        };
+    };
-- 
2.35.1


