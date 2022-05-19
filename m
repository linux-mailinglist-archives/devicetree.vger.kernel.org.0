Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0D4B352CD08
	for <lists+devicetree@lfdr.de>; Thu, 19 May 2022 09:29:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232373AbiESH1k (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 May 2022 03:27:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50592 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234853AbiESH10 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 May 2022 03:27:26 -0400
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com [IPv6:2607:f8b0:4864:20::1030])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A0A058CB10
        for <devicetree@vger.kernel.org>; Thu, 19 May 2022 00:27:02 -0700 (PDT)
Received: by mail-pj1-x1030.google.com with SMTP id l7-20020a17090aaa8700b001dd1a5b9965so4445649pjq.2
        for <devicetree@vger.kernel.org>; Thu, 19 May 2022 00:27:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=aAwl0nMeiuQyulzpnQY+0Q3CMgejgrLMRz8aWvv0M80=;
        b=TCm4dq7k42XhcVURpAi98W3DD52g+rV9t2retTLhSARqOR3vx0HOSAEBHAd+IT0vqW
         NCYdc4hzFxG5KHr44IxqM2KzakWaqafx5DwQW/baXPYYt9/0/QCh0zLdjV4YDWMgaoMM
         G+7u+3OlAY3yeCssSlYR9pIe3ZnfyvvitTnK4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=aAwl0nMeiuQyulzpnQY+0Q3CMgejgrLMRz8aWvv0M80=;
        b=F5EWhNfp5PCIwJihp+8RYV8M0OtVLGej0nyiGgBBpFlKHYyJMQr6U1jAQTXDBl1mTL
         P7SfwZ/5gm16aGeEe6e/B0xgk3MxdO/bPzMO+Qrv+9LZRCRs9eryJ7g3oip+xzPEa5Iw
         BG/Ia3+K1pppcYxiXUvHm3PFsbc0Y/H4Dkzja+AI2g0XpLLsGjMrt2wu92k+riqJVJs2
         De0tEalLwSIdKM8Ja2ovun4TTEYULcbIlvK4NUfoRKpdAqLInYgYHruZfoeoZiOqx1TK
         d9S/tiShbYsgd/cDkjBPd/wnUZqr6QM8lR/kBljv0648Xa/xYezcDhIpSGIVhOJvUuOw
         /P9w==
X-Gm-Message-State: AOAM531PUJlMn5xsiGns+qC0SB/wRpezUwVkYq5+diIFm+5LB9a722xE
        eBAq3qZhwU7xXpp0f0dsHpC9Gw==
X-Google-Smtp-Source: ABdhPJwxYC9vOe2OgP9SywcJgr2vVxIIiMIGMDJNVZ/f/acPVTzBxtTzRayEoSDDSXE/IjWNvND/Hg==
X-Received: by 2002:a17:902:cf4a:b0:161:64f4:52d8 with SMTP id e10-20020a170902cf4a00b0016164f452d8mr3433156plg.83.1652945221701;
        Thu, 19 May 2022 00:27:01 -0700 (PDT)
Received: from treapking.tpe.corp.google.com ([2401:fa00:1:10:7f93:9f84:d846:5099])
        by smtp.gmail.com with ESMTPSA id y23-20020aa78057000000b0050dc76281d8sm3296106pfm.178.2022.05.19.00.26.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 May 2022 00:27:01 -0700 (PDT)
From:   Pin-Yen Lin <treapking@chromium.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Pin-Yen Lin <treapking@chromium.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Hsin-Yi Wang <hsinyi@chromium.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-mediatek@lists.infradead.org
Subject: [PATCH] arm64: dts: mt8173: Fix elm panel DT node
Date:   Thu, 19 May 2022 15:26:49 +0800
Message-Id: <20220519072649.1493706-1-treapking@chromium.org>
X-Mailer: git-send-email 2.36.1.124.g0e6072fb45-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Move the panel DT node under `aux-bus` node so it won't use the buggy
`ps8640_bridge_get_edid` to get display modes. Also change the
compatible string to "edp-panel" because the predefined
`lg_lp129qe_mode` is not working.

Signed-off-by: Pin-Yen Lin <treapking@chromium.org>
Fixes: 689b937bedde ("arm64: dts: mediatek: add mt8173 elm and hana board")
---

 arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi | 26 +++++++++++---------
 1 file changed, 14 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
index 9c75fbb31f98..1e0802a6f6d2 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
@@ -90,18 +90,6 @@ volume_up {
 		};
 	};
 
-	panel: panel {
-		compatible = "lg,lp120up1";
-		power-supply = <&panel_fixed_3v3>;
-		backlight = <&backlight>;
-
-		port {
-			panel_in: endpoint {
-				remote-endpoint = <&ps8640_out>;
-			};
-		};
-	};
-
 	panel_fixed_3v3: regulator1 {
 		compatible = "regulator-fixed";
 		regulator-name = "PANEL_3V3";
@@ -282,6 +270,20 @@ ps8640_out: endpoint {
 				};
 			};
 		};
+
+		aux-bus {
+			panel {
+				compatible = "edp-panel";
+				power-supply = <&panel_fixed_3v3>;
+				backlight = <&backlight>;
+
+				port {
+					panel_in: endpoint {
+						remote-endpoint = <&ps8640_out>;
+					};
+				};
+			};
+		};
 	};
 };
 
-- 
2.36.1.124.g0e6072fb45-goog

