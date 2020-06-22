Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B3F38204396
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2020 00:28:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731082AbgFVW1s (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Jun 2020 18:27:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46994 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731071AbgFVW1r (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Jun 2020 18:27:47 -0400
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com [IPv6:2607:f8b0:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E3B5C061799
        for <devicetree@vger.kernel.org>; Mon, 22 Jun 2020 15:27:43 -0700 (PDT)
Received: by mail-ot1-x342.google.com with SMTP id e5so14552039ote.11
        for <devicetree@vger.kernel.org>; Mon, 22 Jun 2020 15:27:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=2twIzfs0XUdlpwpGhkxofa+OvC6guPhGkJO/5SWD0ok=;
        b=e6L6AkxQfK4zgaD6G+i1IMw0VPcYhPuMTtZlm1gGZZdFYmjp35ERwxWGbJenH39fq9
         LGdDj0QBZReaSMTlQZ/0auUblx3nWv3eRvJv9T4lueEM8d1aASv00T6NvZJ1Ig97fyUZ
         T8RaWgqyCtH0kuHRANJ6Fv2y8aBUOhYdvfCYWDp1IL5+6SC4f5OOhtP+0HE7rBIA3ZoS
         lyv1qDiYND52PczwcL4pUMj8fW3cmbpZvY1Yjg7IdupTgorfwu4PkRfjzBApTPDA0R2G
         oG3f7qt1gGQq4bYG9HeoqxIqvnppq8Til9queMyxZkkEWMod7EFPTQrC+DgEPl9bSNXW
         Pm6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2twIzfs0XUdlpwpGhkxofa+OvC6guPhGkJO/5SWD0ok=;
        b=W0T10nf49u6QRE5Sk8dSWBYIQPOQjB0m4P6+lTRI6jhdtNGZb3TC/SUI5oogMU6jox
         oQ+Le+sFnc/6SpMty2UKDVP9zNyH0Fuy7lu5RXSsw0tDGGAsNRxxK21Bla6Q1jbgXAUW
         K0ILYxd10T8V/cKP/eLGenRUa8vNjFVZrlDFe1rsK77EE54Bc2VS2P0nFPvTZ59ieG5L
         aazYPtTTLkNmO9MlY+iMTylWLePVrKSk4n4EWTNZ7cvIavhB7g1zTLxUED/uZ663r8Zf
         cQ8SPuaFo4kwz5cSeE+wnI1I6Qlent69/2wh0aRo/MH8c+cBrf6+5I8H6d0QZtNGSQtt
         A9Hw==
X-Gm-Message-State: AOAM533Eo5A81UAPX9r/Ud5I6K6w3qhw95k4ru9MgH8qcpL9VyD4DCMC
        yhlhWVgNuuIjxeHccBNvv95AqA==
X-Google-Smtp-Source: ABdhPJwgey5b7ZI7MvePviVABAMsCQydjl7xm6I27E+P6GcQYA+M+SczI1BLtaOa6STro09MTrS6dA==
X-Received: by 2002:a05:6830:1d8c:: with SMTP id y12mr16164734oti.162.1592864862368;
        Mon, 22 Jun 2020 15:27:42 -0700 (PDT)
Received: from localhost.localdomain (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id h36sm3589304oth.37.2020.06.22.15.27.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jun 2020 15:27:41 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 4/6] arm64: dts: qcom: sm8250: Add SMP2P nodes
Date:   Mon, 22 Jun 2020 15:27:45 -0700
Message-Id: <20200622222747.717306-5-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200622222747.717306-1-bjorn.andersson@linaro.org>
References: <20200622222747.717306-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

SMP2P is used for interrupting and being interrupted about remoteproc
state changes related to the audio, compute and sensor subsystems.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 72 ++++++++++++++++++++++++++++
 1 file changed, 72 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index 246e6f279aa8..364d9a798673 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -314,6 +314,78 @@ smem: qcom,smem {
 		hwlocks = <&tcsr_mutex 3>;
 	};
 
+	smp2p-adsp {
+		compatible = "qcom,smp2p";
+		qcom,smem = <443>, <429>;
+		interrupts-extended = <&ipcc IPCC_CLIENT_LPASS
+					     IPCC_MPROC_SIGNAL_SMP2P
+					     IRQ_TYPE_EDGE_RISING>;
+		mboxes = <&ipcc IPCC_CLIENT_LPASS
+				IPCC_MPROC_SIGNAL_SMP2P>;
+
+		qcom,local-pid = <0>;
+		qcom,remote-pid = <2>;
+
+		smp2p_adsp_out: master-kernel {
+			qcom,entry-name = "master-kernel";
+			#qcom,smem-state-cells = <1>;
+		};
+
+		smp2p_adsp_in: slave-kernel {
+			qcom,entry-name = "slave-kernel";
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+	};
+
+	smp2p-cdsp {
+		compatible = "qcom,smp2p";
+		qcom,smem = <94>, <432>;
+		interrupts-extended = <&ipcc IPCC_CLIENT_CDSP
+					     IPCC_MPROC_SIGNAL_SMP2P
+					     IRQ_TYPE_EDGE_RISING>;
+		mboxes = <&ipcc IPCC_CLIENT_CDSP
+				IPCC_MPROC_SIGNAL_SMP2P>;
+
+		qcom,local-pid = <0>;
+		qcom,remote-pid = <5>;
+
+		smp2p_cdsp_out: master-kernel {
+			qcom,entry-name = "master-kernel";
+			#qcom,smem-state-cells = <1>;
+		};
+
+		smp2p_cdsp_in: slave-kernel {
+			qcom,entry-name = "slave-kernel";
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+	};
+
+	smp2p-slpi {
+		compatible = "qcom,smp2p";
+		qcom,smem = <481>, <430>;
+		interrupts-extended = <&ipcc IPCC_CLIENT_SLPI
+					     IPCC_MPROC_SIGNAL_SMP2P
+					     IRQ_TYPE_EDGE_RISING>;
+		mboxes = <&ipcc IPCC_CLIENT_SLPI
+				IPCC_MPROC_SIGNAL_SMP2P>;
+
+		qcom,local-pid = <0>;
+		qcom,remote-pid = <3>;
+
+		smp2p_slpi_out: master-kernel {
+			qcom,entry-name = "master-kernel";
+			#qcom,smem-state-cells = <1>;
+		};
+
+		smp2p_slpi_in: slave-kernel {
+			qcom,entry-name = "slave-kernel";
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+	};
+
 	soc: soc@0 {
 		#address-cells = <2>;
 		#size-cells = <2>;
-- 
2.26.2

