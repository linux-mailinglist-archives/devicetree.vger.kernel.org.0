Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0D236687F29
	for <lists+devicetree@lfdr.de>; Thu,  2 Feb 2023 14:50:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231916AbjBBNuv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Feb 2023 08:50:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46164 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229726AbjBBNus (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Feb 2023 08:50:48 -0500
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 356906B36E
        for <devicetree@vger.kernel.org>; Thu,  2 Feb 2023 05:50:47 -0800 (PST)
Received: by mail-ed1-x52b.google.com with SMTP id v10so2046797edi.8
        for <devicetree@vger.kernel.org>; Thu, 02 Feb 2023 05:50:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/cQTcEdA6/1Tvp2AynCxy/uYQRIV6AL4re0IqB5Qt5w=;
        b=q2p+aqMwep7goH8XKy/1HZBVPqr6+tPfkQ5inItLuxRzmlUfO2MERmh5RVwUdTfyBJ
         WN6ToyC/EDVEIMZqGOiuyM1yAmloJhlx/f2sC6hOvNbbUsM55fRF8oIQ+XfUIoWN2KwG
         WPh7ORmd8iO2LU/81USWb1v3KWw1Zax8vVQiNkQhyjeHdTkKeRNA/tzPqJ/M5NR4C9L4
         +bAjkBij6SKUon5MhUg2lwrHdWQScJ19t9O8FSGKXLeS+PbJdKRSUnTyfnywPsgcJLRI
         RxH++wVs1n9pbMBypMJ4TJANh80Wqc716s3G+1wZNaGElyKdfw1pKlThQSrwq8qvkoQU
         /4Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/cQTcEdA6/1Tvp2AynCxy/uYQRIV6AL4re0IqB5Qt5w=;
        b=AlLsfu6e1GE2aEwJB4+tvf7/XzmCrPDYUvDYkR9bEuQk3xy9f7tkJi4Io4GECuT0qZ
         QL9pvczRZBWDQy+i7IRFf9fWNyh24yrAHmA7UImvqPbuTtaZEOy+iO5IiCu6IkFhDUKA
         ixI1NtyuoegRrncoevS8ts4BAps09e5xfj5llXvUL3fH6hTdmsARH9pEE8E+FgvMOfo/
         RfrDy1xRBeEQfeqsKRwOqAcwHII/K2GnswJ6Jvnd5+d7vV88ZiDwdFfFXOafj+qzn0zq
         0KXDiSvtUWON1VV8m5OqJ1+k3eYGAgePAbgmJHZor+obo7qTdwkTb1vwcaciaIz95Rh5
         WyCA==
X-Gm-Message-State: AO0yUKUlYxQjrhIsMxZ5ee4dA/bJvgaAvbR//6Uo0igqlvtB7T1290K2
        SaUyxp84HjmSyDmTnMvGh4qChQ==
X-Google-Smtp-Source: AK7set9pUxFXKK9ndQwW5SNMTn+1D5+xLi8VdgZNTAwtdHJvAkQDTFd/DFKo0NAJ9tMOBCHXY+eEig==
X-Received: by 2002:a50:9ec5:0:b0:4a2:64d7:866 with SMTP id a63-20020a509ec5000000b004a264d70866mr6839171edf.0.1675345845795;
        Thu, 02 Feb 2023 05:50:45 -0800 (PST)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id r23-20020aa7c157000000b0049e1f167956sm7596332edp.9.2023.02.02.05.50.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Feb 2023 05:50:45 -0800 (PST)
From:   Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Andy Gross <agross@kernel.org>,
        "David S. Miller" <davem@davemloft.net>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-crypto@vger.kernel.org, Rob Herring <robh@kernel.org>,
        Jordan Crouse <jorcrous@amazon.com>
Subject: [PATCH v8 3/9] dt-bindings: qcom-qce: Add 'interconnects' and 'interconnect-names'
Date:   Thu,  2 Feb 2023 15:50:30 +0200
Message-Id: <20230202135036.2635376-4-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20230202135036.2635376-1-vladimir.zapolskiy@linaro.org>
References: <20230202135036.2635376-1-vladimir.zapolskiy@linaro.org>
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

From: Bhupesh Sharma <bhupesh.sharma@linaro.org>

Add 'interconnects' and 'interconnect-names' as optional properties
to the device-tree binding documentation for Qualcomm crypto IP.

These properties describe the interconnect path between crypto and main
memory and the interconnect type respectively.

Cc: Bjorn Andersson <andersson@kernel.org>
Acked-by: Rob Herring <robh@kernel.org>
Tested-by: Jordan Crouse <jorcrous@amazon.com>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 Documentation/devicetree/bindings/crypto/qcom-qce.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/crypto/qcom-qce.yaml b/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
index 8df47e8513b8..94f96ebc5dac 100644
--- a/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
+++ b/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
@@ -32,6 +32,14 @@ properties:
       - const: bus
       - const: core
 
+  interconnects:
+    maxItems: 1
+    description:
+      Interconnect path between qce crypto and main memory.
+
+  interconnect-names:
+    const: memory
+
   dmas:
     items:
       - description: DMA specifiers for rx dma channel.
-- 
2.33.0

