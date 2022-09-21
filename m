Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5E9FF5BF5B8
	for <lists+devicetree@lfdr.de>; Wed, 21 Sep 2022 06:57:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231238AbiIUE5I (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Sep 2022 00:57:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34456 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231244AbiIUE4h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Sep 2022 00:56:37 -0400
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 763987F244
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 21:56:36 -0700 (PDT)
Received: by mail-pl1-x62e.google.com with SMTP id w10so3626113pll.11
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 21:56:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=LoDI0ur6KswVSmS1dZpuhQgtr92N8kLU7u6OZi8zwCM=;
        b=CEOOQPH/UwDcKE4ATNK3ns/S+sq5jjUkFECPR0fs8BtFrA/Pn+tnePbWwsRLQzr6li
         btc5piA0/YzAHXRW/4dDmBRkR2oKbYIHB7pJSBT/dYkLUACsoIfkKU3gNPt7Bk/T76Hv
         Cmh5XdlGk/YfKtQiAANhneAeSbVrn94T59pC+2Wegt/6pT1OEJIIzfsHIABhEWEmLxmp
         w/2/2QUzgOKTQewIHafYFfA59ctCPXNJXJjv7OMjhhMb4m1IxDS+Bwfky5VrHcO0hvZe
         /+NSlrGr7HC6Ei9/P3DU7CrfNxNv1KL4OsDyLUBnENmNWDcNTezYuuefg0tlZSU7K36t
         9nLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=LoDI0ur6KswVSmS1dZpuhQgtr92N8kLU7u6OZi8zwCM=;
        b=YsVQ5N97xqJ8Xow3iNqrGgd87XeU4VhCX5HqZkSVfskbVnpTAEioAG+hkw9uHfZLz3
         /uz67txXp93HnNYwsRfWlwMOD5AvvF8BmGTKXRalFL4Pe6Jzg5MNQur7uM0ACbsclp5W
         gIzj/baRnTj8B1n5ZpgEaKghPLbpkMUSzen0kJKCajj52+TBauTS74lYCIEbtb2XlBkq
         79chLJLw+WClVm+7hduoWysT4tB+LNnvTjCIPHSXQ53Dw49IjJSvqgRpE2IYT/PDhluv
         HO+/pfWz5BKOpGzGD0ZV19vTLOO7mAG8Xi6GBgHdDAFZY1tmyn+JexqgNvNTjWqswPCA
         nDhA==
X-Gm-Message-State: ACrzQf37rvizxj/FZ9qWFjLFzJ79Z2w07Hvh1c4U9hedIoEiq4SWYDvs
        OVoIqibCUCEhp6ZgT7Y5n7uydQ==
X-Google-Smtp-Source: AMsMyM4K17OfYdOpmjB56NRvlVzaKj0xokoJS2k43dLAAUqhvGbyy2KJSu0jQWr4ovhOXzATrViaxg==
X-Received: by 2002:a17:903:2343:b0:177:ebb1:3c62 with SMTP id c3-20020a170903234300b00177ebb13c62mr2995908plh.115.1663736195549;
        Tue, 20 Sep 2022 21:56:35 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1c61:8e50:8ba8:7ad7:f34c:2f5])
        by smtp.gmail.com with ESMTPSA id p12-20020a170902e74c00b00176e2fa216csm871829plf.52.2022.09.20.21.56.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Sep 2022 21:56:34 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org
Cc:     agross@kernel.org, linux-kernel@vger.kernel.org,
        robh+dt@kernel.org, thara.gopinath@gmail.com,
        devicetree@vger.kernel.org, robh@kernel.org,
        krzysztof.kozlowski@linaro.org, andersson@kernel.org,
        bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        catalin.marinas@arm.com, will@kernel.org, arnd@arndb.de
Subject: [PATCH v7 4/4] arm64: defconfig: Enable Qualcomm QCE crypto
Date:   Wed, 21 Sep 2022 10:26:02 +0530
Message-Id: <20220921045602.1462007-5-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20220921045602.1462007-1-bhupesh.sharma@linaro.org>
References: <20220921045602.1462007-1-bhupesh.sharma@linaro.org>
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

Now that the QCE crypto block is supported on several
Qualcomm SoCs upstream, enable the same as a module in the
arm64 defconfig.

Cc: Bjorn Andersson <andersson@kernel.org>
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

