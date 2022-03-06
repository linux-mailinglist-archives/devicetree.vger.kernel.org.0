Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 618D54CEAC7
	for <lists+devicetree@lfdr.de>; Sun,  6 Mar 2022 12:12:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233376AbiCFLNA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 6 Mar 2022 06:13:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49960 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233352AbiCFLMt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 6 Mar 2022 06:12:49 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1DEB60AB5
        for <devicetree@vger.kernel.org>; Sun,  6 Mar 2022 03:11:57 -0800 (PST)
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 88AC13F636
        for <devicetree@vger.kernel.org>; Sun,  6 Mar 2022 11:11:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646565108;
        bh=5q3Cvfs96FMgD3OViDSeZ+rSi5cV583JAJ+X+hKXLOQ=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=FgTbh85gpiffX3Szwldtswz6NvPfjU8B4V1DUM/C+b/x9jHCPOyoUdB4AYtKHJkK7
         1q04z6FK/pdiZITi+fMwsDt+F38qsGYDd1ep9etNV0Lnh+whSqRDCni5a4BTtdangA
         LbH6KowoH4hGf8S0wibmwXEQQsMvbaco/xxrzgXQRRgH6g6npoR1FzJjyQHPsCueZP
         kqQ76LsfpqrA0yp71GewnQyhPKqDdgRm847bLWeP3X6qGVcSl7H2V7gU349ACqLdT1
         agVmedvS5ocSeG454lcvOMtdE6+6SH9P8zFVaMYHAA30sQmpVzjKq6qyvYIyfCvq0j
         AmvqqXFTFmi2Q==
Received: by mail-ed1-f69.google.com with SMTP id n11-20020a50cc4b000000b00415e939bf9eso4588595edi.22
        for <devicetree@vger.kernel.org>; Sun, 06 Mar 2022 03:11:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5q3Cvfs96FMgD3OViDSeZ+rSi5cV583JAJ+X+hKXLOQ=;
        b=RbKHf0F4Gt5NySjI4NcIjeebYFcMuQCjXB0g+9jPII359U7oGLaTsTWu1KF+kqCHtf
         3Zgo2kcS0YRhu4waN3YID7zlEU3RSXn5Uh2FdczJpxUxUT9DxRmPQiot8jpAh4i0ptcv
         arFHRoOJDc36vDOwinKZegkJNALchIOKEhegRtMDxS/kYyU6NM+lSPqjJQ6IMow1Hx7C
         XQbbsdhE5fykt/iRESeVS4MFPI2nxTheiT6MftfbHe878wyElogiumzIcOC2x2mmvsE7
         BSEYlm5WpSu+ZUsIn4yjjoDvbfQk3iawFFo/dL5UafjMY1Mpft+7odjIkut4sdyQ3x50
         LW1g==
X-Gm-Message-State: AOAM532JdJjYkc5fOaGw5DkDJ3d4DKvt2DyEufO9NnhCLhQx5M1o9RB3
        YunMRZjt5Z7QVID42etCmA7vdfHUNDBoQtF96z/CMh2e9pO6CF+tGkqByoXt0xSXEFJv9TZE+pc
        SRlw5b7BjI8Xe2cJ7Xe8uKLBzAwCPSNSaMUSI08Y=
X-Received: by 2002:a05:6402:278f:b0:410:d242:465e with SMTP id b15-20020a056402278f00b00410d242465emr6368184ede.292.1646565106222;
        Sun, 06 Mar 2022 03:11:46 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwW1Ya1zhxY85xcQnirVjPnpGI6XhFX2Sj/phtUq064BY75zEOeymYAnMlQ9+XNNG3HRgb2Sw==
X-Received: by 2002:a05:6402:278f:b0:410:d242:465e with SMTP id b15-20020a056402278f00b00410d242465emr6368175ede.292.1646565106043;
        Sun, 06 Mar 2022 03:11:46 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id a9-20020a1709066d4900b006da888c3ef0sm3720444ejt.108.2022.03.06.03.11.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Mar 2022 03:11:45 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Wei Xu <xuwei5@hisilicon.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Jan Kotas <jank@cadence.com>, Li Wei <liwei213@huawei.com>,
        Stanley Chu <stanley.chu@mediatek.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        linux-scsi@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org,
        linux-mediatek@lists.infradead.org
Subject: [PATCH v3 10/12] arm64: dts: qcom: msm8996: drop unsupported UFS vddp-ref-clk-max-microamp
Date:   Sun,  6 Mar 2022 12:11:23 +0100
Message-Id: <20220306111125.116455-11-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220306111125.116455-1-krzysztof.kozlowski@canonical.com>
References: <20220306111125.116455-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The property vddp-ref-clk-max-microamp (for VDDP ref clk supply which is
l25 regulator) is not documented in MSM8996 UFS PHY bindings
(qcom,msm8996-qmp-ufs-phy).  It is mentioned in the other UFS PHY
bindings for qcom,msm8996-ufs-phy-qmp-14nm.

The MSM8996-based Xiaomi devices configure l25 regulator in a
conflicting way:
1. with maximum 100 uAmp for VDDP ref clk supply of UFS PHY,
2. with maximum 450 mAmp for VCCQ supply of UFS.

Since the vddp-ref-clk-max-microamp property is basically not
documented for that UFS PHY and has a conflicting values, drop it
entirely as it looks like not tested and not used ever.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm64/boot/dts/qcom/msm8996-xiaomi-common.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8996-xiaomi-common.dtsi b/arch/arm64/boot/dts/qcom/msm8996-xiaomi-common.dtsi
index 7a9fcbe9bb31..3ade756e1cd9 100644
--- a/arch/arm64/boot/dts/qcom/msm8996-xiaomi-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996-xiaomi-common.dtsi
@@ -341,7 +341,6 @@ &ufsphy {
 	vdda-pll-max-microamp = <9440>;
 
 	vddp-ref-clk-supply = <&vreg_l25a_1p2>;
-	vddp-ref-clk-max-microamp = <100>;
 	vddp-ref-clk-always-on;
 };
 
-- 
2.32.0

