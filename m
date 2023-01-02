Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 392B965B02D
	for <lists+devicetree@lfdr.de>; Mon,  2 Jan 2023 11:59:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231633AbjABK7F (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Jan 2023 05:59:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60278 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232705AbjABK7E (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Jan 2023 05:59:04 -0500
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com [IPv6:2607:f8b0:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78EA9C4C
        for <devicetree@vger.kernel.org>; Mon,  2 Jan 2023 02:59:03 -0800 (PST)
Received: by mail-pg1-x530.google.com with SMTP id h192so13293531pgc.7
        for <devicetree@vger.kernel.org>; Mon, 02 Jan 2023 02:59:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aPXQEziYyJgrkEttV4nV18ITm8GK1OMkVvR6V9u1w4Q=;
        b=kyyra2mEwzPYdU41a+cqvpIT1rAI6Jd+vrzM5Iu3EcnOOxMvQIEUj7SGwoPPFXm+Z1
         JVd/rDduPc/JrFPj8nAEfxfmtd19JACSy4I7bSxDfHl+Gnxhsw0RDdcnGMNActIQoQSx
         g7sCtQ481cZMXFXcU2ibbLbplX17YHpBgnGiLphmDm5Dz0rlo2Kp8jLWvS+lhqY0XQJW
         Ca4fkuXfWPxFZCwbjQLuQ1Yh9E0n4JTLsjSMkaVpqBv3Dugo3BCE2BRNjmCztpLvuTMY
         RAExRyqaHB+sneSvHASZgF1Tzw8WJ77AMl6gv7gFHqurvWjj760Ik8f1Ihb2/lx1yx6x
         Er5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aPXQEziYyJgrkEttV4nV18ITm8GK1OMkVvR6V9u1w4Q=;
        b=61EGnR3d2R1KSC92yo09PsAAL7LvZE/Eirk9f9CkkWLUYmdWtbJGHxwC4l+oGZ1QMq
         RAIwyUzI8dmHUnZi5JgyObqZ4nzbCSGZ3ehsF3TjlOXolZjVBowdL7On/+fuCOPK3E/e
         BQz2t2hI5KzEmPtI4CiIfWYAbtD9F47CTUvrJ3TdnnxrYJoFt0DiJb71XyBU52Qsa5UG
         iivSGzXy7w2LpXvGrF4hUqWTvqRQcE+2JvXEGpqntHJ0Z0cJDdEc5y8PnwERW6xexld3
         01olQU/c3tHVy7lFgR0f+tqdcZz0oRiBLPE3yiqw6CbLh+zZWlR8SdJUTNNWo7ztDi0v
         X11Q==
X-Gm-Message-State: AFqh2kpmU7DCwA4ToCcgX8HlaeWG6fcNP/YEeLnCeg/Sg3XKDAMoQYkY
        NrzCCbMYo81ADUcsnkEWLdjd
X-Google-Smtp-Source: AMrXdXsJLsEoFcC4KgU5HsxZBMGYc4EtReLapOwDAAq6zgWYLeViLsrxY12X/0Tgy+f0ecAKctCYfA==
X-Received: by 2002:a62:18d1:0:b0:580:ea08:527a with SMTP id 200-20020a6218d1000000b00580ea08527amr31750436pfy.30.1672657142973;
        Mon, 02 Jan 2023 02:59:02 -0800 (PST)
Received: from localhost.localdomain ([220.158.158.187])
        by smtp.gmail.com with ESMTPSA id k26-20020aa79d1a000000b0058130f1eca1sm12756773pfp.182.2023.01.02.02.58.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Jan 2023 02:59:02 -0800 (PST)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     andersson@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     bhelgaas@google.com, konrad.dybcio@linaro.org,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        lpieralisi@kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v3 2/3] dt-bindings: PCI: qcom: Document msi-map and msi-map-mask properties
Date:   Mon,  2 Jan 2023 16:28:20 +0530
Message-Id: <20230102105821.28243-3-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230102105821.28243-1-manivannan.sadhasivam@linaro.org>
References: <20230102105821.28243-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SORBS_WEB,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Qcom PCIe controller is capable of using either internal MSI controller
or the external GIC-ITS for signaling MSIs sent by endpoint devices.
Currently, the binding only documents the internal MSI implementation.

Let's document the GIC-ITS imeplementation by making use of msi-map and
msi-map-mask properties. Only one of the implementation should be used
at a time.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 Documentation/devicetree/bindings/pci/qcom,pcie.yaml | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
index a3639920fcbb..01208450e05c 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
@@ -114,14 +114,20 @@ required:
   - compatible
   - reg
   - reg-names
-  - interrupts
-  - interrupt-names
-  - "#interrupt-cells"
   - interrupt-map-mask
   - interrupt-map
   - clocks
   - clock-names
 
+oneOf:
+  - required:
+      - interrupts
+      - interrupt-names
+      - "#interrupt-cells"
+  - required:
+      - msi-map
+      - msi-map-mask
+
 allOf:
   - $ref: /schemas/pci/pci-bus.yaml#
   - if:
-- 
2.25.1

