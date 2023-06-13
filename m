Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 795AF72E4CF
	for <lists+devicetree@lfdr.de>; Tue, 13 Jun 2023 16:03:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242626AbjFMODQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Jun 2023 10:03:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57060 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242493AbjFMODN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Jun 2023 10:03:13 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3325E7A
        for <devicetree@vger.kernel.org>; Tue, 13 Jun 2023 07:03:11 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2b1bdfe51f8so79560561fa.0
        for <devicetree@vger.kernel.org>; Tue, 13 Jun 2023 07:03:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686664990; x=1689256990;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=X4gn37z49ZtWSh9ik86q07lLH6vDKJpjqwf/xsIE+Io=;
        b=sAeyVHLEgw1RgHR8KkIY0j3/eyzDX0PMYh9Nvx1mrM8VY9Z0R4e+08KpYNPfYQoezl
         oke8hnYcGEs9l1BgTRK9rZi0Il5B/sQdNDMB+oWvX2+up/SX+cQFW3QETSdcwmzsXNjg
         Byg+zvs9+UzueaWTsBOb37D65xJO5sS1ozwVpzc/OwbgB3v5H/iMoe662frJAhv2rWs2
         QdjMiz8wvLqlNoMiaczfMB69mCEecL5VEhw6d5RsvgCEdoE+u0egtxpzH+JZjMc/Nzxc
         3y034xacj4RTEF4skLv1oKlp+Qe0oC2iFxK0k/6M03vpS6QZ2MEspDDl2XGHWOySeBlc
         JP8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686664990; x=1689256990;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=X4gn37z49ZtWSh9ik86q07lLH6vDKJpjqwf/xsIE+Io=;
        b=eq9zNCzUUB63nuwYTpTCc9QC6P1gu/mtMtjkFrhfm/sNX7n8OvpGemUiY7Fz2og1wR
         5fnXCn4DurUWNGC9TMncxh5Zy34qwv0BbuZ+ylO13TSlwnNVgxTwYGm5+kHcGS6bs90h
         kcX9MCAc0X8gzrq0p9lVE7yCVj+BDBQITTsMRROl8Iu0uHPEWFRFMI1pXsZBjhsDn17p
         xK1/j5iAaHseg3275qfEFb3kCMvsNpfGkdqqF8hLJ8MPirDzjBS0yKLZ4Fc1L5Of+U/g
         erRj+rnyfnwHq+YkORJhKc26nHpXQEqpdQ8HLfK0h/OrwVYlu/NPr2w8yd+m4KWdan8h
         IvIQ==
X-Gm-Message-State: AC+VfDwoAKYc5cC2EgZcyhxpnE3EOPoiZCAlObKRgOtY+7l5ABRV33yS
        CIEdFqzoazydaer0xZSZBpxdtw==
X-Google-Smtp-Source: ACHHUZ6UbD/yDXGsozfeOBZXrAPGrdbVtYylAv8PC5AEjShyij0hpBKBTwBusLL1B7qgyZAYPTmhgA==
X-Received: by 2002:a2e:87d9:0:b0:2af:332e:3039 with SMTP id v25-20020a2e87d9000000b002af332e3039mr3233033ljj.11.1686664989878;
        Tue, 13 Jun 2023 07:03:09 -0700 (PDT)
Received: from [192.168.1.101] (abyj190.neoplus.adsl.tpnet.pl. [83.9.29.190])
        by smtp.gmail.com with ESMTPSA id a18-20020a05651c011200b002b32af2e9c6sm901490ljb.116.2023.06.13.07.03.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jun 2023 07:03:09 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Tue, 13 Jun 2023 16:03:01 +0200
Subject: [PATCH v4 01/22] dt-bindings: interconnect: Add Qcom RPM ICC
 bindings
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230526-topic-smd_icc-v4-1-5ba82b6fbba2@linaro.org>
References: <20230526-topic-smd_icc-v4-0-5ba82b6fbba2@linaro.org>
In-Reply-To: <20230526-topic-smd_icc-v4-0-5ba82b6fbba2@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Georgi Djakov <djakov@kernel.org>,
        Leo Yan <leo.yan@linaro.org>,
        Evan Green <evgreen@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1686664985; l=918;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=1W+eH+8wPS6dtSY8tNN5L1cSWMudrCjAT7V4K+wZK5I=;
 b=rjesZpqF257PaYkN1VaGHN0u0rlpZHMpF6ybJd/8YkQANrtWJk0948a8FJvkcIlYPn0M5ds7q
 YiWq0WZsUNwBZqc3E/x10a/Wsf4AhYWI7XLWxdygGb65d+3DfEGJH8U
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The SMD RPM interconnect driver requires different icc tags to the
RPMh driver. Add bindings to reflect that.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 include/dt-bindings/interconnect/qcom,rpm-icc.h | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/include/dt-bindings/interconnect/qcom,rpm-icc.h b/include/dt-bindings/interconnect/qcom,rpm-icc.h
new file mode 100644
index 000000000000..2cd56f91e5c5
--- /dev/null
+++ b/include/dt-bindings/interconnect/qcom,rpm-icc.h
@@ -0,0 +1,13 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/*
+ * Copyright (c) 2023, Linaro Limited
+ */
+
+#ifndef __DT_BINDINGS_INTERCONNECT_QCOM_RPM_ICC_H
+#define __DT_BINDINGS_INTERCONNECT_QCOM_RPM_ICC_H
+
+#define RPM_ACTIVE_TAG		(1 << 0)
+#define RPM_SLEEP_TAG		(1 << 1)
+#define RPM_ALWAYS_TAG		(RPM_ACTIVE_TAG | RPM_SLEEP_TAG)
+
+#endif

-- 
2.41.0

