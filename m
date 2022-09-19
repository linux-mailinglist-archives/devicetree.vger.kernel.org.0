Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A56F35BD6E1
	for <lists+devicetree@lfdr.de>; Tue, 20 Sep 2022 00:08:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229749AbiISWIi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Sep 2022 18:08:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50404 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229852AbiISWIg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Sep 2022 18:08:36 -0400
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com [IPv6:2607:f8b0:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 007CB4DF39
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 15:08:34 -0700 (PDT)
Received: by mail-pl1-x62c.google.com with SMTP id c24so535588plo.3
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 15:08:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=uiQoRdPMS4bN6w+8uKf5shtNLKGDX6ztfUYVVzFqL5c=;
        b=htHwIhFP1m0Pe04vcFg55xmaQHsapGLboSsdZgsB305heO5lpAVfnVOWgg8HzxuJWe
         XEEC2izYMuochhCt7hZgTwHc3tyILBg2k1+pres/4p3YLptyW1UslSZux8N+Bm2ySM8d
         5FD2LnYjORLzCulI8LHLUIjFZX5Tw8OTt4l/gJ3kAh+ypQXoBnopfmoOBi6t+gZtRRKP
         FKB+akSDmx+g5ykrhl87HFOEz8QtEbgpDax3n5jL1NujLqJA5tTGOdU1nw80I1vYqiH9
         n7psM3aRoG5OLhG+PCulM5bCxZwpI70UU+MHBscJiWZ2sEAj0/q6RSuLd/hu7Z6pw+wB
         NQlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=uiQoRdPMS4bN6w+8uKf5shtNLKGDX6ztfUYVVzFqL5c=;
        b=KYfjLbA2OK6MvAhCXCPIxfiPrWDkacev41fv3m2pXgSU68NC4r62Et7j1/uqSD9sIm
         /pd36SRrYrEu2FfRGRj/axn/TY/Dlj93meVUEiBojLTl+daBraAXgsY/pF3x6th5zJH6
         JDrz1fjF7Hu46KN4ZiZJ//KBz0Y8BjKgKxnDrTDEDJjTo18mPb8XS6Q7EnjTsn5WmSJy
         ltGg03+pKjhTi4sYgrv+X0qdcc7H+RaBESlr4JsQvEGkonrLzJayxaw7rVGjN52nWo+k
         6/SdMJ4sZ2qUKVy00TYfGTsRATq0mEDUUR6xlGPq9K6hOxP90en/tqtG37HTgevR4FYB
         qhdA==
X-Gm-Message-State: ACrzQf3Qa8ZjUgMAZ1DXEUptOxc3h/cDjjLr0vufMfUv7b4ryFWiuRZD
        yG/PEHtWDN8dvZcG3ADYO294fQ==
X-Google-Smtp-Source: AMsMyM5uMmndM2dO+Q3zN63SEkV+Tcpo/sGkX6CbhKaQ1fTBpzHjDxnQtQUVZeo3FnIgNRCgl2RshQ==
X-Received: by 2002:a17:902:da8b:b0:178:3980:4597 with SMTP id j11-20020a170902da8b00b0017839804597mr1875763plx.113.1663625314479;
        Mon, 19 Sep 2022 15:08:34 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1c61:6535:ca5f:67d1:670d:e188])
        by smtp.gmail.com with ESMTPSA id u2-20020a17090a6a8200b001eee8998f2esm7068167pjj.17.2022.09.19.15.08.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Sep 2022 15:08:34 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org
Cc:     agross@kernel.org, linux-kernel@vger.kernel.org,
        robh+dt@kernel.org, thara.gopinath@gmail.com,
        devicetree@vger.kernel.org, robh@kernel.org,
        krzysztof.kozlowski@linaro.org, andersson@kernel.org,
        bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH v6 4/4] arm64: defconfig: Enable Qualcomm QCE crypto
Date:   Tue, 20 Sep 2022 03:38:04 +0530
Message-Id: <20220919220804.1047292-5-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20220919220804.1047292-1-bhupesh.sharma@linaro.org>
References: <20220919220804.1047292-1-bhupesh.sharma@linaro.org>
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

Now that the QCE crypto block is supported on several
Qualcomm SoCs upstream, enable the same as a module in the
arm64 defconfig.

Cc: Bjorn Andersson <andersson@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 5a4ba141d15c..46d6c95b8d25 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1321,6 +1321,7 @@ CONFIG_CRYPTO_USER_API_RNG=m
 CONFIG_CRYPTO_DEV_SUN8I_CE=m
 CONFIG_CRYPTO_DEV_FSL_CAAM=m
 CONFIG_CRYPTO_DEV_FSL_DPAA2_CAAM=m
+CONFIG_CRYPTO_DEV_QCE=m
 CONFIG_CRYPTO_DEV_QCOM_RNG=m
 CONFIG_CRYPTO_DEV_CCREE=m
 CONFIG_CRYPTO_DEV_HISI_SEC2=m
-- 
2.37.1

