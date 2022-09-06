Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AAF615AF310
	for <lists+devicetree@lfdr.de>; Tue,  6 Sep 2022 19:49:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229547AbiIFRs4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Sep 2022 13:48:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40484 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229680AbiIFRsf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Sep 2022 13:48:35 -0400
Received: from mail-oo1-xc2b.google.com (mail-oo1-xc2b.google.com [IPv6:2607:f8b0:4864:20::c2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8DEF6832E6
        for <devicetree@vger.kernel.org>; Tue,  6 Sep 2022 10:48:30 -0700 (PDT)
Received: by mail-oo1-xc2b.google.com with SMTP id u5-20020a4a5705000000b0044b34c2c89cso2045060ooa.9
        for <devicetree@vger.kernel.org>; Tue, 06 Sep 2022 10:48:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=ORAgmiG57p/S9ocR1iRk76VvyBsd1+DxcS7O0rlHDs0=;
        b=U5Y4i5jx+40Cx/xgDGq5I8pG9GGoT/wBANnOxRC1QYjQtco82MIEp0iLpmvWiEueFf
         nPthrGMsA/B5nPavWnddRw33xlMDuUwM5QayNrilaND8+mDCU6gasVa0o7X4mAKo8ksy
         rfDrZXD6+EnNdMyZWmv6OcIj5zu0ZKEhMBw/FPiLWw2G6ERAfZg33d+jNrr2nyi/Cajp
         K+4tLN1xPP8VQEPv1yQKSPYWAODfml+LplHFIYMPEyGterhytbVd0p7OWvoGqhZtblzy
         wQWRBVbLhLIejlcJVHgF+DeikMwWZN81V5RGuFJATEl1BmOpqX+EIV0qGoXCvS4pospT
         u5yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=ORAgmiG57p/S9ocR1iRk76VvyBsd1+DxcS7O0rlHDs0=;
        b=0xIZxJpfEFv3D5vUw2GgrCpfAVa4a4BlxHCd66oFpWqCoy/QYXxWPuDCZVt6PrISlh
         XCzLw428LUWHweheFhUjq6jmDS01iCjQmmxgOkIT76OxfLGViwM7rFIANSZzXOql63A2
         mLVGvdYwZobH95ZKUpNWT70Us1+WdpjXZSjszgcSwpqjvbTM2RWUVY0tymW2aAogAAeR
         MZUn6Yx0rtb1WKejfbDXMVPbCQUPIppYm6PtKBhTFL5UP0ueN46ntgxft4bbBAKqBtyT
         c2+7fUJrn5yu1t6QrGw53s4Neze2m0niJGgGwiexwihrTJDBeJftZQTXDQKM5W/mE31R
         c7Ig==
X-Gm-Message-State: ACgBeo3g0PzDcX1LY2syDYPEdCpGYvyGvvgjOd8cWNsPNwqFaxUP0151
        cBHxCxWDR6pCggNaIuQnP2Y=
X-Google-Smtp-Source: AA6agR4hbHRGQOp1BJL6pGJS5Rw997lx2vRqKeDCTqregl6X9KNodLb0ILtqgU8K5/N7p21z2icjwA==
X-Received: by 2002:a05:6820:541:b0:44a:907d:c641 with SMTP id n1-20020a056820054100b0044a907dc641mr18987260ooj.65.1662486509383;
        Tue, 06 Sep 2022 10:48:29 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id o186-20020aca41c3000000b00344afa2b08bsm5568065oia.26.2022.09.06.10.48.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Sep 2022 10:48:28 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     linux-rockchip@lists.infradead.org
Cc:     linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, cl@rock-chips.com,
        s.hauer@pengutronix.de, pgwipeout@gmail.com, vkoul@kernel.org,
        kishon@ti.com, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, daniel@ffwll.ch, airlied@linux.ie,
        heiko@sntech.de, hjc@rock-chips.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v2 1/5] dt-bindings: display: rockchip-dsi: add rk3568 compatible
Date:   Tue,  6 Sep 2022 12:48:19 -0500
Message-Id: <20220906174823.28561-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220906174823.28561-1-macroalpha82@gmail.com>
References: <20220906174823.28561-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

The rk3568 uses the same dw-mipi-dsi controller as previous Rockchip
SOCs, so add a compatible string for it.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../bindings/display/rockchip/dw_mipi_dsi_rockchip.txt           | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/dw_mipi_dsi_rockchip.txt b/Documentation/devicetree/bindings/display/rockchip/dw_mipi_dsi_rockchip.txt
index 39792f051d2d..9a223df8530c 100644
--- a/Documentation/devicetree/bindings/display/rockchip/dw_mipi_dsi_rockchip.txt
+++ b/Documentation/devicetree/bindings/display/rockchip/dw_mipi_dsi_rockchip.txt
@@ -8,6 +8,7 @@ Required properties:
 	"rockchip,px30-mipi-dsi", "snps,dw-mipi-dsi"
 	"rockchip,rk3288-mipi-dsi", "snps,dw-mipi-dsi"
 	"rockchip,rk3399-mipi-dsi", "snps,dw-mipi-dsi"
+	"rockchip,rk3568-mipi-dsi", "snps,dw-mipi-dsi"
 - reg: Represent the physical address range of the controller.
 - interrupts: Represent the controller's interrupt to the CPU(s).
 - clocks, clock-names: Phandles to the controller's pll reference
-- 
2.25.1

