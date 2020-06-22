Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 59E71204391
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2020 00:27:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731035AbgFVW1m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Jun 2020 18:27:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46968 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731019AbgFVW1k (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Jun 2020 18:27:40 -0400
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com [IPv6:2607:f8b0:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A029C061796
        for <devicetree@vger.kernel.org>; Mon, 22 Jun 2020 15:27:40 -0700 (PDT)
Received: by mail-ot1-x344.google.com with SMTP id e5so14551953ote.11
        for <devicetree@vger.kernel.org>; Mon, 22 Jun 2020 15:27:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=i3ZFx1cfGWfklPrTeX40d9zi2JN5zxamR5nNhJdd1zY=;
        b=lenyekESd+AuK62A5GNcrVp+7OjlGZmtfudQp34AKbhG8XSyh8/muGNxC0Ltki6FxD
         /HDcSkmd4dEEBZa+TVdBJ3HzhcddDAiXVcLdYcJL+haUWvuY/All2cguRXZD04TjUb0r
         kYaNn+hMEr/CGTycCjTQNMfR6sRKwuzllKA7aCoOcX3b3fe+t/2PdAakDXy2qcKylUAF
         E1Vq5HTTED9bbRug6VX4C6GQS4HnIvZrAJ3EkhciFXqeiHfDSs0p2Qg3BP9f5fa40vFd
         cHID1Q5qLataqK9Jv5I3Fmidasvfhevjh5RIRaG7lRPUELD03tp0uo3Q14YerGJ0k2ZG
         1s4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=i3ZFx1cfGWfklPrTeX40d9zi2JN5zxamR5nNhJdd1zY=;
        b=Gv3H4KsAMEO2ok12WhbdD8iHpgPBJxdu2cQ9t6j3nKxIjPSxRbCjCKGYsYhsjZqhb+
         fDA2AFaOVxDZ7bJy9BbN9nbiiOstKCv/uKJnP0STLWbjU/YLv7K6ip7KptHDOkeTzK/B
         O4pzJMPyzAMtrHaEtOoKI/uCigOWqHhgtOVFXxWZ6WKEiAsBLX/qsdP/pSmnWFOjYrVm
         xBcZZkWX5mpYWDDTkZvUZmRp/miBGnCi0iZLibdkImYzfpX75KRom3530AfMnQdRIMdp
         G4VrrPAYI1EWC1ilOEoXqPEAg3/bV8AecMEg4OsTnaJBiLIB6x0tLVY1SbtPG0bIg9qk
         TVzA==
X-Gm-Message-State: AOAM532oryHSwI+ZJBVeTCyGCWCfGEPaJWAw/EvgdqBSdbFHAyD6mPl4
        OUFrTgSYowWPDsyU7uGurhplww==
X-Google-Smtp-Source: ABdhPJwkU2JG/VrosT1dEkPudQ2bGBO7dvIDqhuNzL5d1V1W+B916h0xOJP0969Km4tIoz1LB/Z4Mw==
X-Received: by 2002:a05:6830:2089:: with SMTP id y9mr16718014otq.308.1592864859777;
        Mon, 22 Jun 2020 15:27:39 -0700 (PDT)
Received: from localhost.localdomain (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id h36sm3589304oth.37.2020.06.22.15.27.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jun 2020 15:27:39 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/6] arm64: dts: qcom: sm8250: Add IPCC
Date:   Mon, 22 Jun 2020 15:27:43 -0700
Message-Id: <20200622222747.717306-3-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200622222747.717306-1-bjorn.andersson@linaro.org>
References: <20200622222747.717306-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the IPCC node, used to send and receive IPC signals with
remoteprocs.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index e583a01cbcf1..74a7ca96177e 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -6,6 +6,7 @@
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/clock/qcom,gcc-sm8250.h>
 #include <dt-bindings/clock/qcom,rpmh.h>
+#include <dt-bindings/mailbox/qcom-ipcc.h>
 #include <dt-bindings/power/qcom-rpmpd.h>
 #include <dt-bindings/soc/qcom,rpmh-rsc.h>
 
@@ -329,6 +330,15 @@ gcc: clock-controller@100000 {
 			clocks = <&rpmhcc RPMH_CXO_CLK>, <&sleep_clk>;
 		};
 
+		ipcc: interrupt-controller@408000 {
+			compatible = "qcom,sm8250-ipcc", "qcom,ipcc";
+			reg = <0 0x00408000 0 0x1000>;
+			interrupts = <GIC_SPI 229 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-controller;
+			#interrupt-cells = <3>;
+			#mbox-cells = <2>;
+		};
+
 		qupv3_id_2: geniqup@8c0000 {
 			compatible = "qcom,geni-se-qup";
 			reg = <0x0 0x008c0000 0x0 0x6000>;
-- 
2.26.2

