Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3E044370B75
	for <lists+devicetree@lfdr.de>; Sun,  2 May 2021 14:20:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232047AbhEBMVh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 May 2021 08:21:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47398 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231982AbhEBMVh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 May 2021 08:21:37 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE033C06138C
        for <devicetree@vger.kernel.org>; Sun,  2 May 2021 05:20:45 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id gx5so3785343ejb.11
        for <devicetree@vger.kernel.org>; Sun, 02 May 2021 05:20:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=snejp.pl; s=gmail;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Qqcj0BqgNgc1kx4Ifq3fIk2WlqX2X6sfrX0+upPU08M=;
        b=JpKUjkb4rKj3rHgTE7xBziJ6MrZrt2O2FBGJEL1wUMLwt5Xu471qz3yd1HD3CaSV5E
         ySdRvgC+gKModoCBMnPS+4OCYmtakK/2MOlzR0AeTMWsyVC8ImXHFRZjHO9HXtihyve1
         zJquBj4geX1T5Tsxc+w+ebBM/nUYn6qIOm26jqhXUKpcfx9WtDZwRyk1PoEnOX2hyJvA
         yyI2GVU8HUH5zEtb4XnQr4D2w48JaWKoaB7acUvBpdfIgYXBxBoTQ+3NHv1XLFNqgOMd
         sBfoj7Ni/Lo87KvYbn6mnLueKgd7dZxR3RSFFtT35/v2z0f/N7dspn3ep3vHr2Rrt9F/
         cQJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Qqcj0BqgNgc1kx4Ifq3fIk2WlqX2X6sfrX0+upPU08M=;
        b=Xx7YnrJTD54paaaBvUKHen9EjigbR6ni56cKLtqFJm42ijpZ4bu/0445Q27/lQ5Cxr
         RFAeNd4EVnJ/D/1STiW+lYLezOyx8q1vW4YCJeZNQ3+hE0TS4Y+aM5NACTqhyUtuIw67
         tr9++ndzf27t5VsdGs3pmPpjnUop3RCadJxsIbFQ6qdwpbWzQwf/1VHcnmf2nlvRHGFq
         HAI7CnId1jX41ODBLiV3LERI3i+qWyQbd4iXlJkCnJYjxhxaNMbQdiYqQFflHnGwYzFa
         ZKwPC1FxpzHy3cjGQ6h6NYOJh7B7mciPUB3BbUUb35FN7Nk9r+ecKxxGHAMF/oVw0Q+s
         nOJw==
X-Gm-Message-State: AOAM532iuqv3xs3u0qo5U7WD0R4KrW6TTfupiUc1Kq355n9cKULN4dhJ
        ZCqaUyKBa6zm32Biw8oxYHT3lA==
X-Google-Smtp-Source: ABdhPJw2r3QVd9qc44rIT86Cb/Gz6aXvVaQaubc7oCSkq1yyExPbVDNfjHCjgz1jdCiXkX7ulg+lPg==
X-Received: by 2002:a17:906:1e44:: with SMTP id i4mr12410533ejj.61.1619958044723;
        Sun, 02 May 2021 05:20:44 -0700 (PDT)
Received: from PackardBell (192038133011.mbb.telenor.dk. [192.38.133.11])
        by smtp.googlemail.com with ESMTPSA id b8sm9866238edu.41.2021.05.02.05.20.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 May 2021 05:20:44 -0700 (PDT)
Received: from localhost (PackardBell [local])
        by PackardBell (OpenSMTPD) with ESMTPA id 74b6daf4;
        Sun, 2 May 2021 12:20:32 +0000 (UTC)
From:   Bartosz Dudziak <bartosz.dudziak@snejp.pl>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Kathiravan T <kathirav@codeaurora.org>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Bartosz Dudziak <bartosz.dudziak@snejp.pl>
Subject: [PATCH 1/4] dt-bindings: soc: qcom: smd-rpm: Add MSM8226 compatible
Date:   Sun,  2 May 2021 14:20:24 +0200
Message-Id: <20210502122027.9351-2-bartosz.dudziak@snejp.pl>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210502122027.9351-1-bartosz.dudziak@snejp.pl>
References: <20210502122027.9351-1-bartosz.dudziak@snejp.pl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the dt-binding for the rpm on the Qualcomm MSM8226 SoC platform.

Signed-off-by: Bartosz Dudziak <bartosz.dudziak@snejp.pl>
---
 Documentation/devicetree/bindings/soc/qcom/qcom,smd-rpm.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,smd-rpm.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,smd-rpm.yaml
index 2684f22a1d..e6e4cb3d0d 100644
--- a/Documentation/devicetree/bindings/soc/qcom/qcom,smd-rpm.yaml
+++ b/Documentation/devicetree/bindings/soc/qcom/qcom,smd-rpm.yaml
@@ -32,6 +32,7 @@ properties:
     enum:
       - qcom,rpm-apq8084
       - qcom,rpm-ipq6018
+      - qcom,rpm-msm8226
       - qcom,rpm-msm8916
       - qcom,rpm-msm8974
       - qcom,rpm-msm8976
-- 
2.25.1

