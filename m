Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 76E1549D530
	for <lists+devicetree@lfdr.de>; Wed, 26 Jan 2022 23:18:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233136AbiAZWSV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jan 2022 17:18:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55152 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233059AbiAZWST (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Jan 2022 17:18:19 -0500
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com [IPv6:2607:f8b0:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02978C061753
        for <devicetree@vger.kernel.org>; Wed, 26 Jan 2022 14:18:17 -0800 (PST)
Received: by mail-pf1-x42f.google.com with SMTP id y27so970566pfa.0
        for <devicetree@vger.kernel.org>; Wed, 26 Jan 2022 14:18:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ltUaf0P7+L7T6ZQurZSqM5no7v9v1dUYJbr17H6OFeE=;
        b=GLR7jiNk80+lc4ufxK9ZhAJsn9m6eraXUlEp18njsVAZbtmEBA9ZVPorH4qskiDTKi
         D49Ia7LJjcm+1/cWDCogGbroN9YMoMQa7fqe6q57AZOsVeDVaEc9eqVhkkHXdLhw1Ib4
         MfC5zBCeq7jIOynF0qwsduKkks7qL0qV45zn+iDwVAI3TkZcxHGic3qdCQnjibiGe6nd
         1bAQzLBM4jlf4QNWUPjhdG0ivNe7CVkt8pKeNvBVE9WnCL2T4l2mz9FgtPByQ6K7KhTv
         SEO3fzBiqupq03OzQwGdVaOi5X1WOepZIqYBfQimPhl5oFPEmliH0niHEtr/QEUJ70XQ
         pQmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ltUaf0P7+L7T6ZQurZSqM5no7v9v1dUYJbr17H6OFeE=;
        b=v3ZTMSsdEHLtJWDh3n10pb0S3D27tWTyPH6ubUEYFnkhLvs5nuHyZWCGb5Ady+UN3k
         nNS9kp/pnm7dOuF8OvMUe5Cl5DsqdvXREJbCcyvrNKNLKHI4C/S1/AtmfyKld2rgEGML
         j14OcEEr0yNV5Ll1mHoGA+EJO0QzKcLAlyxSAwe42qSRww2JXunCDfPFkmuPdzdie0uk
         RH9+t23f6xMw2d48sPClIsv9n24bUF4Xqd3864EjXvhX9ejmtUbkpImSSZopo66dq/ed
         ZJkOT6zIX5DFqTJD0nPlYhejQoPX5Pe49lG7PubQ+j3+lKqEehQ7UiF2CGWi7Y8t7i3F
         uTqg==
X-Gm-Message-State: AOAM531M5oSeif0qWkLcywAUCFHFlwXF+BxNm13NK+Uj7Hbi13D6wWNA
        b5tTL2ov4JkhvTtvjqcYEcBJhg==
X-Google-Smtp-Source: ABdhPJxB/gBmtmXsdGO6QIYNImm7PodEODZA1vSH9IXF5Dp/PLfyDkrfYVGRyE3evUCvjsvT3Y6LxQ==
X-Received: by 2002:a63:6c43:: with SMTP id h64mr700027pgc.120.1643235496462;
        Wed, 26 Jan 2022 14:18:16 -0800 (PST)
Received: from localhost.localdomain ([2401:4900:1f3a:4e9b:8fa7:36dc:a805:c73f])
        by smtp.gmail.com with ESMTPSA id t17sm4233742pgm.69.2022.01.26.14.18.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jan 2022 14:18:16 -0800 (PST)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org
Cc:     bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        robh+dt@kernel.org, agross@kernel.org, sboyd@kernel.org,
        tdas@codeaurora.org, mturquette@baylibre.com,
        linux-clk@vger.kernel.org, bjorn.andersson@linaro.org,
        davem@davemloft.net, netdev@vger.kernel.org,
        Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>
Subject: [PATCH 1/8] dt-bindings: net: qcom,ethqos: Document SM8150 SoC compatible
Date:   Thu, 27 Jan 2022 03:47:18 +0530
Message-Id: <20220126221725.710167-2-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220126221725.710167-1-bhupesh.sharma@linaro.org>
References: <20220126221725.710167-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Vinod Koul <vkoul@kernel.org>

SM8150 has a ethernet controller and needs a different configuration so
add a new compatible for this

Cc: Rob Herring <robh@kernel.org>
Signed-off-by: Vinod Koul <vkoul@kernel.org>
---
 Documentation/devicetree/bindings/net/qcom,ethqos.txt | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/net/qcom,ethqos.txt b/Documentation/devicetree/bindings/net/qcom,ethqos.txt
index fcf5035810b5..1f5746849a71 100644
--- a/Documentation/devicetree/bindings/net/qcom,ethqos.txt
+++ b/Documentation/devicetree/bindings/net/qcom,ethqos.txt
@@ -7,7 +7,9 @@ This device has following properties:
 
 Required properties:
 
-- compatible: Should be qcom,qcs404-ethqos"
+- compatible: Should be one of:
+		"qcom,qcs404-ethqos"
+		"qcom,sm8150-ethqos"
 
 - reg: Address and length of the register set for the device
 
-- 
2.34.1

