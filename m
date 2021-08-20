Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 225A13F2842
	for <lists+devicetree@lfdr.de>; Fri, 20 Aug 2021 10:20:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231479AbhHTIVQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Aug 2021 04:21:16 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:46106
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S230077AbhHTIVP (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 20 Aug 2021 04:21:15 -0400
X-Greylist: delayed 335 seconds by postgrey-1.27 at vger.kernel.org; Fri, 20 Aug 2021 04:21:15 EDT
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com [209.85.218.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id B6E0D40760
        for <devicetree@vger.kernel.org>; Fri, 20 Aug 2021 08:15:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1629447326;
        bh=FZxj6uyq9kWABBNkZHq7h3ZwUYrfv7xqPnlJENowyLs=;
        h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
        b=MJt08P9Awq7cH0Fcixa0A0dnSFh0nnOiEDrDiyqWq7pJ8AWwuQuxU1geL9yOaFUWk
         CYC3DQHLnBP1qC2Kl/qlCZLCqhLrt60WVgXBs/ig7Souxjle4STM5ESrpHtZTR7crN
         xCfkbRoSipMDfbr8Edw5wlYGyWkLlpK7xo8b2Zmh2KWB1PZsJCsOWlFHAERvNbgEHP
         3qth/nogf3XjzFeK0jt6ptS5SgYAjKBX6p+2vd9Cz/ThJ4ClYlFbMpHdULhecK0bae
         FV2lX3JODF2BdwPMqRjKQdBTLi2iFl/GHA8NIZhthuM24e/qTW2mxix+8FIFe+5Y5K
         cCg19u4QINHlA==
Received: by mail-ej1-f72.google.com with SMTP id o7-20020a170906288700b005bb05cb6e25so3387726ejd.23
        for <devicetree@vger.kernel.org>; Fri, 20 Aug 2021 01:15:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FZxj6uyq9kWABBNkZHq7h3ZwUYrfv7xqPnlJENowyLs=;
        b=eXHWokK0+czxe/F/DC6MES1hkW5VL8JV5mj7sxrQlIVwqUTUUeFi8ySDevZbC9dXvA
         VW5u2e/P3nLEntUApkjSmyW0brbhowUbIG93oxKsXw53YUING84FXoagkX+swyX3ZIT5
         T+6Rogx/CyERN1ljJtngn7dilO3HJUbqNRc9A4BSzVkGYHFwqUkEEBz2ogKuR85ZIuJb
         ctSYm9C5KOs16km/YdD7Vx93vzZNiAvz0Mnv5A8YnHEA5Y1aqyf7b8eBXiSLeABMFoEa
         hENjSf+aiwMSULA33B2wKfF4U/xSmTw5UNF6rmLKqqPgG/yqRaGlPSxmPz5JASBVJwc2
         cMCg==
X-Gm-Message-State: AOAM532EVLDs17LKKScBBjbVJ+YO997edHtN4rj8wZKFJkaHLHFS/ERG
        C8e6SuX20wzNScHcFRX9AS6L5nsyWWQt6icmGGdOAqQzAgNT4yie0D/c82077N7LbODqKR/GD2U
        rFtFA0OGR4BEGHnaXGdKIvraLvLVrWSGlqzJKwAQ=
X-Received: by 2002:a17:906:858:: with SMTP id f24mr5731434ejd.145.1629447325480;
        Fri, 20 Aug 2021 01:15:25 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzuo3Vdq6zLRK/WcVhaGL1NNX/d2ueqr+Sxi38Ec5+1qRS3Ozv2g6t00lxfXD7VhhPga32rEg==
X-Received: by 2002:a17:906:858:: with SMTP id f24mr5731422ejd.145.1629447325352;
        Fri, 20 Aug 2021 01:15:25 -0700 (PDT)
Received: from localhost.localdomain ([86.32.42.198])
        by smtp.gmail.com with ESMTPSA id k19sm2487099ejq.42.2021.08.20.01.15.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Aug 2021 01:15:25 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Wei Xu <xuwei5@hisilicon.com>, Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH] arm64: dts: hisilicon: align operating-points table name with dtschema
Date:   Fri, 20 Aug 2021 10:15:22 +0200
Message-Id: <20210820081522.83512-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Align the name of operating-points node to dtschema to fix warnings like:

  cpu_opp_table: $nodename:0: 'cpu_opp_table' does not match '^opp-table(-[a-z0-9]+)?$'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm64/boot/dts/hisilicon/hi3660.dtsi | 4 ++--
 arch/arm64/boot/dts/hisilicon/hi6220.dtsi | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/hisilicon/hi3660.dtsi b/arch/arm64/boot/dts/hisilicon/hi3660.dtsi
index 2d5c1a348716..19a979779bdb 100644
--- a/arch/arm64/boot/dts/hisilicon/hi3660.dtsi
+++ b/arch/arm64/boot/dts/hisilicon/hi3660.dtsi
@@ -210,7 +210,7 @@ A73_L2: l2-cache1 {
 		};
 	};
 
-	cluster0_opp: opp_table0 {
+	cluster0_opp: opp-table-0 {
 		compatible = "operating-points-v2";
 		opp-shared;
 
@@ -245,7 +245,7 @@ opp04 {
 		};
 	};
 
-	cluster1_opp: opp_table1 {
+	cluster1_opp: opp-table-1 {
 		compatible = "operating-points-v2";
 		opp-shared;
 
diff --git a/arch/arm64/boot/dts/hisilicon/hi6220.dtsi b/arch/arm64/boot/dts/hisilicon/hi6220.dtsi
index dde9371dc545..3f2134779115 100644
--- a/arch/arm64/boot/dts/hisilicon/hi6220.dtsi
+++ b/arch/arm64/boot/dts/hisilicon/hi6220.dtsi
@@ -193,7 +193,7 @@ CLUSTER1_L2: l2-cache1 {
 		};
 	};
 
-	cpu_opp_table: cpu_opp_table {
+	cpu_opp_table: opp-table-0 {
 		compatible = "operating-points-v2";
 		opp-shared;
 
-- 
2.30.2

