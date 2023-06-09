Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 57552729C33
	for <lists+devicetree@lfdr.de>; Fri,  9 Jun 2023 16:07:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239940AbjFIOG6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jun 2023 10:06:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35814 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239717AbjFIOG5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jun 2023 10:06:57 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 006283585
        for <devicetree@vger.kernel.org>; Fri,  9 Jun 2023 07:06:55 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-51478f6106cso3103725a12.1
        for <devicetree@vger.kernel.org>; Fri, 09 Jun 2023 07:06:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686319614; x=1688911614;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8ez83xrnUgbw0MAP7/4bHfz4IcI1smRL2ein9QCNd6Q=;
        b=MWLzBqFecgIKNf1kgPAbYdebxEuEwkAqBZ/e49ZS5gOtgYOKtpD8LQ66Vnv9LPxiJF
         Mo9RX6D+aYNPiN9nEWemYZ6fCyB7Hqdx00XbM3YtyU6iX6l3saQ6vFZCasD2zN5AKmli
         wHWkF3yxP8aqdzkMYYz+zxRIdZFMgMBPLMI99CLY3WSQOqFCjvgSoqxOo2E9jPdueDAg
         TdG04blH0/lMwU9GRTQpsDIE+hyW/ePw7XJHVgV4b9z3jvWj6PpTE/AN2OPP1MMFGs/H
         qFE96ooOh70XorMN5d40jzSzZRDM+LU0W+0oU8GvzDStCIxJHYaW9lHRgC3vDieyK1lT
         sqkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686319614; x=1688911614;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8ez83xrnUgbw0MAP7/4bHfz4IcI1smRL2ein9QCNd6Q=;
        b=iuVoNvDNBhOPgudMcHTcveZYjAPAI4SFKoR3MqOAHePsBpt9XT9mjyxB4yJ9JsM8AS
         h/xwQLfgUKpxDucDig5jCoiUhymNxeZWhoZKQ+0mIZHg5nK/1gSkGTl1hNCVIqTDfprH
         QKHOXnnKJLfCJ1NckRsSY5MJodocbpDlhAkBOp6In6kK6I66+CXmtstAaIzDHZ7/Za+P
         90W177uDMBypKMlIqIP1KYxe2R2Y/bctPjWEtyJ1MJSZhIlyMRm1QpujlBXLc/T/2Vbs
         fwbNs6t0vyeREOO5cwsTs6yjv83UjZT3d/4Q/u2K9LrOzc0iCsubS/f2MnpW0G9fGx4e
         +JNQ==
X-Gm-Message-State: AC+VfDyLJxy/76sTTm9EhcrzSCuQqy0tG+gdoObwRxC60CD5B2U7I2sG
        917f4zdLRJdVcvHbgRRDtoc5Zg==
X-Google-Smtp-Source: ACHHUZ6eNQSN6PIFn6NAH6sD5EEzqacvW4Z3scV2BWSPG/097RqqphuqnMSNGCi9/N3LutXcW3LILw==
X-Received: by 2002:a17:907:2d06:b0:973:da59:7c91 with SMTP id gs6-20020a1709072d0600b00973da597c91mr2053621ejc.51.1686319614494;
        Fri, 09 Jun 2023 07:06:54 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id kf10-20020a17090776ca00b00965f6ad266bsm1307695ejc.119.2023.06.09.07.06.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jun 2023 07:06:54 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-scsi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: ufs: samsung,exynos: drop unneeded quotes
Date:   Fri,  9 Jun 2023 16:06:51 +0200
Message-Id: <20230609140651.64488-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Cleanup bindings dropping unneeded quotes. Once all these are fixed,
checking for this can be enabled in yamllint.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml b/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml
index a9988798898d..88cc1e3a0c88 100644
--- a/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml
+++ b/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml
@@ -54,7 +54,7 @@ properties:
     const: ufs-phy
 
   samsung,sysreg:
-    $ref: '/schemas/types.yaml#/definitions/phandle-array'
+    $ref: /schemas/types.yaml#/definitions/phandle-array
     description: Should be phandle/offset pair. The phandle to the syscon node
                  which indicates the FSYSx sysreg interface and the offset of
                  the control register for UFS io coherency setting.
-- 
2.34.1

