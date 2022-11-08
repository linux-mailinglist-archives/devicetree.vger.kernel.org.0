Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5F2E3620829
	for <lists+devicetree@lfdr.de>; Tue,  8 Nov 2022 05:15:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232838AbiKHEPs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Nov 2022 23:15:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44604 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233358AbiKHEPJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Nov 2022 23:15:09 -0500
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com [IPv6:2607:f8b0:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A6009326E0
        for <devicetree@vger.kernel.org>; Mon,  7 Nov 2022 20:15:08 -0800 (PST)
Received: by mail-pg1-x531.google.com with SMTP id f63so12368277pgc.2
        for <devicetree@vger.kernel.org>; Mon, 07 Nov 2022 20:15:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/qVOEvkyYaZx4zfNA7ja9/Y1cc6/CGlvhh8eaDdH7L4=;
        b=eBg3VeRby4Wie387PjhdCc3k5Sr+wlVZ2Trr65u5jIwnychaNKQPim70TLoVes8NJU
         BCTnvay5/9zsKMyyHN2tPLnXsh0i5g+h92VZx7HtaCo2aDOhVF+wv+tCEHL4I4IB9F2d
         ZJYIHHPjOTuvuacMmM+HrRqwNCMInxfqjAuyFIHpGTE0qy2w4iw2uqfd3TNS8B2Lq9B8
         9/uU+CDmBDwU4sVnxInOb4YOVFoAcVThKXN4T6QAG/ircDYdooNf8WYpHFiHzVxskAWH
         Y0W/yQ55lYDfpuawxenB/dzeeVMnOL+YuCKhIRxSfq1X4rorlVUbDMAeOyy8yRLXi9aH
         uHyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/qVOEvkyYaZx4zfNA7ja9/Y1cc6/CGlvhh8eaDdH7L4=;
        b=wMuh366gYnylXmxQwxBKG8C78AbPzh9M/y3ciLvpPIdX3jRnTW3yMJk8R5SfJgp2Cm
         q1c7FNwriu88B33+VZN4nIXvmupuPZC1Mb4NpNtJ9qXj1Vxpgk/cwFEnl42Od4W0KiZP
         EE/A/kqw8Sh04fE2i2KAKG+x+B1X2aWac+qZhJZtKarz0UwEdQsAGZM5E0l0yUbr40YK
         /99oh3gOcAi1AS5qf+lrs5bPtnOeGcYfEdxiuXyF8iEUiGlEZT3MRApWlGIM+Vsnh3Yn
         akhN2j4zX84J4lTPksCzBZ8z6oOHT4Z/9aEf+AkuMfrHKeOu3JWYcwpgDg3oLQrev0dU
         tlMA==
X-Gm-Message-State: ACrzQf3+QRjYOcAYuUlL+LVASnYcPY3nsUtsRifnKmbLnZD5iZwL4tyS
        weDfbLLysnexEAHHl5i6N7USGQ==
X-Google-Smtp-Source: AMsMyM4tZbWmhnBnQXqvt/O2B2Gr/a3wwoWIhf8Ts3ytZrzf6J4iXteF1Rjg8z3GXky9VrAmy114gw==
X-Received: by 2002:a63:5d0b:0:b0:464:bb2b:9b0e with SMTP id r11-20020a635d0b000000b00464bb2b9b0emr45177669pgb.583.1667880908228;
        Mon, 07 Nov 2022 20:15:08 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a809:63d1:2564:ea55:4e97])
        by smtp.gmail.com with ESMTPSA id e5-20020a170902b78500b00186ac812ab0sm5799783pls.83.2022.11.07.20.15.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Nov 2022 20:15:08 -0800 (PST)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Johan Jonker <jbx6244@gmail.com>,
        Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh@kernel.org>
Subject: [PATCH v7 07/10] dt-bindings: vendor-prefixes: Add Edgeble AI Technologies Pvt. Ltd.
Date:   Tue,  8 Nov 2022 09:43:57 +0530
Message-Id: <20221108041400.157052-8-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221108041400.157052-1-jagan@edgeble.ai>
References: <20221108041400.157052-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Edgeble AI is an Artificial Intelligence company with a focus on
deploying Neural Acceleration principles at the Edge.

Add vendor prefix for it.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v7, v6:
- none

 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index c601f5438b02..dfc071548e91 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -370,6 +370,8 @@ patternProperties:
     description: EBV Elektronik
   "^eckelmann,.*":
     description: Eckelmann AG
+  "^edgeble,.*":
+    description: Edgeble AI Technologies Pvt. Ltd.
   "^edimax,.*":
     description: EDIMAX Technology Co., Ltd
   "^edt,.*":
-- 
2.25.1

