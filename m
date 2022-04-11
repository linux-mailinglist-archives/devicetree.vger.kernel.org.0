Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E30CC4FBA71
	for <lists+devicetree@lfdr.de>; Mon, 11 Apr 2022 13:03:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244618AbiDKLFM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Apr 2022 07:05:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58376 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235820AbiDKLFL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Apr 2022 07:05:11 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BAC5443E0
        for <devicetree@vger.kernel.org>; Mon, 11 Apr 2022 04:02:57 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id r13so30086317ejd.5
        for <devicetree@vger.kernel.org>; Mon, 11 Apr 2022 04:02:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NrhjMPDWVMpnH0vGXH4JML8AsEUrRppRhTIbZkMHMtg=;
        b=q1AEI5QMqWZueRnKCNAHimfoWg6UCP9Lk1hEQEEaN2ub7v0Eajkt0P2lExv6gx/IEX
         AH3uYloLfAb8KySJP4wayKgaeRV8eqAjlsxzVSFpV/nPl4Bd9HEc3vaBa513BlsAcJvM
         SeJlsBUJsXCKWgoT8OhDcfybWtY8ix2Da9fUm/KXudI3nq2Kp4+5Vo7Jp/B3OpKAA8iz
         s3/q/u/itZS9+slHeFvkO7BaC+I85xtSx3g5bpunXKchMaSF3eTq7m9OhcXdfH65d14c
         LCLGU2RxHE2z0nCFXgnNdn/euRRLNjES3fBvFBIpuXazsk+JtjkQKSCS1FonVuLH3s3Z
         4g2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NrhjMPDWVMpnH0vGXH4JML8AsEUrRppRhTIbZkMHMtg=;
        b=tMB3qa3tm19YlNOFugH8ADDyRN3HPwjjBj4k27HIF35fSiUjyhHVP3KkJZsI3B6+j9
         6CXJW8NvVLK9iJ0J6JOUCLb0uFhaYrST2sH6+HXPdXDTEnEEpjekakezh/O6ci4agXWi
         w4F6y8gZeYzCOGx4gbcyMofkR/TgSn+4WKW4/lnrdeqbi5BRJ5k4oe+N69W6MnDs2J/K
         lbB4HZZ0nnO7TRX414gYHG3ewnNZW62tOr5+dAnpySJbLrzluLb0Fc9MIIiBSS4Ckcru
         FhpV8dorg1mId/JL+ev21+y4RVQCIeNqonBfAzDAP62CZ6EhEVwVVqQ1T/kevLON1y97
         zS8A==
X-Gm-Message-State: AOAM532gBZGsrg3+GivnKG0BvER32tWSTHCCL/ZYgz8iRczpAyckTTQ0
        zep6qUrk4qYaHZkKXKk7JMpikg==
X-Google-Smtp-Source: ABdhPJzs5WUk5RcgDGjmx05qg1LQX8CHENqcYVHEYQ8+118ck5dW3vjDXr/APWGQaUFxBkmhW0L6cQ==
X-Received: by 2002:a17:906:4795:b0:6e8:7121:3c80 with SMTP id cw21-20020a170906479500b006e871213c80mr9235700ejc.352.1649674976100;
        Mon, 11 Apr 2022 04:02:56 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id fq6-20020a1709069d8600b006e891c0b7e0sm1231664ejc.129.2022.04.11.04.02.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Apr 2022 04:02:55 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] regulator: dt-bindings: qcom,rpmh: update maintainers
Date:   Mon, 11 Apr 2022 13:02:53 +0200
Message-Id: <20220411110253.231745-1-krzysztof.kozlowski@linaro.org>
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

David Collins' email bounces ("Recipient address rejected: undeliverable
address: No such user here").

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/regulator/qcom,rpmh-regulator.yaml     | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml b/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
index 2714a790ff83..842ccef691b8 100644
--- a/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
@@ -7,7 +7,8 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Qualcomm Technologies, Inc. RPMh Regulators
 
 maintainers:
-  - David Collins <collinsd@codeaurora.org>
+  - Bjorn Andersson <bjorn.andersson@linaro.org>
+  - Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
 
 description: |
     rpmh-regulator devices support PMIC regulator management via the Voltage
-- 
2.32.0

