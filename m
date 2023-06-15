Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 260D573187E
	for <lists+devicetree@lfdr.de>; Thu, 15 Jun 2023 14:15:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344732AbjFOMPO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Jun 2023 08:15:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57628 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344765AbjFOMOz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Jun 2023 08:14:55 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C2D8A273B
        for <devicetree@vger.kernel.org>; Thu, 15 Jun 2023 05:14:48 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-30e412a852dso5756685f8f.0
        for <devicetree@vger.kernel.org>; Thu, 15 Jun 2023 05:14:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1686831287; x=1689423287;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r1Ok1IYka1vb/vM8tvKH2bExKZHEfvi4JId7lcZB7pk=;
        b=gAgptQQkN2VQMGqYucwCcq099iIQmqKdEKk0oI1NCGMtDGyG5stsnWMwiF+Uhnj95/
         Q/gf8LCRofwFp0Tj02+rMuFYaXEuq/VhCDDSP2rPIuAG+BLee13gjgZuFIN/p3Aqb6MT
         7xQyVyP+9X7Z0kFKdisFayRD1TOqPnV8I1VoUDR2cDY7464JGJg5hlI6yqGt75VunKch
         azWuFAda8f323ROYHTHy2piFvp5aG/G6xIUk8N8+X6Hao/lwT5xiKyK7H4aTVtJHcl79
         XMuGjxt3F3ujjQQ1oQb7+/ePdnOulMbTvYJKE3zBbW7nKK/hDYUFvFtmp1gsgxmiUPfu
         5xTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686831287; x=1689423287;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=r1Ok1IYka1vb/vM8tvKH2bExKZHEfvi4JId7lcZB7pk=;
        b=B6rsZhLq6vn36fgoiWp+Vqqo3uzKpqrZb0X4moWhLPGCQdzpOKBfDFuYZnpZsaQ97h
         ZEJyLbLLYKCP3Mt3mANOKZlIShc0eVWbn375qskC5ieZbP2yQ57KrzKHjG+S1JX+BGHZ
         0l26mopRlUqa4RYJ3+yXEo8z0H+v9/Ygm+rC4OfLsDQn0NFdFVDTini0Wk5IKEwlLAoK
         m8LxWQolLvlqVR7UFshxfxWYy9BrJX+0BlbLVBVseCfG3vj0LgENqO2BEO4tSzsgc3iM
         33SmI5xlJqVYXdQ5sAmJ0MXcDumZKu1fcc3magBnPpCs9aI57SdbtkbePK7hOQdQxkO3
         tetQ==
X-Gm-Message-State: AC+VfDwANGFSBVxWV/X0aYNJs/AzhzgPMxmAwz3fwsTeLTKL98R2v2Wm
        XwEY6e3B26SbgKwkTaqMAQB6Ow==
X-Google-Smtp-Source: ACHHUZ4r1A3qaTK5WSf+N6NhTfrUIoixv+YgCS9FosZwGOvt8xYnavFbEe9tPLw5/qL92M2SWSYV4Q==
X-Received: by 2002:adf:ec0f:0:b0:30f:cc8f:e48c with SMTP id x15-20020adfec0f000000b0030fcc8fe48cmr4937374wrn.25.1686831286752;
        Thu, 15 Jun 2023 05:14:46 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:2ad4:65a7:d9f3:a64e])
        by smtp.gmail.com with ESMTPSA id k17-20020a5d4291000000b003047ea78b42sm20918012wrq.43.2023.06.15.05.14.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jun 2023 05:14:46 -0700 (PDT)
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
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Giuseppe Cavallaro <peppe.cavallaro@st.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Jose Abreu <joabreu@synopsys.com>
Cc:     netdev@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Andrew Halaney <ahalaney@redhat.com>
Subject: [PATCH v2 10/23] net: stmmac: dwmac-qcom-ethqos: add a newline between headers
Date:   Thu, 15 Jun 2023 14:14:06 +0200
Message-Id: <20230615121419.175862-11-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230615121419.175862-1-brgl@bgdev.pl>
References: <20230615121419.175862-1-brgl@bgdev.pl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Typically we use a newline between global and local headers so add it
here as well.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Reviewed-by: Andrew Halaney <ahalaney@redhat.com>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
index b66d64d138cb..e3a9b785334d 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
@@ -7,6 +7,7 @@
 #include <linux/platform_device.h>
 #include <linux/phy.h>
 #include <linux/property.h>
+
 #include "stmmac.h"
 #include "stmmac_platform.h"
 
-- 
2.39.2

