Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 23F595BE4CB
	for <lists+devicetree@lfdr.de>; Tue, 20 Sep 2022 13:42:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229993AbiITLmd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Sep 2022 07:42:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33460 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230253AbiITLl6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Sep 2022 07:41:58 -0400
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com [IPv6:2607:f8b0:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC67C74BB1
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 04:41:45 -0700 (PDT)
Received: by mail-pf1-x431.google.com with SMTP id a80so2485165pfa.4
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 04:41:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=qd2IXiZw2jwRUpHxd32tqfwz1B+E7DKiO+54KjyF/gQ=;
        b=VV8jV3nPo+b7UGWdD7Wlux2emmW1As27kGXAgJyTfhBOE3nAQHpVg15Oe8WYn2tdph
         48wINZwWqxmMWh75ASTe0M2ST547v3hVuLCMPT35XHiGl4zZrJnTNtKBequUQd/4q/LB
         XVdH0IMC6I/9KXS8b608goIbynbVIi5Jv0ZsQij98bAFTuFuvdWnfOs/p6KFxUgPKBIO
         U4M42yHsKvMxFtLezKvhCn0CU4ZVWB+DZ0myG/67shL20VDYqY2YzwTvFMtggds3fEhQ
         SfJGFc1ZQsLx+aM16cZlUkMk4Sp6w+/bQeBMQ4y+yrSDlnqb0jdcC5Cwmu17qyIZr975
         ObRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=qd2IXiZw2jwRUpHxd32tqfwz1B+E7DKiO+54KjyF/gQ=;
        b=mZrpwTfQqb2bRuXJo+nSyvYIZNRt2ghNk+ckwUy7IrGPOkJT2Al3dddx4vPPrwajmZ
         z1u6amZU19RTgc+f8OZLIjM6KzMe4ABZQwN5pUrO8C25NinpKDdKLtD2Cc/ten78HZr1
         b+CyiteFM0oWdF+5nay1EZ68KLWsvXcDaaXtp2TY2qd4Fq0ly4Bz5XzSHgwunSRiwELA
         VJNcQuVZmQDut2K3pWkG/EOmZV2LFSu2MlE0kgmsoSewKIRcqTNB92uzdrSUtRlaYXNT
         QGJajuElFX9OnteDF7sMl8+wDd1XSYDbXf8YjUxoNY6lzNO8SC5QsMn32B2iD1P+0f5e
         T3kQ==
X-Gm-Message-State: ACrzQf3sXIn2/2Ueauid1uWAq8bmfP2NfcpQ/eL/yZ/y1Iy/eHuJb1Np
        2vPWjbDbDjWexR5qaAHd6GWukQ==
X-Google-Smtp-Source: AMsMyM4o0y4qWlSHNKXPawwFNGW7b/tX/gubEX/Jmnv/md4j1p4Bz+/Xz5zMvHOaezT60aMgxKeHpA==
X-Received: by 2002:a63:5916:0:b0:41d:2c8c:7492 with SMTP id n22-20020a635916000000b0041d2c8c7492mr19737689pgb.81.1663674105160;
        Tue, 20 Sep 2022 04:41:45 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1c61:6535:ca5f:67d1:670d:e188])
        by smtp.gmail.com with ESMTPSA id p30-20020a63741e000000b00434e57bfc6csm1348793pgc.56.2022.09.20.04.41.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Sep 2022 04:41:44 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-crypto@vger.kernel.org, devicetree@vger.kernel.org
Cc:     agross@kernel.org, herbert@gondor.apana.org.au,
        linux-kernel@vger.kernel.org, robh+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, thara.gopinath@gmail.com,
        robh@kernel.org, krzysztof.kozlowski@linaro.org,
        andersson@kernel.org, bhupesh.sharma@linaro.org,
        bhupesh.linux@gmail.com, davem@davemloft.net
Subject: [PATCH v7 8/9] MAINTAINERS: Add qcom-qce dt-binding file to QUALCOMM CRYPTO DRIVERS section
Date:   Tue, 20 Sep 2022 17:10:50 +0530
Message-Id: <20220920114051.1116441-9-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20220920114051.1116441-1-bhupesh.sharma@linaro.org>
References: <20220920114051.1116441-1-bhupesh.sharma@linaro.org>
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

Add the entry for 'Documentation/devicetree/bindings/crypto/qcom-qce.yaml'
to the appropriate section for 'QUALCOMM CRYPTO DRIVERS' in
MAINTAINERS file.

Cc: Bjorn Andersson <andersson@kernel.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 94e40d05cc83..b0556cd21f86 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -16948,6 +16948,7 @@ M:	Thara Gopinath <thara.gopinath@gmail.com>
 L:	linux-crypto@vger.kernel.org
 L:	linux-arm-msm@vger.kernel.org
 S:	Maintained
+F:	Documentation/devicetree/bindings/crypto/qcom-qce.yaml
 F:	drivers/crypto/qce/
 
 QUALCOMM EMAC GIGABIT ETHERNET DRIVER
-- 
2.37.1

