Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 13C4F60AE5D
	for <lists+devicetree@lfdr.de>; Mon, 24 Oct 2022 16:58:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233404AbiJXO6n (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Oct 2022 10:58:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51152 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230280AbiJXO6S (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Oct 2022 10:58:18 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6774DA3B84
        for <devicetree@vger.kernel.org>; Mon, 24 Oct 2022 06:35:33 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id l14so9042463wrw.2
        for <devicetree@vger.kernel.org>; Mon, 24 Oct 2022 06:35:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=97PYge/1MTmObwJ7LXSqk7SH569eS9TzAoTm4p09NqE=;
        b=ozxe0mOn9EGDZvMKzeOdMD86FrhZjb1xYaPuoB+6ff8bXiHAL0VZWJmPm2Cjfo7t28
         vnsa87erDfablZGIiGSkzAHC1FZuLuT0sknv7QNo7qjCgRwhGgpKbwi9uS/FhnCmLW96
         RRgUqWoEMGqdAa9PuCuZSATiZW1D8kprBrW8bwwdp9lNDLOtM0w/9MrtaeLXHWyklgWF
         xIkk8gHKHrMmyCNijTxyBu8UfFG2oACXSikL5RPQ9SPLmJv2yTbr+cqGA5wHEpKg0BXM
         rTHiIvidbAaZiBkm/Feyw5nA6I3d4YL3UtHJ0gP+xXiZFmwVua2UUCiDIv9LdJ06gHRn
         JqVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=97PYge/1MTmObwJ7LXSqk7SH569eS9TzAoTm4p09NqE=;
        b=RcomomcuKlhOKZbDNZBNJ50rMuxxUTb9ZfuvPaRYIksjwXC3/AfOp8ew6ZfIwT7DzN
         dHR81D6LYPm6sw6kSc6LaGp/OFvAtw683S7pElFK0fB5XYOZhj2IqT7JJV/eELULYXxk
         RNbh0qWOCkhjN7jgeZ+0Hm/DjR27ql8a932rGPzssSx5fDGdrJCtIoX05XzI84QGnlpN
         /9J/NnJ+EhvtT0Z41i/z6oplPnz/QfwZ9tOwuA1kYmZeTMA4ZZKVAq8rhLf+Np5cOAtj
         Fn4ChGXQriAeb9ZFDaVpPzhBwHCp2EhhxuoV+G9nTedcTkvpcb5jzOuJOmDDJDLgP3WZ
         56LQ==
X-Gm-Message-State: ACrzQf119g9iPeyPyGLOiQALVN5BjqRNEwzG+sCrvj2EWNZNnQZmtI1W
        PSAWEFX1rJkwLI0ZiMABN5Bb2alukg7Z4OAl
X-Google-Smtp-Source: AMsMyM4WtwquW4/J7jv44/X1hX48qBjqbYlqrlzQyCgMTaKDJpyW1NDhe1IVMdHGjvdWa4zBAYv3Qw==
X-Received: by 2002:adf:a4cc:0:b0:235:f41c:aa1e with SMTP id h12-20020adfa4cc000000b00235f41caa1emr15136314wrb.515.1666617378216;
        Mon, 24 Oct 2022 06:16:18 -0700 (PDT)
Received: from fadwachiby.baylibre (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id l24-20020a056000023800b00236627c078esm6322307wrz.110.2022.10.24.06.16.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Oct 2022 06:16:16 -0700 (PDT)
From:   Fadwa CHIBY <fchiby@baylibre.com>
X-Google-Original-From: Fadwa CHIBY
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Johnson Wang <johnson.wang@mediatek.com>,
        "Zhiyong . Tao" <zhiyong.tao@mediatek.com>
Cc:     Fabien Parent <fparent@baylibre.com>,
        Fadwa CHIBY <fchiby@baylibre.com>,
        Rob Herring <robh@kernel.org>,
        Tinghan Shen <tinghan.shen@mediatek.com>,
        Sen Chu <sen.chu@mediatek.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Subject: [PATCH v2 1/3] dt-bindings: soc: mediatek: pwrap: add MT8365 SoC bindings
Date:   Mon, 24 Oct 2022 15:15:41 +0200
Message-Id: <20221024131544.31219-2-fchiby@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221024131544.31219-1-fchiby@baylibre.com>
References: <20221024131544.31219-1-fchiby@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabien Parent <fparent@baylibre.com>

Add pwrap binding documentation for

Signed-off-by: Fabien Parent <fparent@baylibre.com>
Signed-off-by: Fadwa CHIBY <fchiby@baylibre.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/soc/mediatek/pwrap.txt | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/mediatek/pwrap.txt b/Documentation/devicetree/bindings/soc/mediatek/pwrap.txt
index d24e2bc444be..8424b93c432e 100644
--- a/Documentation/devicetree/bindings/soc/mediatek/pwrap.txt
+++ b/Documentation/devicetree/bindings/soc/mediatek/pwrap.txt
@@ -30,6 +30,7 @@ Required properties in pwrap device node.
 	"mediatek,mt8186-pwrap" for MT8186 SoCs
 	"mediatek,mt8188-pwrap", "mediatek,mt8195-pwrap" for MT8188 SoCs
 	"mediatek,mt8195-pwrap" for MT8195 SoCs
+	"mediatek,mt8365-pwrap" for MT8365 SoCs
 	"mediatek,mt8516-pwrap" for MT8516 SoCs
 - interrupts: IRQ for pwrap in SOC
 - reg-names: "pwrap" is required; "pwrap-bridge" is optional.
@@ -39,6 +40,8 @@ Required properties in pwrap device node.
 - clock-names: Must include the following entries:
   "spi": SPI bus clock
   "wrap": Main module clock
+  "sys": System module clock (for MT8365 SoC)
+  "tmr": Timer module clock (for MT8365 SoC)
 - clocks: Must contain an entry for each entry in clock-names.
 
 Optional properities:
-- 
2.25.1

