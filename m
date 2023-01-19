Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8FA59673ACA
	for <lists+devicetree@lfdr.de>; Thu, 19 Jan 2023 14:55:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231324AbjASNzN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Jan 2023 08:55:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55054 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231364AbjASNzG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Jan 2023 08:55:06 -0500
Received: from egress-ip33b.ess.de.barracuda.com (egress-ip33b.ess.de.barracuda.com [18.185.115.237])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D90678A61
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 05:55:01 -0800 (PST)
Received: from mail-ua1-f71.google.com (mail-ua1-f71.google.com [209.85.222.71]) by mx-outbound23-43.eu-central-1b.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Thu, 19 Jan 2023 13:54:59 +0000
Received: by mail-ua1-f71.google.com with SMTP id g4-20020ab01304000000b0060d5bfd73b5so533581uae.16
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 05:54:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b6zkev0JIFiEPvI2nPxwx8i8t5FDgQlGRipodj6u7CI=;
        b=XgjFckN1eaHdywiIyFQw5k/tzZRPYvVPZaFqCRIXTmXAW/n0IaWwNYeHE29WtA1C2A
         fiy9m7p3Q8M2djOLFh2J18ZPAHrPG6RK6SLGlPCr4SWL+lFQQXMQzoRRD3lbtC4+WUUD
         wSkGEcHAGhNJQi8xDBooOiUPEjLHNP9PLKdVc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b6zkev0JIFiEPvI2nPxwx8i8t5FDgQlGRipodj6u7CI=;
        b=VCcykNR99WTm8vtegk+WjUp5bbYUgXHNauQAJGfzIQM4Y/96jY4qXzg2lpVqnVuvzt
         HhkojED3nWPRYo0+DuurOMmLKdcpBmX1D2+j4gxhQ17hp3gcz4AayPFeH1TBWHExdYRR
         zDzwWEeZAkEZ2ruKq0C4fV8hb2S9tYgCQRRr9VCTmOuRW1m3Ay/95T4bfkBhSbJoKILn
         q2v/XLrat6GXGFlEwZ4sIZaAOvZ3tLYlKOKuRgC5lJwgCq130y0SMGREMPnNA8NCpLQQ
         BooQuWwOs1InwtUrKphMhmuFR8/RByhWWrfRSV1FcfDY+lj27FSGZBWKWe7OuNZLU+cM
         18tw==
X-Gm-Message-State: AFqh2krRK8FcxI1iJb6RguR6HgvbTdN/5mhznaxAjLJc8+MgyAK0RmTW
        mcW7KiFSqvgg1rnNWWlVcHV7d0HDxKmS6VufKRKqM5KeLMVXuUHgvyxV2uRGtHi80jTJoRkgceh
        KWyUGyGdB9ug0rIToUieFeQ2p+iUaz/5aoAGDYwtuahRhI8vlfdi/qRB6LQ==
X-Received: by 2002:a62:1615:0:b0:587:df0a:804d with SMTP id 21-20020a621615000000b00587df0a804dmr11925365pfw.27.1674135060902;
        Thu, 19 Jan 2023 05:31:00 -0800 (PST)
X-Google-Smtp-Source: AMrXdXv8YfViyfEk8kzS4n7BrYaeR08667Rj8DYwEIaQzzZs6i2TWPXXNXYiH0FO0zKAU5+QcVd5Lw==
X-Received: by 2002:a62:1615:0:b0:587:df0a:804d with SMTP id 21-20020a621615000000b00587df0a804dmr11925336pfw.27.1674135060566;
        Thu, 19 Jan 2023 05:31:00 -0800 (PST)
Received: from LAP789U.mistral.in ([106.51.227.150])
        by smtp.gmail.com with ESMTPSA id l123-20020a622581000000b005818d429d98sm23949210pfl.136.2023.01.19.05.30.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jan 2023 05:31:00 -0800 (PST)
From:   sabiya.d@mistralsolutions.com
X-Google-Original-From: sabiya.d@ti.com
To:     nm@ti.com, vigneshr@ti.com, kristo@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linus.walleij@linaro.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, Dasnavis Sabiya <sabiya.d@ti.com>
Subject: [PATCH 1/2] dt-bindings: arm: ti: Add binding for AM69 Starter Kit
Date:   Thu, 19 Jan 2023 18:59:57 +0530
Message-Id: <20230119132958.124435-2-sabiya.d@ti.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230119132958.124435-1-sabiya.d@ti.com>
References: <20230119132958.124435-1-sabiya.d@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-BESS-ID: 1674136498-305931-5378-9893-1
X-BESS-VER: 2019.1_20221214.2106
X-BESS-Apparent-Source-IP: 209.85.222.71
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.245567 [from 
        cloudscan9-39.eu-central-1a.ess.aws.cudaops.com]
        Rule breakdown below
         pts rule name              description
        ---- ---------------------- --------------------------------
        0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
        0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
        0.00 NO_REAL_NAME           HEADER: From: does not include a real name 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_SC0_MISMATCH_TO, BSF_BESS_OUTBOUND, NO_REAL_NAME
X-BESS-BRTS-Status: 1
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Dasnavis Sabiya <sabiya.d@ti.com>

AM69 Starter Kit is a single board designed for TI AM69 SoC.
The AM69 SoC belongs to the K3 Multicore SoC architecture platform,
providing advanced system integration in automotive ADAS applications,
autonomous mobile robot and edge AI applications.

Add DT binding for AM69 Starter Kit.

Signed-off-by: Dasnavis Sabiya <sabiya.d@ti.com>
---
 Documentation/devicetree/bindings/arm/ti/k3.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/ti/k3.yaml b/Documentation/devicetree/bindings/arm/ti/k3.yaml
index b28cce4a9157..d5fd058e4aa9 100644
--- a/Documentation/devicetree/bindings/arm/ti/k3.yaml
+++ b/Documentation/devicetree/bindings/arm/ti/k3.yaml
@@ -81,6 +81,7 @@ properties:
       - description: K3 J784s4 SoC
         items:
           - enum:
+              - ti,am69-sk
               - ti,j784s4-evm
           - const: ti,j784s4
 
-- 
2.25.1

