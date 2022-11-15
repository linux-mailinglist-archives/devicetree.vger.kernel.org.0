Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1D24E629EC8
	for <lists+devicetree@lfdr.de>; Tue, 15 Nov 2022 17:19:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238651AbiKOQTF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Nov 2022 11:19:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38954 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229602AbiKOQSp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Nov 2022 11:18:45 -0500
Received: from egress-ip4b.ess.de.barracuda.com (egress-ip4b.ess.de.barracuda.com [18.185.115.208])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB1FD2AE20
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 08:18:10 -0800 (PST)
Received: from mail-ot1-f70.google.com (mail-ot1-f70.google.com [209.85.210.70]) by mx-outbound22-196.eu-central-1b.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Tue, 15 Nov 2022 16:18:07 +0000
Received: by mail-ot1-f70.google.com with SMTP id j20-20020a9d7f14000000b0066c532b53eeso7866805otq.18
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 08:18:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iNJppNvxg9XQ1DZWlwntbSgTxRDnFbDURjIFvFATTDU=;
        b=CujJ3uiQDBgXJk9SDLvy3AjxrcNmwRSiTBFL8KS257bjyocTQwFaQcvtesebB9xKtA
         EjkCNQDzn+kP1xaOj3pUngr8rd0DGVIH2ksOq99RBvmO506TvsalF7S3oXUWEvSQxG9E
         v43Ps7E2MtO4c+doCQzKw5255pFbK7qlTnMaQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iNJppNvxg9XQ1DZWlwntbSgTxRDnFbDURjIFvFATTDU=;
        b=SlETcJ8DBh3Vj6u1eZKJxBGCvmTBo3mfdyxT5EcA279a/iWis4Gh+fpg7gwTtYDmSo
         Tu5eUfEYH5JDLfZHz3CpvJHtOY/b965hA4lgA9difaPZN3QTzGzARvmL2PjFOV1xoUnJ
         zAzONeTqHJZrQ+S6knr8UORURUe6FXY33F/VIZJ/SIg+uYScognpJuvX61Sctmh2lwxa
         2t/jxPIDzoShjNrRIFHO0i1A5VHnf6fANAH57jpEPZ4gGAISEo7SUl043JkWfENyjTJ/
         USPDIag96ri2HQXJKFdbaOguxdM/47PmVHUaKonc23H9Tt1Ry6nhoNY5b+GXKJsghB6k
         Cu6g==
X-Gm-Message-State: ACrzQf3cWY2+5xJS6agRo5xQbf4jx4k3WIDyCvyMXJHNX7KSUG0qLJy6
        +U07DKKN8OjhXV/Lm8wT/rtA7z1cqBz/Z6URejAu8pUxuQp+u+phpu6XehHvSQqTxGykNuThIqy
        rXYuBOMxvI0D10Pg2tPRs44504LHBRZ0pFWkCuBDfnXDJ+fMven3nta4SwQ==
X-Received: by 2002:a17:90a:b10b:b0:213:16d2:4d4c with SMTP id z11-20020a17090ab10b00b0021316d24d4cmr2943915pjq.70.1668527442003;
        Tue, 15 Nov 2022 07:50:42 -0800 (PST)
X-Google-Smtp-Source: AA0mqf77wilQjZRsipVqFLFlNCIVtx7bPf/cMOjc9+N8np3LWCVOP5Vh1xOdjhDsIZ5iGKNeMRQojQ==
X-Received: by 2002:a17:90a:b10b:b0:213:16d2:4d4c with SMTP id z11-20020a17090ab10b00b0021316d24d4cmr2943888pjq.70.1668527441665;
        Tue, 15 Nov 2022 07:50:41 -0800 (PST)
Received: from LAP568U.mistral.in ([106.51.227.150])
        by smtp.gmail.com with ESMTPSA id y1-20020a17090264c100b00178b6ccc8a0sm10018478pli.51.2022.11.15.07.50.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Nov 2022 07:50:41 -0800 (PST)
From:   Sinthu Raja <sinthu.raja@mistralsolutions.com>
X-Google-Original-From: Sinthu Raja <sinthu.raja@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Vignesh Raghavendra <vigneshr@ti.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Sinthu Raja <sinthu.raja@ti.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH V3 1/3] dt-bindings: arm: ti: Add binding for AM68 SK
Date:   Tue, 15 Nov 2022 21:18:30 +0530
Message-Id: <20221115154832.19759-2-sinthu.raja@ti.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20221115154832.19759-1-sinthu.raja@ti.com>
References: <20221115154832.19759-1-sinthu.raja@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-BESS-ID: 1668529086-305828-5380-3475-1
X-BESS-VER: 2019.1_20221114.2026
X-BESS-Apparent-Source-IP: 209.85.210.70
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.244168 [from 
        cloudscan20-140.eu-central-1b.ess.aws.cudaops.com]
        Rule breakdown below
         pts rule name              description
        ---- ---------------------- --------------------------------
        0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
        0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_SC0_MISMATCH_TO, BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Sinthu Raja <sinthu.raja@ti.com>

AM68 Starter Kit is a low cost, small form factor board designed for
TI's AM68 SoC which is optimized to provide best in class performance
for industrial applications and add binding for the same.

Signed-off-by: Sinthu Raja <sinthu.raja@ti.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/ti/k3.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/ti/k3.yaml b/Documentation/devicetree/bindings/arm/ti/k3.yaml
index 28b8232e1c5b..072d1215a113 100644
--- a/Documentation/devicetree/bindings/arm/ti/k3.yaml
+++ b/Documentation/devicetree/bindings/arm/ti/k3.yaml
@@ -68,6 +68,7 @@ properties:
       - description: K3 J721s2 SoC
         items:
           - enum:
+              - ti,am68-sk
               - ti,j721s2-evm
           - const: ti,j721s2
 
-- 
2.36.1

