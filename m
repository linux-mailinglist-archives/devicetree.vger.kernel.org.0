Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E612167CBCE
	for <lists+devicetree@lfdr.de>; Thu, 26 Jan 2023 14:15:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236680AbjAZNO6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Jan 2023 08:14:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50332 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236607AbjAZNOw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Jan 2023 08:14:52 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 529BD6952F
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 05:14:31 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id fl11-20020a05600c0b8b00b003daf72fc844so3239654wmb.0
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 05:14:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KLiIzuhLPj2W8HRLu1RLddTMjBu2HLYaLu88JyklILs=;
        b=f4SkERW1RtNf5h/pePShnuCAaC/+L+ggulKbVjRVcKvjaKAz8ktOCH4I1JsRHP4ccG
         0G/esHNAzMByXZz0ihwO2e0THIFZsG5Dr2p5ohi20RtAW0c+BGc7MirXpOwWShacxFtR
         /3gJQ937eIPpFdNAU9UVHwWnIq1KwnOGh1Mb8Tnr67CxruNqXabVsSr/HX4qWACTgVj4
         urj3wCGmlv76QtW/yWu7lsTnhSeg36W2cU8tb3nQHAgKgQ/Y4Zk4x1NBL+8cG5iIttJV
         Gt126Wa82Xv1u5tg9sL3wrsl7yFFWJM0Pb0yUTbJs5B4arXCD5zKOovkf2qgDIo1O24L
         3nQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KLiIzuhLPj2W8HRLu1RLddTMjBu2HLYaLu88JyklILs=;
        b=SZMkwQtgQ5ksLa9CHBze5Y4n9t2R/285Dg87TqPyDh9tMDi+iHZXhNFVGTEJZLosG2
         g0J9cNTbMq0ChY+3GSB6a0m56VtTdgFd3aksduN4kUfv8cf2zX7Sq3H/Q8YWMwk6JbvY
         qPZZlCK/JPQ83XQXUi/wy2oGWOyBu81HJ9RhGsBjwFL58MUwdH8ssClcBxti8SJ3JvKP
         STvzVIrRubf6vEW48VCG3PQ6cgRT5aSVOqyWUqED7cFMeRMvSUfgOzGelzbwTSH84HYS
         pT6Ze7HdYbJ2ccCcr/U3xmamn38h2npCyTAaoR0nHtSc21de2aGNaKNzxDYhnd+I4Ggs
         sV4Q==
X-Gm-Message-State: AO0yUKVNGO0k3X8yKg43ZkM9DqXQRr8m3o5PkucfPYT4mTY0P6js63x0
        B1b0j/NINgiWUpnZlpFYk2xaAQ==
X-Google-Smtp-Source: AK7set97mUdUoUStPMzspZ1HBJa/ogA3H8+v0Skr3C4OKz7dz2a1AIG2oDCQ2nZPfoElAUoUg76n1w==
X-Received: by 2002:a05:600c:3ca3:b0:3dc:1687:9ba2 with SMTP id bg35-20020a05600c3ca300b003dc16879ba2mr9293190wmb.35.1674738869713;
        Thu, 26 Jan 2023 05:14:29 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id 18-20020a05600c26d200b003da28dfdedcsm1719804wmv.5.2023.01.26.05.14.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jan 2023 05:14:29 -0800 (PST)
From:   Abel Vesa <abel.vesa@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        "vkoul@kernel.org" <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-phy@lists.infradead.org
Subject: [PATCH v3 8/8] arm64: dts: qcom: sm8550-mtp: Add USB PHYs and HC nodes
Date:   Thu, 26 Jan 2023 15:14:15 +0200
Message-Id: <20230126131415.1453741-9-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230126131415.1453741-1-abel.vesa@linaro.org>
References: <20230126131415.1453741-1-abel.vesa@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable USB HC and PHYs nodes on SM8550 MTP board.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---

Changes since v2:
 * none

NOTE: This patch has been already merged. It is here only to provide
context for the rest of the patchset. There is a change with respect to the
clocks, but that will be sent as a separate/individual fix patch.

 arch/arm64/boot/dts/qcom/sm8550-mtp.dts | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
index 31e039f10a1b..cea1f12ce294 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
@@ -455,6 +455,28 @@ &ufs_mem_phy {
 	status = "okay";
 };
 
+&usb_1 {
+	status = "okay";
+};
+
+&usb_1_dwc3 {
+	dr_mode = "peripheral";
+};
+
+&usb_1_hsphy {
+	vdd-supply = <&vreg_l1e_0p88>;
+	vdda12-supply = <&vreg_l3e_1p2>;
+
+	status = "okay";
+};
+
+&usb_dp_qmpphy {
+	vdda-phy-supply = <&vreg_l3e_1p2>;
+	vdda-pll-supply = <&vreg_l3f_0p91>;
+
+	status = "okay";
+};
+
 &xo_board {
 	clock-frequency = <76800000>;
 };
-- 
2.34.1

