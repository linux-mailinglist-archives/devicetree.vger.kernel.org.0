Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 239D61979C
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2019 06:34:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727154AbfEJEee (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 May 2019 00:34:34 -0400
Received: from mail-pf1-f196.google.com ([209.85.210.196]:40498 "EHLO
        mail-pf1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727150AbfEJEee (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 May 2019 00:34:34 -0400
Received: by mail-pf1-f196.google.com with SMTP id u17so2500701pfn.7
        for <devicetree@vger.kernel.org>; Thu, 09 May 2019 21:34:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=iX3tMXHfmXAFXgezY0ndg+xouFZG1EouvpxfWVnQyEI=;
        b=wPfwc2D5OF/jIrQh6ZiDhbghVvEWi/KSKgRlbqnjQdVSy1tBYJ/ow053Yrs0CJfGRH
         0LybhQkgMUqXokj+6NjwjduqZqgutOyy0QX9GcL8zyspz4T+Bt9pGDhSF57RQaNGLY+M
         cVLmvrlpp7Qz1hO6bALHejmw8tpzUXStqxX3W1Iip0hFVhB4z1p/1FS0J4Cy+nTbGJtP
         lfaDV6tyBANfmTO3J8s0WwMFJEI3NfTxbXYbcKnwoJORsYhUVtHglzjpo6wJDiaxm/g6
         Ajqb+Thj3C1/9Mn4zOaHND+I0qL1LYR3KXR5tkXTclDP4XRG/JML+XFhOFPhBrCsdjtw
         Duow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=iX3tMXHfmXAFXgezY0ndg+xouFZG1EouvpxfWVnQyEI=;
        b=kSWzfft1TjBrJvXrxAjLYXYLQwpeF+F9TI5sZgnb58O9OvMT3BMVLdX01ceBnHiME4
         RuCmZ9pmBgrIXoNyLve22yx1lOA9ZyPv2QwV9gaW+ymtrypkIwmDsdjjxPbwQ7XY9E+R
         1RC6F+gola073m5jNNPS37dB/qpto+nuzi+mBD1pl5SXevVX9+L4uJ/sEjNFDPxslbnp
         2/IUHUU6e9Oo97HdNCwkeyQ6IWnvZ4pvjMH5HuQCLzPqugeX0qepJn4eOVhpMIWmvbiM
         U1sMuisXxXJJeAl9SZSewToMGO/UDV/1FYK20d0AdHYU0l0TSORNLq8HwzOkNCgdmh7T
         Z/CA==
X-Gm-Message-State: APjAAAX6L31opTUzjkwOphvhWllykhfed8uLFv2RNOwjEW9PA6oJ5dgh
        mVuC1ngKjy6UCtt4j13A88rEVQ==
X-Google-Smtp-Source: APXvYqz+VCrGwz0F1OeNQEiRJZyZwGUfV3b04q0MFLWKiNqRgZb4ye/bbEOX7ZRjTy+HIpkkBqHGmw==
X-Received: by 2002:a63:ed03:: with SMTP id d3mr11006230pgi.7.1557462873882;
        Thu, 09 May 2019 21:34:33 -0700 (PDT)
Received: from localhost.localdomain (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id s17sm4785317pfm.149.2019.05.09.21.34.32
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 May 2019 21:34:33 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        David Brown <david.brown@linaro.org>
Cc:     Ohad Ben-Cohen <ohad@wizery.com>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 8/8] arm64: dts: qcom: qcs404: Add fastrpc nodes
Date:   Thu,  9 May 2019 21:34:21 -0700
Message-Id: <20190510043421.31393-9-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190510043421.31393-1-bjorn.andersson@linaro.org>
References: <20190510043421.31393-1-bjorn.andersson@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Thierry Escande <thierry.escande@linaro.org>

The ADSP fastrpc provides 3 context banks and are assigned to IOMMU
context banks 23, 24 and 25; using SIDs 0x804, 0x805 and 0x806.  The
CDSP fastrpc provides 5 context banks and are assigned to IOMMU context
banks 5, 6, 7, 8 and 9; using SIDs 0x1001 through 0x1005. Add these to
their respective remoteproc.

The lower 4 bits of the SID is used to identify the context bank when
communicating with the fastrpc firmware, so this gives the reg values.

Signed-off-by: Thierry Escande <thierry.escande@linaro.org>
[bjorn: Added SMMU linkage and extend commit message]
Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 arch/arm64/boot/dts/qcom/qcs404.dtsi | 66 ++++++++++++++++++++++++++++
 1 file changed, 66 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs404.dtsi b/arch/arm64/boot/dts/qcom/qcs404.dtsi
index fcde4f0334c2..858a53160564 100644
--- a/arch/arm64/boot/dts/qcom/qcs404.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs404.dtsi
@@ -243,6 +243,45 @@
 				mboxes = <&apcs_glb 12>;
 
 				label = "cdsp";
+
+				fastrpc_cdsp: fastrpc {
+					compatible = "qcom,fastrpc";
+					qcom,glink-channels = "fastrpcglink-apps-dsp";
+					label = "cdsp";
+
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					cb@1 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <1>;
+						iommus = <&apps_iommu 5>;
+					};
+
+					cb@2 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <2>;
+						iommus = <&apps_iommu 6>;
+					};
+
+					cb@3 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <3>;
+						iommus = <&apps_iommu 7>;
+					};
+
+					cb@4 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <4>;
+						iommus = <&apps_iommu 8>;
+					};
+
+					cb@5 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <5>;
+						iommus = <&apps_iommu 9>;
+					};
+				};
 			};
 		};
 
@@ -928,6 +967,33 @@
 				mboxes = <&apcs_glb 8>;
 
 				label = "adsp";
+
+				fastrpc_adsp: fastrpc {
+					compatible = "qcom,fastrpc";
+					qcom,glink-channels = "fastrpcglink-apps-dsp";
+					label = "adsp";
+
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					cb@4 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <4>;
+						iommus = <&apps_iommu 23>;
+					};
+
+					cb@5 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <5>;
+						iommus = <&apps_iommu 24>;
+					};
+
+					cb@6 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <6>;
+						iommus = <&apps_iommu 25>;
+					};
+				};
 			};
 		};
 	};
-- 
2.18.0

