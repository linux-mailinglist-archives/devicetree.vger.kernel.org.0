Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2B04435EE77
	for <lists+devicetree@lfdr.de>; Wed, 14 Apr 2021 09:42:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347777AbhDNHbg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Apr 2021 03:31:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54854 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232891AbhDNHbf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Apr 2021 03:31:35 -0400
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com [IPv6:2607:f8b0:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D33E1C061756
        for <devicetree@vger.kernel.org>; Wed, 14 Apr 2021 00:31:13 -0700 (PDT)
Received: by mail-pg1-x52e.google.com with SMTP id y32so13771334pga.11
        for <devicetree@vger.kernel.org>; Wed, 14 Apr 2021 00:31:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=fkE+tUp6UsBCCxbBvu8r9DHfy7MsyvFZbkTXtiMUc7Y=;
        b=gii7RoZ49IIoSWVe1COL5vMS71V3xnCWPJjnK+lTr1qBusdSeBx5/8V+yzGPc/g/zW
         36Jc8phM8bogF+m/VxLxaLnMholBZ0tvVsteluUatQPvkfsoFzOGONobtt3BLX6J7SGi
         UfkrMpW87Odp4LZFLp39NCQ85WAcRNbQYM+Jk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=fkE+tUp6UsBCCxbBvu8r9DHfy7MsyvFZbkTXtiMUc7Y=;
        b=TkD8it8hRbNPGawsZeAQRvLU8XSH8Q1onsxMAvN2viDqt6bp1ghJyDDOfmMMbJN8YM
         S273/Xgr4QdQBv2EBZRndIZeNS/0bawy/NKIMKxqiVSGoCgUI7wIdo1bqArzMkucIShv
         bs+21GsWvTZwl/MsUt52FHtbXFWVCqsToMWu2PLyDuCf0SrmgAqsu1RIv71stAN+on9H
         Q0h21EoaBmiKIfvtsXdMBHISBivAUtkVOjUkI8CwAschmshBAVoW/aT/Ksswo9mGBNh1
         DRIGPNotAuKeFb7jWxQV1bhnMg7u6JCJywcBabo6SHsfxBpR9pc/9JA7Lgnm7h9TYGry
         erzQ==
X-Gm-Message-State: AOAM531C2rfDOHKb62j0PxQhxdrL9j+THbxrB6gGMmOk6Vbs86p8yj39
        zRwzMI6mQ6Uj/lfHHhpeOIiGLQ==
X-Google-Smtp-Source: ABdhPJwEGnEqaexqjkmF0jnwqOT/4IqXEYg+VEHsl4HeRmez+g7eLeJt2uCKLuvltEbqrAcE2HBnew==
X-Received: by 2002:aa7:83d8:0:b029:249:79c9:fd49 with SMTP id j24-20020aa783d80000b029024979c9fd49mr19643098pfn.72.1618385473359;
        Wed, 14 Apr 2021 00:31:13 -0700 (PDT)
Received: from ikjn-p920.tpe.corp.google.com ([2401:fa00:1:b:bd66:f13a:bfbf:21fa])
        by smtp.gmail.com with ESMTPSA id w191sm15632757pfd.25.2021.04.14.00.31.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Apr 2021 00:31:13 -0700 (PDT)
From:   Ikjoon Jang <ikjn@chromium.org>
To:     linux-mediatek@lists.infradead.org
Cc:     Chun-Jie Chen <chun-jie.chen@mediatek.com>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Weiyi Lu <weiyi.lu@mediatek.com>,
        Ikjoon Jang <ikjn@chromium.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2] arm64: dts: mt8183: Add power-domains properity to mfgcfg
Date:   Wed, 14 Apr 2021 15:31:08 +0800
Message-Id: <20210414073108.3899082-1-ikjn@chromium.org>
X-Mailer: git-send-email 2.31.1.295.g9ea45b61b8-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

mfgcfg clock is under MFG_ASYNC power domain

Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
Signed-off-by: Ikjoon Jang <ikjn@chromium.org>
---

Changes in v2:
Fix a wrong power domain reference (scpsys to spm).

Link(v1): https://patchwork.kernel.org/project/linux-mediatek/patch/20210224091742.1060508-1-ikjn@chromium.org/#23997681

---
 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index 0ff7b67a6806..64813634c3df 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -1116,6 +1116,7 @@ mfgcfg: syscon@13000000 {
 			compatible = "mediatek,mt8183-mfgcfg", "syscon";
 			reg = <0 0x13000000 0 0x1000>;
 			#clock-cells = <1>;
+			power-domains = <&spm MT8183_POWER_DOMAIN_MFG_ASYNC>;
 		};
 
 		mmsys: syscon@14000000 {
-- 
2.31.1.295.g9ea45b61b8-goog

