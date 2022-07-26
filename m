Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 44388581B5E
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 22:54:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239978AbiGZUyA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jul 2022 16:54:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47186 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232118AbiGZUx6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jul 2022 16:53:58 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0283237FAE
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 13:53:58 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id u17so7626960lji.5
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 13:53:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Kva+E3Lf2se3flDp9TfEHNECsZD2hgPo62s2D6hEVxw=;
        b=oQFeH0rokXsr5YvbGajWFwjZo38bj9fvxSqrOEEH7TL5b8cEVJ3xjl/ayU0gWLbEN6
         3SkmPSkODzd+OyuKyEe6kRT3pf/3K8fcDGw1OhJOKtrcy5KbXl1AdraCEZWwhwkxfv4P
         QIm9ymyy9LL0/pE+JWyt5G2OO5ahgPKHMMmlZlifJe8TIQlNmrXrOk5izruWRhsSLaN0
         3UZ9wvw2XZAKs7YFBME5sTrGeYNk0kP+6rXuM1C/rsidk11QPJuj02VFDZBp7yr0gnZO
         1LNvGPKXscRkpZWlWyins0bKSVKReDkZI12FXHffUlQ1HXnFS7fYpNXeTZbk5KXo39gO
         j2FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Kva+E3Lf2se3flDp9TfEHNECsZD2hgPo62s2D6hEVxw=;
        b=8I1U1eSrfiRCJ3aHtp6oFdsbILuwCAdwd41cbB8DJlyrWcT9rJxTmJKZAZ5OdoOFHp
         b5Sq9lCHFptneE+YZtWieCtzweLb2R9oOtXdbba5tFwbVOv7PTWOz5sST+DROH46eat6
         qCvuQ9Ynx9Tqq8R+kbMSOdODxdmLBfEpeADYXA4fVVCFyMMNjUBGtk3My/DKLwemskgY
         3zwjBr8TLbJ/hqilk76TByvmR9za5/a08T70aGzUutTQI+ODpd54Bt0iwMKz5VJTZ2un
         A4JRIkTPwHrKdSHIckaiczsKUTXMZQhzjUTVkgKW6fCdTYVyII6GxJyvsZLFlqAhq+yc
         0T6g==
X-Gm-Message-State: AJIora+aHf9Xux8a6s6bDqg1lxPYXC4CpXXcfHV2ivRGWBze4MwykL5V
        +RyfCwRXKjHmun7QrELI9+66VQ==
X-Google-Smtp-Source: AGRyM1t7g3FrkED6VGuBLvBGz4Xz5uCO8cmAejprwlQkbOZ1K8EQGn9x5ooY8GlqC0bth5auvoLzaA==
X-Received: by 2002:a05:651c:503:b0:25e:2026:58e1 with SMTP id o3-20020a05651c050300b0025e202658e1mr362035ljp.327.1658868836149;
        Tue, 26 Jul 2022 13:53:56 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id e16-20020a05651236d000b0048a72437127sm369036lfs.42.2022.07.26.13.53.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Jul 2022 13:53:55 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 1/2] ARM: dts: qcom: apq8084: add rpm-stats device node
Date:   Tue, 26 Jul 2022 23:53:54 +0300
Message-Id: <20220726205355.598874-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add device node for the rpm-stats pseudo device.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom-apq8084.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/qcom-apq8084.dtsi b/arch/arm/boot/dts/qcom-apq8084.dtsi
index 72f9255855a1..c2e22bf3260d 100644
--- a/arch/arm/boot/dts/qcom-apq8084.dtsi
+++ b/arch/arm/boot/dts/qcom-apq8084.dtsi
@@ -239,6 +239,11 @@ apcs: syscon@f9011000 {
 			reg = <0xf9011000 0x1000>;
 		};
 
+		sram@fc190000 {
+			compatible = "qcom,apq8084-rpm-stats";
+			reg = <0xfc190000 0x10000>;
+		};
+
 		qfprom: qfprom@fc4bc000 {
 			compatible = "qcom,apq8084-qfprom", "qcom,qfprom";
 			reg = <0xfc4bc000 0x1000>;
-- 
2.35.1

