Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CF8A4D89B7
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2019 09:35:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389892AbfJPHfE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Oct 2019 03:35:04 -0400
Received: from mail-pf1-f196.google.com ([209.85.210.196]:46937 "EHLO
        mail-pf1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389616AbfJPHfA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Oct 2019 03:35:00 -0400
Received: by mail-pf1-f196.google.com with SMTP id q5so14130708pfg.13
        for <devicetree@vger.kernel.org>; Wed, 16 Oct 2019 00:34:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=srw60QlGCW1mVn48ORh0gXVEibw1bp8x1qlk8iY4/Hk=;
        b=OKvnywfaYaF1zd+2IMbDb7Neej+sPGjeqFgET8fbA/ZZQ2QOQI8KBRhv9/IIlgN+j/
         vESY/46MDh1HSo9p73Y5++ls3PAyGTedjunvL2yZNci+pSFgojTn5W+vO2BVR6w6kat4
         urhL3YnWABlyDdhvYOCOYz2QD7M3dPNRegk2dg/sPbfPOP1tVaXphWEM9G9tqxYt8HH2
         4uXQ5bHZwnsyhDcXTFkBfxHPOHdBI9V+3gBevsrsBgPZ8wSbc+R3cWdLx9feGdqKvAUe
         wf0HqjHbRpaaAb8ArSFbyLV1Bq9q1g6JQIIc7QNfAyjgeGUE89fi4b9X7RpHrxqeywG2
         Sb7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=srw60QlGCW1mVn48ORh0gXVEibw1bp8x1qlk8iY4/Hk=;
        b=KElHT+wfS9wPWcdC0444zUaBtQOEs8FXRgL02eQMmV2ZE7o4AjjhJnlGAG04I6VjQ6
         v4ojsJXiVYHMUMMgt4Q/Bnl1ffiIoshqMfa7L7mYd4lkf4bwnhnXfC82LXiVStaOVGGU
         pGX7JwIGO/uRvbP3EcYANnp6iMkFUSyelroPnlzq1PazeNMyrquLA+tuUBSB8HmtjgL6
         4jQPSz5wVdDsykEDgyJpIOzBCAo0krM49m9hN4w/5eybt/rHYQrZVw0CoutipLef7RTq
         emWNeXiFqK19CjaURsAlYLLJLoBF6Ukj3edqgCA+Pbf2X4Z0gojoqTU7uXBzBTRc3yyc
         RgKw==
X-Gm-Message-State: APjAAAVSCllilo9UFrl/L8slMggu7tyQBu3szOKaYSloeYAsre4zbwBH
        d58Kr+8iv4csLF3lyPXuxy8xdg==
X-Google-Smtp-Source: APXvYqxpyqtZKR6Y2VJgW86MAXucFdZTnIZa80a9Ab2niEAGq6fx62Fhuwh0C+49YNUrmK8MSe9L5A==
X-Received: by 2002:a17:90a:a416:: with SMTP id y22mr3324992pjp.74.1571211299384;
        Wed, 16 Oct 2019 00:34:59 -0700 (PDT)
Received: from localhost ([49.248.175.127])
        by smtp.gmail.com with ESMTPSA id h8sm24716360pfo.64.2019.10.16.00.34.58
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 16 Oct 2019 00:34:58 -0700 (PDT)
From:   Amit Kucheria <amit.kucheria@linaro.org>
To:     linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        bjorn.andersson@linaro.org, edubezval@gmail.com, agross@kernel.org,
        masneyb@onstation.org, swboyd@chromium.org,
        Amit Kucheria <amit.kucheria@verdurent.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>
Cc:     devicetree@vger.kernel.org
Subject: [PATCH 10/15] arm64: dts: msm8998: thermal: Add interrupt support
Date:   Wed, 16 Oct 2019 13:04:09 +0530
Message-Id: <2735b57bb1e9477926bfef6f6b8ff84b926f5a1b.1571210269.git.amit.kucheria@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1571210269.git.amit.kucheria@linaro.org>
References: <cover.1571210269.git.amit.kucheria@linaro.org>
In-Reply-To: <cover.1571210269.git.amit.kucheria@linaro.org>
References: <cover.1571210269.git.amit.kucheria@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Register upper-lower interrupts for each of the two tsens controllers.

Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8998.dtsi | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
index c6f81431983e..489d631a9610 100644
--- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
@@ -816,8 +816,9 @@
 			compatible = "qcom,msm8998-tsens", "qcom,tsens-v2";
 			reg = <0x010ab000 0x1000>, /* TM */
 			      <0x010aa000 0x1000>; /* SROT */
-
 			#qcom,sensors = <14>;
+			interrupts = <GIC_SPI 458 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "uplow";
 			#thermal-sensor-cells = <1>;
 		};
 
@@ -825,8 +826,9 @@
 			compatible = "qcom,msm8998-tsens", "qcom,tsens-v2";
 			reg = <0x010ae000 0x1000>, /* TM */
 			      <0x010ad000 0x1000>; /* SROT */
-
 			#qcom,sensors = <8>;
+			interrupts = <GIC_SPI 184 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "uplow";
 			#thermal-sensor-cells = <1>;
 		};
 
-- 
2.17.1

