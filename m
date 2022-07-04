Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E6764565502
	for <lists+devicetree@lfdr.de>; Mon,  4 Jul 2022 14:18:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233518AbiGDMSe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Jul 2022 08:18:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54098 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233669AbiGDMSA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Jul 2022 08:18:00 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3DA3D12619
        for <devicetree@vger.kernel.org>; Mon,  4 Jul 2022 05:17:40 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id a13so15451644lfr.10
        for <devicetree@vger.kernel.org>; Mon, 04 Jul 2022 05:17:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=l4c6eL6FkT3F5Q2UMeh1SdTOW/jzEthp0aJ+P51R6LI=;
        b=kXJS3f5b7yC9K8hm0tvpSXyKvaeyDMMSD899aQ9fPY0xv+kQ6x87ysIfsbv/i4t5ax
         hetzoT2aSLQPlE8MYiAfEd5rdps5hQxEd7u9DRuV//7ri1nFDUzPCCFO+Su1r6il1ycF
         r6MquXUYC4UB8KoWJ55xWDfzcEAckn33hVEo9FXKVvTrQxr2a4TQsx6KgWQOt8tpjO4/
         kEnAHv/Qb5zKF/H5FfqnhI+ba7IGzakf4rkZcSSIc7VHzsgBzK7sgrBR5ejUy9XgjImR
         eQRgfTpKrp+UT098Hz6KvYjUzhfLFhnyzm0GOi/U8qYim1IxQSkdoHrVWFh65ZDaYWyL
         KS0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=l4c6eL6FkT3F5Q2UMeh1SdTOW/jzEthp0aJ+P51R6LI=;
        b=rNnWFWAfzS0z6x2DwRx/ihh7AjPKkKGpHvwY8SoVFsJN3l8Gw3/HB6mx7uASPTMXnQ
         l1RsdW/umufce1LW3ainFOPI0U1uo344MDFyRka7WgZdTiBsXoQhccsKLfY3BBKzLWdI
         mv3VYJhtG8AGj1jUFiA8wgNyCYCtQc4sAgRJOzUCO79Xcqx4MPZgAsKAJtcapL9seRJn
         rKC/hKEgmEwU/Ve6Zeiw3/DeZGYObWPfmDp7g2H4/j6v/xM5hKNkgpl+Sew2k3HbGy1b
         Qtpmx1GCw4AkmeNPofD8lZ7x9xVzAhy1nQl+FtzllCA8i+Q5X7lfMNROJh0NZrMZvCdf
         Ti5w==
X-Gm-Message-State: AJIora+gjT5KSSsbn9Ymv1yphX8PJQZKS1k0mg+E9gLVe4ij8hU7Szyw
        tQKWduAhwk2E7mHtUn3YgEKotg==
X-Google-Smtp-Source: AGRyM1upzfjkZEwtDGMG41zysxdqM2gIjkq1K0IGy7cqb7Fo8Z5IGqeQ8GDyBx9J+kl/aMJjR+TSJw==
X-Received: by 2002:a05:6512:318b:b0:47f:b39d:bbe3 with SMTP id i11-20020a056512318b00b0047fb39dbbe3mr19062136lfe.487.1656937058537;
        Mon, 04 Jul 2022 05:17:38 -0700 (PDT)
Received: from krzk-bin.home ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id u11-20020a05651220cb00b0047faa01edd9sm5102149lfr.229.2022.07.04.05.17.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Jul 2022 05:17:37 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Georgi Djakov <djakov@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Rajendra Nayak <quic_rjendra@quicinc.com>
Subject: [PATCH v8 3/4] arm64: defconfig: enable Qualcomm Bandwidth Monitor
Date:   Mon,  4 Jul 2022 14:17:29 +0200
Message-Id: <20220704121730.127925-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220704121730.127925-1-krzysztof.kozlowski@linaro.org>
References: <20220704121730.127925-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable the Qualcomm Bandwidth Monitor to allow scaling interconnects
depending on bandwidth usage between CPU and memory.  This is used
already on Qualcomm SDM845 SoC.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 6906b83f5e45..6edbcfd3f4ca 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1096,6 +1096,7 @@ CONFIG_QCOM_SOCINFO=m
 CONFIG_QCOM_STATS=m
 CONFIG_QCOM_WCNSS_CTRL=m
 CONFIG_QCOM_APR=m
+CONFIG_QCOM_ICC_BWMON=m
 CONFIG_ARCH_R8A77995=y
 CONFIG_ARCH_R8A77990=y
 CONFIG_ARCH_R8A77950=y
-- 
2.34.1

