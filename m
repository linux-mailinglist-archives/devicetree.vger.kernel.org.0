Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8DFD73E020E
	for <lists+devicetree@lfdr.de>; Wed,  4 Aug 2021 15:32:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236963AbhHDNci (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Aug 2021 09:32:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41658 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236649AbhHDNci (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Aug 2021 09:32:38 -0400
Received: from mail-qt1-x831.google.com (mail-qt1-x831.google.com [IPv6:2607:f8b0:4864:20::831])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB876C061798
        for <devicetree@vger.kernel.org>; Wed,  4 Aug 2021 06:32:25 -0700 (PDT)
Received: by mail-qt1-x831.google.com with SMTP id l24so1370716qtj.4
        for <devicetree@vger.kernel.org>; Wed, 04 Aug 2021 06:32:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=civBfwB3HrpSlIjKk8pP7evwtiL4N367MAc+aTcz/k8=;
        b=tYDhB8XRdjWX2pDVyog2BICL0SGFaer15flROq24PNXXcS94H0XULaC4ZFrvA/A3Oi
         oeNKF3UKbuqZgvrjs/x1qA4zpLNZfhBH/anCiPcpYktQ6HcXYNFdV/RDs7pv4KHp7C5C
         Q1FWEfzD8Gd8Ov8L/I94J2VWyuK5XM0nvzlN4wOblnVbZ5p1A2hngv04a61V0UdgB/5u
         Ve/eJHWyv/SwrYBfq+NVPtWdEevzbxl9X0fORMy/xcLw5dEdGDndftIlChCZ505cTm39
         5w9hfkbdLimiDUfBRqvrZQ04U6z9tDEHcRkjt25uyktHYK0nEybRxuqo0xJN3ACPqxtX
         cvYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=civBfwB3HrpSlIjKk8pP7evwtiL4N367MAc+aTcz/k8=;
        b=iBIz1mVjNyqY7/AnLZn708v1TRJi246CcrC8OsQFC/cFoj6ICHlV6uPGN3aX/UquDH
         IseJavgxAS02BBGcsmhIaWp916+Bx3IoSGVcK1J4GfZ53/1IBI4FyvfWtOHU5A8chmLI
         74pz7i55oNFEWXViXL+CvN3sYazEeodyKcsGt/O4O2sY4ldnX0ymtdzgP58uNqg9jdjw
         HTozMFetRdMgGNWUTyyFTSMbd4dhjNGG/kOVOkhR501v/5z0jSdF35PggEI1cDMMSdBH
         Hq6KcIqNRz/xPGpsIKQmegxM+BJy4uWIPytWczK/rWD5IaRUgNC0zBrqnw8xkVg3vruq
         GIaQ==
X-Gm-Message-State: AOAM5326QPGmuK/eWItzeKoG8xJFKtuLq3YUuuc4/tda1Tp1cSmNVWrM
        hnu5CsaqasZMMUscA2nxQCYhEQ==
X-Google-Smtp-Source: ABdhPJwB+xMBFnnnZHgiFAmAyEYSPVcPjFjU8xKJn9wvvvbdkYQLO4ea69Dm1RaiYgT6jL1gJBrlzA==
X-Received: by 2002:ac8:7f85:: with SMTP id z5mr22980574qtj.354.1628083944949;
        Wed, 04 Aug 2021 06:32:24 -0700 (PDT)
Received: from pop-os.fios-router.home (pool-71-163-245-5.washdc.fios.verizon.net. [71.163.245.5])
        by smtp.googlemail.com with ESMTPSA id r4sm860140qtc.66.2021.08.04.06.32.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Aug 2021 06:32:24 -0700 (PDT)
From:   Thara Gopinath <thara.gopinath@linaro.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: qcom: sm8150-mtp: Add 8150 compatible string
Date:   Wed,  4 Aug 2021 09:32:23 -0400
Message-Id: <20210804133223.2503517-1-thara.gopinath@linaro.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add "qcom,sm8150" as one of the platform compatible strings.
This will be later used by cpufreq-dt-platdev to exclude using
cpufreq-dt cpufreq driver.

Signed-off-by: Thara Gopinath <thara.gopinath@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8150-mtp.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8150-mtp.dts b/arch/arm64/boot/dts/qcom/sm8150-mtp.dts
index 53edf7541169..b484371a6044 100644
--- a/arch/arm64/boot/dts/qcom/sm8150-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8150-mtp.dts
@@ -15,7 +15,7 @@
 
 / {
 	model = "Qualcomm Technologies, Inc. SM8150 MTP";
-	compatible = "qcom,sm8150-mtp";
+	compatible = "qcom,sm8150-mtp", "qcom,sm8150";
 
 	aliases {
 		serial0 = &uart2;
-- 
2.25.1

