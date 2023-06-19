Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 46DF7734FC5
	for <lists+devicetree@lfdr.de>; Mon, 19 Jun 2023 11:24:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231495AbjFSJYh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Jun 2023 05:24:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50216 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231366AbjFSJYU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Jun 2023 05:24:20 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 833BB83
        for <devicetree@vger.kernel.org>; Mon, 19 Jun 2023 02:24:19 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-3f90b4ac529so16070135e9.0
        for <devicetree@vger.kernel.org>; Mon, 19 Jun 2023 02:24:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1687166658; x=1689758658;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2s2NJclKWNK/7cl/j+crrrKprFB1owa3fhzvvYgN/iA=;
        b=JVygoOc+Sgv4N+YpwUy0/S3Tb3EU99+UmbwTg/SZi3AvYvh2T/jrFwNRBUFY9D4wNT
         ajdGMMWD0gbYpHD6PU1nP33R3HM9Fuzz9V3lUQrccCudcwfMKMyXTLE4iA4i/Hyxqc8H
         xUo37e8oXYLHW2ghVq0kXhM1jrh8ZzxKRq0c7xUAOGN8Foo+KzgPr1T7wktwzGLD5SLv
         4d35AemYguD/hrY/mLMc9uMxNtpNdFRQZTU7wTKdphQPeaPj2c4jccE1jen6R5IVfzP2
         V/DmfYJoHcq80KiiveGwg4M3EA3Z6JEexZHzukbJ7/lWtuO5PZGvelemFRS8280yP8NO
         DaMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687166658; x=1689758658;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2s2NJclKWNK/7cl/j+crrrKprFB1owa3fhzvvYgN/iA=;
        b=CkYWdh07shRWUjYE7VczjrgzNgj7I125TSFl5enPrRc5VmYUsl7MChSnZMjjPX/YJ/
         06Sn+Cbo3JbLRg1J0LnN/nAFCI3Ordd96+MgvENib4b28YlImyKKz/UUEfBHSmqAvuiZ
         sMZHRckDmV9Ajp52rGF1lQ7CqZeUqacHY2zSjO/dqLtejrzsUcGtTEEWopYWcAxELGWE
         Q5ziM2HOP3qCv9wTOOZNnOzG2TvCrIjctS1Nd98zB1UGYGNeAcK7/2aWv4RlCKrhUoE8
         jOmkXaSNhDbTU/t01qRSrTYbUETvr9cP5ogon/ox7a9PK3NYhMqFCrx7nv6w497CTDGy
         KNPg==
X-Gm-Message-State: AC+VfDxrzgXg7el9rPHuVvBTeruHudA1DiNBFMoh4x3HbSkiWWKn94zG
        h5wJnVBnftv6+EeT9MVDiZ4pWw==
X-Google-Smtp-Source: ACHHUZ6PbF7xaV88naI4EANmCuj1nfS/vMqu1VtnGeIj+ZKInR97LZy9OzAzGw+H+MfOGIxYdxlSSw==
X-Received: by 2002:a7b:c454:0:b0:3f7:5e08:7a04 with SMTP id l20-20020a7bc454000000b003f75e087a04mr7646140wmi.25.1687166658109;
        Mon, 19 Jun 2023 02:24:18 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:d9e8:ddbf:7391:a0b0])
        by smtp.gmail.com with ESMTPSA id q9-20020a7bce89000000b003f7cb42fa20sm10045229wmj.42.2023.06.19.02.24.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jun 2023 02:24:17 -0700 (PDT)
From:   Bartosz Golaszewski <brgl@bgdev.pl>
To:     Vinod Koul <vkoul@kernel.org>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        "David S . Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Giuseppe Cavallaro <peppe.cavallaro@st.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Jose Abreu <joabreu@synopsys.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Andrew Halaney <ahalaney@redhat.com>
Cc:     netdev@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [RESEND PATCH v2 05/14] net: stmmac: dwmac-qcom-ethqos: add missing include
Date:   Mon, 19 Jun 2023 11:23:53 +0200
Message-Id: <20230619092402.195578-6-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230619092402.195578-1-brgl@bgdev.pl>
References: <20230619092402.195578-1-brgl@bgdev.pl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

device_get_phy_mode() is declared in linux/property.h but this header
is not included.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Reviewed-by: Andrew Halaney <ahalaney@redhat.com>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
index f0776ddea3ab..b66d64d138cb 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
@@ -6,6 +6,7 @@
 #include <linux/of_device.h>
 #include <linux/platform_device.h>
 #include <linux/phy.h>
+#include <linux/property.h>
 #include "stmmac.h"
 #include "stmmac_platform.h"
 
-- 
2.39.2

