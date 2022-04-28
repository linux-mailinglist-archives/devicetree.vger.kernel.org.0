Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BCE88513848
	for <lists+devicetree@lfdr.de>; Thu, 28 Apr 2022 17:26:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349020AbiD1P3v (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Apr 2022 11:29:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44354 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345811AbiD1P3u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Apr 2022 11:29:50 -0400
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E68A1AAE34;
        Thu, 28 Apr 2022 08:26:35 -0700 (PDT)
Received: by mail-oi1-f171.google.com with SMTP id v65so5669477oig.10;
        Thu, 28 Apr 2022 08:26:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=tfNbxF4z/HQ5xGnMAM7VUxdq24Pmtbqq9A+5APLBHOY=;
        b=EkgiECXmm0lyx4TOgDCMVsW6JFQpRWm/4g+yZz/4ZmlFMTSGtYahpqAxj4Kh57OELm
         +47YEN1gRdt9t6wg2hUm/eDR+qlhz0majwH8RY99ClZgdvbldAUKWk9AOLrIxY0BGYfQ
         hYmkDm23k5FEvAn9OyuO7s4wUQ1JHbYYrsisDMCXe9xgGGwi5Ts+VgxXuL1Fefhy5Op5
         AbgGJioUHEUH95WjdQ9k0NSzVU9NK7qyD9w+ENL2BnmP7krNlOwxNazdWO0m11hZrrwj
         qgUCCpqfjePFm+DHEha6mSpxEp6d4D+5wHpP9BN3+J0/5xM3Orh9rqRzOl1tdt22v6yU
         OYWw==
X-Gm-Message-State: AOAM533kBpoRZr1Ukwbjr8W+o8Lz+36o84/4VKdGSjWglsuEMiwLgpyd
        WlBe/dEFF7IY7/N66k0PuFuoIpK/uw==
X-Google-Smtp-Source: ABdhPJw3GhaTpSYyvLE3YNDgDKhz355NQ3MeKUxWjLcP4UWFgLGaD19S/za3JhQG5wIrVilMCSfXgg==
X-Received: by 2002:aca:706:0:b0:324:fcdd:92e3 with SMTP id 6-20020aca0706000000b00324fcdd92e3mr13968017oih.35.1651159594783;
        Thu, 28 Apr 2022 08:26:34 -0700 (PDT)
Received: from xps15.. (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.googlemail.com with ESMTPSA id o19-20020a4a9593000000b0032176119e65sm129524ooi.34.2022.04.28.08.26.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Apr 2022 08:26:34 -0700 (PDT)
From:   Rob Herring <robh@kernel.org>
To:     devicetree@vger.kernel.org, devicetree-spec@vger.kernel.org
Cc:     Stephen Boyd <sboyd@codeaurora.org>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Stephen Boyd <swboyd@chromium.org>
Subject: [PATCH] schemas: clock: Add assigned-clocks description
Date:   Thu, 28 Apr 2022 10:26:33 -0500
Message-Id: <20220428152633.2261979-1-robh@kernel.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add description for assigned-clocks properties from clock-binding.txt in
the Linux kernel.

This is relicensed from GPL-2.0 (the default) to BSD-2-Clause. The Cc list
are the original authors.

Cc: Sylwester Nawrocki <s.nawrocki@samsung.com>
Cc: Stephen Boyd <swboyd@chromium.org>
Signed-off-by: Rob Herring <robh@kernel.org>
---
Please ack for the license change.

 dtschema/schemas/clock/clock.yaml | 38 +++++++++++++++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/dtschema/schemas/clock/clock.yaml b/dtschema/schemas/clock/clock.yaml
index 2416d046087c..5299653b80b6 100644
--- a/dtschema/schemas/clock/clock.yaml
+++ b/dtschema/schemas/clock/clock.yaml
@@ -19,6 +19,44 @@ description: |
   output on a device.  The length of a clock specifier is defined by the
   value of a #clock-cells property in the clock provider node.
 
+  Assigned clock parents and rates
+  --------------------------------
+
+  Some platforms may require initial configuration of default parent clocks
+  and clock frequencies. Such a configuration can be specified in a device tree
+  node through assigned-clocks, assigned-clock-parents and assigned-clock-rates
+  properties. The assigned-clock-parents property should contain a list of parent
+  clocks in the form of a phandle and clock specifier pair and the
+  assigned-clock-rates property should contain a list of frequencies in Hz. Both
+  these properties should correspond to the clocks listed in the assigned-clocks
+  property.
+
+  To skip setting parent or rate of a clock its corresponding entry should be
+  set to 0, or can be omitted if it is not followed by any non-zero entry.
+
+      serial@a000 {
+          compatible = "fsl,imx-uart";
+          reg = <0xa000 0x1000>;
+          ...
+          clocks = <&osc 0>, <&pll 1>;
+          clock-names = "baud", "register";
+
+          assigned-clocks = <&clkcon 0>, <&pll 2>;
+          assigned-clock-parents = <&pll 2>;
+          assigned-clock-rates = <0>, <460800>;
+      };
+
+  In this example the <&pll 2> clock is set as parent of clock <&clkcon 0> and
+  the <&pll 2> clock is assigned a frequency value of 460800 Hz.
+
+  Configuring a clock's parent and rate through the device node that consumes
+  the clock can be done only for clocks that have a single user. Specifying
+  conflicting parent or rate configuration in multiple consumer nodes for
+  a shared clock is forbidden.
+
+  Configuration of common clocks, which affect multiple consumer devices can
+  be similarly specified in the clock provider node.
+
 # always select the core schema
 select: true
 
-- 
2.34.1

