Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B0175703E65
	for <lists+devicetree@lfdr.de>; Mon, 15 May 2023 22:16:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245331AbjEOUQ3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 May 2023 16:16:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37018 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245294AbjEOUQT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 May 2023 16:16:19 -0400
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com [IPv6:2607:f8b0:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A84312089
        for <devicetree@vger.kernel.org>; Mon, 15 May 2023 13:16:17 -0700 (PDT)
Received: by mail-pf1-x429.google.com with SMTP id d2e1a72fcca58-643bb9cdd6eso11074342b3a.1
        for <devicetree@vger.kernel.org>; Mon, 15 May 2023 13:16:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1684181777; x=1686773777;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KM/irCXkCORVs1tf0J/YTFzQeu/14yX91bXMA72ZW5U=;
        b=K0+Zkz4GdFPHRuwRz6zdEsbA+lXj9VAwwuAFNi/uqRKAzSyUQ3GEPrRLWI8PkADOkI
         lGqIQ901J1tMCxacLaXJZC6XFLvMELhtxu9QDf3Qq/XiptE0pMNQC9PZbXPqib6VGrM0
         DGcwlS8gGGj9LRADnOkCvYBwy1d//nqfUOBLg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684181777; x=1686773777;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KM/irCXkCORVs1tf0J/YTFzQeu/14yX91bXMA72ZW5U=;
        b=dGzEw9ndi6HFCw1L1lEf9NkT5YNrxTdqe1NiDfwwkH44evzgCb0YSBwUcqqBlYiTmX
         eQ2P4/qOiu1/2pvNdz+2R22VH2yCmO9/WGqZft8/sD8uK/7ygS1+OQhDj+y+FaqRGE1f
         l19Mc3V8eUro/qx5SSaTuhLN1KvdRTShRz70Y0Jaouo4OQAi4fB/F1Xxs2ob6bJTdLne
         9XtmD+YIKgrU/DSTWKtWTSmzj5FGCZohagO/T/JHng6kbj9qroxcUKXdaQsQXcJpf+bq
         UNgELMbolCy3qhpMwbkTB6hIQ7PYjlu8nPt0fLYxk60E2ncbyS6ub4Xgjb6xXI5V0FSf
         gFxg==
X-Gm-Message-State: AC+VfDyNgXnTnZxYO4aWJTqBXQHx7kFmRFUHxDsd5UOm7NLCHSbckDnz
        dWYoFodJx/WTOeyhDxWinBgzYA==
X-Google-Smtp-Source: ACHHUZ5ivSNt4ORDYSAE06hFa+3QjYHpxRE1M4IEyYc28jIBV7ZY1zm248z55ssOvgBip8+BrELm7A==
X-Received: by 2002:a05:6a00:1828:b0:643:6f76:f9ba with SMTP id y40-20020a056a00182800b006436f76f9bamr49643580pfa.29.1684181776830;
        Mon, 15 May 2023 13:16:16 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:9d:2:9f33:9d98:277a:d4cd])
        by smtp.gmail.com with ESMTPSA id a19-20020a62bd13000000b0063f0c9eadc7sm7981411pff.200.2023.05.15.13.16.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 May 2023 13:16:16 -0700 (PDT)
From:   Douglas Anderson <dianders@chromium.org>
To:     Marc Zyngier <maz@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Allen-KH Cheng <allen-kh.cheng@mediatek.com>,
        linux-mediatek@lists.infradead.org,
        Eddie Huang <eddie.huang@mediatek.com>,
        Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, wenst@chromium.org,
        yidilin@chromium.org, Tinghan Shen <tinghan.shen@mediatek.com>,
        jwerner@chromium.org, Weiyi Lu <weiyi.lu@mediatek.com>,
        Ben Ho <Ben.Ho@mediatek.com>,
        Seiya Wang <seiya.wang@mediatek.com>,
        Douglas Anderson <dianders@chromium.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 5/5] arm64: dts: mediatek: mt8195: Add mediatek,broken-save-restore-fw to cherry
Date:   Mon, 15 May 2023 13:13:54 -0700
Message-ID: <20230515131353.v2.5.Ia0b6ebbaa351e3cd67e201355b9ae67783c7d718@changeid>
X-Mailer: git-send-email 2.40.1.606.ga4b1b128d6-goog
In-Reply-To: <20230515131353.v2.cover@dianders>
References: <20230515131353.v2.cover@dianders>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Firmware shipped on mt8195 Chromebooks is affected by the GICR
save/restore issue as described by the patch ("dt-bindings:
interrupt-controller: arm,gic-v3: Add quirk for Mediatek SoCs w/
broken FW"). Add the quirk property.

Fixes: 5eb2e303ec6b ("arm64: dts: mediatek: Introduce MT8195 Cherry platform's Tomato")
Reviewed-by: Julius Werner <jwerner@chromium.org>
Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

Changes in v2:
- Changed "Fixes" tag.
- Moved from mt8195.dtsi to mt8195-cherry.dtsi
- mediatek,gicr-save-quirk => mediatek,broken-save-restore-fw

 arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
index 8ac80a136c37..f2d0726546c7 100644
--- a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
@@ -255,6 +255,10 @@ dptx_out: endpoint {
 	};
 };
 
+&gic {
+	mediatek,broken-save-restore-fw;
+};
+
 &gpu {
 	status = "okay";
 	mali-supply = <&mt6315_7_vbuck1>;
-- 
2.40.1.606.ga4b1b128d6-goog

