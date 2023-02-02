Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DC2DA687A6E
	for <lists+devicetree@lfdr.de>; Thu,  2 Feb 2023 11:40:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231806AbjBBKkc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Feb 2023 05:40:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39550 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229667AbjBBKkb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Feb 2023 05:40:31 -0500
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C60ED2279B
        for <devicetree@vger.kernel.org>; Thu,  2 Feb 2023 02:40:30 -0800 (PST)
Received: by mail-pj1-x1035.google.com with SMTP id t12-20020a17090aae0c00b00229f4cff534so5400250pjq.1
        for <devicetree@vger.kernel.org>; Thu, 02 Feb 2023 02:40:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PexX/V0c+w21JwIUEKWHSc7QoYhjon5sMZqAPNZ76zo=;
        b=DSuetR/giXwCr7xl33WxRX4Hvfsvzbp00ZCg/YSjdN59Da6JVxqgvCvj75vLHYOwOH
         ltR2lE/nv3y8xMordBsJkMhC+SwyN0Z4Lod37n8akuTFQ6P8lxDmG4ljBUXUe9IP+sU6
         IB38AJQ9pTHm5zxM34c1mAK1pHIn9Y40T5m+0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PexX/V0c+w21JwIUEKWHSc7QoYhjon5sMZqAPNZ76zo=;
        b=N2X03ymIoZCeg7X+rRWfvxRTw2VL5aJA+gs80H+DuV9u9rnP0SJn8fOaDiD4m5ymiN
         C9BftohHWBo2SEmAXDcsGxCel3R+O0zb9imTg9eKebwkC8ZojNt5Xsyk+nCqWiwDiv8N
         /A6LgKHEeTMHW2+w45MHJ/blF8F3mXm4ClAjTXCO9W33LnyVKNNLhqh7POPm3gPbDiRj
         eB+137j1ztKbREVU+5tqFdCyyDuUsTp/s+ZjX7SrfbQRLVGDmkjiaXj/JCApSh2GxYKc
         ZHoN18nzrPysXzo7lI8Eos+6vMSzzlQTwyH/1k0evWIG+nXgsqpS/3DfTVlQVEcZlbo0
         u0nA==
X-Gm-Message-State: AO0yUKX6bXklS8Iw6nZVgOw6v4BvGJ74u+cqr6K6zs6Ef2oS0GOZbfNB
        0fs/oMn2c8YjtTznvu68Br70xw==
X-Google-Smtp-Source: AK7set+sw1iMXd99AlKQYQp6TJaHlmdMupoaYMb79i2bbcIgiPzqroi3GNubMJIp+d05hWuhQI1HZw==
X-Received: by 2002:a17:903:32c9:b0:196:2e92:e546 with SMTP id i9-20020a17090332c900b001962e92e546mr7508552plr.44.1675334430339;
        Thu, 02 Feb 2023 02:40:30 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:68a6:9bbd:a36a:4d1f])
        by smtp.gmail.com with ESMTPSA id jk22-20020a170903331600b00194c82c2a7bsm13365706plb.224.2023.02.02.02.40.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Feb 2023 02:40:30 -0800 (PST)
From:   Chen-Yu Tsai <wenst@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Chen-Yu Tsai <wenst@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        =?UTF-8?q?N=C3=ADcolas=20F=20=2E=20R=20=2E=20A=20=2E=20Prado?= 
        <nfraprado@collabora.com>, soc@kernel.org
Subject: [PATCH] arm64: dts: mediatek: mt8195: Fix vdosys* compatible strings
Date:   Thu,  2 Feb 2023 18:40:14 +0800
Message-Id: <20230202104014.2931517-1-wenst@chromium.org>
X-Mailer: git-send-email 2.39.1.456.gfc5497dd1b-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

When vdosys1 was initially added, it was incorrectly assumed to be
compatible with vdosys0, and thus both had the same mt8195-mmsys
compatible attached.

This has since been corrected in commit b237efd47df7 ("dt-bindings:
arm: mediatek: mmsys: change compatible for MT8195") and commit
82219cfbef18 ("dt-bindings: arm: mediatek: mmsys: add vdosys1 compatible
for MT8195"). The device tree needs to be fixed as well, otherwise
the vdosys1 block fails to work, and causes its dependent power domain
controller to not work either.

Change the compatible string of vdosys1 to "mediatek,mt8195-vdosys1".
While at it, also add the new "mediatek,mt8195-vdosys0" compatible to
vdosys0.

Fixes: 6aa5b46d1755 ("arm64: dts: mt8195: Add vdosys and vppsys clock nodes")
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---

Since we are at -rc6 and Matthias already sent out pull requests, I've
CC-ed soc@ so that this may be picked up directly on top of them. This
should be merged for -next.

Thanks

 arch/arm64/boot/dts/mediatek/mt8195.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8195.dtsi b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
index 5ffcfd8da31d..93ba274c3f42 100644
--- a/arch/arm64/boot/dts/mediatek/mt8195.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
@@ -2439,7 +2439,7 @@ vencsys_core1: clock-controller@1b000000 {
 		};
 
 		vdosys0: syscon@1c01a000 {
-			compatible = "mediatek,mt8195-mmsys", "syscon";
+			compatible = "mediatek,mt8195-vdosys0", "mediatek,mt8195-mmsys", "syscon";
 			reg = <0 0x1c01a000 0 0x1000>;
 			mboxes = <&gce0 0 CMDQ_THR_PRIO_4>;
 			#clock-cells = <1>;
@@ -2625,7 +2625,7 @@ larb1: larb@1c019000 {
 		};
 
 		vdosys1: syscon@1c100000 {
-			compatible = "mediatek,mt8195-mmsys", "syscon";
+			compatible = "mediatek,mt8195-vdosys1", "syscon";
 			reg = <0 0x1c100000 0 0x1000>;
 			#clock-cells = <1>;
 		};
-- 
2.39.1.456.gfc5497dd1b-goog

