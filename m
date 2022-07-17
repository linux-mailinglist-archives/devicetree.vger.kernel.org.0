Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4E8DE5773D1
	for <lists+devicetree@lfdr.de>; Sun, 17 Jul 2022 05:42:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229870AbiGQDls (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 16 Jul 2022 23:41:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55386 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232755AbiGQDlq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 16 Jul 2022 23:41:46 -0400
Received: from mail-ot1-x331.google.com (mail-ot1-x331.google.com [IPv6:2607:f8b0:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7DC3617E0F
        for <devicetree@vger.kernel.org>; Sat, 16 Jul 2022 20:41:45 -0700 (PDT)
Received: by mail-ot1-x331.google.com with SMTP id g20-20020a9d6a14000000b0061c84e679f5so3999115otn.2
        for <devicetree@vger.kernel.org>; Sat, 16 Jul 2022 20:41:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=vo2ol5hFALESjr9QFDaD5HE39ui2TRvthFlhGPRTs/o=;
        b=LUvjpLIG7x+m/q5MyB3PVTgx2fQ2kfM0ddVa/JH/RMjHhAuXkdNNwA/bcw05WGOudZ
         2cftaU8e0UO8b+MH0PtHTPfRDVdtkOy0+wdIFr+q+mvADLXTzdSxhz3Dhru1mDNeZ0be
         CYmvH2jl2f0ytx26uTtHt3TZyiEMuZON77ASUw7k4q+M66B5qH5pMlxkQ9QsQMlobkFP
         yIlnoqJwGr/2vJmN0F64fcCmCsN3eSY6dnqkbVXAspaVx2LropIvXs1UhuiGkx7e+CiQ
         sef5xq7T7SXXq69L8iN7Qtf1wrygQi1NpgrePmrohGfxA0XCsI9aH+3TkV9Qigx2qIaQ
         hjCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=vo2ol5hFALESjr9QFDaD5HE39ui2TRvthFlhGPRTs/o=;
        b=xXAXe0D/n8L1+CMhJIVWaKntIGx7kzpjlNnyEA7fmbKv3j55TB2fmelFE1RT3T+AhF
         gY8WxSZgkgMT0ZgviDELnk2zEZoRC/wNM/deFbnmZJdEbHmoVNI+Z3a2krJbJb0Gw12f
         7M+CVdXW5c3Dg7Md6n3mlOnBolUWDj43Awa6if9puQRbNVRyErFG1Bd67EPIJvVNmd4L
         ls4wnYtApkuow/xJE/JsDndgDwYpYDO9XGCGxVEKfkHre2OlUiFXVkEso54NGLpCEuS1
         m9/NOXuV8puhrCnQewJt50wLftLkuj5feaGtTPXGysugaTNx2thOvnMxdoZ7Tvw8NfIF
         m+/w==
X-Gm-Message-State: AJIora9MRdfKOMYvzezxEeNwFhgnIdAgaDL2ocCLSgBshfrDgY3dD6t1
        DD4lI9v/2RFCqZ4Yn5jTjmzECsH44vBS7w==
X-Google-Smtp-Source: AGRyM1vCWW0wHZ6e0ZXiDlzVmSBCpT0VmS3xYS8D6RyJqk0q44RLrbjgh7Osx1uCUUrZBznWyo2jLg==
X-Received: by 2002:a05:6830:2418:b0:61c:9ab9:47a1 with SMTP id j24-20020a056830241800b0061c9ab947a1mr1183577ots.34.1658029304891;
        Sat, 16 Jul 2022 20:41:44 -0700 (PDT)
Received: from ripper.. (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id p4-20020a544604000000b00326cb6225f8sm3218010oip.44.2022.07.16.20.41.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Jul 2022 20:41:44 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, vinod.koul@linaro.org
Subject: [PATCH 3/3] arm64: dts: qcom: sdm845-db845c: Specify a i2c bus clocks
Date:   Sat, 16 Jul 2022 20:44:03 -0700
Message-Id: <20220717034403.2135027-4-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220717034403.2135027-1-bjorn.andersson@linaro.org>
References: <20220717034403.2135027-1-bjorn.andersson@linaro.org>
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

The kernel log contains complaints about i2c11 and i2c14 lacking
clock-frequency, specify a reasonable value to suppress this warning.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845-db845c.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
index 62ad67370d2b..c6e2c571b452 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
@@ -499,12 +499,14 @@ lt9611_out: endpoint {
 
 &i2c11 {
 	/* On Low speed expansion */
+	clock-frequency = <100000>;
 	label = "LS-I2C1";
 	status = "okay";
 };
 
 &i2c14 {
 	/* On Low speed expansion */
+	clock-frequency = <100000>;
 	label = "LS-I2C0";
 	status = "okay";
 };
-- 
2.35.1

