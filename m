Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 586B94C6C97
	for <lists+devicetree@lfdr.de>; Mon, 28 Feb 2022 13:31:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236527AbiB1Mb6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Feb 2022 07:31:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236529AbiB1Mbz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Feb 2022 07:31:55 -0500
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com [IPv6:2607:f8b0:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 536C375634
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 04:31:09 -0800 (PST)
Received: by mail-pf1-x431.google.com with SMTP id k1so509539pfu.2
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 04:31:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=uiCgAku//7sIMuxqYHJc2X9D5M99OLU0HUtVfVHUJPY=;
        b=Nh6OUoqsnLEtt283PlSYofT0UzjINAUBlvDTEtSbmjaMIILGxpKPijxKTImryL80pZ
         DffhZKBm46nxZVmMorF1GE2psWugzuEJSnykI66Ww8RgRt8anmJWTTwulLfrPEwVf8UJ
         9vvgtTgBfrqZnjHKzYBT7bKAaZSrg6izHygsmT3YQGI0bo4mpo6LEqtI5MOoQPY/Kupt
         SQJjJOjHOCC6oLaO5JHkdPdsBY1JkA2vlIKFMd1/GtLVF8nPyJV6OmzVzZ2zf8PKIZYe
         recM9diRzHH6Vh9oUuYEBxy+KPQOP+BHVWYYruQKB2WfVdljcZ/TxBjOPES527DN2yB4
         wAAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=uiCgAku//7sIMuxqYHJc2X9D5M99OLU0HUtVfVHUJPY=;
        b=z5832tIapfAql1A4scDNhEF3mjIoGjycWSsiFx1be8LiaEfhx1fYzgPyQWlH5urzh0
         xgZqRfVgZLnNMFUyQwfO6rlDAIP7zqD4Je+xgutvdFi612+rMr1s/lLjFWqUVZAR0Jt3
         HCC6ZWsogcUxlEcb/0mjVs4ujpvBNz9q9pT8S699U/7dh8p9gRuuiGJ+0DVSyPMbAuvG
         lHb0fLGfvBLp2LlJG7+L+eI97oLSkoGuF8ak/orjfTBZdaN56Uam6muCHCdTXUYkQuCW
         0KG9R8d6+fSN04w/wr11/Pet2KaDujyOKxB3IpSoAplAzPy0P1orb2afnh3Cfqm17suM
         EKqg==
X-Gm-Message-State: AOAM531PgGcn8K4rckNYdZpzylW69sUwArSuv8tGhWbE90HpM8QLdo8w
        rsn+fbFtCSwH6lmCOyeMCPtePg==
X-Google-Smtp-Source: ABdhPJzBpN1R+t/fGMdQfNiAYxIQ/GG3amctANAxG40D5LFiKQhC6nutcyeNhTgRbB1ZD3JHW7BAGg==
X-Received: by 2002:a65:4549:0:b0:378:c0b0:c153 with SMTP id x9-20020a654549000000b00378c0b0c153mr1446757pgr.177.1646051468859;
        Mon, 28 Feb 2022 04:31:08 -0800 (PST)
Received: from localhost.localdomain ([223.179.136.225])
        by smtp.gmail.com with ESMTPSA id f7-20020a056a0022c700b004f0e9d686dcsm13790001pfj.137.2022.02.28.04.31.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Feb 2022 04:31:08 -0800 (PST)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org
Cc:     bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        agross@kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, shawn.guo@linaro.org, vkoul@kernel.org,
        linux-phy@lists.infradead.org, robh+dt@kernel.org,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v2 8/8] dt-bindings: phy: qcom,qmp: Mark 'vdda-pll-supply' & 'vdda-phy-supply' as optional
Date:   Mon, 28 Feb 2022 18:00:19 +0530
Message-Id: <20220228123019.382037-9-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220228123019.382037-1-bhupesh.sharma@linaro.org>
References: <20220228123019.382037-1-bhupesh.sharma@linaro.org>
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

Fix the following 'make dtbs_check' warnings, by marking the
'vdda-pll-supply' & 'vdda-phy-supply' properties as 'optional' in
'qcom,qmp-phy' dt-binding:

arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami-pdx215.dt.yaml:
 phy-wrapper@88e9000: 'vdda-phy-supply' is a required property

arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami-pdx215.dt.yaml:
 phy-wrapper@88e9000: 'vdda-pll-supply' is a required property

Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Rob Herring <robh@kernel.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index f8a43acd229a..82b102b7d42c 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -436,9 +436,6 @@ allOf:
           items:
             - const: phy
             - const: common
-      required:
-        - vdda-phy-supply
-        - vdda-pll-supply
   - if:
       properties:
         compatible:
-- 
2.35.1

