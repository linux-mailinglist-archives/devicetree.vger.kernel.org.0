Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 23EB7472288
	for <lists+devicetree@lfdr.de>; Mon, 13 Dec 2021 09:27:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232907AbhLMI1W (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Dec 2021 03:27:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38182 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231530AbhLMI1P (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Dec 2021 03:27:15 -0500
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 173C6C061751
        for <devicetree@vger.kernel.org>; Mon, 13 Dec 2021 00:27:14 -0800 (PST)
Received: by mail-ed1-x533.google.com with SMTP id l25so49770488eda.11
        for <devicetree@vger.kernel.org>; Mon, 13 Dec 2021 00:27:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=nx2k/Z7zXaHDEmILWiW6Gfo7Sovd555lCUGQrDZv1B4=;
        b=GRizKnCZzX4XIZWXwe1fB83XbndD7/QihySjOEbyZNuabUOz8HGjbO+wfgwY0T16MV
         UR7gF8NbIMN04a8DE+abCipUbDfVk+cvGE3tCAmJYcDR2AUFdhJwF+la0FSUzwpMdfQ1
         cExq2O1ZjjpDvVp1K+KBAHwpFiXJPqlXlp2n7C65pA6PbteyusrOQVWqfouq5tB1eavk
         j9E0KbXJBWuunFZ7gs8KRq+8ycrVk0WjDQ54nMPjcdblsxlSrq+WrBffeCIjwVAsXyQR
         vjgTLQKqc3LUVO8DdXKmHB3HmWUTcba1umhWqCN8PWs5p07eQVxamcRNPXH+V2ahe82/
         xf8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=nx2k/Z7zXaHDEmILWiW6Gfo7Sovd555lCUGQrDZv1B4=;
        b=GTs7mvtzMwBhaHUUBmqclaoRCca/+GlcFtM1ya53UGyQ5b75zNauP4bmGMvO6fUOd5
         1Gv+id0hT3rEMSBsCAPYceaLCbyf1JpnmVCLlAPr514bQ4pLCN3jDpJ8NnYnHN8Mz++R
         jpqcUDKw59s5E9yZv5LGdn0H7WYLPjTr3tkiUnMwCy+MC15LBlsSrNjPanzEKka9501M
         62WXwzA36mAKTK3jUrztw98E5YxzFPMeXFHaiqgKIGeeaid5XnX4uBLXcdZfc/41PBK5
         y8c7w8rErWC6cSwyNZKFkl4Rc0tPlUawZGyZFCKDHy8JKpdtBqzUdw2D1CuaUQG/inIQ
         3W/g==
X-Gm-Message-State: AOAM531WDiTZFp+9pzvS11KKa/z2d25nSm5I5m9kHHmtGnw2CQZTW2hq
        lbMjhF1ZnQJSaCY04TpsIIz33A==
X-Google-Smtp-Source: ABdhPJwc8O3GyxL3m5uw07gi57MsjGEjsBsmLY/+KmZbUmFN/YdDjU9HlK6mY71lXx8b9isj79j5RA==
X-Received: by 2002:aa7:dad5:: with SMTP id x21mr61383134eds.280.1639384032749;
        Mon, 13 Dec 2021 00:27:12 -0800 (PST)
Received: from localhost.localdomain ([2a02:a210:20c5:8c80:7d0a:cd68:c339:f426])
        by smtp.gmail.com with ESMTPSA id b11sm6062432ede.62.2021.12.13.00.27.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Dec 2021 00:27:12 -0800 (PST)
From:   Luca Weiss <luca.weiss@fairphone.com>
To:     linux-arm-msm@vger.kernel.org
Cc:     ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Luca Weiss <luca.weiss@fairphone.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 02/10] dt-bindings: firmware: scm: Add SM6350 compatible
Date:   Mon, 13 Dec 2021 09:26:03 +0100
Message-Id: <20211213082614.22651-3-luca.weiss@fairphone.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20211213082614.22651-1-luca.weiss@fairphone.com>
References: <20211213082614.22651-1-luca.weiss@fairphone.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add devicetree compatible for SCM on SM6350 SoC.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/firmware/qcom,scm.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/firmware/qcom,scm.txt b/Documentation/devicetree/bindings/firmware/qcom,scm.txt
index d7e3cda8924e..1fc14f64e318 100644
--- a/Documentation/devicetree/bindings/firmware/qcom,scm.txt
+++ b/Documentation/devicetree/bindings/firmware/qcom,scm.txt
@@ -26,6 +26,7 @@ Required properties:
  * "qcom,scm-sc7280"
  * "qcom,scm-sdm845"
  * "qcom,scm-sdx55"
+ * "qcom,scm-sm6350"
  * "qcom,scm-sm8150"
  * "qcom,scm-sm8250"
  * "qcom,scm-sm8350"
-- 
2.34.1

