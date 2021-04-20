Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7C41E365DB7
	for <lists+devicetree@lfdr.de>; Tue, 20 Apr 2021 18:50:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233189AbhDTQu1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Apr 2021 12:50:27 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:49799 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233214AbhDTQu0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Apr 2021 12:50:26 -0400
Received: from mail-ed1-f69.google.com ([209.85.208.69])
        by youngberry.canonical.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.86_2)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lYtZR-0003VW-Q5
        for devicetree@vger.kernel.org; Tue, 20 Apr 2021 16:49:53 +0000
Received: by mail-ed1-f69.google.com with SMTP id f1-20020a0564021941b02903850806bb32so7515338edz.9
        for <devicetree@vger.kernel.org>; Tue, 20 Apr 2021 09:49:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=3dMD592ElHi8nMETJZuVYSTLboZNsfqcXUmwdRPVf7o=;
        b=S4ATUgzTX93T9CV3kWJPSIxrgOlpIMtW0i++2AG8+9A0r9xNj17iULDyxz+kWoSyux
         il1t+pBXgmGEu0aWXr52PfcoDn+Q5pUiXeEa7SDzaDKH0xjY+CDC3G1UiZNfMfDBAqLf
         9NqOs2Mo+PNiwcqj1tamrd5ElFsCJG2lmtDr6AvxBvzI2DMiOnV4QWfHUQcd2vY9vPpO
         MazqFLxyRDn8A7n6D4abslwlSBTixsVALRelS+cdvU/mVLo9BqKW22LX6zKoG9m9R+NL
         Iss8KM4xvFW5D0rE045dMgeh3XftNZZPdR0JgXsmeTesn5bzmFF0U8LReXXZ46QNP+je
         04JA==
X-Gm-Message-State: AOAM533BRfE+oSa3tuZiSzLVYJLJNdwxBHoElqHYasgJbh61FDyaKXiA
        oDU/ofsTzN0tPlKEb13/395mX+jd11lZasykh94Uw0Pjb/w5hOiweBJPPacMZBWofqK+bSvMKWl
        lVJHNE4Dv5AnVgApPP6XcvNgQUSkTwcYL5WkJtLg=
X-Received: by 2002:a17:906:3544:: with SMTP id s4mr29389526eja.73.1618937393512;
        Tue, 20 Apr 2021 09:49:53 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxml5h0MCp/k5aMeRiDFOFNo/wwzl9BNnecPMV2V8bC7mVCzWrVVPBCya4E8qd8HJd3A8nb9g==
X-Received: by 2002:a17:906:3544:: with SMTP id s4mr29389514eja.73.1618937393389;
        Tue, 20 Apr 2021 09:49:53 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-180-75.adslplus.ch. [188.155.180.75])
        by smtp.gmail.com with ESMTPSA id c12sm18252873edx.54.2021.04.20.09.49.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Apr 2021 09:49:52 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 03/11] ARM: dts: exynos: enable PMIC wakeup from suspend on Arndale
Date:   Tue, 20 Apr 2021 18:49:35 +0200
Message-Id: <20210420164943.11152-3-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210420164943.11152-1-krzysztof.kozlowski@canonical.com>
References: <20210420164943.11152-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The RTC on S5M8767 PMIC can wakeup the system from suspend to RAM.
Add a generic property for this.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm/boot/dts/exynos5250-arndale.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/exynos5250-arndale.dts b/arch/arm/boot/dts/exynos5250-arndale.dts
index a161f6237c7f..a771542e28b8 100644
--- a/arch/arm/boot/dts/exynos5250-arndale.dts
+++ b/arch/arm/boot/dts/exynos5250-arndale.dts
@@ -218,6 +218,7 @@ pmic@66 {
 		interrupts = <2 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&s5m8767_irq>;
+		wakeup-source;
 
 		vinb1-supply = <&main_dc_reg>;
 		vinb2-supply = <&main_dc_reg>;
-- 
2.25.1

