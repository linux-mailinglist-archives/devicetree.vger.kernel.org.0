Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AAAB7679907
	for <lists+devicetree@lfdr.de>; Tue, 24 Jan 2023 14:17:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233820AbjAXNRZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Jan 2023 08:17:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45328 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233778AbjAXNRY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Jan 2023 08:17:24 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B6493EC4E
        for <devicetree@vger.kernel.org>; Tue, 24 Jan 2023 05:17:22 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id e3so13819523wru.13
        for <devicetree@vger.kernel.org>; Tue, 24 Jan 2023 05:17:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uRFuR+tKXTVFSVWgTM1ydP6t5wcQk1JNcVFjOiTIWVE=;
        b=wYEAShBZ3B+0Nockbo7T+kiNbl6jdoG36gVC3lyA2hVvJxJL0RiRp0MdmJMovKJJK4
         aGr0BXt1jc14RYpVbVO5oBkCJYDoOnM/0dB5jqD4FvEPMEc7lIp5tYRg9Kpw9S7Xopot
         a+M9Z9kiSig3VqlH9L3ha2fs6rCiocv8t/cHS+Zz7tWwfUGsV5GPRH6UcBegCCh+wSCl
         EZEXkOfbeouKKwhmNUHxID2Mst+WpQBmJjuuijuOl/QMy9FTPgnr/enUT1hhQyo2TE7+
         u+Q5VV3OBeAMcDntn2w61gPIYtPzZM4AjKysy1A3LriLubUDS6jTb8fFlW4sHv40C06Q
         AXdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uRFuR+tKXTVFSVWgTM1ydP6t5wcQk1JNcVFjOiTIWVE=;
        b=L95suXEPFLtLIDA05yJcETTFBZBMhkVHdp4KoCEH4e3yLmkQKmWdz/GnwLVfulVP4f
         Mh2/rRLl7D/u90kqZzai9oZCVtnqQ7nndK2Rk5aWoMMgDdHMaLlkOFOk/WqrBiQj0ZbP
         2QcYB/yxnGcML6wxoPJ+TgmUm1PnWpFLn765+MqdvZgYlyOzuwsp7Er4X6xIsW72KFrB
         K0KJ/U3sqG/0VNjR0neeQyS5qt7nJ4wSxEftUML4giMZCIHlyCHv8/M64GNa0hMjge7B
         BM4GWWKVjrfz2eu5po84WuyBrE/npSGd+wxuwJYYGAemKMY0wWIBlD21H2uvHw75KzIa
         cWnQ==
X-Gm-Message-State: AFqh2kpFDuVjBOH4xvqMQRgsRBKvFtiP8oe0eD7MEOp6KZ9/EPkpnB4E
        lRTkeN98fkdx6QkOT8dy4xCGjA==
X-Google-Smtp-Source: AMrXdXvzfegMVJZsAQeZApCFjS5isJncUHlBYtAFFI3zGp9RNZfbhsZUwriwwOkjOVH4iWWeJqAvVA==
X-Received: by 2002:a5d:67c3:0:b0:242:8af9:b987 with SMTP id n3-20020a5d67c3000000b002428af9b987mr18230999wrw.13.1674566241023;
        Tue, 24 Jan 2023 05:17:21 -0800 (PST)
Received: from t480-bl003.civfrance.com (58.188.158.77.rev.sfr.net. [77.158.188.58])
        by smtp.gmail.com with ESMTPSA id a5-20020adfeec5000000b002bfb5ebf8cfsm49427wrp.21.2023.01.24.05.17.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Jan 2023 05:17:20 -0800 (PST)
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
Subject: [PATCH v11 3/6] arm64/dts/mt8195: Add efuse node to mt8195
Date:   Tue, 24 Jan 2023 14:17:14 +0100
Message-Id: <20230124131717.128660-4-bchihi@baylibre.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230124131717.128660-1-bchihi@baylibre.com>
References: <20230124131717.128660-1-bchihi@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
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
---
 arch/arm64/boot/dts/mediatek/mt8195.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8195.dtsi b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
index 5d31536f4c48..09df105f4606 100644
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

