Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 65322584B37
	for <lists+devicetree@lfdr.de>; Fri, 29 Jul 2022 07:33:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234432AbiG2FdQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Jul 2022 01:33:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33030 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234474AbiG2FdP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Jul 2022 01:33:15 -0400
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com [IPv6:2607:f8b0:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 064957E81B
        for <devicetree@vger.kernel.org>; Thu, 28 Jul 2022 22:33:05 -0700 (PDT)
Received: by mail-pf1-x433.google.com with SMTP id w185so3739963pfb.4
        for <devicetree@vger.kernel.org>; Thu, 28 Jul 2022 22:33:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=KElw61eLlKwxj7+Xj4c/fe2WkAnEdD75KF1vS/H3hCw=;
        b=V+dUhOUkEkwox3z7VTXI8K0jleX0N2fBr7eNQe0krpSetMQsJCmnCW/k5i7xFzo8oS
         zoRM1HsdBLAarjNWuxbe/Jn+jmiXSJvdA2kAL/dR0E8tcNlhKbNQ/fUe74i0u2KxNE4D
         WmR8QnCF493w/FK8xBFY2wNtqeN5fl9wB9dxk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=KElw61eLlKwxj7+Xj4c/fe2WkAnEdD75KF1vS/H3hCw=;
        b=by+1wrp8rDWoK6sYb2zeBMJYeDMVcsNbM5JvJqeysLiiZ4GInhjOjB2EcAaq7ebXsm
         TL5L8ooWjnmisXeqZROYtuiX1LIqdJfX+33rtHQhLIsMdMXfnx50RyV1bUb3+r7IA0Ga
         azi/9p0W4Mu4cmXqlZiVgkfOjxWrBR9uRgL1dZwQPG+8IBtAFas8AJXrEI/XdCkCjsnd
         KwZ83UDSENVGP/MR9N2JxC/uXe489FV29Gc6YsVT1RY72A9RaTcMPkMNFPaZogkGrJYA
         JVpzELScMi9r7GU/wJKKoRtycQGy7l2wHT9mtnztjLMQqJlXAkQ5KvJ7SuLAmnWrffWA
         JNKA==
X-Gm-Message-State: AJIora+4PEy1OthPaEkClDnObTY7fvzP07LyCCVr554/gcUJP8A7WCbR
        lNAVjybD0wuiDuPXn9gGitgi6A==
X-Google-Smtp-Source: AGRyM1thc/3FPJPxHBIe27C3oCbWb/CZ7bNvT/uFSgYftyyhmkTsNKx/WtR4DEu6RRDtx0dKyPB6TQ==
X-Received: by 2002:a63:2102:0:b0:41a:8139:2cb3 with SMTP id h2-20020a632102000000b0041a81392cb3mr1701228pgh.314.1659072780573;
        Thu, 28 Jul 2022 22:33:00 -0700 (PDT)
Received: from treapking.tpe.corp.google.com ([2401:fa00:1:10:df93:db78:d658:2b3b])
        by smtp.gmail.com with ESMTPSA id h27-20020a63211b000000b0040d48cf046csm1820690pgh.55.2022.07.28.22.32.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Jul 2022 22:32:59 -0700 (PDT)
From:   Pin-yen Lin <treapking@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Evan Benn <evanbenn@chromium.org>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        Eizan Miyamoto <eizan@chromium.org>,
        Pin-yen Lin <treapking@chromium.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v5] arm64: dts: mt8173-elm: Switch to SMC watchdog
Date:   Fri, 29 Jul 2022 13:32:54 +0800
Message-Id: <20220729053254.220585-1-treapking@chromium.org>
X-Mailer: git-send-email 2.37.1.455.g008518b4e5-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Switch to SMC watchdog because we need direct control of HW watchdog
registers from kernel. The corresponding firmware was uploaded in
https://review.trustedfirmware.org/c/TF-A/trusted-firmware-a/+/3405.

Signed-off-by: Pin-yen Lin <treapking@chromium.org>
---

Changes in v5:
- Remove redundant new line.

Changes in v4:
- Rename the watchdog node (smc_watchdog -> watchdog)
- Correct the patch summary (mt8173-oak -> mt8173-elm)

Changes in v3:
- Remove /delete-node/ and create a new node for SMC watchdog.

Changes in v2:
- Move the modifications to mt8173-elm.dtsi and add some comments.

 arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
index e21feb85d822..abe3140cfcc6 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
@@ -161,6 +161,18 @@ hdmi_connector_in: endpoint {
 			};
 		};
 	};
+
+	watchdog {
+		compatible = "arm,smc-wdt";
+	};
+};
+
+/*
+ * Disable the original MMIO watch dog and switch to the SMC watchdog, which
+ * operates on the same MMIO.
+ */
+&watchdog {
+	status = "disabled";
 };
 
 &mfg_async {
-- 
2.37.1.455.g008518b4e5-goog

