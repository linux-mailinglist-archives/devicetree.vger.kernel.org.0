Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 27ED012B170
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2019 06:33:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727072AbfL0FdU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Dec 2019 00:33:20 -0500
Received: from mail-pg1-f195.google.com ([209.85.215.195]:41799 "EHLO
        mail-pg1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726927AbfL0Fc4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Dec 2019 00:32:56 -0500
Received: by mail-pg1-f195.google.com with SMTP id x8so13917411pgk.8
        for <devicetree@vger.kernel.org>; Thu, 26 Dec 2019 21:32:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=1I6rPruw7MJKOaeZo3Qo45SuClRViIUj/poNzJMdGTo=;
        b=OJSuUHNrddt6e40HHC82STYYK5Fw3NtsBidIhnm+7rvbABpYNWx5j3qcKIbjxKn/CX
         Yccavw/9H02QW+qQi7SdY9yihm3kxLqCAAnJ7d8/SXZ4O3iXxXxHZXnO6nDtIqxKoebn
         1pIX4jNEbEtYFjglqefMXJ/1q2TdJH43Ro+5CSygyYcHtxO1Lfwtn0wm+GlSZN2UR+yp
         Q2IMR21TVO+tRWNn1HY5Bp7FzBjeBBaXGvveU0UKqvZxRNrl8MyHWWLgh3XomOdAyxa0
         ipoir+/A89PL6CvmrHf+2AXIuTo/p0UaCeZAW1TFj05E7QK68xvhpTL9w67VLpDS5J62
         2uDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=1I6rPruw7MJKOaeZo3Qo45SuClRViIUj/poNzJMdGTo=;
        b=QUQd3e/J6si3j5ALzmKK3USoSIM7W0Nxv6MQoqZK+qlczCYwybr2GrpGCrVV1JexbW
         6Ftc5G4f5kRl0tIG6Vt3TYKI7GYvMuRNXzXXbRs1DJfplv9B9TDLEqG9dq8h1/Co9N7P
         T54s6d/fCVOjaZJ/ACIytMmeTo9716j7DsxjS9I5PZvmsVKdLetfNXJJ+Lk7g5YQz6Lk
         rDgTQLbvG2L4j2jyIZGkbCpuB8kHsXkLHDwr0WNrwdURcZARUrYlWjK9tXhUHJBx9bYt
         MhSCwkjT0jUf4yJcswSElHisGaGyRmk04rhwZZJu60AnEDD+/CYmcgKsd5WTFhXoPnd5
         111g==
X-Gm-Message-State: APjAAAU0dqydEhSdS6JmGdiqEaJeSZSC5z9HGRcuKZaC3z06osZHmHqC
        6cuZKyKnpnWytwmZZ5S9YqKUsw==
X-Google-Smtp-Source: APXvYqyr8bS/y6r6UBXXx02G3mYtQ0zW1xJO0wtC5a/ZRcUelD14jUg4X1fk0LqgBRdicVMg5reIWQ==
X-Received: by 2002:a65:530d:: with SMTP id m13mr52900616pgq.351.1577424776207;
        Thu, 26 Dec 2019 21:32:56 -0800 (PST)
Received: from localhost.localdomain (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id c22sm16789196pfo.50.2019.12.26.21.32.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Dec 2019 21:32:55 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Ohad Ben-Cohen <ohad@wizery.com>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        Sibi Sankar <sibis@codeaurora.org>,
        Rishabh Bhatnagar <rishabhb@codeaurora.org>
Subject: [PATCH v2 4/8] arm64: dts: qcom: qcs404: Add IMEM and PIL info region
Date:   Thu, 26 Dec 2019 21:32:11 -0800
Message-Id: <20191227053215.423811-5-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191227053215.423811-1-bjorn.andersson@linaro.org>
References: <20191227053215.423811-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a simple-mfd representing IMEM on QCS404 and define the PIL
relocation info region, so that post mortem tools will be able to locate
the loaded remoteprocs.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---

Changes since v1:
- None

 arch/arm64/boot/dts/qcom/qcs404.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs404.dtsi b/arch/arm64/boot/dts/qcom/qcs404.dtsi
index f5f0c4c9cb16..9d2a2b1c64dd 100644
--- a/arch/arm64/boot/dts/qcom/qcs404.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs404.dtsi
@@ -890,6 +890,16 @@ blsp2_spi0: spi@7af5000 {
 			status = "disabled";
 		};
 
+		imem@8600000 {
+			compatible = "syscon", "simple-mfd";
+			reg = <0x08600000 0x1000>;
+
+			pil-reloc {
+				compatible ="qcom,pil-reloc-info";
+				offset = <0x94c>;
+			};
+		};
+
 		intc: interrupt-controller@b000000 {
 			compatible = "qcom,msm-qgic2";
 			interrupt-controller;
-- 
2.24.0

