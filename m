Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E8E103F2855
	for <lists+devicetree@lfdr.de>; Fri, 20 Aug 2021 10:25:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232559AbhHTI0R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Aug 2021 04:26:17 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:46270
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231765AbhHTI0Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 20 Aug 2021 04:26:16 -0400
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com [209.85.208.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 6C3353F31E
        for <devicetree@vger.kernel.org>; Fri, 20 Aug 2021 08:16:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1629447361;
        bh=3UQWNblXhGmwplCJxI6/0HyVmLBIiw1OIUPl736Eq4o=;
        h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
        b=jetqS07L/bRXd9xYzwlLInh6eF5pPTGRLB2SfMmYt9RfhA6TKNRVWFcR+LzeOva6e
         cWhBxLdOgWfKbJJevTUiMt+S6n50WigoFb34piU3Xu2pbsZx2VqcRrwblsBt75LtRQ
         dKb94uLN13NzS7CdaLrW3Xy15P999/BGVr8SSkfwZ/NxDskoLco8OQaG07VoR71e8a
         iIMxa1ykJWOfqCK6+ku5wm3+/Whk2Sw/znErhg4xTbWvdcm+w8xu6qZyut90JFS0Ci
         J0smB2lVxb6uGSTPSg0Cxgs5wh3W//Kz7O0wyxeVf3LXbSy7p/p74SE3uyiKmB8ev+
         WXNVUeWQXu7qw==
Received: by mail-ed1-f72.google.com with SMTP id x24-20020aa7dad8000000b003bed477317eso4182536eds.18
        for <devicetree@vger.kernel.org>; Fri, 20 Aug 2021 01:16:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3UQWNblXhGmwplCJxI6/0HyVmLBIiw1OIUPl736Eq4o=;
        b=RA6LPL6JGWlFOB2Cp1Dzu4uwncfi6OUglp2ZrEfUMTZAcpoAWAC+oiL1IbRSRWUg3h
         7nE81/Th0PpKiu+GURIxcu4vDiw+uf7h6XJBdxDL+Ssp7cCjK2ZDMNWd8uZfQLANnH1h
         pUWJH+vx4OTF4k+mWt1kPdfnTtuvVhw7Z1jsVHHK0iLaR4evLE/5tV6u5iBAs5U9DWOt
         AUQlMlyxOz+wsqvs0gnWxDse4d+CdaVWmpy1EO2xtEXmaHclbV4KMvfVTh6d9U2USsGc
         zjSuVBg5FFEtBG6X+vydW8tFccgXyZx/RFxyovN2co4C9kdNRn7+Y673WQqC0c675SnV
         PtWg==
X-Gm-Message-State: AOAM531kz0j3yYyHFOAF0+lJyxLo8BYMNEFJiGe/gXgFzcGSspAZSGJd
        6lUc6uxSNi8itkrdvt1uIBWnKe1tZkE6sYGoIaTIPioZP3xuVOUiBcM1bByPfywScWsjcRTpTam
        3xSNL/D9w/OiA61qHUCNAWOoOsCh+dIJkxiLMGoM=
X-Received: by 2002:a17:906:d1d6:: with SMTP id bs22mr19877850ejb.554.1629447361160;
        Fri, 20 Aug 2021 01:16:01 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy71GytYu/kvw9bjdai2qOvlorr9R3nut2imsPB4iLBk6GmVn1capiHINS5rMIFvYZ11fehpA==
X-Received: by 2002:a17:906:d1d6:: with SMTP id bs22mr19877840ejb.554.1629447360968;
        Fri, 20 Aug 2021 01:16:00 -0700 (PDT)
Received: from localhost.localdomain ([86.32.42.198])
        by smtp.gmail.com with ESMTPSA id m18sm3153704edr.18.2021.08.20.01.15.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Aug 2021 01:16:00 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH] arm64: dts: freescale: imx8mq-librem5:  align operating-points table name with dtschema
Date:   Fri, 20 Aug 2021 10:15:57 +0200
Message-Id: <20210820081557.83603-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Align the name of operating-points node to dtschema to fix warnings like:

  ddrc-opp-table: $nodename:0: 'ddrc-opp-table' does not match '^opp-table(-[a-z0-9]+)?$'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm64/boot/dts/freescale/imx8mq-librem5.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5.dtsi b/arch/arm64/boot/dts/freescale/imx8mq-librem5.dtsi
index 460ef0d86540..3f7524400a63 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-librem5.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5.dtsi
@@ -225,7 +225,7 @@ &A53_3 {
 &ddrc {
 	operating-points-v2 = <&ddrc_opp_table>;
 
-	ddrc_opp_table: ddrc-opp-table {
+	ddrc_opp_table: opp-table {
 		compatible = "operating-points-v2";
 
 		opp-25M {
-- 
2.30.2

