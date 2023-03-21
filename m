Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9D1CE6C32A6
	for <lists+devicetree@lfdr.de>; Tue, 21 Mar 2023 14:22:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230509AbjCUNW0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Mar 2023 09:22:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37050 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230519AbjCUNWQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Mar 2023 09:22:16 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5AAF02594D
        for <devicetree@vger.kernel.org>; Tue, 21 Mar 2023 06:21:57 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id p16so9540730wmq.5
        for <devicetree@vger.kernel.org>; Tue, 21 Mar 2023 06:21:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679404913;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=n0orW1CTnM6DAdshwwXX6e/Knv2tholAvEuPEyPRFIo=;
        b=k2KHeyYRaAD9BKXWZUzoXLAkj2c079EZnM91AumaR5e1KxFxGityJJW3TOfLKVmNR7
         4K8J+XuUaT7EWYyfRZB224fQUtDe//2mHt+8aSQX5HSrRfxtrgBCjzlbUELPYpJ1WPAt
         ocB4X/3gM6LM2pnEaMTL/LS4WlxlFyT32yEOOG5X1mTF+Hdd8ku6wZY79JC1vakzVCOY
         xL5vWOVKBlfc9g0a9vBqVhfX2tRD+C74NG0R1b3+n5spp1jqF6NA9wh5off/1MiF6knC
         9zlAC+PyTIhaZ2+KIEptI59XzrIZM8JOoWGGYkfaNHkgS7iZRPijYhzXwDhfbaTPGWNt
         0jVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679404913;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n0orW1CTnM6DAdshwwXX6e/Knv2tholAvEuPEyPRFIo=;
        b=vWtbEZZev7+XBngBQb00L06OFRY/DdImJU+i5LAc1NveXc4+EfRwGV9BOwRdeu2OTw
         6fZHM/3xRberFQBQxTrt/6o8cJUE6CzIjck6P3U6xf9KPIOYgA46nR9+QPNhXloh79ML
         u+Lfqdc1/Lc6zJ1bCNfig6czblEGWqnPoRZtsqlVOeo2M2MTKRCxnsIWXp4O0y2i7D83
         VArtfrz2Can2dFY+hRPxMvc6iTVqyqyJDxqyDVRJpbATPzXpKoYAWJRpWkUSpbIj0kiC
         m2s28gpXsi97NwSEqwo8G/By1gfyvReaqWvOPiVSYtq9WkXSBlZMjrxc4ChfuGA1PS1x
         AfdA==
X-Gm-Message-State: AO0yUKWRQ4bWd28g285FfQ6BaOln4/ERCeUEnN1bdACVYk54h6NfwyAd
        zlpV32iRKeVuZ1BjKHKD52DofA==
X-Google-Smtp-Source: AK7set/uyeF2W9Z8js7YvAE/pvM3fkWzRXbZwkQqbcnFIO0wslkp472DFDu/CCFsROolNv7vOw0Yvg==
X-Received: by 2002:a1c:7c0f:0:b0:3ed:2937:90c1 with SMTP id x15-20020a1c7c0f000000b003ed293790c1mr2464388wmc.34.1679404913477;
        Tue, 21 Mar 2023 06:21:53 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id v26-20020a05600c215a00b003eafc47eb09sm13393016wml.43.2023.03.21.06.21.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Mar 2023 06:21:53 -0700 (PDT)
From:   Neil Armstrong <neil.armstrong@linaro.org>
Date:   Tue, 21 Mar 2023 14:21:52 +0100
Subject: [PATCH v5 12/12] arm64: defconfig: add PMIC GLINK modules
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230130-topic-sm8450-upstream-pmic-glink-v5-12-552f3b721f9e@linaro.org>
References: <20230130-topic-sm8450-upstream-pmic-glink-v5-0-552f3b721f9e@linaro.org>
In-Reply-To: <20230130-topic-sm8450-upstream-pmic-glink-v5-0-552f3b721f9e@linaro.org>
To:     Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc:     linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable the PMIC GLINK core, altmode, battery and UCSI
aux drivers as module to enable USB Type-C management
over the PMIC GLINK protocol on modern Qcom platforms.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/configs/defconfig | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 3a6d995384d9..d849fa2ca852 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -273,6 +273,10 @@ CONFIG_VIRTIO_BLK=y
 CONFIG_BLK_DEV_NVME=m
 CONFIG_QCOM_COINCELL=m
 CONFIG_QCOM_FASTRPC=m
+CONFIG_BATTERY_QCOM_BATTMGR=m
+CONFIG_QCOM_PMIC_GLINK=m
+CONFIG_TYPEC_UCSI=m
+CONFIG_UCSI_PMIC_GLINK=m
 CONFIG_SRAM=y
 CONFIG_PCI_ENDPOINT_TEST=m
 CONFIG_EEPROM_AT24=m

-- 
2.34.1

