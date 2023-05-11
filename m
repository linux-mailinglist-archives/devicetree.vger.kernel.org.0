Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 726286FFC84
	for <lists+devicetree@lfdr.de>; Fri, 12 May 2023 00:07:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239206AbjEKWHf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 May 2023 18:07:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56696 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239158AbjEKWH2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 May 2023 18:07:28 -0400
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com [IPv6:2607:f8b0:4864:20::1029])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A0C376E93
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 15:07:24 -0700 (PDT)
Received: by mail-pj1-x1029.google.com with SMTP id 98e67ed59e1d1-24e5c1f6461so6327683a91.0
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 15:07:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1683842844; x=1686434844;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jGmB8F2e98GdWrgyT4B5IleiARSuWWe2Ulwy2r0MhKE=;
        b=a8ROuWQy9au/LGDatW3Yczkvz1oDRSIPWobGizLtzk0TsyfsXDteYsoxk4LFs2lq9I
         zmg18AmauzAwY5tL3x5orosIDGNmfVPcTnQE8EGCRj40rRYHapv4Zj4uHo4PiAkpJjE9
         p+5iV3Raay93vAOnpWhbkitqUW6+lsDByEF10=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683842844; x=1686434844;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jGmB8F2e98GdWrgyT4B5IleiARSuWWe2Ulwy2r0MhKE=;
        b=UL8UeIXKlTXKtkQSLHwNkCSPUmUFvRm3c6TV9DGZlw7y/E+Lfu4C4YIQbCTLQKtZOW
         LfPk64ftWSYKZPJujRdDfXyBPJAYdY5E/KCsOS610Df/OEstkQwO5SgIiXtXRILnDmKb
         65392wZXv553EAQn4EScgeur2hWmTsNo2AnDxPcuURPw+i0B6W+FePcQEiViOEpuuwb1
         7dNhxqsSFxKQUmeXo/pbqnw4KQuXrh6Okrd4xl79HuCroodvvNvUjo4WaO67Bc+zpiSf
         NfsceV0HklokhTaLTeJbK4PS7I+Ae08CA0KUt670FzSsMl90iGnjnp6DZAz0KE050lPE
         dHUA==
X-Gm-Message-State: AC+VfDwHx1pwE9zjMiDxPElQXYEuhVxydvQXBIJGgpfov32s8OhJcFX5
        rlReIx/Er3hEHn6K5s+jJ151iQ==
X-Google-Smtp-Source: ACHHUZ4L4GfuFi0ir2OtEqoC+3EwK8m+Ei92ubWuNmIPIwYD0THA24Kk7jcXZ4JIs8vWNH+/tZYPUA==
X-Received: by 2002:a17:90a:2d6:b0:252:a2e5:4c3f with SMTP id d22-20020a17090a02d600b00252a2e54c3fmr1747848pjd.25.1683842844119;
        Thu, 11 May 2023 15:07:24 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:9d:2:b96a:d776:ee3:e572])
        by smtp.gmail.com with ESMTPSA id h24-20020a17090a9c1800b00247735d1463sm17589457pjp.39.2023.05.11.15.07.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 May 2023 15:07:23 -0700 (PDT)
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
Subject: [PATCH 3/6] arm64: dts: mediatek: mt8183: Add mediatek,gicr-save-quirk
Date:   Thu, 11 May 2023 15:05:37 -0700
Message-ID: <20230511150539.3.I525a2ed4260046d43c885ee1275e91707743df1c@changeid>
X-Mailer: git-send-email 2.40.1.606.ga4b1b128d6-goog
In-Reply-To: <20230511150539.6.Ia0b6ebbaa351e3cd67e201355b9ae67783c7d718@changeid>
References: <20230511150539.6.Ia0b6ebbaa351e3cd67e201355b9ae67783c7d718@changeid>
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

Firmware shipped on mt8183 Chromebooks is affected by the GICR
save/restore issue as described by the patch ("dt-bindings:
interrupt-controller: arm,gic-v3: Add quirk for Mediatek SoCs w/
broken FW"). Add the quirk property.

Fixes: e526c9bc11f8 ("arm64: dts: Add Mediatek SoC MT8183 and evaluation board dts and Makefile")
Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index 5169779d01df..39545172fce5 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -709,6 +709,7 @@ gic: interrupt-controller@c000000 {
 			      <0 0x0c400000 0 0x2000>,   /* GICC */
 			      <0 0x0c410000 0 0x1000>,   /* GICH */
 			      <0 0x0c420000 0 0x2000>;   /* GICV */
+			mediatek,gicr-save-quirk;
 
 			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH 0>;
 			ppi-partitions {
-- 
2.40.1.606.ga4b1b128d6-goog

