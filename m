Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D38E257BE74
	for <lists+devicetree@lfdr.de>; Wed, 20 Jul 2022 21:29:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231483AbiGTT2V (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jul 2022 15:28:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33768 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231207AbiGTT2T (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jul 2022 15:28:19 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BDBAB1EEE3
        for <devicetree@vger.kernel.org>; Wed, 20 Jul 2022 12:28:17 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id bf9so31856145lfb.13
        for <devicetree@vger.kernel.org>; Wed, 20 Jul 2022 12:28:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=wNZixQIVMM5cgbKLPHlCP9vKpBMPmBAT1ydA/H1f1s4=;
        b=tpKCcxEl8+oxoo2zEMJhSvbTJeK+o+cpP+oKIynpmuddKZchQMZWajV/052C7krzwF
         BTA4VgjMIhR4NmKsoaV+EbxjsJ14xYSmrlzBupEBufKUK6vsWNUDx+S9aPlbTfEy1Y+X
         7cDtB2fymrtJhUNs2gKOLVGVqeoIuoUgTnxacaiVep2syF6uBWkveN5fHPyJJxG4OBu2
         o4WttYw1DEz/vruR5foIqMp6B5lTWe2mRSDjV8AeljGq2G7XSATpC2mXitOSvLXFFZxl
         Nra1xzwXXMpE5wjGawefd+kN1yBsDunVOO86+TW0VjuZjG0nF/EXw70uJSevPT+LfLCf
         SmwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=wNZixQIVMM5cgbKLPHlCP9vKpBMPmBAT1ydA/H1f1s4=;
        b=CWWqghWaBp8MvCi9lVLopoLA16xTOOAu//VKvkir9KzF6xRbUuiMp6XI8MwMcHoFBF
         mnvPUJ842oUGqgPbU0FYccHqNevAhUEBe51/twK2vwP2OBcoWfrW880KE3jIRo5wPUUV
         tsZ+Kr+dhdh4Q4L3Jz1csGPbppqZC5nsb6Df5YIxANsJugCE8Pfco2NiGwUaear9GIB+
         ymrshrlSzJf2rDwnvLEVDKkhla27dfGC66HvQI9KvqEJFHh3otvxwNiHQIF5pyZSEc4r
         snoG/Q/xxYp9HxZYGlFYap/x4qe3fpH/0oCGmvCg5k2MmrAQinz8nY0PY1/scgVPIIP3
         /EZQ==
X-Gm-Message-State: AJIora8MWyMx9jmIynny9Rbsv0RmudFRRPqhsLjBajUkgTqQwAr034LX
        76/hUF4Tl3FFCSsKajZYPRnksg==
X-Google-Smtp-Source: AGRyM1scR0YrNW3uG6DEZa4Wfuh6o+mNWP35au04mwSpDZwaoNgjB84QcDBCcGwiiDU7ilbZ5SvZdQ==
X-Received: by 2002:a05:6512:3c9f:b0:48a:2c32:e22c with SMTP id h31-20020a0565123c9f00b0048a2c32e22cmr13724218lfv.356.1658345296194;
        Wed, 20 Jul 2022 12:28:16 -0700 (PDT)
Received: from krzk-bin.. (89-162-31-138.fiber.signal.no. [89.162.31.138])
        by smtp.gmail.com with ESMTPSA id h32-20020a0565123ca000b0047fac0f34absm3985771lfv.196.2022.07.20.12.28.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Jul 2022 12:28:15 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Georgi Djakov <djakov@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Rajendra Nayak <quic_rjendra@quicinc.com>
Subject: [PATCH 03/10] soc: qcom: icc-bwmon: drop unused BWMON_ZONE_COUNT
Date:   Wed, 20 Jul 2022 21:28:00 +0200
Message-Id: <20220720192807.130098-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220720192807.130098-1-krzysztof.kozlowski@linaro.org>
References: <20220720192807.130098-1-krzysztof.kozlowski@linaro.org>
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

BWMON_ZONE_COUNT define is not used.

Cc: Rajendra Nayak <quic_rjendra@quicinc.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/soc/qcom/icc-bwmon.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/soc/qcom/icc-bwmon.c b/drivers/soc/qcom/icc-bwmon.c
index 3415f42523cd..b76a59d9002c 100644
--- a/drivers/soc/qcom/icc-bwmon.c
+++ b/drivers/soc/qcom/icc-bwmon.c
@@ -105,7 +105,6 @@
 
 /* BWMONv4 count registers use count unit of 64 kB */
 #define BWMON_COUNT_UNIT_KB			64
-#define BWMON_ZONE_COUNT			0x2d8
 #define BWMON_ZONE_MAX(zone)			(0x2e0 + 4 * (zone))
 
 struct icc_bwmon_data {
-- 
2.34.1

