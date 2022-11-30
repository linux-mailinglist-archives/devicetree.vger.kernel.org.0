Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 018E563D38C
	for <lists+devicetree@lfdr.de>; Wed, 30 Nov 2022 11:39:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235893AbiK3KjL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Nov 2022 05:39:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38996 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234583AbiK3KjK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Nov 2022 05:39:10 -0500
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com [IPv6:2607:f8b0:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 148F4186F5
        for <devicetree@vger.kernel.org>; Wed, 30 Nov 2022 02:39:06 -0800 (PST)
Received: by mail-pf1-x42c.google.com with SMTP id c15so7131443pfb.13
        for <devicetree@vger.kernel.org>; Wed, 30 Nov 2022 02:39:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Y5TAnhV54JmMi0M+JcoIlZnJVtXsKMSgKIgfzZmwhBE=;
        b=xCAXHrnKBUKuWBWElgpAn9CFuUXTJvPlXK35VTlGw4YyabwU12J4hL/JtohdbkbNnW
         CUc3KpwJRm1f6PSHTlTPHlQ4iJDxNK1hdVlw3moqA1N8n4A1IKF1IKDw9RCW6VNu0UDg
         q9FVa0+hAlDgPhhGYDaMhjJq3G8oRTl0p1Xtlx5GcjoDLkbrxD4T9a053walESLtBv1/
         X0b89ZlE/pvnEacH345A5bd26CQkt1s7w5jjC8vlumTzSuFeGjJVUWve9m9wZSa2Eo4G
         i0spvPna594JLyOg/ILGFdTf7j7PXBPbuttVtxA31vS2ES+bG0rzJmZ26ln0iegCQzDu
         S7Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Y5TAnhV54JmMi0M+JcoIlZnJVtXsKMSgKIgfzZmwhBE=;
        b=lVKNBT3WIvp3tqdbo80EcjSseVrSs2W9b0hfFL1z8McZPzgPfgjCezz4abQPmxqMXn
         SZ3DLMNjBorkDYJhNsvpw8mYjbvigpe4d2MXEGR7p9m3LSMKwnRD0HalsO0Bx7xkUp9z
         klFSSJk+/a/LEVsS8V/CThIEZEb011w+l2clOM6Kpa4BlIZbCeJmUIU2L3GHHzzrY6cN
         iQ/i5WlN8swpNI0GaPi47xMOhveZSjcgm0bSzli3/TBJW5gNFqbvodh02443nUNOqktB
         nMywsv7jX7qMXF5vYvAg8cFRDhN8tzuIfq029f4y1PmYS+abfz5HZRq0orWbF6M7GAIB
         p2Mg==
X-Gm-Message-State: ANoB5pnyvnAiuPB42R7r25aKyCJo/X+Xe9XCofdN6SVHcHT4hmJdoIjj
        mB4l/LZEVg4+XZNtE0zi+EISDA==
X-Google-Smtp-Source: AA0mqf67nbIwdSgA6lvIGSkye8gIPdOARrZHgHvR6JFbybvTwqYz1PgO9cPh+NAFypFoK8ehLWYNIQ==
X-Received: by 2002:a63:1a48:0:b0:477:786:f557 with SMTP id a8-20020a631a48000000b004770786f557mr36941225pgm.476.1669804745139;
        Wed, 30 Nov 2022 02:39:05 -0800 (PST)
Received: from localhost.localdomain ([2401:4900:1c5f:27a2:d13a:7614:addb:b29d])
        by smtp.gmail.com with ESMTPSA id b207-20020a621bd8000000b00562677968aesm1098012pfb.72.2022.11.30.02.39.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Nov 2022 02:39:04 -0800 (PST)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Cc:     agross@kernel.org, bhupesh.sharma@linaro.org,
        bhupesh.linux@gmail.com, linux-kernel@vger.kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski@linaro.org,
        djakov@kernel.org, konrad.dybcio@linaro.org, a39.skl@gmail.com,
        andersson@kernel.org
Subject: [PATCH 0/2] Add SM6115 interconnect support
Date:   Wed, 30 Nov 2022 16:08:39 +0530
Message-Id: <20221130103841.2266464-1-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
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

This patchset adds the support for interconnect provider found
on Qualcomm SM6115 and SM4250 SoCs.

The topology consists of several NoCs that are controlled by
a remote processor that collects the aggregated bandwidth for each
master-slave pairs.
 
Bhupesh Sharma (2):
  interconnect: qcom: Add SM6115 interconnect provider driver
  dt-bindings: interconnect: Add SM6115 DT bindings

 .../bindings/interconnect/qcom,sm6115.yaml    |  137 ++
 drivers/interconnect/qcom/Kconfig             |    9 +
 drivers/interconnect/qcom/Makefile            |    2 +
 drivers/interconnect/qcom/sm6115.c            | 1371 +++++++++++++++++
 .../dt-bindings/interconnect/qcom,sm6115.h    |  115 ++
 5 files changed, 1634 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/interconnect/qcom,sm6115.yaml
 create mode 100644 drivers/interconnect/qcom/sm6115.c
 create mode 100644 include/dt-bindings/interconnect/qcom,sm6115.h

-- 
2.38.1

