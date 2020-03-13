Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A7BBF18330B
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2020 15:30:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727684AbgCLOam (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Mar 2020 10:30:42 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:56110 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727680AbgCLOal (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Mar 2020 10:30:41 -0400
Received: by mail-wm1-f65.google.com with SMTP id 6so6324807wmi.5
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2020 07:30:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=SrNGkCGGs9iZ9NyVy5uKVQ/RwyzbDUi+g2m1wLgGoLw=;
        b=D4rQxAGFy94k2dAHm0ROepPHj2K7vit2D6GE1QsoJFz91IrG5EF84ZhJ+JfYj+4S+t
         J5Syzl8Bb8S9ZTld5nfdGPhlZOkgSHJd0pTzuqZXEjzDvxR4m4bOHTkZxEpreEuNTobS
         qGGGJb5UXvN7Z+OVXlGvfn95cIBiT45kzk+ze3D/vZ9MkDd6VmxiUGT8JOUz8be/jYp1
         V5IVRirZAVqJlvm0xzefqxJPAqb6Kf9o+uCYfemYlCIa3UZQwfB0uev1xZc12Eg7KqFx
         xdWqnJSZy2dYWrvWDo+BXoh9wDZCCJGfoZmSGp5eDmWK8HlCX8hclbhim9jmLcZF4nr4
         D+IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=SrNGkCGGs9iZ9NyVy5uKVQ/RwyzbDUi+g2m1wLgGoLw=;
        b=aBiNKrzxfldncH5nW1PJ9LwV3n2pNVvTWP4ySBrq6daogMyCpw0wYICT1kTmxKroLD
         1NOJatjkkHBMQJHGoi/sNZRND+i4n3CRxXdJ7m1VlCicUXjx6dESttpJDrdhv2REU0es
         L0RO9Sk9RfMetVuZl5zjI2LWiGa7jzPrQLkecgWnZXWbXDeYcUwxT7o/UEa/FvOflRie
         0X/VSTaCmndIKMCdK9qaTOmdkE7FT05QaqyKLEKZoZEuU9jmFgTVJTc/wW7ruDQDquil
         MgvIg9aCWVJZ36J9bfi8GV/B/gjd6kfOgHnMsCssuxxvoo9mOj6l7/31F7JKtCxzh3xS
         2b/g==
X-Gm-Message-State: ANhLgQ04QEzJBGDuyLdZJRM4MZ8n//iLKZa+C+Z11XxzGAJnzVeO3n2X
        PmF0FyslYNSZpeMDWCvkxBbJBA==
X-Google-Smtp-Source: ADFU+vuJj0o8QlwG2W3+jIY/Xgyi3mnCHF/7Y+tx6b0KN47miv5zepvBtXsr3VgPnZUh/MK0yaDsnw==
X-Received: by 2002:a1c:418b:: with SMTP id o133mr5313833wma.165.1584023440172;
        Thu, 12 Mar 2020 07:30:40 -0700 (PDT)
Received: from srini-hackbox.lan (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.gmail.com with ESMTPSA id v8sm72860454wrw.2.2020.03.12.07.30.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2020 07:30:38 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     bjorn.andersson@linaro.org, agross@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        robh+dt@kernel.org, linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v2 2/5] arm64: dts: qcom: sdm845: add apr nodes
Date:   Thu, 12 Mar 2020 14:30:21 +0000
Message-Id: <20200312143024.11059-3-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200312143024.11059-1-srinivas.kandagatla@linaro.org>
References: <20200312143024.11059-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845.dtsi | 52 ++++++++++++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index 3f9fb719bfaa..5b7626f2a27b 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -17,6 +17,7 @@
 #include <dt-bindings/power/qcom-rpmpd.h>
 #include <dt-bindings/reset/qcom,sdm845-aoss.h>
 #include <dt-bindings/reset/qcom,sdm845-pdc.h>
+#include <dt-bindings/soc/qcom,apr.h>
 #include <dt-bindings/soc/qcom,rpmh-rsc.h>
 #include <dt-bindings/clock/qcom,gcc-sdm845.h>
 #include <dt-bindings/thermal/thermal.h>
@@ -491,6 +492,57 @@
 			label = "lpass";
 			qcom,remote-pid = <2>;
 			mboxes = <&apss_shared 8>;
+
+			apr {
+				compatible = "qcom,apr-v2";
+				qcom,glink-channels = "apr_audio_svc";
+				qcom,apr-domain = <APR_DOMAIN_ADSP>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				qcom,intents = <512 20>;
+
+				apr-service@3 {
+					reg = <APR_SVC_ADSP_CORE>;
+					compatible = "qcom,q6core";
+					qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
+				};
+
+				q6afe: apr-service@4 {
+					compatible = "qcom,q6afe";
+					reg = <APR_SVC_AFE>;
+					qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
+					q6afedai: dais {
+						compatible = "qcom,q6afe-dais";
+						#address-cells = <1>;
+						#size-cells = <0>;
+						#sound-dai-cells = <1>;
+					};
+				};
+
+				q6asm: apr-service@7 {
+					compatible = "qcom,q6asm";
+					reg = <APR_SVC_ASM>;
+					qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
+					q6asmdai: dais {
+						compatible = "qcom,q6asm-dais";
+						#address-cells = <1>;
+						#size-cells = <0>;
+						#sound-dai-cells = <1>;
+						iommus = <&apps_smmu 0x1821 0x0>;
+					};
+				};
+
+				q6adm: apr-service@8 {
+					compatible = "qcom,q6adm";
+					reg = <APR_SVC_ADM>;
+					qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
+					q6routing: routing {
+						compatible = "qcom,q6adm-routing";
+						#sound-dai-cells = <0>;
+					};
+				};
+			};
+
 			fastrpc {
 				compatible = "qcom,fastrpc";
 				qcom,glink-channels = "fastrpcglink-apps-dsp";
-- 
2.21.0

