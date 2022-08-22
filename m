Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6947C59BDA4
	for <lists+devicetree@lfdr.de>; Mon, 22 Aug 2022 12:35:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230480AbiHVKfh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Aug 2022 06:35:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58432 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230414AbiHVKfg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Aug 2022 06:35:36 -0400
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com [IPv6:2607:f8b0:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8F2413DD6
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 03:35:35 -0700 (PDT)
Received: by mail-pl1-x632.google.com with SMTP id jl18so9548771plb.1
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 03:35:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=/LVUMbJJhOHx/h399sCOjq4z40SbHDAbpzR2YJToXdo=;
        b=cd5gqfY8xtXkeFKciTZz3KkNcWezzU04FeSctWmdUvUwXGTtBuNG6LlhdsjyekxLDW
         kBLcIt2IVdmUcJZYsNaezvnEp50ZXzJj3mAOKl9IsknE2EzmVEmlvx+oiKfqjMUAYbxl
         OY1w8ofvgfEredPHnS2o0QGvF+vFMK3RjQPF0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=/LVUMbJJhOHx/h399sCOjq4z40SbHDAbpzR2YJToXdo=;
        b=vdIDODku7seRkmwfCbmy2zv7Wo+nTZ9y2FAXlwlhyDbUY/OmeuW2/E1CAYuapZXfo5
         SPIJ3xWNQkpuKhoKLe7mUL/kZziRVZ/Nff6lezD4R5uT/MlzNkBEzV0XNDDk+XhfuXFK
         Raz6bVFkWTZZ/D/HfUy6KNb3xe7N37EUUpUeq/K2a+E0IUKr4ddc3pfdpaOZyxgWBDI9
         UVZx2paL1qgmROH5rDke4+2rlqYc4SwbFRD/LapHGi2j1tnKpeicQpuPYSiGhKnP5fhd
         19zINxiRTdIe/z2p6ynjVrv9jUPz3i/CzrLf0MYOya3Bg0fOLZLcfje+kJMnCiqLTYUj
         Qmsw==
X-Gm-Message-State: ACgBeo254BDkQncIiBcspfuFf6oKZ+iyBklaqiP0Hu6odu7ktIOrwLtE
        hf11xeZII9lpk7fv9H2yE9HdLQ==
X-Google-Smtp-Source: AA6agR43/r7HGAvErH/NbWgW0DQamSV8igk7N3ATuyGWfWfBaH1zWD0eaNzCPyMsnghMtk5QEFiIdw==
X-Received: by 2002:a17:902:7c01:b0:16f:9649:be73 with SMTP id x1-20020a1709027c0100b0016f9649be73mr19374845pll.70.1661164535216;
        Mon, 22 Aug 2022 03:35:35 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:1990:f7e9:cb35:d592])
        by smtp.gmail.com with ESMTPSA id ij29-20020a170902ab5d00b0016dc26c7d30sm8036228plb.164.2022.08.22.03.35.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Aug 2022 03:35:34 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH] arm64: dts: rockchip: Fix typo in lisense text for PX30.Core
Date:   Mon, 22 Aug 2022 16:05:24 +0530
Message-Id: <20220822103524.266731-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fix the Amarula Solutions typo mistake in lisense text added
in Engicam PX30.Core SoM dtsi.

Fixes: d92a7c331f53c ("arm64: dts: rockchip: Add Engicam PX30.Core SOM")
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm64/boot/dts/rockchip/px30-engicam-px30-core.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core.dtsi b/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core.dtsi
index 7249871530ab..5eecbefa8a33 100644
--- a/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core.dtsi
@@ -2,8 +2,8 @@
 /*
  * Copyright (c) 2020 Fuzhou Rockchip Electronics Co., Ltd
  * Copyright (c) 2020 Engicam srl
- * Copyright (c) 2020 Amarula Solutons
- * Copyright (c) 2020 Amarula Solutons(India)
+ * Copyright (c) 2020 Amarula Solutions
+ * Copyright (c) 2020 Amarula Solutions(India)
  */
 
 #include <dt-bindings/gpio/gpio.h>
-- 
2.25.1

