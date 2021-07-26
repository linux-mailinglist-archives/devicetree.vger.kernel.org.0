Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 353053D5737
	for <lists+devicetree@lfdr.de>; Mon, 26 Jul 2021 12:15:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232955AbhGZJea (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Jul 2021 05:34:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55442 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232482AbhGZJe3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Jul 2021 05:34:29 -0400
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B28DAC061757
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 03:14:57 -0700 (PDT)
Received: by mail-pj1-x1035.google.com with SMTP id u9-20020a17090a1f09b029017554809f35so18984576pja.5
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 03:14:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=6cNmNVuZ2BFsOuXfbpUCz3MMqhnpAF9Cx6jU51cYVSc=;
        b=iS8JuFmAyRhk2OXIxVLoTABTcrtYVlLLYlc5yayhHOjjC4scqJ44arnzWJs0djA6WT
         dcOq8G9yWeMvmiFKETVhPMDfXwtmDHq5z2Fw64kHbvSG1VxaexSCFNhrdWqdyFKcltxF
         iI6sT0SeGMVhw4L80z/0sbZE77iX38IZGU+9I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=6cNmNVuZ2BFsOuXfbpUCz3MMqhnpAF9Cx6jU51cYVSc=;
        b=OG/Ons2LE1qU6WOjgkTYpS8RsWgZNmQ3Gl0q3Grur1Sr036TqbhDCGSU6rRbqcEv5x
         dreNEJPunqSSJYOVoR1eksJQtrhi7h/Sk5UkiV+jNiho9/7AsNFkAyrInkFyFw7dH/Jk
         DxktSzhnr7WCPZ5RipZUDFQI66gGGaGpPDYU/CM0X1o5dDoKzyUlXWPGwTGFUoaG2Ha6
         /1xVH7FTOmL37+26BkNW2sImJSHf+sjNGDVYbYv+zgcqd4yqbFuhP+9tv7lxLo4oLrOd
         6KLhbtbV64+TwXXanHWE2JT9LnckQZXYP0AKaYPYfF3OuCPiKkxnN5C5f+2jCYpLgvJs
         uj4A==
X-Gm-Message-State: AOAM530mPSfrACEgxJfK9UTsL1ZZykudnBKuZ2FcWi8HCy2Qp58OVJmX
        1Ni/6OEqoZSkQXHzHo5pRb2EAQ==
X-Google-Smtp-Source: ABdhPJwtbzs9Py71e1eLFU81oGgxRo1XzTbjigdfghgMbb6gBQkjM9Zc8+T1twmwN0Dq1lmRa8I5jw==
X-Received: by 2002:a62:154f:0:b029:331:b0d6:9adc with SMTP id 76-20020a62154f0000b0290331b0d69adcmr17505047pfv.73.1627294497090;
        Mon, 26 Jul 2021 03:14:57 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:24d6:d449:2832:1652])
        by smtp.gmail.com with ESMTPSA id az15sm7289913pjb.57.2021.07.26.03.14.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jul 2021 03:14:56 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Enric Balletbo Serra <eballetbo@gmail.com>,
        eizan@chromium.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: mt8173: elm: Use aliases to mmc nodes
Date:   Mon, 26 Jul 2021 18:14:51 +0800
Message-Id: <20210726101451.2118076-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.32.0.432.gabb21c7263-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Use aliases to mmc nodes so the partition name for eMMC and SD card will
be consistent across boots.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
index 21452c51a20a8..be21740d682d0 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
@@ -10,6 +10,13 @@
 #include "mt8173.dtsi"
 
 / {
+	aliases {
+		mmc0 = &mmc0;
+		mmc1 = &mmc1;
+		mmc2 = &mmc2;
+		mmc3 = &mmc3;
+	};
+
 	memory@40000000 {
 		device_type = "memory";
 		reg = <0 0x40000000 0 0x80000000>;
-- 
2.32.0.432.gabb21c7263-goog

