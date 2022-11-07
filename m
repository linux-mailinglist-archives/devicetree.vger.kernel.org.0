Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 79D5C61F37F
	for <lists+devicetree@lfdr.de>; Mon,  7 Nov 2022 13:39:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231193AbiKGMjQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Nov 2022 07:39:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33244 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231476AbiKGMjQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Nov 2022 07:39:16 -0500
Received: from egress-ip4b.ess.de.barracuda.com (egress-ip4b.ess.de.barracuda.com [18.185.115.208])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F33018B0E
        for <devicetree@vger.kernel.org>; Mon,  7 Nov 2022 04:39:14 -0800 (PST)
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199]) by mx-outbound22-4.eu-central-1b.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Mon, 07 Nov 2022 12:39:10 +0000
Received: by mail-pl1-f199.google.com with SMTP id o7-20020a170902d4c700b001868cdac9adso9042513plg.13
        for <devicetree@vger.kernel.org>; Mon, 07 Nov 2022 04:39:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A4fuZdwonDphiFwrvDgt+7IrILXPVSlkCWT1e74/3Bg=;
        b=ZmoCFKQiEF4cEtrrlS1gwsKAI75SiO3H/K+CbpY3eiV2rXTN32nwGIhNNLwOA4JPGM
         BlTf0b2OzE1kQEWxoQooFea0ddb+8d7qmUiY62YtFRf81aNsf/AiyrrEgJDs40d6KCDx
         dDDrTIydUtaQAlw6E9HNIMSijd0hpqq+Di+lA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=A4fuZdwonDphiFwrvDgt+7IrILXPVSlkCWT1e74/3Bg=;
        b=8Q/iXdvxZ8rw3bxSOI4fHBv0hL1CDpLudQgR3oNpMSSWAVnSG3Do+tcAPimRXksS1q
         vK/KPv3DFffwAPaPGtF+BNKelod5KxZDGD6s+C1CNjF+TYoRQnZRdHjTxfyc5j8dkRKl
         RT86UXKrehjQqyqnqahnpp3f85ZTP3tuHCd6ci/I+OdvN3HRCyaRVMVN5jF1yyrT8loz
         pkx0zBUgqYVfkV2WDi8yTOH0UKi89PIUeaN9yueA/m0HStoWGE4Dz0MkmON3l6r2joDx
         SHc3baK9cu9nUG93sZKzd5apr0d/al7SxrPJaNbjVwn+JkJi1IRgSS5VyKBlkAXDJ8q+
         Csdw==
X-Gm-Message-State: ACrzQf0sif8VWOajJAYp7bklWAUY60MdqEolqRQnpsqNxVNB0Xzc5oF1
        7B4HLGvTEEgFSLURxcbzzQgjsOb7umk2F8uZzizq/B0kEHeqyTrWa3uM+w0ETV0FsGxD+IIzxyu
        JsvLIP9hSSDqM3zouHEJcnPMYnYWRGfq3dh8wkc2vDI8t+XCo7iq1Y10JsA==
X-Received: by 2002:a17:90a:ab8e:b0:213:ef84:3bb9 with SMTP id n14-20020a17090aab8e00b00213ef843bb9mr40596377pjq.241.1667824749662;
        Mon, 07 Nov 2022 04:39:09 -0800 (PST)
X-Google-Smtp-Source: AMsMyM4YSrUFxf2aECpLMpC4Y5jWlCk5Om8R/Q4FRtgfc2uFnLWMJbVulgh/30LjvWFolX0jHF2OuA==
X-Received: by 2002:a17:90a:ab8e:b0:213:ef84:3bb9 with SMTP id n14-20020a17090aab8e00b00213ef843bb9mr40596353pjq.241.1667824749373;
        Mon, 07 Nov 2022 04:39:09 -0800 (PST)
Received: from LAP568U.mistral.in ([106.51.69.35])
        by smtp.gmail.com with ESMTPSA id x11-20020aa7956b000000b0056bbba4302dsm4400423pfq.119.2022.11.07.04.39.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Nov 2022 04:39:08 -0800 (PST)
From:   Sinthu Raja <sinthu.raja@mistralsolutions.com>
X-Google-Original-From: Sinthu Raja <sinthu.raja@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Vignesh Raghavendra <vigneshr@ti.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Sinthu Raja <sinthu.raja@ti.com>
Subject: [PATCH V2 1/3] dt-bindings: arm: ti: Add binding for AM68 SK
Date:   Mon,  7 Nov 2022 18:08:50 +0530
Message-Id: <20221107123852.8063-2-sinthu.raja@ti.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20221107123852.8063-1-sinthu.raja@ti.com>
References: <20221107123852.8063-1-sinthu.raja@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-BESS-ID: 1667824750-305636-5385-11381-1
X-BESS-VER: 2019.1_20221024.2147
X-BESS-Apparent-Source-IP: 209.85.214.199
X-BESS-Outbound-Spam-Score: 0.40
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.243990 [from 
        cloudscan8-242.eu-central-1a.ess.aws.cudaops.com]
        Rule breakdown below
         pts rule name              description
        ---- ---------------------- --------------------------------
        0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
        0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
        0.40 BSF_SC0_SA085b         META: Custom Rule SA085b 
X-BESS-Outbound-Spam-Status: SCORE=0.40 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_SC0_MISMATCH_TO, BSF_BESS_OUTBOUND, BSF_SC0_SA085b
X-BESS-BRTS-Status: 1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
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
---

Changes in V2:
*Addressed review comment
 - added entry in alphabetical order.

V1:https://lore.kernel.org/linux-arm-kernel/20221018123849.23695-2-sinthu.raja@ti.com/

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

