Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 873BB5EED7E
	for <lists+devicetree@lfdr.de>; Thu, 29 Sep 2022 08:05:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234877AbiI2GFk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Sep 2022 02:05:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49806 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234884AbiI2GFV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Sep 2022 02:05:21 -0400
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com [IPv6:2607:f8b0:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AFAF01146B
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 23:05:06 -0700 (PDT)
Received: by mail-pg1-x52a.google.com with SMTP id b5so562805pgb.6
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 23:05:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=HooJ4kDdd+nfW0+c6w2JS1sLHMZcAjvPxacv4NnqElw=;
        b=XLfgz8R0QgXxKIwTdqCc5/W6+dRlPrE+0sfoxAJyJlw7bJFVK5CeuOGX6TPAnsvTDk
         0udBR5kitB6ljQhDK9Rc3uA/NJ5vmtFxXdlvvsDT2rLuEPzixW7kDK3sAP7ok5uWWImg
         ruU2+2ElC2x7z3Cbb3cZF7oIHLRzgI9lFj81maV6IclSnhDri9pNemXYFpk+068pPiGU
         3K8Lk7rBcM5gxXPgXygFbP/PbGlAGbzZJOyZNJ5gZ2NbLMC5uTxLOyaHg5ffyjqlpgLR
         rrTG09lwqGjFdb646tgW0CaIa0Rdt52gJUlduGM8J984BnsytY830b3GnfGVhPVpujCG
         E80g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=HooJ4kDdd+nfW0+c6w2JS1sLHMZcAjvPxacv4NnqElw=;
        b=FHE3v/AhgqbNX996ZOWwfQ6VanUnc9YuoWWCqut38AGCIJqSsODWqnEn5wKfvNOBVc
         75eFXBM9lBgPs7vvLejbqSRtNsiSrKT9UMsTRU0sVHXfTRhWiE5MFG/GF+CjjapD4kRV
         hLoEsulXLbgorGCRaizuvfV9+9DGAxutSDG11lgQdTzFOAUMSucXSGvdFX4zVZnlULnM
         8wlR8f5tYA5KJutap7uboXxsql0tyHC0H509fTgkXTlRjQ+5TRjlvCaaTWq2xzt+PwOa
         Iw9D/CzCexyr4WxTchBgIWpkrcUWmHXvcJxF9KU0aaQGLoGTk8Whfcpm3V3nSPdh30uw
         VRxA==
X-Gm-Message-State: ACrzQf3kl5DNJRU7yoqsk4hXZO31ivkMIqG4ez1zpdpeJVOI88n2PxXM
        n+6evdkfredrJ+7G1ksvPwe2eXTY9OQwXA==
X-Google-Smtp-Source: AMsMyM6KHxFl66z9CrxC/L6MnzvH0M1CK+EsJtzkw4wGjJaNH1EKqbGOucUm+HKEayh0wE8+07WPaA==
X-Received: by 2002:a05:6a00:a29:b0:54e:6aed:c655 with SMTP id p41-20020a056a000a2900b0054e6aedc655mr1730017pfh.25.1664431504883;
        Wed, 28 Sep 2022 23:05:04 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1f3b:3adb:24f8:ac24:2282:1dc7])
        by smtp.gmail.com with ESMTPSA id i1-20020aa796e1000000b00540c3b6f32fsm5037681pfq.49.2022.09.28.23.05.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Sep 2022 23:05:04 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     devicetree@vger.kernel.org
Cc:     linux-arm-msm@vger.kernel.org, agross@kernel.org,
        bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        linux-kernel@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski@linaro.org, netdev@vger.kernel.org,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        David Miller <davem@davemloft.net>
Subject: [PATCH v2 4/4] MAINTAINERS: Point to the yaml version of 'qcom,ethqos' dt-bindings
Date:   Thu, 29 Sep 2022 11:34:05 +0530
Message-Id: <20220929060405.2445745-5-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20220929060405.2445745-1-bhupesh.sharma@linaro.org>
References: <20220929060405.2445745-1-bhupesh.sharma@linaro.org>
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

Update the MAINTAINERS file to point to the yaml version of
'qcom,ethqos' dt-bindings.

Cc: Bjorn Andersson <andersson@kernel.org>
Cc: Rob Herring <robh@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>
Cc: David Miller <davem@davemloft.net>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 3f7082a08ac4..b9860fd758c0 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -17011,7 +17011,7 @@ M:	Vinod Koul <vkoul@kernel.org>
 R:	Bhupesh Sharma <bhupesh.sharma@linaro.org>
 L:	netdev@vger.kernel.org
 S:	Maintained
-F:	Documentation/devicetree/bindings/net/qcom,ethqos.txt
+F:	Documentation/devicetree/bindings/net/qcom,ethqos.yaml
 F:	drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
 
 QUALCOMM FASTRPC DRIVER
-- 
2.37.1

