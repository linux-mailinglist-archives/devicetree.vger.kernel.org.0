Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 334496E47F8
	for <lists+devicetree@lfdr.de>; Mon, 17 Apr 2023 14:40:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231140AbjDQMkI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Apr 2023 08:40:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60830 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229547AbjDQMkI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Apr 2023 08:40:08 -0400
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com [IPv6:2607:f8b0:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2A5C106
        for <devicetree@vger.kernel.org>; Mon, 17 Apr 2023 05:40:05 -0700 (PDT)
Received: by mail-pl1-x62c.google.com with SMTP id p8so25529423plk.9
        for <devicetree@vger.kernel.org>; Mon, 17 Apr 2023 05:40:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1681735205; x=1684327205;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9wZohT/rXRJ7RxEfPJSlKRsC6xJ8iy8PXX3oqB2TB2A=;
        b=L5kG2yNcDDrg4gc3IALK+Yb2SB9Q4uN8X3KQqJhb41hm0SKz2nxeH/xReR+dIyPsWd
         mHdkLsagwuVp+SqIAqUQfvU4w5Rwnc5l5r1JBnfrI0OGf01GCi3zz7YUwah4nUtfDYeZ
         rHBDB3tgAKpSyZc87VWKGyTaUoF+O3orNj0pI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681735205; x=1684327205;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9wZohT/rXRJ7RxEfPJSlKRsC6xJ8iy8PXX3oqB2TB2A=;
        b=MqewQAKCYdNO2pOC4gq8UhMefL5ImgZJkHTg/9sfyezWn0O4HVffxpZRhns3hlHEIQ
         6Y2abKGfxgqOWVX2SmdhZiZPwghE18ijKyIrUZxnS617FLRoAnEZKsUwlijVMRf1N2TA
         VXH3nD6qtmHlcg7UyNny1pliyYYn3l0irozFeDkFOJVcus0hxf52ZWcW2oWx+xWX8ZY3
         WIw1Vzu2jb1nnWIsGCC/AWiHn5L/cUKCAYSFGNr+0NP0jsQmbpu3sRp0Mc9vY5VSIUV3
         EtOuFwxNT03vxTn8wJof7iFBo4pBAAOtShlWRwBxFSyzpPqcoD0HsUoy/TGKrcg1HyFV
         9lHw==
X-Gm-Message-State: AAQBX9es/M3KNSxjwQgerQnLnDC7l+tQPMDeLI9cBML9Q7/uvbMx0ju7
        rJVcz99fS/BE0i9LvTOr4RgriQ==
X-Google-Smtp-Source: AKy350amnx4vQZWZh+xVgxnz5F9g1Ghxm0KeskyBP72RnpTiQW5hibRE3/bNwwAs389ftS5nG+HdUw==
X-Received: by 2002:a17:902:e811:b0:1a5:898:37aa with SMTP id u17-20020a170902e81100b001a5089837aamr15105552plg.15.1681735205392;
        Mon, 17 Apr 2023 05:40:05 -0700 (PDT)
Received: from treapking.tpe.corp.google.com ([2401:fa00:1:10:c8e2:dd4:3c45:24e2])
        by smtp.gmail.com with ESMTPSA id p11-20020a1709026b8b00b001a6467cfbeasm7595361plk.53.2023.04.17.05.40.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Apr 2023 05:40:04 -0700 (PDT)
From:   Pin-yen Lin <treapking@chromium.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Doug Anderson <dianders@chromium.org>,
        Pin-yen Lin <treapking@chromium.org>
Subject: [PATCH] arm64: dts: mt8173: Power on panel regulator on boot
Date:   Mon, 17 Apr 2023 20:39:56 +0800
Message-ID: <20230417123956.926266-1-treapking@chromium.org>
X-Mailer: git-send-email 2.40.0.634.g4ca3ef3211-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add "regulator-boot-on" to "panel_fixed_3v3" to save time on powering
the regulator during boot.  Also add "off-on-delay-us" to the node to
make sure the regulator never violates the panel timing requirements.

Signed-off-by: Pin-yen Lin <treapking@chromium.org>

---

 arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
index d77f6af19065..03d1ab2ca820 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
@@ -96,6 +96,8 @@ panel_fixed_3v3: regulator1 {
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
 		enable-active-high;
+		regulator-boot-on;
+		off-on-delay-us = <500000>;
 		gpio = <&pio 41 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&panel_fixed_pins>;
-- 
2.40.0.634.g4ca3ef3211-goog

