Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9AFB11A95E4
	for <lists+devicetree@lfdr.de>; Wed, 15 Apr 2020 10:14:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2635647AbgDOINN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Apr 2020 04:13:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36696 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2635597AbgDOINL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Apr 2020 04:13:11 -0400
Received: from mo6-p01-ob.smtp.rzone.de (mo6-p01-ob.smtp.rzone.de [IPv6:2a01:238:20a:202:5301::7])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F603C061A10
        for <devicetree@vger.kernel.org>; Wed, 15 Apr 2020 01:13:10 -0700 (PDT)
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVORvLd4SsytBXS7IYBkLahKxB526NccuO"
X-RZG-CLASS-ID: mo00
Received: from localhost.localdomain
        by smtp.strato.de (RZmta 46.4.0 DYNA|AUTH)
        with ESMTPSA id k074e0w3F8D20Dp
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
        (Client did not present a certificate);
        Wed, 15 Apr 2020 10:13:02 +0200 (CEST)
From:   Stephan Gerhold <stephan@gerhold.net>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
        Stephan Gerhold <stephan@gerhold.net>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH 2/2] dt-bindings: soc: qcom: apr: Use generic node names for APR services
Date:   Wed, 15 Apr 2020 10:11:59 +0200
Message-Id: <20200415081159.1098-2-stephan@gerhold.net>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200415081159.1098-1-stephan@gerhold.net>
References: <20200415081159.1098-1-stephan@gerhold.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Device nodes should be named according to the class of devices
they belong to. Change the suggested names of the subnodes to
apr-service@<id>, which is already in use in
arch/arm64/boot/dts/qcom/sdm845.dtsi.

Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
---
 .../devicetree/bindings/soc/qcom/qcom,apr.txt | 20 +++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,apr.txt b/Documentation/devicetree/bindings/soc/qcom/qcom,apr.txt
index f8fa71f5d84b..2e2f6dc351c0 100644
--- a/Documentation/devicetree/bindings/soc/qcom/qcom,apr.txt
+++ b/Documentation/devicetree/bindings/soc/qcom/qcom,apr.txt
@@ -65,30 +65,30 @@ which uses apr as communication between Apps and QDSP.
 		compatible = "qcom,apr-v2";
 		qcom,apr-domain = <APR_DOMAIN_ADSP>;
 
-		q6core@3 {
+		apr-service@3 {
 			compatible = "qcom,q6core";
 			reg = <APR_SVC_ADSP_CORE>;
 		};
 
-		q6afe@4 {
+		apr-service@4 {
 			compatible = "qcom,q6afe";
 			reg = <APR_SVC_AFE>;
 
 			dais {
 				#sound-dai-cells = <1>;
-				hdmi@1 {
-					reg = <1>;
+				dai@1 {
+					reg = <HDMI_RX>;
 				};
 			};
 		};
 
-		q6asm@7 {
+		apr-service@7 {
 			compatible = "qcom,q6asm";
 			reg = <APR_SVC_ASM>;
 			...
 		};
 
-		q6adm@8 {
+		apr-service@8 {
 			compatible = "qcom,q6adm";
 			reg = <APR_SVC_ADM>;
 			...
@@ -106,26 +106,26 @@ have no such dependency.
 		qcom,glink-channels = "apr_audio_svc";
 		qcom,apr-domain = <APR_DOMAIN_ADSP>;
 
-		q6core {
+		apr-service@3 {
 			compatible = "qcom,q6core";
 			reg = <APR_SVC_ADSP_CORE>;
 		};
 
-		q6afe: q6afe {
+		q6afe: apr-service@4 {
 			compatible = "qcom,q6afe";
 			reg = <APR_SVC_AFE>;
 			qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
 			...
 		};
 
-		q6asm: q6asm {
+		q6asm: apr-service@7 {
 			compatible = "qcom,q6asm";
 			reg = <APR_SVC_ASM>;
 			qcom,protection-domain = "tms/servreg", "msm/slpi/sensor_pd";
 			...
 		};
 
-		q6adm: q6adm {
+		q6adm: apr-service@8 {
 			compatible = "qcom,q6adm";
 			reg = <APR_SVC_ADM>;
 			qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
-- 
2.26.1

