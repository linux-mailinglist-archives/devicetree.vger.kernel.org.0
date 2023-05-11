Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 42D636FFC88
	for <lists+devicetree@lfdr.de>; Fri, 12 May 2023 00:08:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239282AbjEKWHy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 May 2023 18:07:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56984 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239296AbjEKWHg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 May 2023 18:07:36 -0400
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com [IPv6:2607:f8b0:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40E2A7DBF
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 15:07:32 -0700 (PDT)
Received: by mail-pg1-x535.google.com with SMTP id 41be03b00d2f7-517bdc9e81dso4762140a12.1
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 15:07:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1683842851; x=1686434851;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M9QSMFz65Ju7EmZBc7wzRidxFiF3tMihmY8MVBVsH1A=;
        b=abRhbKBISwnKIWQVVQLKMmznwGGgrunWJMU/0VhjZdk/cc8Usl3g7DWYipdY5FH4Aa
         PYljErc5sO2VT6nHpZ9+hN48TDAeiFKIpy5ftWwgGLS6b+dIANlIcesFzchIJOByDFVC
         BBFJO49zGeiHXqEiNa88t39sNijH1lwGc6/zA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683842851; x=1686434851;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M9QSMFz65Ju7EmZBc7wzRidxFiF3tMihmY8MVBVsH1A=;
        b=HTOeyu+0TKc0eE4JEI6imauFEfm1qMPkvKPuwlKnMdrA1Z42hwB1Ccvojr30JLiLNa
         ayZllp+18aUUU1NI6pcI302lwjZC6MNTNnGCyd3FZRMN9Jw15XLiFmvzfkDURMOF1ebI
         E6yjgKOqr94O3gnehXb9lIIWTkTpzymk0/+Wn3LZQ0rnoy+TLwtQDQTYYhxLnItkAHzf
         ZYQc68ctSZ+NbC4+YBMg1PMLhHKJuhXZGv9wlTwhX5/XLWmJF3OptzDBhvi0DIBKHWVA
         lctUD0qbVEP2Dk66HUceIRHLWrQmsWIcbkueKcUSaRvtb0I2HA74t0eh1U8u1SoB8C0v
         us9A==
X-Gm-Message-State: AC+VfDyXydkDV8Hx29X2Zmc8+V7EQ/qlI/5h8ECSdL8mSI9WFC8k4eef
        54L3LXaFjESAulRSo/bBWU4eY87BveQbmouA3XY=
X-Google-Smtp-Source: ACHHUZ4eNYjOuXKyMXbgriN8Eh+bAac8ejo2Lcxf9RisUVJt3cHRTOTr5cquWMPd+VUtichC0SkDDg==
X-Received: by 2002:a17:903:2342:b0:1a5:1438:9bcd with SMTP id c2-20020a170903234200b001a514389bcdmr29543096plh.35.1683842851177;
        Thu, 11 May 2023 15:07:31 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:9d:2:b96a:d776:ee3:e572])
        by smtp.gmail.com with ESMTPSA id h24-20020a17090a9c1800b00247735d1463sm17589457pjp.39.2023.05.11.15.07.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 May 2023 15:07:30 -0700 (PDT)
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
Subject: [PATCH 6/6] arm64: dts: mediatek: mt8195: Add mediatek,gicr-save-quirk
Date:   Thu, 11 May 2023 15:05:40 -0700
Message-ID: <20230511150539.6.Ia0b6ebbaa351e3cd67e201355b9ae67783c7d718@changeid>
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

Firmware shipped on mt8195 Chromebooks is affected by the GICR
save/restore issue as described by the patch ("dt-bindings:
interrupt-controller: arm,gic-v3: Add quirk for Mediatek SoCs w/
broken FW"). Add the quirk property.

Fixes: 37f2582883be ("arm64: dts: Add mediatek SoC mt8195 and evaluation board")
Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 arch/arm64/boot/dts/mediatek/mt8195.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8195.dtsi b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
index a44aae4ab953..6df9ad8f658f 100644
--- a/arch/arm64/boot/dts/mediatek/mt8195.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
@@ -463,6 +463,7 @@ gic: interrupt-controller@c000000 {
 			reg = <0 0x0c000000 0 0x40000>,
 			      <0 0x0c040000 0 0x200000>;
 			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH 0>;
+			mediatek,gicr-save-quirk;
 
 			ppi-partitions {
 				ppi_cluster0: interrupt-partition-0 {
-- 
2.40.1.606.ga4b1b128d6-goog

