Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C298278859F
	for <lists+devicetree@lfdr.de>; Fri, 25 Aug 2023 13:27:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242347AbjHYL11 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Aug 2023 07:27:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39158 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243593AbjHYL1M (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Aug 2023 07:27:12 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84F4C2132
        for <devicetree@vger.kernel.org>; Fri, 25 Aug 2023 04:27:04 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-4fe8c16c1b4so1171984e87.2
        for <devicetree@vger.kernel.org>; Fri, 25 Aug 2023 04:27:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692962822; x=1693567622;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n+9eN3gR+CUM+pLHEOpqCBIIuUT/RXYCUei4ERSIbPo=;
        b=hKE4ea2HSPu65yisIIPMz2/1VzWjOx5aJKZQ/fA+myKcvOLqa8Enzsy3DU+cCc7Xpn
         e49QlnnH4FqM+dlN5rpBjfvSit1bim8BjTpGcNXBji6TSPEwGuogVt0U+728zdBBXgpK
         hpetPsAGaPS/6eCZAYs2NSx01fG4MrAs2m+/94ACUz+AI/7nH4GKij5AjlFl2vtBz0nX
         KJyvMrjsVF/zmmaTBoJfbtmER9mYJihrJ8jsOTNNBrJK6E4Prn7t5JmZFeYfhxeuWdLB
         uSg1O/o49HM+D2YuMWQOWCF563ZESYNXy/H0iDCFRmI830exfV+GYWT02vmqIqqBNhjq
         KM2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692962822; x=1693567622;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n+9eN3gR+CUM+pLHEOpqCBIIuUT/RXYCUei4ERSIbPo=;
        b=ICQCbaMGyA+TuKC1T0+G//rgSzEwgtIgxkuMcoE751aAQvAfomCiCA58QtGy1fsWQt
         mqu1CjcUP0sQO9+hpMkWfZ0CYxRHkVZZgSWvukK4mTCbAhJ+GmeSXkxHgcRlXI85s1Q0
         OBK3JNseeOGU4JM8m/f6tPbuCVgOJHo7ehkBLbf/YwxrqmDmIZ6Lyer9BoUl+YMgqDEe
         lLFx9Cv6d6sDklegn5Sp2lUhCwUi03hKz+yT8ic0MglxJv3deVV0vus3SMoNSoQZPS5r
         dP/9VCc6aY9DNcFDq6IYns+hQD8M2BV5TMP1W99RSTOB8nYx8ndtI+KZkU8xPK4i2HMK
         QZJg==
X-Gm-Message-State: AOJu0YxYy+436dLfLy1gcFFNnXtUJIT5JmWBeh2HY/V9WrLVajKcpZhf
        NYBLh1FtP0mdfmKHOhzT5nqV/g==
X-Google-Smtp-Source: AGHT+IF5i2oUbA2HPzMIGWZSMwOu5ZOSjNDNLrf7hF3PpBjfjEY88aNiG8F2kG9BClqhxQrgAJ+FWQ==
X-Received: by 2002:a05:6512:2347:b0:4ff:8f71:9713 with SMTP id p7-20020a056512234700b004ff8f719713mr15734934lfu.42.1692962822735;
        Fri, 25 Aug 2023 04:27:02 -0700 (PDT)
Received: from uffe-tuxpro14.. (h-94-254-63-18.NA.cust.bahnhof.se. [94.254.63.18])
        by smtp.gmail.com with ESMTPSA id g7-20020ac25387000000b004fb7ac67bbdsm259164lfh.41.2023.08.25.04.27.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Aug 2023 04:27:02 -0700 (PDT)
From:   Ulf Hansson <ulf.hansson@linaro.org>
To:     Sudeep Holla <sudeep.holla@arm.com>,
        Cristian Marussi <cristian.marussi@arm.com>,
        Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>
Cc:     Nikunj Kela <nkela@quicinc.com>,
        Prasad Sodagudi <psodagud@quicinc.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Ulf Hansson <ulf.hansson@linaro.org>, linux-pm@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH v3 08/13] dt-bindings: arm: cpus: Add a power-domain-name for a performance-domain
Date:   Fri, 25 Aug 2023 13:26:28 +0200
Message-Id: <20230825112633.236607-9-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230825112633.236607-1-ulf.hansson@linaro.org>
References: <20230825112633.236607-1-ulf.hansson@linaro.org>
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

When an CPU's performance domain is managed through the SCMI firmware,
let's enable us describe this as a consumer of a power-domain provider,
which is the de-facto standard to use for performance domains. In this
case, let's specify a corresponding power-domain-name, to point out the
corresponding index for it.

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---

Changes in v3:
	- New patch.

---
 Documentation/devicetree/bindings/arm/cpus.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/cpus.yaml b/Documentation/devicetree/bindings/arm/cpus.yaml
index 9e6a45eea4e5..d51e6250d6e3 100644
--- a/Documentation/devicetree/bindings/arm/cpus.yaml
+++ b/Documentation/devicetree/bindings/arm/cpus.yaml
@@ -305,7 +305,9 @@ properties:
       power-domains property.
 
       For PSCI based platforms, the name corresponding to the index of the PSCI
-      PM domain provider, must be "psci".
+      PM domain provider, must be "psci". For SCMI based platforms, the name
+      corresponding to the index of an SCMI performance domain provider, must be
+      "perf".
 
   qcom,saw:
     $ref: /schemas/types.yaml#/definitions/phandle
-- 
2.34.1

