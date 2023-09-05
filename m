Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2C52D792C38
	for <lists+devicetree@lfdr.de>; Tue,  5 Sep 2023 19:11:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242495AbjIERJJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Sep 2023 13:09:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40262 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236027AbjIERAF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Sep 2023 13:00:05 -0400
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B5F6F49D9
        for <devicetree@vger.kernel.org>; Tue,  5 Sep 2023 09:21:45 -0700 (PDT)
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-99bdcade7fbso389618566b.1
        for <devicetree@vger.kernel.org>; Tue, 05 Sep 2023 09:21:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693930771; x=1694535571; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nc7aDvSgD11jc9qTAmRhPuXkI/EL03RkU/8y9cpVhM8=;
        b=sdQEgXF9j/GmpgBq2a8KvaSRSQfnfbRZoQSS0/G9agf7Y4q5EhTMZ5xJsyDnKP0kT4
         C7NvrAwRlPU+QVD3RBfZxu7HGIDGCU0elp6CgWAxkE7fYmQ4iUKJVxBzSarCTOZ1wh3u
         VMaYILQwwWbobdosqLsGIPk+n16xFs3M5pvQyCXd8j9H3NgRIkTHGlruzu5hfjZVZRsP
         dcwOtqpkM0WD3cjhYAymMzUSO6DVl+rxKBg96CaSmq74nxaxDDLefHcAzN+YhzLzJNWd
         ABfhSPl1Y6FZXhd/6EsR9Ck5o1CtiheGZBXPI3FUJJpXCt1fwREroeyZPgqAfDH77jNn
         ZsNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693930771; x=1694535571;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nc7aDvSgD11jc9qTAmRhPuXkI/EL03RkU/8y9cpVhM8=;
        b=AZV83IUSd0DV67VaosESAaCiU226L3k4I1vqQS7PCuWpseTE4VEML82Pq90z4MdMI6
         iBVn7qjAIexuCD72f/5bkC8TAHP7a9JhdoQ2ASyYDczWGvYDoaMC0s0IFuRek42szYfx
         MPztf8uxxsNdJNqK8NiiDNHfrRc65avp4rCrzEPItUyQDyJDYItuCLWPXrF7sKQUuweE
         iWmCWMZ8viwRJwg/+sKUL4jx3ZbK/yRa0UHeM1XscPdQec3Xxd33xcD/5OHt2xpCmXl+
         xNLp2AfTmIOx8vVMNXvdK7kfIn2gytl/7j6B0VQ4MYyX7tbQn1mPUxqdyqRAZwun+OnY
         sZYw==
X-Gm-Message-State: AOJu0YxKxrdgP1oDl4MN9M2Qt8A0vYGNQa0JBxLnYr5DqIKE8XFFGg09
        bmLjWpD1E+FfH7p0vhzEBBOABA==
X-Google-Smtp-Source: AGHT+IFDt0aiNmz4JoBfxZRfoL070Nshr+IkSPI/NbDBpHRKk536hIiBuSGX6XbpHkvfBjtKOnU/ww==
X-Received: by 2002:a17:906:768d:b0:9a1:db2e:9dbf with SMTP id o13-20020a170906768d00b009a1db2e9dbfmr291124ejm.14.1693930771239;
        Tue, 05 Sep 2023 09:19:31 -0700 (PDT)
Received: from krzk-bin.. (77-252-46-238.static.ip.netia.com.pl. [77.252.46.238])
        by smtp.gmail.com with ESMTPSA id v26-20020a170906489a00b0099cc36c4681sm7743165ejq.157.2023.09.05.09.19.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Sep 2023 09:19:30 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 03/12] arm64: dts: qcom: sm6115-pro1x: correct UFS pad supply
Date:   Tue,  5 Sep 2023 18:19:11 +0200
Message-Id: <20230905161920.252013-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230905161920.252013-1-krzysztof.kozlowski@linaro.org>
References: <20230905161920.252013-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Qualcomm UFS phy switched from dedicated driver to QMP phy driver.
Eventually the old driver was removed in commit 02dca8c981b5 ("phy:
qcom: remove ufs qmp phy driver").  The original driver and its binding
used vddp-ref-clk regulator supply, but the new one did not and left the
supply unused.

The Qualcomm UFS phy bindings were also migrated to newer ones and
dropped support for vddp-ref-clk regulator in commit dc5cb63592bd
("dt-bindings: phy: migrate QMP UFS PHY bindings to
qcom,sc8280xp-qmp-ufs-phy.yaml").

It turns out that this regulator, although with inaccurate name
vddp-ref-clk, is actually needed to provide supply for VDD_PX10 (or
similar, depending on the SoC) used by UFS controller.

Bring back handling of this supply by using more appropriate regulator -
UFS controller host supply.  This also fixes dtbs_check warning:

  sm6115-fxtec-pro1x.dtb: phy@4807000: 'vddp-ref-clk-supply' does not match any of the regexes: 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6115-fxtec-pro1x.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6115-fxtec-pro1x.dts b/arch/arm64/boot/dts/qcom/sm6115-fxtec-pro1x.dts
index 9b70a87906dc..98eb072fa912 100644
--- a/arch/arm64/boot/dts/qcom/sm6115-fxtec-pro1x.dts
+++ b/arch/arm64/boot/dts/qcom/sm6115-fxtec-pro1x.dts
@@ -219,13 +219,13 @@ &ufs_mem_hc {
 	vcc-max-microamp = <600000>;
 	vccq2-supply = <&pm6125_l11a>;
 	vccq2-max-microamp = <600000>;
+	vdd-hba-supply = <&pm6125_l18a>;
 	status = "okay";
 };
 
 &ufs_mem_phy {
 	vdda-phy-supply = <&pm6125_l4a>;
 	vdda-pll-supply = <&pm6125_l12a>;
-	vddp-ref-clk-supply = <&pm6125_l18a>;
 	status = "okay";
 };
 
-- 
2.34.1

