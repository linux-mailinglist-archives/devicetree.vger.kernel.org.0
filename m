Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 72CFF59123F
	for <lists+devicetree@lfdr.de>; Fri, 12 Aug 2022 16:32:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229464AbiHLOcy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Aug 2022 10:32:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53294 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235487AbiHLOcx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Aug 2022 10:32:53 -0400
Received: from mail-ot1-x335.google.com (mail-ot1-x335.google.com [IPv6:2607:f8b0:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 471932D1D5
        for <devicetree@vger.kernel.org>; Fri, 12 Aug 2022 07:32:53 -0700 (PDT)
Received: by mail-ot1-x335.google.com with SMTP id 53-20020a9d0838000000b006371d896343so663866oty.10
        for <devicetree@vger.kernel.org>; Fri, 12 Aug 2022 07:32:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=ORAgmiG57p/S9ocR1iRk76VvyBsd1+DxcS7O0rlHDs0=;
        b=L19EYLdShAwN3qzEFR6fD2T75Fo5SjgH9YAE1tB7BZwbamNWm69s2TazBuiEWpVdjP
         6q90Et1+osane5GyjPjHIy/N7zHzKxkZtj3iLNBKt1AZZtGDaRrGGXmERhGxR5P8bcYb
         EkHQVxOwW5nmHP/KaWYGKrMA+b1I621PC7b87OhtknlVyKmNHxa3ncfUa9GQxcEZUd+Z
         aLpauA69TRhf1xl6Piz8oQHi1D5vQnzaGxicUSsJpLGz/SpcIdCy3qbrV2WE/KfoNdGr
         frF+a2SAfgDJ0+yRRP8MBG1SGcY+tkHN2VGLKMgOTI3t8v6YRs/AJj5uCYhlT1SMx2Kx
         7rhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=ORAgmiG57p/S9ocR1iRk76VvyBsd1+DxcS7O0rlHDs0=;
        b=YwD+KnNgCoElWZ++JMkeranGUFx3IS1tW2FSniW+rAKyQLH5o4QMHkJKp7dkfNv44k
         sx3Lp0fMWpnnYAvB+RyJtLv+vBcz1UDJGJpj3pvH+61NLE++99tyPVHuPjujOvuc7V/U
         /q2BWfBE6hEoIdJ/HA8BgU+K4J1KL3HnwtX/XnoLKkgrTFX+1PbC4HfwDoJbCJjR2EOH
         U4ykSVTrar/9rt9zbBaljYJXsK5vXRqc+qH9ssjURaCCuoLsUD0bFMRzfnb2MUL0RKVP
         BuSxJxy0tqzpqSH/oONHr7hk4+5e8CV1VB6FgBCzZfyQckJOFJH1/6nLzPjy67bIKzym
         Vp6Q==
X-Gm-Message-State: ACgBeo2jBNEhZoUcEVY1vUfopgTVTddi7zfiRhR9GujEVTKVhL0CIr0m
        PDKiJL17uuoBujxZqlWx1i0=
X-Google-Smtp-Source: AA6agR5VxJHnzw9+8xRuZYBQGYnX+/ThoSrZzHgyNEu8fN+Id2bgeKZHZFCAIxPWejdhKq8FHKUUaA==
X-Received: by 2002:a05:6830:16d9:b0:637:2e86:68a8 with SMTP id l25-20020a05683016d900b006372e8668a8mr1497242otr.334.1660314772643;
        Fri, 12 Aug 2022 07:32:52 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id n28-20020a0568080a1c00b003436fa2c23bsm282879oij.7.2022.08.12.07.32.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Aug 2022 07:32:52 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     linux-rockchip@lists.infradead.org
Cc:     linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, vkoul@kernel.org, kishon@ti.com,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        daniel@ffwll.ch, airlied@linux.ie, heiko@sntech.de,
        hjc@rock-chips.com, Chris Morgan <macromorgan@hotmail.com>
Subject: [RFC 1/4] dt-bindings: display: rockchip-dsi: add rk3568 compatible
Date:   Fri, 12 Aug 2022 09:32:44 -0500
Message-Id: <20220812143247.25825-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220812143247.25825-1-macroalpha82@gmail.com>
References: <20220812143247.25825-1-macroalpha82@gmail.com>
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

