Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AAC972C385C
	for <lists+devicetree@lfdr.de>; Wed, 25 Nov 2020 06:15:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726162AbgKYFM0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Nov 2020 00:12:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38552 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725864AbgKYFM0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 Nov 2020 00:12:26 -0500
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com [IPv6:2607:f8b0:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0DCDDC0613D6
        for <devicetree@vger.kernel.org>; Tue, 24 Nov 2020 21:12:26 -0800 (PST)
Received: by mail-pf1-x442.google.com with SMTP id c66so1222583pfa.4
        for <devicetree@vger.kernel.org>; Tue, 24 Nov 2020 21:12:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=veZUTOqi4xMcoQ9kyn0A0Ud/TzM16l418+A2vqtpXSY=;
        b=MuaQViBraemnCipe9noOIZQo6cobfRAwGayevDiTZ95CGZVI7T8DYdGBb4A/pckz1+
         AbS8233Kj9UpjQoBAq4zpaIJtMCaH7/eLE2l8k4FRO1yVnJDn4Fq48h2Qqj4dBGG93PR
         UJ+velvIOYT+QQNcPO2jFtjWRpcVfKTTUj8OchiOLtCWjJ4eEdR7Vst4HvK4cbHVLpOW
         VqIvwcIfG8hIw1nAiRdclNN2TqZXRUOkwHi07BIjNjsyW18GVTgtJLzm5nMmtKfiGucE
         OUhMEzeicx52XY/dILuLPUCxTOZFDDqY1RjRbtrGBzKeWvjq8bXAIaJ3YjoraDLCDNTs
         LqIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=veZUTOqi4xMcoQ9kyn0A0Ud/TzM16l418+A2vqtpXSY=;
        b=k7K8dnR8PIwOMbtcB25G5e0GM3ZNyrxNTdlI1AvImZW/ir7u5qsLajYN/kycUzQINS
         EAocRsfLIag5wKym3jfiga8COXgPeCobehs+AAHm3si65hfCYVY2IXp4aT7qqVfUedMj
         KuTrVjwcb9nAL1Uevgi4NRIIoEZaoAtGldVtfLYuKXuGw8KvkIA0ozvYuwM0z+WbX7kh
         6PPJX1gQRv3TkhXL2sfeOppPu3KSQJe5VSryS0QQOXT/T7fPSLLFuuT9pxHcuJXyZK8F
         ObJOL14p26OguMJWHUnsgzQkbyhujnA7NemZ2hXB1vw/7DB6Z+4ly8IHnlK8pQBOdzpi
         PLog==
X-Gm-Message-State: AOAM5325bn+qUYtPKtZ6aa/MfVkULem7M7uaHHNYeihVbBob18Rz8iJa
        2aRHrqQqpBTVIBj/C6wlEw3V
X-Google-Smtp-Source: ABdhPJw5EGlqqNmAeq+fvrdYOUcJVWztCyQt6/fNyzrvl/hQisKuubWuJx4ONRzOAjxXU4LECbMdpQ==
X-Received: by 2002:a63:7208:: with SMTP id n8mr1157364pgc.99.1606281145604;
        Tue, 24 Nov 2020 21:12:25 -0800 (PST)
Received: from localhost.localdomain ([103.59.133.81])
        by smtp.gmail.com with ESMTPSA id x30sm763612pgc.86.2020.11.24.21.12.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2020 21:12:25 -0800 (PST)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org
Cc:     vkoul@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 1/2] dt-bindings: arm: qcom: Document SDX55 platform and boards
Date:   Wed, 25 Nov 2020 10:42:10 +0530
Message-Id: <20201125051211.8089-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201125051211.8089-1-manivannan.sadhasivam@linaro.org>
References: <20201125051211.8089-1-manivannan.sadhasivam@linaro.org>
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

