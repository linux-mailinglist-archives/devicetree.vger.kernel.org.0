Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 438D52FE319
	for <lists+devicetree@lfdr.de>; Thu, 21 Jan 2021 07:42:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730498AbhATXnu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jan 2021 18:43:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59074 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732119AbhATVao (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jan 2021 16:30:44 -0500
Received: from mail-io1-xd2e.google.com (mail-io1-xd2e.google.com [IPv6:2607:f8b0:4864:20::d2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3AECC0617A1
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 13:26:18 -0800 (PST)
Received: by mail-io1-xd2e.google.com with SMTP id d13so46583471ioy.4
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 13:26:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=t+ObhEAIT9fbovEwiN4T77G8335SbFAVW9ujGpSZ6KQ=;
        b=zOgOxPUJ16Q/PoqXkcMSKkOIxbJOIHxqmGuxI27ohstOnqAstIRb5z1TcX8C/AhEfP
         +gksQpOvmlWvPZznCZgZHLJ0rtletvG/Jkc6zjcdI2c+nQxqqRB219DRgnXS+GV24cbR
         uOgtE81FXF+XEr+bzemBWO6EAN7z2kY6q1+CPDHnMYNNuKHdnv7aekDy8vYsTbRZcOl8
         uw/Kq3ufTc1nr5WzcgNwo+3Goi3c3qAN5HomyA4l4hvw/Fq3R3NM4w0D7nIkbtcYOLBF
         FnLw+Tqfv2OWeDK23R1Lz0cNYRMVGtPDBBlnixDesILzfyVjiQdJWXr15sguxL9Yutn8
         r0QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=t+ObhEAIT9fbovEwiN4T77G8335SbFAVW9ujGpSZ6KQ=;
        b=YGfu8WZQ2Xtr+1zDoIaP5fSnr4x7rOwCsVzuJbl8xVz2Oerc4bDlwbR91K2vyamn1/
         e6t06IId5cR04GM0Xt5xNNJ7YIav3bgkTrPo14s+RLXaiokF7jAu+RP4aBG6aOoJHiGH
         eTJ2BR71oxDXCZGzco3Mnf/ww85gRWM5d3A9e7jPN2YqRdvPhPkQ/73HdSlsaU9iCOnY
         NPPsqEGBE3/kNcYlAfZIl5RTO+VmU0xzINHsg4iCO1EeKfN7qioOTrlxBWd8OCKoU3QJ
         QjRuNMhm7evJDOD9DmoCz2l/uf/+xUw/NSiJGR+MRV+R+x+Qvbh49VWOgv9BOVVh9jhO
         Y4Pg==
X-Gm-Message-State: AOAM533YgFWUSXNHN5BPF5tuyGpi7Qn6nzLnRTYoAkTohCvT9q8ZJvoo
        QXMSLkoZujWpMAx3OlKk7/N0tQ==
X-Google-Smtp-Source: ABdhPJw20X7I18x+BHjvjcZoUNOBxfrASy8fugAAMyqdbBBgZ0myronq4agBgRekMihQO+B5HwcAaQ==
X-Received: by 2002:a02:a997:: with SMTP id q23mr9412883jam.67.1611177976784;
        Wed, 20 Jan 2021 13:26:16 -0800 (PST)
Received: from beast.localdomain (c-73-185-129-58.hsd1.mn.comcast.net. [73.185.129.58])
        by smtp.gmail.com with ESMTPSA id q196sm1335687iod.27.2021.01.20.13.26.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Jan 2021 13:26:15 -0800 (PST)
From:   Alex Elder <elder@linaro.org>
To:     davem@davemloft.net, kuba@kernel.org, bjorn.andersson@linaro.org,
        agross@kernel.org
Cc:     robh+dt@kernel.org, evgreen@chromium.org, cpratapa@codeaurora.org,
        subashab@codeaurora.org, rdunlap@infradead.org,
        netdev@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v3 net-next 4/4] arm64: dts: qcom: sdm845: kill IPA modem-remoteproc property
Date:   Wed, 20 Jan 2021 15:26:06 -0600
Message-Id: <20210120212606.12556-5-elder@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210120212606.12556-1-elder@linaro.org>
References: <20210120212606.12556-1-elder@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The "modem-remoteproc" property is no longer required for the IPA
driver, so get rid of it.

Signed-off-by: Alex Elder <elder@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index bcf888381f144..04b2490eec9f4 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -2366,8 +2366,6 @@
 			qcom,smem-state-names = "ipa-clock-enabled-valid",
 						"ipa-clock-enabled";
 
-			modem-remoteproc = <&mss_pil>;
-
 			status = "disabled";
 		};
 
-- 
2.20.1

