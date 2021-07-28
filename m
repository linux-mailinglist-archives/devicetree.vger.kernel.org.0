Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 681433D866F
	for <lists+devicetree@lfdr.de>; Wed, 28 Jul 2021 06:07:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229567AbhG1EHS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Jul 2021 00:07:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37344 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229495AbhG1EHS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Jul 2021 00:07:18 -0400
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com [IPv6:2607:f8b0:4864:20::102a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 60F5DC061757
        for <devicetree@vger.kernel.org>; Tue, 27 Jul 2021 21:07:17 -0700 (PDT)
Received: by mail-pj1-x102a.google.com with SMTP id mt6so3232076pjb.1
        for <devicetree@vger.kernel.org>; Tue, 27 Jul 2021 21:07:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=pks90ivSERYpMZj4hwgFuxICQ3PbMdWHSdug+r6DdN0=;
        b=fN6OB9+rOqF2+0AFhpPtM/haCGqRJ7JsODJOFsCEcERuuTE3aB5cIrjUKdhQwJ8CII
         LVp+mM1J0c/7BLHTLg9gnQhyGP3nQ64G6jaiMP97sFY7vxwaItPm8n+1OvUMvyB7jQfC
         NX7Gls4xWfl4rgH6SxBlHQNP3qk4b4mbNEF98=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=pks90ivSERYpMZj4hwgFuxICQ3PbMdWHSdug+r6DdN0=;
        b=tOgV8psyQcrXP9JCXNIkCIWLZBB68UROpmL0LkU/ioTnnsg+LUDypJYoWmFgreVUfl
         bmfviMHTeDUqsi9s1GcsRUu0rHEi2D8hrvgc8VP+b0YJkPMfsGkhp+Bnoq9dtYBs2vgs
         zMpkpj/bvC7UjO2qfrqlkBPD8+iOVZhWtek865za/XZ/jkgjostklcBud4v3M6yNq0S4
         u3Jqygn2jGxim5GnqastovAjNgGgz2hsjQ+pf6quERkKTsnkjjFcBlbNIdDQcKLARhb5
         lMDRrI/rjM+vZLRWzrH27QdV41TOA1eQGqUD6F54r0qi0V3/ObBNawwRIyFObt3z3Nbc
         IUMw==
X-Gm-Message-State: AOAM532k+mRDKsWvTNeIypA+OSypQpWdXXOT8JrC6CkA60U0hkG75yhr
        8wNPQZz/5mgmXp8pN8AH3+W4nw==
X-Google-Smtp-Source: ABdhPJzA5Yn7qXrzqWhBBZSJiX8eTQpgB2GRbV65UIQ8yec4OJwIMR1tPd7b67aFSc/ImJX+yARX9g==
X-Received: by 2002:a17:902:ab98:b029:12b:acc0:e18c with SMTP id f24-20020a170902ab98b029012bacc0e18cmr21358229plr.10.1627445236800;
        Tue, 27 Jul 2021 21:07:16 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:5176:76cc:2193:9b8f])
        by smtp.gmail.com with ESMTPSA id 6sm5536012pfg.108.2021.07.27.21.07.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 21:07:16 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Enric Balletbo Serra <eballetbo@gmail.com>,
        eizan@chromium.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 1/2] arm64: dts: mt8183: kukui: Use aliases to mmc nodes
Date:   Wed, 28 Jul 2021 12:07:09 +0800
Message-Id: <20210728040710.2891955-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.32.0.432.gabb21c7263-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

With commit 1796164fac7e ("dt-bindings: mmc: document alias support"),
a way to specify fixed index numbers was provided. This patch use aliases
to mmc nodes so the partition name for eMMC and SD card will be consistent
across boots.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
Tested-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---
v3->v4: change commit message based on review in v3.
---
 arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
index ae549d55a94fc..8e9cf36a9a41a 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
@@ -13,6 +13,8 @@
 / {
 	aliases {
 		serial0 = &uart0;
+		mmc0 = &mmc0;
+		mmc1 = &mmc1;
 	};
 
 	chosen {
-- 
2.32.0.432.gabb21c7263-goog

