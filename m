Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 81292229601
	for <lists+devicetree@lfdr.de>; Wed, 22 Jul 2020 12:28:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732111AbgGVK2g (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Jul 2020 06:28:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42570 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731680AbgGVK2f (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Jul 2020 06:28:35 -0400
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com [IPv6:2a00:1450:4864:20::244])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A04FAC0619DC
        for <devicetree@vger.kernel.org>; Wed, 22 Jul 2020 03:28:35 -0700 (PDT)
Received: by mail-lj1-x244.google.com with SMTP id h19so1879859ljg.13
        for <devicetree@vger.kernel.org>; Wed, 22 Jul 2020 03:28:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=antmicro.com; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=f2Azkhucxb/pnU8VfCN/EExALtippQJVTuRoVrjKIxs=;
        b=hOWgqX0LwfxfvbAOdBv1Z78e1kGsBPy0uiuIVTESlTjNCfmhOuQfJSBaspgWtRJnoX
         uAJGVdzl1CpYTn49bb0/Zt+jpmKCxOeDhwSUhspOpdZWLHd9iwT/q999uGk8QKhrxXB0
         m93myJ6jOEZ1iSYgSsdqxFoLRXTT0khoezKn8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=f2Azkhucxb/pnU8VfCN/EExALtippQJVTuRoVrjKIxs=;
        b=IyepMWGDbGsYtAG5jukB234qW0+r+pH26nDBizzpIWCoyfWmiGW64is03tX8Qrtf8l
         6wF707GQe3xQl+jE4NhkDpV+zrkw/1kWq9oq8YiM30xlPPG/b0j1By/pawbhXxrRlDSI
         xqM7yEx6eIzYpUyQG607x2y5jsz1zN/rDEhdJilfEYh+cvNu73MnMeXGxogrD2O/Jo8S
         jfT+B4kBc03kshV2n78ERsxb3o8ESNaz66etcCLPNZYkEEoW5YL98ce5ZIKW5FXVthCU
         EA5g8LWvXMmznu5o6rOb1fVPr4b6CsZLqwAZsUyU/oMe2NeLMZFnzihioibrcW8RRRoZ
         mARg==
X-Gm-Message-State: AOAM532kBQunKyxauPJX/smqciRm6XSRfQQJw6rczSXLZ3dRG6AYpFuk
        EzdWnGdkg+nxhVFQLxvIq2zgwg==
X-Google-Smtp-Source: ABdhPJxoM/ndSVx7j2L1NumIdmT3pHxi6QfEAZ9wDYCgwxlNCNdTy2dzY9X50+gRKrjwl7eZKrLNvQ==
X-Received: by 2002:a2e:8191:: with SMTP id e17mr13827089ljg.339.1595413714108;
        Wed, 22 Jul 2020 03:28:34 -0700 (PDT)
Received: from localhost.localdomain (d79-196.icpnet.pl. [77.65.79.196])
        by smtp.gmail.com with ESMTPSA id i24sm7803958lfg.83.2020.07.22.03.28.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jul 2020 03:28:33 -0700 (PDT)
Date:   Wed, 22 Jul 2020 12:28:27 +0200
From:   Mateusz Holenko <mholenko@antmicro.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Jiri Slaby <jslaby@suse.com>, devicetree@vger.kernel.org,
        linux-serial@vger.kernel.org
Cc:     Stafford Horne <shorne@gmail.com>,
        Karol Gugala <kgugala@antmicro.com>,
        Mateusz Holenko <mholenko@antmicro.com>,
        Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
        "David S. Miller" <davem@davemloft.net>,
        "Paul E. McKenney" <paulmck@linux.ibm.com>,
        Filip Kokosinski <fkokosinski@antmicro.com>,
        Pawel Czarnecki <pczarnecki@internships.antmicro.com>,
        Joel Stanley <joel@jms.id.au>,
        Jonathan Cameron <Jonathan.Cameron@huawei.com>,
        Maxime Ripard <mripard@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Sam Ravnborg <sam@ravnborg.org>,
        Icenowy Zheng <icenowy@aosc.io>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        linux-kernel@vger.kernel.org, "Gabriel L. Somlo" <gsomlo@gmail.com>
Subject: [PATCH v9 4/5] dt-bindings: serial: document LiteUART bindings
Message-ID: <20200722122704.1153221-4-mholenko@antmicro.com>
References: <20200722122704.1153221-0-mholenko@antmicro.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200722122704.1153221-0-mholenko@antmicro.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Filip Kokosinski <fkokosinski@antmicro.com>

Add documentation for LiteUART devicetree bindings.

Signed-off-by: Filip Kokosinski <fkokosinski@antmicro.com>
Signed-off-by: Mateusz Holenko <mholenko@antmicro.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---

Notes:
    No changes in v9.

    No changes in v8.

    No changes in v7.

    Changes in v6:
    - fixed license header

    No changes in v5.

    No changes in v4.

    Changes in v3:
    - added Reviewed-by tag
    - patch number changed from 3 to 4
    - removed changes in MAINTAINERS file (moved to patch #2)
    
    Changes in v2:
    - binding description rewritten to a yaml schema file
    - added interrupt line
    - fixed unit address
    - patch number changed from 2 to 3

 .../bindings/serial/litex,liteuart.yaml       | 38 +++++++++++++++++++
 1 file changed, 38 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/serial/litex,liteuart.yaml

diff --git a/Documentation/devicetree/bindings/serial/litex,liteuart.yaml b/Documentation/devicetree/bindings/serial/litex,liteuart.yaml
new file mode 100644
index 000000000000..69acb222bb57
--- /dev/null
+++ b/Documentation/devicetree/bindings/serial/litex,liteuart.yaml
@@ -0,0 +1,38 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/serial/litex,liteuart.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: LiteUART serial controller
+
+maintainers:
+  - Karol Gugala <kgugala@antmicro.com>
+  - Mateusz Holenko <mholenko@antmicro.com>
+
+description: |
+  LiteUART serial controller is a part of LiteX FPGA SoC builder. It supports
+  multiple CPU architectures, currently including e.g. OpenRISC and RISC-V.
+
+properties:
+  compatible:
+    const: litex,liteuart
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+examples:
+  - |
+    uart0: serial@e0001800 {
+      compatible = "litex,liteuart";
+      reg = <0xe0001800 0x100>;
+      interrupts = <2>;
+    };
-- 
2.25.1

