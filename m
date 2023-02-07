Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7D43468D35E
	for <lists+devicetree@lfdr.de>; Tue,  7 Feb 2023 10:57:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231874AbjBGJ5s (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Feb 2023 04:57:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57592 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231866AbjBGJ50 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Feb 2023 04:57:26 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A0A610CE
        for <devicetree@vger.kernel.org>; Tue,  7 Feb 2023 01:56:46 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id n28-20020a05600c3b9c00b003ddca7a2bcbso10975290wms.3
        for <devicetree@vger.kernel.org>; Tue, 07 Feb 2023 01:56:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fjrreO/cdcWjaF0NqbiW3YouGZbLhGjexUtio5V0gjw=;
        b=Sjq7kVXQPYkZ5w3GDiFKGQld0ZlghHs4wtWm7Lr9qkfJA2FixfxmoBg9UFD58hhHtA
         K9Jw0fXpmXONpEZeSZD9Qz+mCVfvyThsnTfbS8kRzKknCaPYNPoqRgb5zbL6RQUt9Js8
         Ezf7Gw/YrlulMma4w2bzlpnGHwT4svcu0yTjHXH2wnV9GkfTO98JCo4sRdHgXpOeXUHn
         4ahX3HVHCn3KcRTGrkoREPmsO5xg1Iy3tZZ/0BhT9Rtr+ysr5bRuqlCdsCxEhMho/9zW
         4xozF5nEmgOdmsD6DNCenGCcfrDjaWSDEVDxf5fDDaQY82mSa8+6F1GgcLrwcoH8Y1sr
         L+Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fjrreO/cdcWjaF0NqbiW3YouGZbLhGjexUtio5V0gjw=;
        b=r0lERoRxtMjeh8aLgGd1R4zPw4DaEWwkbQZj6ItYQqlpFj3Ow6YP2t+dtNIbOtpeMZ
         kX79z7AM6BCxtI7cSFztmZKnVbU1hb89VjGKtidpoxV/i4CglRNwKUa/R0JpE9NpWqPH
         i1xStRBP4XN0K4V02LhYlKel/7n7QCXgQxs+UA3q04lXS5GPHEy+zXDYADBaAy2K5nYS
         hsw1ji867U2ugqXU7yPA9V/OqQCNMkiNTnj1CokxrbPZK7kHjM+EE3XXTAR3LMVzJx2j
         X64CzgTO4JLgGG7GJ+TiAGrYHTV4nyQ+Ctx12Nf16/oVPOscNwpVtXg8kx4LU7ua7kkE
         gWAg==
X-Gm-Message-State: AO0yUKUoVuM0A/4Tu/KpNapopI99ZpsAzsP1Ddvpbp4Cc/TDqGLIjTuj
        j3E5p6bo0zHjCRRvk0FxEL3KYQ==
X-Google-Smtp-Source: AK7set8fpr1RSVtOGTk19Fdkfj3vPfHbVIuNLTvlgJtHNgCUKF8iVPgpF6WhOdCfsd40QVdTUXDpVw==
X-Received: by 2002:a05:600c:4b1c:b0:3df:eb5d:c583 with SMTP id i28-20020a05600c4b1c00b003dfeb5dc583mr2551310wmp.17.1675763803385;
        Tue, 07 Feb 2023 01:56:43 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id u16-20020a05600c19d000b003dd1b00bd9asm14309860wmq.32.2023.02.07.01.56.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Feb 2023 01:56:43 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Jassi Brar <jassisinghbrar@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: mailbox: qcom,apcs-kpss-global: drop mbox-names from example
Date:   Tue,  7 Feb 2023 10:56:39 +0100
Message-Id: <20230207095639.36537-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
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

Qualcomm G-Link RPM edge bindings do not allow and do not use mbox-names
property.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

See:
https://lore.kernel.org/linux-arm-msm/20230207090852.28421-1-krzysztof.kozlowski@linaro.org/T/#t
---
 .../devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml       | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml b/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml
index 943f9472ae10..56b386b688b3 100644
--- a/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml
+++ b/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml
@@ -155,7 +155,6 @@ examples:
         interrupts = <GIC_SPI 168 IRQ_TYPE_EDGE_RISING>;
         qcom,rpm-msg-ram = <&rpm_msg_ram>;
         mboxes = <&apcs_glb 0>;
-        mbox-names = "rpm_hlos";
     };
 
   # Example apcs with qcs404
-- 
2.34.1

