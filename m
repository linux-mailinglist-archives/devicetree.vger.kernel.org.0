Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B89E14DC8C8
	for <lists+devicetree@lfdr.de>; Thu, 17 Mar 2022 15:29:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235121AbiCQObO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Mar 2022 10:31:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48558 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233875AbiCQObN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Mar 2022 10:31:13 -0400
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 54BD916C084
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 07:29:57 -0700 (PDT)
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com [209.85.128.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 28B4F3F499
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 14:29:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1647527396;
        bh=U5OYvscFPNzOkdF9Q7wjWx6ZtLTk6n/AVRGo7F09r/4=;
        h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
        b=sn41GMimINko+Itj8ddvwoAOgYkElKanM+isukWEGlHUUOD3EBz5pU3gM57lA58mW
         OLgaPveyHvvhkH4EK3mYcbpIBhlBd6MlG+4n+HjSl86jqe8X6xvLUuVLN1jekzHvCn
         mJTDmalsDgLZt47qBtkv9M/H+s0xEHEQrKr7WL2js5EDgninHzAChZE3BVc6zUAEYR
         1JBwkonW/uph/VdMujw+4ORATaXYnwEorP5uDrcx5p0C/jZwtO7Xb7YqxgaNVLA9Bx
         3vxWtRxhK3ZFYuyLuW/puWcs3L7kyJMU5F2MDkclR/ifUtEs70xH+mP8nZkXicd0Wy
         iD1U8KQCqDEeA==
Received: by mail-wm1-f69.google.com with SMTP id k41-20020a05600c1ca900b00389a2b983efso1712012wms.4
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 07:29:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=U5OYvscFPNzOkdF9Q7wjWx6ZtLTk6n/AVRGo7F09r/4=;
        b=IA35HGbYxdBUo+LJo0TutQJhRDHMb74lRbcxbeoyOpIimn1oHslEKd5QDAUq38qIx5
         hQhYyhmotV1mdGeMO8PbNZylNUCV2An4bQSoTK9ko88sEsLxARgP/40HX0hJJO1JpJK5
         2WVsohGFYs3vmeBVRs50tLMdJM4do90FWJFeFFtsRoWvZn/olzDb0dDOG0GGBufOkgx9
         9E6F3nwipso5vsO949DOlGl7N/PcY7CgKfKz4yl0qdShCkyzZAQWhX5+yabIQ1DlBe9T
         aWGWuPFL2Zt7nJDkD9iidHHSNQzUW9Wbbz2/VHhonOoOQraNNU11qQApVcWL06W0EcnV
         se7A==
X-Gm-Message-State: AOAM533xgFIs16d4XlMsHqnonvfhhotIJX56vkAlF5wc2eHkf+Kx6Ekx
        zFDw6tWTfUo1ZtXCebaCVCGO2vVBXpde7kZzWcNs0kGaC/Lnc/sLZiu8HXASeE5n6DbrYpfypJp
        mtZutgImX6/e2KA0WEV0U9lD9A5zVvApcDwFMDio=
X-Received: by 2002:a5d:42c2:0:b0:203:e323:4055 with SMTP id t2-20020a5d42c2000000b00203e3234055mr4464490wrr.316.1647527395796;
        Thu, 17 Mar 2022 07:29:55 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxVET8zqo0E+0i0//Q5SqWIUZG6brB1YEMvFyAwOxvKaVHDy/MQWCl3C7oSxov2KlwFfux70Q==
X-Received: by 2002:a5d:42c2:0:b0:203:e323:4055 with SMTP id t2-20020a5d42c2000000b00203e3234055mr4464472wrr.316.1647527395633;
        Thu, 17 Mar 2022 07:29:55 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id p19-20020a05600c359300b0038c7d1086a7sm1433410wmq.1.2022.03.17.07.29.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Mar 2022 07:29:55 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Andrew Lunn <andrew@lunn.ch>,
        Gregory Clement <gregory.clement@bootlin.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH v2] dt-bindings: irqchip: mrvl,intc: refresh maintainers
Date:   Thu, 17 Mar 2022 15:29:52 +0100
Message-Id: <20220317142952.479413-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Jason's email bounces and his address was dropped from maintainers in
commit 509920aee72a ("MAINTAINERS: Move Jason Cooper to CREDITS"), so
drop him here too.  Switch other maintainers from IRQCHIP subsystem
maintainers to Marvell Orion platform maintainers because its a bigger
chance they know the hardware.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

---

Changes since v1:
1. Do not add Sebastian.
---
 .../devicetree/bindings/interrupt-controller/mrvl,intc.yaml | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/mrvl,intc.yaml b/Documentation/devicetree/bindings/interrupt-controller/mrvl,intc.yaml
index 75d49c9e956f..6d0c0f44d250 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/mrvl,intc.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/mrvl,intc.yaml
@@ -7,10 +7,8 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Marvell MMP/Orion Interrupt controller bindings
 
 maintainers:
-  - Thomas Gleixner <tglx@linutronix.de>
-  - Jason Cooper <jason@lakedaemon.net>
-  - Marc Zyngier <maz@kernel.org>
-  - Rob Herring <robh+dt@kernel.org>
+  - Andrew Lunn <andrew@lunn.ch>
+  - Gregory Clement <gregory.clement@bootlin.com>
 
 allOf:
   - $ref: /schemas/interrupt-controller.yaml#
-- 
2.32.0

