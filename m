Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 83AE6581497
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 15:56:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239065AbiGZNzc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jul 2022 09:55:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37904 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239077AbiGZNz1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jul 2022 09:55:27 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F1FCBE17
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 06:55:22 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id k11so19812245wrx.5
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 06:55:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=arcDIDfy5I5th71PH563xn2qw+sBX2iGRhddOYupYGc=;
        b=Nczm1R1XnknpSY0bhLJ9KIkhC1wp9zY92E1LUSJDTjPlVoeFq+Xg97vBajvhRhTo8Z
         N20OvREyvOccKItTtlaDCzvW7vcr0v9vKGWDy8QMQfXtxXS3/0YHe9vXfSeTSb8zI2pm
         o1aNe5bDuoYgyelDEKcKs4g+RHjZRsMP3kHhwFcJFC7AKwpLmWyabClTtmB/skANAem0
         cvTVTTiDRzghJ+AOizkC2yl/dxwJ7cJ+q/7ngpZRljRvcEIEORNUpuqz7xiGFdAmhM4A
         apT3uub8L83Uh6ZKdcfbPFZwMtXB3ine/8OdPInKZzzlkg0Zk413VLOGglzOKnDg/Pjc
         N3Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=arcDIDfy5I5th71PH563xn2qw+sBX2iGRhddOYupYGc=;
        b=pgjARU/tn/40Sf9kltUYvc26Sq2kJVxPrAPUypAp3vzx7pmA5ZMo5joHs8ucCg3YMr
         tHpEYjwIS/yqfBWTeOFQM/EvMbx7YI16tWj1gjiqkUBH3av1tsSBR1V/IHy/L5u4SmrH
         KNpJpZOVcfcbxMe4lxEoyxcdpCVpuWK6F42MYgQ1pRTPj+wks7hWQ69ZGqAzFZ3LRIYM
         rJ2Nqcz3F4bBJUlfnL0+KTe3HFvgu8uP30U88kuXhP0seu5fA/+hmUOhOcO3yA+5xsT0
         MCwDfS6o5cDYktATcnFuFUR9R3q9TbcJHc3BIGRqEYPANBT1+HL0DOCYdX0AcqZiZJIr
         gMQA==
X-Gm-Message-State: AJIora/mSP4+JvPDvsR3YrYLZUErFnv9dVljwIK6l6tzKUrhNOYRRyNs
        X79S6NOgubTUQvE9xdVTassw4w==
X-Google-Smtp-Source: AGRyM1uecOH3mUxHbaHJqNjbrf59fJByRJT0NxFXJuNtt4FJ/G7iD7mFvvj5CrduipHAxcN2k3c0gQ==
X-Received: by 2002:a5d:6c62:0:b0:21d:c697:87f2 with SMTP id r2-20020a5d6c62000000b0021dc69787f2mr10463196wrz.283.1658843722014;
        Tue, 26 Jul 2022 06:55:22 -0700 (PDT)
Received: from Balsam-ThinkPad-T480.baylibre (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id d13-20020adf9c8d000000b0021e4c3b2967sm15244670wre.65.2022.07.26.06.55.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Jul 2022 06:55:21 -0700 (PDT)
From:   Balsam CHIHI <bchihi@baylibre.com>
To:     rafael@kernel.org, rui.zhang@intel.com, daniel.lezcano@linaro.org,
        amitk@kernel.org
Cc:     linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        khilman@baylibre.com, mka@chromium.org, robh+dt@kernel.org,
        krzk+dt@kernel.org, matthias.bgg@gmail.com, p.zabel@pengutronix.de,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, james.lo@mediatek.com,
        fan.chen@mediatek.com, louis.yu@mediatek.com,
        rex-bc.chen@mediatek.com, abailon@baylibre.com
Subject: [PATCH v8 5/6] arm64: dts: mt8195: Add efuse node to mt8195
Date:   Tue, 26 Jul 2022 15:55:05 +0200
Message-Id: <20220726135506.485108-6-bchihi@baylibre.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220726135506.485108-1-bchihi@baylibre.com>
References: <20220726135506.485108-1-bchihi@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds the efuse node. This will be required by the thermal driver
to get the calibration data.

Signed-off-by: Alexandre Bailon <abailon@baylibre.com>
Signed-off-by: Balsam CHIHI <bchihi@baylibre.com>
---
 arch/arm64/boot/dts/mediatek/mt8195.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8195.dtsi b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
index 0ff34edcf8c8..4fbf24b5d202 100644
--- a/arch/arm64/boot/dts/mediatek/mt8195.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
@@ -1236,6 +1236,22 @@ nor_flash: spi@1132c000 {
 			status = "disabled";
 		};
 
+		efuse: efuse@11c10000 {
+			compatible = "mediatek,efuse";
+			reg = <0 0x11c10000 0 0x1000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+			lvts_efuse_data1: lvts1-calib@1bc {
+				reg = <0x1bc 0x14>;
+			};
+			lvts_efuse_data2: lvts2-calib@1d0 {
+				reg = <0x1d0 0x38>;
+			};
+			svs_calibration: calib@580 {
+				reg = <0x580 0x64>;
+			};
+		};
+
 		u3phy2: t-phy@11c40000 {
 			compatible = "mediatek,mt8195-tphy", "mediatek,generic-tphy-v3";
 			#address-cells = <1>;
-- 
2.34.1

