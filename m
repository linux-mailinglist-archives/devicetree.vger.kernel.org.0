Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 74D9A2C5085
	for <lists+devicetree@lfdr.de>; Thu, 26 Nov 2020 09:34:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388954AbgKZIbw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Nov 2020 03:31:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38748 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727070AbgKZIbw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Nov 2020 03:31:52 -0500
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com [IPv6:2607:f8b0:4864:20::544])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4BC0AC0617A7
        for <devicetree@vger.kernel.org>; Thu, 26 Nov 2020 00:31:52 -0800 (PST)
Received: by mail-pg1-x544.google.com with SMTP id s63so1103496pgc.8
        for <devicetree@vger.kernel.org>; Thu, 26 Nov 2020 00:31:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=veZUTOqi4xMcoQ9kyn0A0Ud/TzM16l418+A2vqtpXSY=;
        b=hTgv752U6BTdsoU6zmD+Uzbq4HpXB4SKUQNc5B+zAphrL0flz/lBVzsKhxM0FnrefZ
         Oz1KFInzzRQh8q+OTYDLvb1XD10FZ+qmD9DnZYW+tDIuWwdfVM/TB8tV1pkQqSbRx81t
         WIbFm2ZUVNFHWmyK0a49Gd8myXYoJhyBdLOvK71dj3ZnDpgBHk6i78GwNBUzQzJJzP4V
         5ht9gJEcoS1Myh3OW+oWITbIrr94GztdQhGXR4X/jWbpx6NIIRacyl1eOFe5zsIVEV9/
         hVOEZcbXyJtt/3N5elCvvsRTg9aBhY2lFVaL8w1d2Cgq4HscljD2KoKz4raIyJ3xx7A+
         vHKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=veZUTOqi4xMcoQ9kyn0A0Ud/TzM16l418+A2vqtpXSY=;
        b=Dmb46SZeUaWXK6MgGZZmGylSvO9wXjs+WD1iLBi2ZVjr+ZQmg8+fWMBaSGDQr8VUQ3
         wPh7EU4nvdfQ3N0OFAkMpFV6SZ9Ra3bIgSNIEek3AnEwVYycmXl78an44umLX99W4CGV
         DfknlYJrUBt2XBmLvVouG3R3al6TWfbsPdSmTBHSjHBoikgF8P5VZeqjlJSTSipHqYBD
         r1XqvlDlT21oYSlxXvcaQ8L0jGqXc9Cdpzd2oj0q/id+YP1auakwG6zA/Yn9nDGRks4J
         Y9KHozsV/tWKtYV2Yhzli2RWuSVaxaBz0oIB4KwEtPjbEqf5/v9PpC2Y9JK9HICB8wMO
         5vaA==
X-Gm-Message-State: AOAM533pvcS9skqYU4dN0H2I6f8P1jAlXYaMu5N3xE8gLRGBDyetwiSe
        LGW+kx0zuEfE+QDD1fIF720g
X-Google-Smtp-Source: ABdhPJzz2vUgL2AEvYQZOHt/t2ol46jTOTHHQ9E47cqREBxm8lWbLIHoK13YpsUS4vIJuiFcuMIocw==
X-Received: by 2002:a63:8c55:: with SMTP id q21mr1699762pgn.362.1606379511801;
        Thu, 26 Nov 2020 00:31:51 -0800 (PST)
Received: from localhost.localdomain ([2409:4072:6e95:f2a:3996:9d7f:e389:7f7d])
        by smtp.gmail.com with ESMTPSA id b21sm5360949pji.24.2020.11.26.00.31.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Nov 2020 00:31:51 -0800 (PST)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org
Cc:     vkoul@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v3 1/2] dt-bindings: arm: qcom: Document SDX55 platform and boards
Date:   Thu, 26 Nov 2020 14:01:37 +0530
Message-Id: <20201126083138.47047-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201126083138.47047-1-manivannan.sadhasivam@linaro.org>
References: <20201126083138.47047-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Vinod Koul <vkoul@kernel.org>

Document the SDX55 platform binding and also the boards using it.

Signed-off-by: Vinod Koul <vkoul@kernel.org>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index ad25deba4d86..1b8193023091 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -40,6 +40,7 @@ description: |
         sdm630
         sdm660
         sdm845
+        sdx55
         sm8250
 
   The 'board' element must be one of the following strings:
@@ -178,4 +179,9 @@ properties:
               - qcom,sm8250-mtp
           - const: qcom,sm8250
 
+      - items:
+          - enum:
+              - qcom,sdx55-mtp
+          - const: qcom,sdx55
+
 ...
-- 
2.25.1

