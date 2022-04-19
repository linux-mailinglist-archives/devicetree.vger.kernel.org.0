Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7D65B50672C
	for <lists+devicetree@lfdr.de>; Tue, 19 Apr 2022 10:50:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345368AbiDSIw3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Apr 2022 04:52:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49906 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234883AbiDSIw2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Apr 2022 04:52:28 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BFAFCC11
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 01:49:46 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id u15so31392030ejf.11
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 01:49:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8hjrVDl8143wwwhBJylNC8I9SW8bq2v5T1Q4KEXRiCk=;
        b=qw7rBuuWcTzFpbcO9VjR1eEowEwsuDBKQlB9/YSTU16JWyHPaE3ijY7uJC+spRnM9N
         uqz0D0GYdA4hQTK+HE4PXeewf+B/XfUPux55VflUFRIpKcCxJrNgGZRh6EYNlRI15fsA
         hLiYh0sr1SoceH0EjmQRmEfInZIdgxNBronFIwrm8LkV29P9eTWXagBrElkJBUJ8KuID
         ECMpIUOqn15NSVAmTaa71U+DrwI/bnAPjMIvFDGpbTCXsGZNRHJINNYS4cOdRJZxYzqU
         6pZm4/vaKq3+uLWJJu7WmJcLnRtW33F3ZuujdC/4Kd8rhgjt7tSVYIPetNTv57/x1Rah
         rzIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8hjrVDl8143wwwhBJylNC8I9SW8bq2v5T1Q4KEXRiCk=;
        b=BxL6yvvlvHZIPFj8DB+Xl3rIsSgmRtows4KvJWyZ3ib0faNisJZ0FWKcOBmfiBaG1l
         o7GAZcgJC48kJEAwAS0BjdB6VZiGZEJu1dOPaYOoa5rjhqi+7312ETRHCRsz4of+1z0B
         WdXZDQsluAwBMq8lkLpVApZsJEUUwBk93WQlC09/e6vqzrqfqowSoBr0oVn59tqjHkha
         WlaivDnVNPv9g/qSb5YJCavdCTKSoFl0ZlGhqF6zSF+9NoKhvm/srCxnxCePiGhHaRrm
         90VExeMO/JK6fWKH4dk6IjTdVsYcV4jGG8wmTRcKDNK14mEWJp6Tmei11eSOaijGCrU7
         QOJg==
X-Gm-Message-State: AOAM530f1E8xHNtB/mvA+kiCm9Lwa0Nm7vp1fLZHW+sFzWKjUcHiBZZ5
        bRQwSPXIsIOvVsMKyebaO5KwQg==
X-Google-Smtp-Source: ABdhPJwdZJICXWTMB6+u5bWzIGXt+3wB9h6w5bbWDE/3ior9cp9XX39CB2+0iRJapCPcVAJOFUSVPA==
X-Received: by 2002:a17:907:3e11:b0:6e8:cccd:de80 with SMTP id hp17-20020a1709073e1100b006e8cccdde80mr10671241ejc.162.1650358185401;
        Tue, 19 Apr 2022 01:49:45 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id l21-20020a056402125500b004228541116esm6342072edw.28.2022.04.19.01.49.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Apr 2022 01:49:44 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] docs: dt: writing-schema: mention yamllint
Date:   Tue, 19 Apr 2022 10:49:42 +0200
Message-Id: <20220419084942.27409-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.32.0
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

The dtschema uses yamllint, if present, to check the syntax of the
files, so document this.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/writing-schema.rst | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/writing-schema.rst b/Documentation/devicetree/bindings/writing-schema.rst
index 2916edf829db..4a381d20f2b4 100644
--- a/Documentation/devicetree/bindings/writing-schema.rst
+++ b/Documentation/devicetree/bindings/writing-schema.rst
@@ -134,6 +134,8 @@ installed first. On Debian/Ubuntu systems::
 Several executables (dt-doc-validate, dt-mk-schema, dt-validate) will be
 installed. Ensure they are in your PATH (~/.local/bin by default).
 
+Recommended is also to install yamllint (used by dtschema when present).
+
 Running checks
 ~~~~~~~~~~~~~~
 
-- 
2.32.0

