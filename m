Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6F4CB6B1699
	for <lists+devicetree@lfdr.de>; Thu,  9 Mar 2023 00:38:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230107AbjCHXia (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Mar 2023 18:38:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37280 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229910AbjCHXi1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Mar 2023 18:38:27 -0500
Received: from mail-oa1-x2a.google.com (mail-oa1-x2a.google.com [IPv6:2001:4860:4864:20::2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F0A1F58490
        for <devicetree@vger.kernel.org>; Wed,  8 Mar 2023 15:38:25 -0800 (PST)
Received: by mail-oa1-x2a.google.com with SMTP id 586e51a60fabf-176e43eb199so544325fac.7
        for <devicetree@vger.kernel.org>; Wed, 08 Mar 2023 15:38:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678318705;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uJnVP86v80cE19P+pF4Y6ZPg1z52ptg2NHYCv/S3Tvs=;
        b=BuQWA5ZBBgtF0cM2MPdV6GoZdjhlbq7bInCPFh7dUmCH8qXz21Any7rCTd4RtTnZrZ
         +/FSoZ+ADeQEBPdIiiDNC5z3WszOLoATv05XbvlMg6YZHC87w/j5dSjE31s/WY7jFnNV
         UOGDkhxTHOJBlNec4dDO5kqngzyV18cq78OvekxCsdJFzpadxWgoW10QmTjmvJ6QtY3w
         yIfsWQXzihe60eNVRnU70ImysdTbjtGlihxLAuuZ58CSITGoDG0LUNEeqCA1+WMss9Ot
         cSMj3v6I3nkvco9lI3uYaPpUORJz7KHvjTCcwRXQ+BfO6SpDaS5rqPWerNCxG2aayIWy
         wJ0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678318705;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uJnVP86v80cE19P+pF4Y6ZPg1z52ptg2NHYCv/S3Tvs=;
        b=GAKzebF612guSS33Qc/UPytwHEihMMsmCES+Mrv/GVfgkmSo3xykUQJSMYYK1clSfB
         S7jB/dthr/+kHstW2agX9VEhTQWiiLl6U3GvCEDziN1yviHKRn5g4nO8Y9VlxQ65uPIG
         oVbshEKPuCQ/CsEM+OQcHgrF777aMie3fKq80wcpT5UJVY23HUlqD3Pjji9AFce3RcTu
         xutWOtxmPfvOYdhywKcb+1829jtoHzDKhxLio0fB105BkFg5fDOJ8eyAMQHL0JIkV2hq
         QPLQ/u59+I1gGXNn/7vuRSA+0B/F4EZCBBGwMeT1M9nPeSMOL5k5hz2mdVfnpxJYRmpu
         a/xQ==
X-Gm-Message-State: AO0yUKWf4hdS75zalOOcGEd1rEq1eiK/OD7cov9L7A5+sbuyShpy+JxT
        Dya1a8hH/+UEUUdYvfuRR4WWLQ==
X-Google-Smtp-Source: AK7set9ZbuWP9DuATT4yEuGAADPyzGBQZ4BihOLgSjpwiz9NxVFYJNvWYIGSR4vMf1RR4+WAwozzYg==
X-Received: by 2002:a05:6871:708:b0:176:2486:16fb with SMTP id f8-20020a056871070800b00176248616fbmr14787743oap.7.1678318705262;
        Wed, 08 Mar 2023 15:38:25 -0800 (PST)
Received: from localhost ([136.49.140.41])
        by smtp.gmail.com with ESMTPSA id dy39-20020a056870c7a700b001763897690csm6807207oab.1.2023.03.08.15.38.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Mar 2023 15:38:24 -0800 (PST)
From:   Sam Protsenko <semen.protsenko@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>
Cc:     Marek Szyprowski <m.szyprowski@samsung.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Chanho Park <chanho61.park@samsung.com>,
        David Virag <virag.david003@gmail.com>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 1/7] dt-bindings: clock: exynos850: Add power-domains property
Date:   Wed,  8 Mar 2023 17:38:16 -0600
Message-Id: <20230308233822.31180-2-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230308233822.31180-1-semen.protsenko@linaro.org>
References: <20230308233822.31180-1-semen.protsenko@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document power-domains property in Exynos850 clock controller.

Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
---
 .../devicetree/bindings/clock/samsung,exynos850-clock.yaml     | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/samsung,exynos850-clock.yaml b/Documentation/devicetree/bindings/clock/samsung,exynos850-clock.yaml
index 8aa87b8c1b33..cc1e9173b272 100644
--- a/Documentation/devicetree/bindings/clock/samsung,exynos850-clock.yaml
+++ b/Documentation/devicetree/bindings/clock/samsung,exynos850-clock.yaml
@@ -54,6 +54,9 @@ properties:
   "#clock-cells":
     const: 1
 
+  power-domains:
+    maxItems: 1
+
   reg:
     maxItems: 1
 
-- 
2.39.2

