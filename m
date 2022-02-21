Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2B1A44BD7DC
	for <lists+devicetree@lfdr.de>; Mon, 21 Feb 2022 09:40:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242519AbiBUIXA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Feb 2022 03:23:00 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:35766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236489AbiBUIW7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Feb 2022 03:22:59 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 19617219B
        for <devicetree@vger.kernel.org>; Mon, 21 Feb 2022 00:22:37 -0800 (PST)
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com [209.85.221.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id C660F40326
        for <devicetree@vger.kernel.org>; Mon, 21 Feb 2022 08:22:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1645431755;
        bh=fspCJLtE7LEYQw6XkHye8Kq07ah4N6vXGNGBhm+7ar4=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=LBbk7H1nV9m1w1K9rQ0Kpt7eYgFQjrOCayfmJL7DQerlDD4uQEeci+RWuhNZLVMWn
         Bv17cX2iWo/yvZuPi2P8S6uzlqLtkpAzlYOZWaQE3QJcTjbVWqHaR4oR/1ns3ma7AC
         M1dGRxaDxvlGFKyWuGKtul2BlDXK7HfvVA1GXdV9aR0xiSd2QsWXgc0bU1IoJ1dYxc
         NFSRslvEY3VmJEzED05xw1wg1JJlhScmxqZ/66lcUBqJJLzR8vKmJh8DCMkoN+V4Jz
         HS6xMxW7apS0rWyM8shU1Ebg0qxEFa6bWz65ZpLFNbO7DZ2gyqrzuLOFqbwu9bzcUi
         snlNbWingzYrw==
Received: by mail-wr1-f71.google.com with SMTP id e1-20020adfa741000000b001e2e74c3d4eso7024994wrd.12
        for <devicetree@vger.kernel.org>; Mon, 21 Feb 2022 00:22:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fspCJLtE7LEYQw6XkHye8Kq07ah4N6vXGNGBhm+7ar4=;
        b=RGgIpyhkKLP/KZU2YwIbjia13hou7h0ZCoLxE0e0HjOxHPXRlPs9wyZnziPmzCzR5c
         EeE3Gaq4InhrsuPI4KOj8KiLvgtuPkfGokHQOyXmpFpUH9dkchN0pzv4h0fmL8uKYVq6
         kEbnyDB4bGqC2J0SWrIrhcaW3Gcc4J1QQPbfcFHivOSijm90KQ7OWVSDrN3Pggjy6cam
         h3MPYFqbHj7H0/wwq3VuQqdJnnPfjpDPeGwkQpUkvceaZlV6zSoJ0oLoSx3rfGh8fFkH
         jvKIox527rvibCD1Jfrt/rUbpp9/3DNyGUIeu6XfbXH00m/M7VDIe3GoHrqJTEnAg+QP
         vk7Q==
X-Gm-Message-State: AOAM532sRLLvjSYG/YqgZ0iN2cRLZsCo1Sei7tjwlwOhFg4VI+IxINYg
        8FjJ8+aAEulnTFOUtcEvp6GM+pqKT41nDZ1TZ32cfNhGvzEuAXiCfyOV5WjQbjiquALO+lSyqxC
        YpwZ/pU1u11yH1lFmcRosfd1FK5Di1qLAq1PwRiU=
X-Received: by 2002:a5d:452e:0:b0:1e2:e3df:5933 with SMTP id j14-20020a5d452e000000b001e2e3df5933mr15938216wra.158.1645431755558;
        Mon, 21 Feb 2022 00:22:35 -0800 (PST)
X-Google-Smtp-Source: ABdhPJz77IEo/QTGJFbeIF9OrxTWGYJqcHKNN51p3fYxQmGEuSBNmMUKYmATuYBwKgois8ytkRw3rA==
X-Received: by 2002:a5d:452e:0:b0:1e2:e3df:5933 with SMTP id j14-20020a5d452e000000b001e2e3df5933mr15938201wra.158.1645431755417;
        Mon, 21 Feb 2022 00:22:35 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id j5-20020a05600c410500b0037bc3e4b526sm6727615wmi.7.2022.02.21.00.22.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Feb 2022 00:22:34 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Roger Quadros <rogerq@ti.com>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] dt-bindings: usb: do not use deprecated synopsys prefix
Date:   Mon, 21 Feb 2022 09:22:28 +0100
Message-Id: <20220221082228.34407-3-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220221082228.34407-1-krzysztof.kozlowski@canonical.com>
References: <20220221082228.34407-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The "synopsys" prefix and "synopsys,dwc3" compatible are deprecated.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 Documentation/devicetree/bindings/usb/dwc3-cavium.txt       | 2 +-
 Documentation/devicetree/bindings/usb/ti,keystone-dwc3.yaml | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/usb/dwc3-cavium.txt b/Documentation/devicetree/bindings/usb/dwc3-cavium.txt
index 710b782ccf65..171df79360ff 100644
--- a/Documentation/devicetree/bindings/usb/dwc3-cavium.txt
+++ b/Documentation/devicetree/bindings/usb/dwc3-cavium.txt
@@ -20,7 +20,7 @@ Example device node:
 			    refclk-type-hs = "dlmc_ref_clk0";
 			    power = <0x00000002 0x00000002 0x00000001>;
 			    xhci@1690000000000 {
-				    compatible = "cavium,octeon-7130-xhci", "synopsys,dwc3";
+				    compatible = "cavium,octeon-7130-xhci", "snps,dwc3";
 				    reg = <0x00016900 0x00000000 0x00000010 0x00000000>;
 				    interrupt-parent = <0x00000010>;
 				    interrupts = <0x00000009 0x00000004>;
diff --git a/Documentation/devicetree/bindings/usb/ti,keystone-dwc3.yaml b/Documentation/devicetree/bindings/usb/ti,keystone-dwc3.yaml
index f6e91a5fd8fe..b1f65a656528 100644
--- a/Documentation/devicetree/bindings/usb/ti,keystone-dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/ti,keystone-dwc3.yaml
@@ -92,7 +92,7 @@ examples:
       ranges;
 
       usb@2690000 {
-        compatible = "synopsys,dwc3";
+        compatible = "snps,dwc3";
         reg = <0x2690000 0x70000>;
         interrupts = <GIC_SPI 393 IRQ_TYPE_EDGE_RISING>;
         usb-phy = <&usb_phy>, <&usb_phy>;
-- 
2.32.0

