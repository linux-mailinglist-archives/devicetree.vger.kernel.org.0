Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 82FD7444C97
	for <lists+devicetree@lfdr.de>; Thu,  4 Nov 2021 01:33:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232967AbhKDAgc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Nov 2021 20:36:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232746AbhKDAg2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Nov 2021 20:36:28 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F09CC035443
        for <devicetree@vger.kernel.org>; Wed,  3 Nov 2021 17:29:52 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id u11so8605216lfs.1
        for <devicetree@vger.kernel.org>; Wed, 03 Nov 2021 17:29:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2EduzFSMcbcowyUdVsZOQ3QCCkHbswguLmvqxtlvq9E=;
        b=Uri1ZJ4sOBnkqVeNZATlFLFym7O57XBdOt2cp4G/TYL4brN6SeInkdYDL8fPAZmmuy
         XE/jh/ybJzMHi3zTIJb3jYHFhBHNeeya9zftw7iHq7tc2dxv+SAjfUasI0QYW1rAuf5D
         4CbEZ6ipd02fBUXbkeYWLJYM0ieIPnLgkV4wQgKIH068RqdalDq7gwIyJQX2ZkMaFksh
         K6uhGLkN/w5VTjPoFJDfE3AMEBHQAtFDqc2577VwULzFkkINhoj390oQ8l/gfmo7A/Mw
         l9b+UpuThAVpV555BdEd7KCzoR2SBda3HyCu0ZDxlJRZK1PSqh66tA3oxxoY8nMtKbK2
         xnHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2EduzFSMcbcowyUdVsZOQ3QCCkHbswguLmvqxtlvq9E=;
        b=FUbPU54BEdeJzaJLTc577w/fGabezfD5+ACdlcj+P4q1sZuUVQwXqAFD7vhGbHA+lZ
         QPtYfjyXeMEcti38pNdA4FJTrKupxz910LsDpwDDbuP1HfK7Tyi2CQp06QyT1fq8SXzU
         hrJlFF24+0cQqENjvVAO+0XtYo4CCcKf/C06kc4lqneH9mXcgs2qYbMLUJ4ELtilkmxk
         kAcuf9KQvJ1ZTC+ugYLS/U0OTJVB/cpDa8p8cq6E+KA/lwSwR7snUNDCJw+QLxTlyCs/
         cni9dc5ZaEEiUc8bZjvLJh89khEd/klCPKfM8AQmCasmLvfm04C2cUx3EVvzuWGUAkEE
         YyTg==
X-Gm-Message-State: AOAM5323W3EGC5exikiy2LPhqvr6adegMF2BMUQ3wuIHnKyP3LnJHpyc
        JDeb2zbVjjNqPPtSRsKH/lcDlA==
X-Google-Smtp-Source: ABdhPJzdKfgEjgEsbBOTNDYDWlmBdFd5rdOA6licbA+x1ZwxVMZh8TixHMhiqgccxudcmU2SJyU1Dw==
X-Received: by 2002:a05:6512:3b28:: with SMTP id f40mr43243755lfv.639.1635985790435;
        Wed, 03 Nov 2021 17:29:50 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id 188sm329861ljf.71.2021.11.03.17.29.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Nov 2021 17:29:49 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 1/5] arm64: dts: qcom: apq8096-db820c: specify adsp firmware name
Date:   Thu,  4 Nov 2021 03:29:45 +0300
Message-Id: <20211104002949.2204727-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Specify firmware name to be used for the ADSP. Quoting Bjorn from the
respective apq8016-sbc commit:

The firmware for the modem and WiFi subsystems platform specific and is
signed with a OEM specific key (or a test key). In order to support more
than a single device it is therefor not possible to rely on the default
path and stash these files directly in the firmware directory.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/apq8096-db820c.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/apq8096-db820c.dts b/arch/arm64/boot/dts/qcom/apq8096-db820c.dts
index d01a512634cf..7e7b416e7d21 100644
--- a/arch/arm64/boot/dts/qcom/apq8096-db820c.dts
+++ b/arch/arm64/boot/dts/qcom/apq8096-db820c.dts
@@ -166,6 +166,7 @@ bluetooth {
 
 &adsp_pil {
 	status = "okay";
+	firmware-name = "qcom/apq8096/adsp.mbn";
 };
 
 &blsp2_i2c1 {
-- 
2.33.0

