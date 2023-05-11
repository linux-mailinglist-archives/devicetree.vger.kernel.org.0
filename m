Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3B00B6FFC8C
	for <lists+devicetree@lfdr.de>; Fri, 12 May 2023 00:08:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239401AbjEKWHe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 May 2023 18:07:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56680 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239206AbjEKWH3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 May 2023 18:07:29 -0400
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 737BE901B
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 15:07:27 -0700 (PDT)
Received: by mail-pj1-x102b.google.com with SMTP id 98e67ed59e1d1-24de2954bc5so6380225a91.1
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 15:07:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1683842847; x=1686434847;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K+dvOm04w8PPu/rImCk8a3YHkXAbeV87AIPZhDPscPw=;
        b=hssIu15bC0KSO0j4n4UiTUSK1g1EmW3565jzwwoTqGY6zacsfwczA5MEV+3WEIgL51
         FaOLFcYy4qZNQX5hyMTUAZC8ss2jKpC9yFQP3B0jicwEflxxCKpWdWKbuC6pxB1ydPks
         q1YL08QBU2trw5ls56AwM/YC2p94uMB+870ko=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683842847; x=1686434847;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K+dvOm04w8PPu/rImCk8a3YHkXAbeV87AIPZhDPscPw=;
        b=NSSa8C1zuTCPfnXaOih+wEQ11c1NZfvHmwr++eRtL9Rgv7nccQkEc/wrmDlyk2F4cB
         Qqm4Krh/JOWc4WFQfnyJhsnPnJC+nszLtzw+GrVL6uCBzhfR96tZoz41pOAKFchq/bDK
         1PGae6xecBnBR0WOo3B4sXi1zGOgyDdXmAFxJZL4a2Nko5U8sSJgBeEKlEM8UUJLYYHM
         DfbGjnIjkDyqGS6CrvFVf+eDEnBm3VDWJIdNQbX6OUr0iActZRZFrSxen3kqEx0+fT1C
         omz1WM95Y/96FXOIOk/je7ip+t6G4hQ1zxZPy6pOegTZldHd+g9bYJcjvPpsHxQt9nFb
         xD6w==
X-Gm-Message-State: AC+VfDyqxBflgG/P/0RcTyHSvNgZV8jIbckyWzPjz2uvWK4YwESU9dbJ
        2qqsvS0juZY3L8RyHjJK3M0Hpw==
X-Google-Smtp-Source: ACHHUZ41RE00te4Ijen+NU2VZLSRZZeq3ieV/CReVKY7S7BpZdh+5eIYWsjWa5jYSCS63ssl+OjuTQ==
X-Received: by 2002:a17:90b:1804:b0:24e:39d2:ab80 with SMTP id lw4-20020a17090b180400b0024e39d2ab80mr22819969pjb.4.1683842846799;
        Thu, 11 May 2023 15:07:26 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:9d:2:b96a:d776:ee3:e572])
        by smtp.gmail.com with ESMTPSA id h24-20020a17090a9c1800b00247735d1463sm17589457pjp.39.2023.05.11.15.07.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 May 2023 15:07:25 -0700 (PDT)
From:   Douglas Anderson <dianders@chromium.org>
To:     Marc Zyngier <maz@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
        wenst@chromium.org, Eddie Huang <eddie.huang@mediatek.com>,
        Allen-KH Cheng <allen-kh.cheng@mediatek.com>,
        Ben Ho <Ben.Ho@mediatek.com>, Weiyi Lu <weiyi.lu@mediatek.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        linux-arm-kernel@lists.infradead.org,
        Tinghan Shen <tinghan.shen@mediatek.com>, jwerner@chromium.org,
        Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>,
        yidilin@chromium.org, Seiya Wang <seiya.wang@mediatek.com>,
        Douglas Anderson <dianders@chromium.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-kernel@vger.kernel.org
Subject: [PATCH 4/6] arm64: dts: mediatek: mt8186: Add mediatek,gicr-save-quirk
Date:   Thu, 11 May 2023 15:05:38 -0700
Message-ID: <20230511150539.4.Iaa0ee05cf0362540fda50dd6a0d87ee35dccd88b@changeid>
X-Mailer: git-send-email 2.40.1.606.ga4b1b128d6-goog
In-Reply-To: <20230511150539.6.Ia0b6ebbaa351e3cd67e201355b9ae67783c7d718@changeid>
References: <20230511150539.6.Ia0b6ebbaa351e3cd67e201355b9ae67783c7d718@changeid>
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

Firmware shipped on mt8186 Chromebooks is affected by the GICR
save/restore issue as described by the patch ("dt-bindings:
interrupt-controller: arm,gic-v3: Add quirk for Mediatek SoCs w/
broken FW"). Add the quirk property.

Fixes: 2e78620b1350 ("arm64: dts: Add MediaTek MT8186 dts and evaluation board and Makefile")
Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 arch/arm64/boot/dts/mediatek/mt8186.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8186.dtsi b/arch/arm64/boot/dts/mediatek/mt8186.dtsi
index 5e83d4e9efa4..09fbd8f9ea52 100644
--- a/arch/arm64/boot/dts/mediatek/mt8186.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8186.dtsi
@@ -336,6 +336,7 @@ gic: interrupt-controller@c000000 {
 			reg = <0 0x0c000000 0 0x40000>,
 			      <0 0x0c040000 0 0x200000>;
 			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH 0>;
+			mediatek,gicr-save-quirk;
 
 			ppi-partitions {
 				ppi_cluster0: interrupt-partition-0 {
-- 
2.40.1.606.ga4b1b128d6-goog

