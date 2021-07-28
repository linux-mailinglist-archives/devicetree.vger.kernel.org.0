Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 337A23D8671
	for <lists+devicetree@lfdr.de>; Wed, 28 Jul 2021 06:07:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232665AbhG1EHY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Jul 2021 00:07:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37362 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232174AbhG1EHV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Jul 2021 00:07:21 -0400
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E16EEC0613C1
        for <devicetree@vger.kernel.org>; Tue, 27 Jul 2021 21:07:19 -0700 (PDT)
Received: by mail-pj1-x1035.google.com with SMTP id j18-20020a17090aeb12b029017737e6c349so1627697pjz.0
        for <devicetree@vger.kernel.org>; Tue, 27 Jul 2021 21:07:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+fqG4R+4qOt1ELoyg7PgFn0oDWuwuLmHhCt0oIoufOs=;
        b=leiQUpg97lA0cyhIJNpA37EZPKMHTpmtrVStYeFXvNCJ1xyRsmHlWPqKfdlCllPmjI
         mOyT4TnU4QLIXcO7Zxl1XD+VvxZAfjtgOk25vKX1d6v5xLIUJpdGVKPM86Qk//U5KjB2
         ebdk2A7Rj+dpo2AS5h/WGB4EOF4U/F72/Ppms=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+fqG4R+4qOt1ELoyg7PgFn0oDWuwuLmHhCt0oIoufOs=;
        b=BRkQKSwm/hwgNAEpcfKP0w8yBmBapLeiSyDOexOCIcdbWqslIdXo5D4vnVIcsLOOrN
         Bca/Ypx3vXUseQSrbX8ep0EoBwiYzPYe+7JCm3EAKsrerN0fFjopc2lA3l+ECbJ7utBr
         k9VVAA4wzAeRouowDDMHC1b+l1ismDaX4KvcDYCkYm2u6CWsqN3bgoVyEEA2IRkU06pL
         1bX0nx4rAyLR6S6aEU7U3XZEafW7RgJkJORXmgRwmWjH8isoUeQvyHtrNvVXrnDJTdUe
         EXI0KjoEhaVy5Hn91YrS2RP7HmzpspnIWfaQNMUgqUdyIVdT3O20CKY1xZOIf2cbbg1h
         2nkA==
X-Gm-Message-State: AOAM530+b8bqg9LKp+oZj6rPMKog2HLKyHIRkL9Sje7Jh2jsGni8qVph
        mUvP/BqjfJIqFwaIw6IWcpaAeg==
X-Google-Smtp-Source: ABdhPJyDCFmwyf2fn2UI5FGK/JoEH7OH9IM47ZOeYNpro93++WTNtr6+NaqTR9oGAv3jyqKHNRGf9g==
X-Received: by 2002:a63:1614:: with SMTP id w20mr27210465pgl.198.1627445239405;
        Tue, 27 Jul 2021 21:07:19 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:5176:76cc:2193:9b8f])
        by smtp.gmail.com with ESMTPSA id 6sm5536012pfg.108.2021.07.27.21.07.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 21:07:19 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Enric Balletbo Serra <eballetbo@gmail.com>,
        eizan@chromium.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 2/2] arm64: dts: mt8173: elm: Use aliases to mmc nodes
Date:   Wed, 28 Jul 2021 12:07:10 +0800
Message-Id: <20210728040710.2891955-2-hsinyi@chromium.org>
X-Mailer: git-send-email 2.32.0.432.gabb21c7263-goog
In-Reply-To: <20210728040710.2891955-1-hsinyi@chromium.org>
References: <20210728040710.2891955-1-hsinyi@chromium.org>
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
---
v3->v4: change commit message based on review in v3.
---
 arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
index 21452c51a20a8..d5a2cad39c9c7 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
@@ -10,6 +10,12 @@
 #include "mt8173.dtsi"
 
 / {
+	aliases {
+		mmc0 = &mmc0;
+		mmc1 = &mmc1;
+		mmc2 = &mmc3;
+	};
+
 	memory@40000000 {
 		device_type = "memory";
 		reg = <0 0x40000000 0 0x80000000>;
-- 
2.32.0.432.gabb21c7263-goog

