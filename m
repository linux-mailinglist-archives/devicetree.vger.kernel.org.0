Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6DBEA64D337
	for <lists+devicetree@lfdr.de>; Thu, 15 Dec 2022 00:21:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229551AbiLNXVY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Dec 2022 18:21:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51874 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229513AbiLNXVS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Dec 2022 18:21:18 -0500
Received: from m-r1.th.seeweb.it (m-r1.th.seeweb.it [5.144.164.170])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8993E10D2
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 15:21:17 -0800 (PST)
Received: from localhost.localdomain (94-209-172-39.cable.dynamic.v4.ziggo.nl [94.209.172.39])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by m-r1.th.seeweb.it (Postfix) with ESMTPSA id 58D8020384;
        Thu, 15 Dec 2022 00:21:15 +0100 (CET)
From:   Marijn Suijten <marijn.suijten@somainline.org>
To:     phone-devel@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>
Cc:     ~postmarketos/upstreaming@lists.sr.ht,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Martin Botka <martin.botka@somainline.org>,
        Jami Kettunen <jami.kettunen@somainline.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Luca Weiss <luca@z3ntu.xyz>,
        Adam Skladowski <a39.skl@gmail.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 2/6] arm64: dts: qcom: msm8956-loire: Add usb vbus and id extcons to ci-hdrc
Date:   Thu, 15 Dec 2022 00:20:45 +0100
Message-Id: <20221214232049.703484-3-marijn.suijten@somainline.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20221214232049.703484-1-marijn.suijten@somainline.org>
References: <20221214232049.703484-1-marijn.suijten@somainline.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

ci-hdrc does not have the ability to detect voltage presence (5V vbus)
on the USB connector nor the role (via an ID sensing pin), and relies on
the PMIC-side charger to provide such information through an extcon
driver.

Signed-off-by: Marijn Suijten <marijn.suijten@somainline.org>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>
---
 arch/arm64/boot/dts/qcom/msm8956-sony-xperia-loire.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/msm8956-sony-xperia-loire.dtsi b/arch/arm64/boot/dts/qcom/msm8956-sony-xperia-loire.dtsi
index 67baced639c9..700583a56a0e 100644
--- a/arch/arm64/boot/dts/qcom/msm8956-sony-xperia-loire.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8956-sony-xperia-loire.dtsi
@@ -77,6 +77,8 @@ &gcc {
 
 &otg {
 	status = "okay";
+
+	extcon = <&pmi8950_usb_vbus>, <&pmi8950_usb_id>;
 };
 
 &pm8004_spmi_regulators {
-- 
2.39.0

