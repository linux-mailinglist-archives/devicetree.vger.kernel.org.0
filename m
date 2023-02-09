Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7C1786905CD
	for <lists+devicetree@lfdr.de>; Thu,  9 Feb 2023 11:56:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229901AbjBIK4m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Feb 2023 05:56:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50740 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229766AbjBIK4h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Feb 2023 05:56:37 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB2AD49402
        for <devicetree@vger.kernel.org>; Thu,  9 Feb 2023 02:56:35 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id n28-20020a05600c3b9c00b003ddca7a2bcbso1187118wms.3
        for <devicetree@vger.kernel.org>; Thu, 09 Feb 2023 02:56:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8K5BTAdm/41pw2lI++GgH00C0SE0jCet8VtGW2Mqre8=;
        b=Zef6VMLJZcfIVwCEekVCGv46hyyCGghuKPKSuvfPuQIezDx0/rQw54pw8u2yiN+WYp
         TTf1AUz/4bTwe8hSJwa8Ima0TJ5CCAMKpQhfOyM48yqlU2u++7JCly8TWrbhbyYy+4kB
         bzftMcStydIOzoGjZu+WwOpzU3PgoUXfa7A8jbqqBZTyMqyDxQSfLn5FRNdbphnaGTQG
         zd82cxmc8KGuzaYxru54ywSbpldfm56Jc9bsRYSFG8CZcIq9MdJldOc5riEqVF0rlZU7
         cwdPkYA3myNUisWVWPJW1AUcZONHlBxuBG6VDYAnyEmyZkUKXtyV9iiILoT4V68NankR
         9hmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8K5BTAdm/41pw2lI++GgH00C0SE0jCet8VtGW2Mqre8=;
        b=WhM2AuhWYaISVmQOD7gqyRCq/A3qq/hVUvDynne17Ef2/ObMSPgYQqkCtidvc1h+Mj
         TkzHKrM1q7mYW6KH5wemzhVflmHzygq43yqlXY3gxX0+Tf43j8yMcmNvFqThydQ77F30
         3bvPWvQKs30V/2o+BcIaeztcpp16RzCCseqejEZ5yX1UHDIg+ORTRtVzymeltyS8LrA+
         6X9AwHuvnOc13KG2Y3YLaghbQ3vwCs0d+3WNrPuiSUBV1mdFpHGGu9GP3TTjxfZy9BPu
         Yf1DFkFTueI1BIB8Py1CauP495tCMIFFgyUr0suWuDMm7vbI5jUUFfpn531qoLP+zjYU
         zy9g==
X-Gm-Message-State: AO0yUKUVE5fyRV+/PAaQ+/OIjQ58bzc56w5Ud6UDzZ+k1bPl/19iuehc
        MxIsmLLXq+83AZE/DVOAOKjpXA==
X-Google-Smtp-Source: AK7set8J2kRY8jrOhNBF+a/ygnyy2766CJqX11hnvdRms+/MtEyECj/QlPAhN6+Rqaf0oo8W9j5OmQ==
X-Received: by 2002:a05:600c:3198:b0:3e1:12d1:fde0 with SMTP id s24-20020a05600c319800b003e112d1fde0mr2357401wmp.6.1675940195567;
        Thu, 09 Feb 2023 02:56:35 -0800 (PST)
Received: from t480-bl003.. (185.173.185.81.rev.sfr.net. [81.185.173.185])
        by smtp.gmail.com with ESMTPSA id j37-20020a05600c1c2500b003daf6e3bc2fsm9140466wms.1.2023.02.09.02.56.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Feb 2023 02:56:35 -0800 (PST)
From:   bchihi@baylibre.com
To:     daniel.lezcano@linaro.org, angelogioacchino.delregno@collabora.com,
        rafael@kernel.org, amitk@kernel.org, rui.zhang@intel.com,
        matthias.bgg@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, rdunlap@infradead.org,
        ye.xingchen@zte.com.cn, p.zabel@pengutronix.de
Cc:     linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        khilman@baylibre.com, james.lo@mediatek.com,
        rex-bc.chen@mediatek.com
Subject: [PATCH v14 3/6] arm64: dts: mt8195: Add efuse node to mt8195
Date:   Thu,  9 Feb 2023 11:56:25 +0100
Message-Id: <20230209105628.50294-4-bchihi@baylibre.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230209105628.50294-1-bchihi@baylibre.com>
References: <20230209105628.50294-1-bchihi@baylibre.com>
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

From: Balsam CHIHI <bchihi@baylibre.com>

Add efuse node.
This will be required by the thermal driver to get the calibration data.

Signed-off-by: Balsam CHIHI <bchihi@baylibre.com>
Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Link: https://lore.kernel.org/r/20230124131717.128660-4-bchihi@baylibre.com
Signed-off-by: Matthias Brugger <matthias.bgg@gmail.com>
---
 arch/arm64/boot/dts/mediatek/mt8195.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8195.dtsi b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
index 5d31536f4c486..09df105f4606d 100644
--- a/arch/arm64/boot/dts/mediatek/mt8195.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
@@ -1380,6 +1380,12 @@ pciephy_glb_intr: pciephy-glb-intr@193 {
 			dp_calibration: dp-data@1ac {
 				reg = <0x1ac 0x10>;
 			};
+			lvts_efuse_data1: lvts1-calib@1bc {
+				reg = <0x1bc 0x14>;
+			};
+			lvts_efuse_data2: lvts2-calib@1d0 {
+				reg = <0x1d0 0x38>;
+			};
 		};
 
 		u3phy2: t-phy@11c40000 {
-- 
2.34.1

