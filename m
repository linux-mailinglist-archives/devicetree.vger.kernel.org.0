Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 34C7E680C06
	for <lists+devicetree@lfdr.de>; Mon, 30 Jan 2023 12:32:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236137AbjA3LcY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Jan 2023 06:32:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37442 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236652AbjA3LcF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Jan 2023 06:32:05 -0500
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD91C34C27
        for <devicetree@vger.kernel.org>; Mon, 30 Jan 2023 03:31:55 -0800 (PST)
Received: by mail-ej1-x62a.google.com with SMTP id me3so30770316ejb.7
        for <devicetree@vger.kernel.org>; Mon, 30 Jan 2023 03:31:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4YbWf65lg2cQpgfmV5inxaJ+xw++SwQJT+M7eoK5F4Q=;
        b=x6p8Wts7qSiLZarPrBkLp0wV/Ji/Izq6x9YUDQ+t2ydvkeNyAAcwooP/s5sxdbXTJZ
         QfAhnkLD5xXVNOmoQPxXZQhRvOxyDefu9UfCdXDPdsQxFwgN7nYp5rOnrHmQubeU0Wz7
         eK8nt31Y79kCDI/WUOlpVbVLKhY/A31MF9kIPCvHzXEuKzigl5N+HTdSbOTO3jVO9UrJ
         rvIPF4HY1xI8S88pNf/hGoRybHV6Gnw15MGvIukhgOTviXWV+h9ZyCkIvMDsOCHhPSaF
         l8IGOlFeqnLzxwf6O4+j4feBX2xVOR+1HMOBCCcBzWUZeSdWFXNCW1cUaYH9u8txG47Z
         Bvaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4YbWf65lg2cQpgfmV5inxaJ+xw++SwQJT+M7eoK5F4Q=;
        b=7Wh365DYLaKW6CVUNpSF1WB7hsnv/F1gED7dSVcRZT8nvPgSk9Zks+RySAcq1IGYXC
         TQTBKnnsU0c59I2UjyWkEHSp6JiFmDo9lQ/34+Rk54t6nI8wapYeaSSNV82gIOnAJT/X
         JqKpDSF7jr31f3Iux+Y0I48QkYbR/vjSpihBv33TO01Ugq7Ng89Jlj+t6vE+UUNnFLoS
         NdoBpJBPG3TzQt/o5TJeXv4wKSEcp9M9rOO3k+wkcCMozQzAdJn85cwAkDgYxuQ18LZg
         DBhHxDmB0kYj/DHlVrfUmgDQGjJLZL/pFiLWGK0GQwiQnkE+1RpVL+JG0IgtnkdiR60+
         ev2Q==
X-Gm-Message-State: AFqh2koX4XljQDmO7AkACEg5O4yquH9RJJ6nUWXNgAhm8UxuXMvJrm03
        qJN9Ltiwms5KzKEex2od40Ua/w==
X-Google-Smtp-Source: AMrXdXtOvcr+SFVypdszhnnG8chKGR68qAsLVWoEYFnrJOTeUx1xaP+iDHtDb/nHwypYGL0jd/mnXQ==
X-Received: by 2002:a17:907:7e9c:b0:84d:363c:888b with SMTP id qb28-20020a1709077e9c00b0084d363c888bmr64669724ejc.58.1675078314495;
        Mon, 30 Jan 2023 03:31:54 -0800 (PST)
Received: from localhost.localdomain (abyl20.neoplus.adsl.tpnet.pl. [83.9.31.20])
        by smtp.gmail.com with ESMTPSA id w5-20020a1709061f0500b0086a2e31d1c1sm6703356ejj.28.2023.01.30.03.31.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Jan 2023 03:31:53 -0800 (PST)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
To:     linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org, krzysztof.kozlowski@linaro.org
Cc:     marijn.suijten@somainline.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: usb: fsa4480: Use generic node name
Date:   Mon, 30 Jan 2023 12:31:50 +0100
Message-Id: <20230130113151.2130063-1-konrad.dybcio@linaro.org>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Node names should be generic. Change fsa4480@ to typec-mux@.

Fixes: 01afa882f12d ("dt-bindings: usb: Add binding for fcs,fsa4480")
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 Documentation/devicetree/bindings/usb/fcs,fsa4480.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/usb/fcs,fsa4480.yaml b/Documentation/devicetree/bindings/usb/fcs,fsa4480.yaml
index 9473f26b0621..51120fe90322 100644
--- a/Documentation/devicetree/bindings/usb/fcs,fsa4480.yaml
+++ b/Documentation/devicetree/bindings/usb/fcs,fsa4480.yaml
@@ -51,7 +51,7 @@ examples:
         #address-cells = <1>;
         #size-cells = <0>;
 
-        fsa4480@42 {
+        typec-mux@42 {
           compatible = "fcs,fsa4480";
           reg = <0x42>;
 
-- 
2.39.1

