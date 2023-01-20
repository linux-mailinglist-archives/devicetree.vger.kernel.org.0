Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B7B98674DEB
	for <lists+devicetree@lfdr.de>; Fri, 20 Jan 2023 08:21:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229582AbjATHVO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Jan 2023 02:21:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58164 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229727AbjATHVN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 Jan 2023 02:21:13 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCA8C7CCD4
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 23:21:11 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id k16so3292457wms.2
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 23:21:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hVHXPzXDL0ZUaDjICr6uj4+3YokmdQhzS8TpEvET9ys=;
        b=Wbwo6hfOo+QtTvcqKg66lwaGee3aBFBkGhsPdRVEP/8ZbhN4rKJIUBIe9GJNEQRXA9
         F1xqtyPLBaWcoA/RHQfCRRn2lIqExe/GXZus7DZMmHckphsYuYVPXZujdQ6uKVqnDEZL
         kyKUepdJACoESV0Abc0th+KgD++j8xGnNqaKeYAQbPKK2g8IP6NWakk+qgvbBnCMmtz+
         +tLeYQLHrkgWsm2a3A0nnnNC4zAsXmG3PuBEyhqCyAm8R5Zo8iqM4GVihs0fEp6wmCFe
         N02GM8dy/ikFBvIDp3/64Q52BTzp9SzSf/QU8LCHIixSaGzyFJ+7C257Eh6RSblu1kHP
         f0/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hVHXPzXDL0ZUaDjICr6uj4+3YokmdQhzS8TpEvET9ys=;
        b=Iu7GZ0FyYQ1yBt91pQDS0MmYWzTr84ThHro7BX7Z7mM8amxcg6H7B1qasAZKPywuRe
         kG3NOowB00v6//NFtxNZ3H4eieoC79DM8wpVzq4XRzVudm6Kjun7dNZpezUXU15AOsoG
         oj4BCKPgdliXal9imjliwHDDrCgWCRoYERHrE9Z2auNXXQ0d3CE58TgtBZYdcP0az3Av
         NSXqpCYdQPwCC5UUxXhuunM9QzC5k4yjTJ3dC18PtUsrVLIti2y/VIaHl4NPNH47UxwS
         oTppWBccwMI7GUcfDVq00JMdwQzE7StsoseAZQ9nEDnuOHnsraYhLIf++ReB7l7fDJqr
         nzmA==
X-Gm-Message-State: AFqh2koXYAbxFs3MPNbM/GxkGD2ncEXMIZylW9xhfH4JzkRMeuSy4G6K
        hzLB501+sQEDx/reknrUOOH+rA==
X-Google-Smtp-Source: AMrXdXtLoNnrgvTr3aqNRCV/l9H5kHoEJbwmmrCL3/rmSQDAc9qj22wHQjPz2sWFlIhVdV4MZ3gYhQ==
X-Received: by 2002:a05:600c:687:b0:3d9:73fb:8aaa with SMTP id a7-20020a05600c068700b003d973fb8aaamr13116878wmn.8.1674199270385;
        Thu, 19 Jan 2023 23:21:10 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id o21-20020a05600c4fd500b003c6f8d30e40sm1470246wmq.31.2023.01.19.23.21.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jan 2023 23:21:10 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ARM: dts: meson8: align OPP table names with DT schema
Date:   Fri, 20 Jan 2023 08:21:08 +0100
Message-Id: <20230120072108.138598-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

DT schema expects names of operating points tables to match certain
pattern:

  meson8-minix-neo-x8.dtb: gpu-opp-table: $nodename:0: 'gpu-opp-table' does not match '^opp-table(-[a-z0-9]+)?$'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/meson8.dtsi  | 2 +-
 arch/arm/boot/dts/meson8b.dtsi | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/meson8.dtsi b/arch/arm/boot/dts/meson8.dtsi
index 0f8bac8bac8b..974ef041ff02 100644
--- a/arch/arm/boot/dts/meson8.dtsi
+++ b/arch/arm/boot/dts/meson8.dtsi
@@ -133,7 +133,7 @@ opp-1992000000 {
 		};
 	};
 
-	gpu_opp_table: gpu-opp-table {
+	gpu_opp_table: opp-table-gpu {
 		compatible = "operating-points-v2";
 
 		opp-182142857 {
diff --git a/arch/arm/boot/dts/meson8b.dtsi b/arch/arm/boot/dts/meson8b.dtsi
index cf9c04a61ba3..d7c0491383be 100644
--- a/arch/arm/boot/dts/meson8b.dtsi
+++ b/arch/arm/boot/dts/meson8b.dtsi
@@ -125,7 +125,7 @@ opp-1536000000 {
 		};
 	};
 
-	gpu_opp_table: gpu-opp-table {
+	gpu_opp_table: opp-table-gpu {
 		compatible = "operating-points-v2";
 
 		opp-255000000 {
-- 
2.34.1

