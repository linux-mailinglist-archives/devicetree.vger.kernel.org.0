Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8182519F018
	for <lists+devicetree@lfdr.de>; Mon,  6 Apr 2020 07:24:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726474AbgDFFYo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Apr 2020 01:24:44 -0400
Received: from mail-pf1-f194.google.com ([209.85.210.194]:43684 "EHLO
        mail-pf1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725768AbgDFFYo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Apr 2020 01:24:44 -0400
Received: by mail-pf1-f194.google.com with SMTP id f206so6982998pfa.10
        for <devicetree@vger.kernel.org>; Sun, 05 Apr 2020 22:24:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=uB1Mykzge5iooYd/JncH7b56DuZzhg2jK+iY0sqpSeU=;
        b=LsqPTCDd1KuzJS24biQIDNPlFWGBigllx8luKamoHlfmYS1fQtW7Vw6aWGFcLRybon
         8QxPe++BC+MM//RVKtjQoesT3VL6DmfO44/VNilFG8UmdZrHUNKpLtjIJi46mpU4+2sQ
         YSlbLApS0r//HndZUUKz6sb4NuxoHSxeUU9Z60YRFAvZxgDv6Cgb6wqw3sIUmcsgDKoJ
         dzzCltyX5uJzRScQ7o0ZR0DfGJJR4gWejhb6p8NdxiFeeVEqJsp4/SyuXmidQHd6WQOG
         xSzg0h36JXNh48Mm9EbAO8oTLCTdllfIUt5f37xrj6HeBxbqxAU6d5BJHbIlNC1gaROK
         0nUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=uB1Mykzge5iooYd/JncH7b56DuZzhg2jK+iY0sqpSeU=;
        b=tAz7bIEW5/iuidL9cZ7ym52pSSnukcGmsrr6Biyo4t3QyHjNf6j7XpAG8kHaM08hkY
         f1Dkdp7QOY1+3ZnHm7buppgEa8ymHYmK3wJHdGzXWSdudZPpXc7FPEoUwChg/Sp0c/ld
         iDUZtiWKugq3yDglcPCk/d9x4xDbo5UR0HTGGGHkejpu8iPl5rcVKPUrtjMRJ2EuJjYv
         gyH6GXuMUxb1d26L3q1xzGxeGjUFuiKtptHyUd2s2oB/6UG7ILPuWbiyuGG84BJLx5LR
         5iYBOquYerwOvcevxcaU9zMCH9d085gOZLXFadvYSECdQL2J1Qej+sehTRSkSrkZJ0H7
         /wWQ==
X-Gm-Message-State: AGi0PuaA1JZqDVmvXaWA/QQIX565cI/RXmsuaANwvYwqjFf8Ql8FW8k+
        WbxCxy81V2yv4bxGFyWrTU9ivQ==
X-Google-Smtp-Source: APiQypKOpD/l7tmSe6qbam/589Kl+uaKxJ+b3dV6SV9SQi3SsC7JgYjYOtViUynK4ppquqOIumkemA==
X-Received: by 2002:a62:27c2:: with SMTP id n185mr19407711pfn.203.1586150683293;
        Sun, 05 Apr 2020 22:24:43 -0700 (PDT)
Received: from builder.lan (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id d21sm10636360pfo.49.2020.04.05.22.24.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Apr 2020 22:24:42 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: qcom: c630: Make i2c devices active high
Date:   Sun,  5 Apr 2020 22:24:47 -0700
Message-Id: <20200406052447.105513-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The two i2c hid devices on i2c3 are supposed to have interrupts
triggered active high, update this.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
index be6635068dc3..d4cdde496b74 100644
--- a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
+++ b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
@@ -338,7 +338,7 @@ hid@15 {
 		reg = <0x15>;
 		hid-descr-addr = <0x1>;
 
-		interrupts-extended = <&tlmm 37 IRQ_TYPE_EDGE_RISING>;
+		interrupts-extended = <&tlmm 37 IRQ_TYPE_LEVEL_HIGH>;
 	};
 
 	hid@2c {
@@ -346,7 +346,7 @@ hid@2c {
 		reg = <0x2c>;
 		hid-descr-addr = <0x20>;
 
-		interrupts-extended = <&tlmm 37 IRQ_TYPE_EDGE_RISING>;
+		interrupts-extended = <&tlmm 37 IRQ_TYPE_LEVEL_HIGH>;
 
 		pinctrl-names = "default";
 		pinctrl-0 = <&i2c2_hid_active>;
-- 
2.26.0

