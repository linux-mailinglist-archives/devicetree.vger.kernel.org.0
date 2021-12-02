Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6166B46651A
	for <lists+devicetree@lfdr.de>; Thu,  2 Dec 2021 15:18:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347141AbhLBOVh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Dec 2021 09:21:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33972 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1358525AbhLBOV0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Dec 2021 09:21:26 -0500
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BF7EC0617A0
        for <devicetree@vger.kernel.org>; Thu,  2 Dec 2021 06:17:42 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id u3so71910357lfl.2
        for <devicetree@vger.kernel.org>; Thu, 02 Dec 2021 06:17:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=IjAiB/BeYwBoMDPwZ/mxvZy1FpiqnDkRYGMsFqXo2Hg=;
        b=B7LL2lMMIaUD5ngA8vRhlo46sl61A+aJfstg3XxHb+MOHdvnS2txAVqZflgPEcZ6GR
         CkHTfsghV3LJ3/HrfbB6xd91UU7JpcKQKGLuFl+AyIAl925MM7hX0N6CJVyZfW3hvsTZ
         2v6NM6WGIadfya3zmAVhR1xXMvFDBRtwxX4cdhVasecKzvTyetd01NvLqEo/lsF0KzSF
         kxw974R6+Uik9k4kGxw8Om0LCqcHR21M780765DdzTQm9CXOB/QN0RSstjSkT0Gdv5Ed
         Oo6pXxu7G6XogwTJjB8JJ7FzUH76xOe7zQ2ZgdFOhOCRV1PGkSBhG+Xf/2VU3XE2JcQf
         b3wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=IjAiB/BeYwBoMDPwZ/mxvZy1FpiqnDkRYGMsFqXo2Hg=;
        b=aFvr+Dk2v/F0kTCXKWPoBv8MOeujf48jqE33CqJloO4v0WwfjXIe295JvjwhS6jKde
         gstX9Mv9Gh7GpSjMflOMYqdb/+du8LFf0kzdP2/Z8QmyGyPXs4y1tHRu7bshKEUqT9iC
         kuirUBblsVgyk0B5zVd/aW7WMaC3qIku0I7sQe9fzMszgqJdbB/A6PDOBDp6kkxkcqRQ
         eLA0k31l75Z1GBq383/bItfdtNQiRrnQDbGH9+3EbM6JjDPy+XhjBlRg4mbZiG6prDkh
         Y49qfdlbwjfqkeyD29PONF0nDtrAekB7avEK3SH7NwTHs5rSYKuCCouo4YKMoOF2LpV3
         3O2A==
X-Gm-Message-State: AOAM530zpBAWfkoKDgH6ZwFSvDTVBZlZA9AnSEQLSwC8Jiasanvt+FQ0
        5Fo1SsxdLYLPmmf3153EqyqoDg==
X-Google-Smtp-Source: ABdhPJyfp0uYJ9etbMtMlklrnjy47rzZdkltbr7E4QEfi0/4P9AaFnjikSNJydRlflIuqAINtg1IZg==
X-Received: by 2002:ac2:4c0b:: with SMTP id t11mr12753180lfq.520.1638454660607;
        Thu, 02 Dec 2021 06:17:40 -0800 (PST)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id m15sm362487lfg.165.2021.12.02.06.17.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Dec 2021 06:17:40 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Stanimir Varbanov <svarbanov@mm-sol.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc:     Bjorn Helgaas <bhelgaas@google.com>,
        =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-phy@lists.infradead.org
Subject: [PATCH v1 09/10] arm64: dts: qcom: sm8450-qrd: enable PCIe0 PHY device
Date:   Thu,  2 Dec 2021 17:17:25 +0300
Message-Id: <20211202141726.1796793-10-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211202141726.1796793-1-dmitry.baryshkov@linaro.org>
References: <20211202141726.1796793-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable PCIe0 PHY on the SM8450 QRD device.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450-qrd.dts | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8450-qrd.dts b/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
index 8520911d6b7d..30ebafe9c6d2 100644
--- a/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
@@ -346,10 +346,20 @@ vreg_l3h_0p91: ldo3 {
 	};
 };
 
+&pcie0_phy {
+	status = "okay";
+	vdda-phy-supply = <&vreg_l5b_0p88>;
+	vdda-pll-supply = <&vreg_l6b_1p2>;
+};
+
 &qupv3_id_0 {
 	status = "okay";
 };
 
+&qupv3_id_1 {
+	status = "okay";
+};
+
 &tlmm {
 	gpio-reserved-ranges = <28 4>, <36 4>;
 };
-- 
2.33.0

