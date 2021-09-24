Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 27AC5416A2D
	for <lists+devicetree@lfdr.de>; Fri, 24 Sep 2021 04:53:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243955AbhIXCyb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Sep 2021 22:54:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48992 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233314AbhIXCyb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Sep 2021 22:54:31 -0400
Received: from mail-ot1-x336.google.com (mail-ot1-x336.google.com [IPv6:2607:f8b0:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40D49C061574
        for <devicetree@vger.kernel.org>; Thu, 23 Sep 2021 19:52:57 -0700 (PDT)
Received: by mail-ot1-x336.google.com with SMTP id r43-20020a05683044ab00b0054716b40005so4405507otv.4
        for <devicetree@vger.kernel.org>; Thu, 23 Sep 2021 19:52:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Z5H0XLELueIUq22VyYpvWjmTSY+HWirMAmpHQiZbtt0=;
        b=KfQY+XdQQ5rGbeJ4SrNgZ5yn2hr7Juk7CkagW7z6MOZR1ykhHY8vNnRocZzGmpd38+
         garU7llqLgWA2g+wrV7U+dtIGDbRpYZ//89GM+95RWVWDvtpRxhyl41D0kgRLDxud3AF
         mZfpyMdj7PQ4NRqp3eEU9MyoimCQGhrfL7zH3XXOzEzCEBw1JZ5IoZsCoWpthhJR/Zfh
         OTRWg5lfBTu4ECbqJzxe1koailZxTqpFjemQBSoU+dWLeAYp+M188Sr9nVNYUAJ417yA
         tQIDOoy5BPHIiTSqjNK8UsRNsEzCDDxlRYXNEAF5Xi8HcezMJZWHaVG6TGqWeQ5zzRIV
         LzZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Z5H0XLELueIUq22VyYpvWjmTSY+HWirMAmpHQiZbtt0=;
        b=bFky/quX08UxS3+0jhhW1LPK7g8SlLSiEJMPlGBCICwdkSG/puYxOLZXtsZWK/OhQ0
         bVWBi887YS2KPE07MEU6EfNZD4E16kOlnoATw3aLGTRsirfjMrvtr/gT6gABCfA4X4HS
         GBcAB7xKh79AYaCq2e4DoEnlDL7kpcjvZCMM7HrKZpr+bPFYLhWMKeWfUvEKP7G20XYl
         l5SJOrO17evGiLgmFvlZvx0YdXaP/DCyWR3Wsb5VcAQdouxwHmDtNE52nKNC4laaug6q
         I6tekbKuSxqUt7JzvmkT9qt/G8zDMo5gcx7EYVmtlxnEoggQj2UwZ02Eqi6ILfuj0zwV
         rB5w==
X-Gm-Message-State: AOAM533usS7ygKIys7/XyvRhtOVIxFc6V4xfGzLqbhDBJJj3AREsEoyq
        0IbvjcWiJFChnIP4S7nIwwwUyQ==
X-Google-Smtp-Source: ABdhPJxIwS3izl7ado4d5drafKPm6wnR1jEgK7TuvbCvGIJyLz7upETMyT8dQ/mAG21qTaKCyKUqlw==
X-Received: by 2002:a9d:7093:: with SMTP id l19mr1818165otj.15.1632451977127;
        Thu, 23 Sep 2021 19:52:57 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id s24sm1773640otp.36.2021.09.23.19.52.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Sep 2021 19:52:56 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawn.guo@linaro.org>,
        Steev Klimaszewski <steev@kali.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: qcom: c630: Move panel to aux-bus
Date:   Thu, 23 Sep 2021 21:52:55 -0500
Message-Id: <20210924025255.853906-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

With the newly introduced aux-bus under the TI SN65DSI86 the panel
node should be described as a child instead of a standalone node, move
it there.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 .../boot/dts/qcom/sdm850-lenovo-yoga-c630.dts | 27 +++++++++----------
 1 file changed, 13 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
index bd22352b6c7a..4818ca6d820d 100644
--- a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
+++ b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
@@ -56,20 +56,6 @@ mode {
 		};
 	};
 
-	panel {
-		compatible = "boe,nv133fhm-n61";
-		no-hpd;
-		backlight = <&backlight>;
-
-		ports {
-			port {
-				panel_in_edp: endpoint {
-					remote-endpoint = <&sn65dsi86_out>;
-				};
-			};
-		};
-	};
-
 	/* Reserved memory changes for IPA */
 	reserved-memory {
 		wlan_msa_mem: memory@8c400000 {
@@ -441,6 +427,19 @@ sn65dsi86_out: endpoint {
 				};
 			};
 		};
+
+		aux-bus {
+			panel: panel {
+				compatible = "boe,nv133fhm-n61";
+				backlight = <&backlight>;
+
+				port {
+					panel_in_edp: endpoint {
+						remote-endpoint = <&sn65dsi86_out>;
+					};
+				};
+			};
+		};
 	};
 };
 
-- 
2.32.0

