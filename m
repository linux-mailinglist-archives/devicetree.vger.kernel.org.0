Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C2C9859C29B
	for <lists+devicetree@lfdr.de>; Mon, 22 Aug 2022 17:26:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236534AbiHVP0N (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Aug 2022 11:26:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55590 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236788AbiHVPZl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Aug 2022 11:25:41 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 76D622CC85
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 08:23:04 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id bq11so7081671wrb.12
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 08:23:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=tva//L2V5BZyUSp1h3uyNsrCUXT/z28p0524LYz45nM=;
        b=VQxw1PjABhBN5Wtkom5zzv4f+pxS1v4v801cOsPsXKqIND0l1lUn/GBnXJzRBztuiv
         EljVoQui37rtWqC43yTPgeMz8o5Gx1A1npOgEz1tfXqvo2F9207xXVgpkMzRn/oKKBVV
         O4fGugQdJzpiJb2mPgFVfqCIN1v9tGY3IiHwwfWWhFP3MYyaE3daGVgfKagAPRwH0+i1
         0FRb9EcPRtRwKYluzjnhE8QgL34SR/CCOJ7RgOUxYmHZNceg5qDdzo74Qb8m391L3Eps
         tEv1/nO1fs8pkc26BT7qxiiD+C7Y6cHIUFqWH2ZQais+9W++XUjGVG/D2sZtdzEFZv2D
         kvfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=tva//L2V5BZyUSp1h3uyNsrCUXT/z28p0524LYz45nM=;
        b=NJIo2t9SC/GWsTWWQMkY4gCcmRNhF4ELix0pYKWL4GEJNZpyUiQRAxoIi8H8g83mD0
         e3IWT2CmfKpD4pRHXqgGcP9U2Y/6NNcwJHr4EgFlWzWUuj6pVeJN8pHq1tKAxUHXVtVU
         VYKL3Ug4zG3mTvxjfYk6bOdC/4zgq9+6YXuHIJZLFRRlp9f0Hz26Uqp4ho9m1RLQpSeQ
         hUtnpdAVE/ET7Ef5C65T1j0grnS2tQq1a4AciKCD74mfh/bdmI3H22e2Bj/PWssD55b3
         X7fywvjFvISg7aeCWub2WdscD+Ny/Eww+KgFquxvuzOaDCnPcuh+fqTaeo8W+Nw+y//2
         u2hg==
X-Gm-Message-State: ACgBeo3z3hfuO4bFkHswsxQz7POA6HbUHsnyDrYQiKfPHnrRor1rcZQ5
        t22YiX1LEgqu1oYynPUISgLRSg==
X-Google-Smtp-Source: AA6agR7pYaG83LG5ODtSHbvurzvn8RbaeZEV4wCNEKUlhYCUEGXDRTexciX6zk7n8ITYiyEW9qzrDQ==
X-Received: by 2002:a5d:59a8:0:b0:225:61a0:e603 with SMTP id p8-20020a5d59a8000000b0022561a0e603mr1429141wrr.469.1661181783010;
        Mon, 22 Aug 2022 08:23:03 -0700 (PDT)
Received: from localhost.localdomain (cpc92880-cmbg19-2-0-cust679.5-4.cable.virginm.net. [82.27.106.168])
        by smtp.gmail.com with ESMTPSA id q11-20020a5d61cb000000b00223b8168b15sm11850350wrv.66.2022.08.22.08.23.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Aug 2022 08:23:02 -0700 (PDT)
From:   Jean-Philippe Brucker <jean-philippe@linaro.org>
To:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc:     maz@kernel.org, devicetree@vger.kernel.org,
        Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: [PATCH 2/3] dt-bindings: interrupt-controller: arm,gic-v3: Make 'interrupts' optional
Date:   Mon, 22 Aug 2022 16:22:23 +0100
Message-Id: <20220822152224.507497-3-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20220822152224.507497-1-jean-philippe@linaro.org>
References: <20220822152224.507497-1-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

A GICv3 implementation without virtualization, such as the base QEMU
virt machine (without -M virtualization=on), does not issue maintenance
interrupts. Therefore its device-tree node does not need an 'interrupts'
property. Currently, validating the QEMU virt device-tree throws a
warning that 'interrupts' is missing. Make it optional.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 .../devicetree/bindings/interrupt-controller/arm,gic-v3.yaml     | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/arm,gic-v3.yaml b/Documentation/devicetree/bindings/interrupt-controller/arm,gic-v3.yaml
index 3912a89162f0..9f7d3e11aacb 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/arm,gic-v3.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/arm,gic-v3.yaml
@@ -170,7 +170,6 @@ dependencies:
 
 required:
   - compatible
-  - interrupts
   - reg
 
 patternProperties:
-- 
2.37.1

