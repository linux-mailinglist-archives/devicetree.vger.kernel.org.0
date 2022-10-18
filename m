Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B1C81602C6D
	for <lists+devicetree@lfdr.de>; Tue, 18 Oct 2022 15:07:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229520AbiJRNHr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Oct 2022 09:07:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229573AbiJRNHr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Oct 2022 09:07:47 -0400
X-Greylist: delayed 1360 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 18 Oct 2022 06:07:46 PDT
Received: from egress-ip33a.ess.de.barracuda.com (egress-ip33a.ess.de.barracuda.com [18.185.115.192])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5830DC6949
        for <devicetree@vger.kernel.org>; Tue, 18 Oct 2022 06:07:46 -0700 (PDT)
Received: from mail-io1-f70.google.com (mail-io1-f70.google.com [209.85.166.70]) by mx-outbound11-221.eu-central-1a.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Tue, 18 Oct 2022 13:07:44 +0000
Received: by mail-io1-f70.google.com with SMTP id w16-20020a6b4a10000000b006a5454c789eso9737678iob.20
        for <devicetree@vger.kernel.org>; Tue, 18 Oct 2022 06:07:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3Z1rGp2v9mEwXt8YXEuSWE0c803I39TsUvISP9jq4E8=;
        b=D2pYHZ/+8B138uAPKr/q23TuJOUTgkZk1gh4ZiN12mRtS6ICUEtsquemwKVZyHrNTt
         UHKsP+KHrI3MZ1X3zF6dkq7mlgoxtHDKXDDyUyx2Kysh/xDLDtFa8Mi+Wgh0k4Z2KHsA
         /lro36w88gNNsi3c3kGttAKRle+rdlRL5XqIQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3Z1rGp2v9mEwXt8YXEuSWE0c803I39TsUvISP9jq4E8=;
        b=4BssUr0uT6dDcG6rBNLfGzzMqaN/HPjONIE0Bx/k2rcAPzHDVdihAF7T0RqSFRLKhl
         bREMseibrvmji/li2X+cYlCFjERvmBR5gIay+24xJEJiWSO8GO7IAcKa/rrUF0tiG80u
         YzD9cE6bokDbSaLjhb9GIqDDc1UQ31ipZmMFU4CSfuy7m27bTNSPl0kXBl4oAxQ7PKKf
         7Y/nDyGChLezvf+kxTBAAxhDX0ZzyfxMkB1t/JJKrihyNLi/hsQP9LGfANTKhSZ7aWAV
         nQyjvtgxebrdNdo8Q+So+j5npomJPYwl5bE+HBmX9UBFwNN6LonE1miusz7OrTioGLNH
         rgMQ==
X-Gm-Message-State: ACrzQf07MSOZWjkoSG3ZqDDbQwS+0vudrLQb6u0/B91VadathZxC7J3K
        cPG36qykzWFsjdiR8iXVrqVtr6hS8BtmBAAwUe4+hmW8KGnjSLzumzSQtmZ2pB5lIlMicCqha8d
        9Ij9T6AdFcWjhMmfoAjdPqbIvg186USc+L61S+fe2Hcl+13hp0fOMbyKV+w==
X-Received: by 2002:a63:698a:0:b0:41c:8dfa:e622 with SMTP id e132-20020a63698a000000b0041c8dfae622mr2427450pgc.465.1666097105367;
        Tue, 18 Oct 2022 05:45:05 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM6WLNGtemWWOTpn1A26+M2NZ6XE82Ng3zU2G5qw9ynCu48j6nP1iE7+68asC4pzw5S8dxsg4w==
X-Received: by 2002:a63:698a:0:b0:41c:8dfa:e622 with SMTP id e132-20020a63698a000000b0041c8dfae622mr2427428pgc.465.1666097105093;
        Tue, 18 Oct 2022 05:45:05 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:330a:c5d2:e90c:db79:45c8:3513])
        by smtp.gmail.com with ESMTPSA id a17-20020a621a11000000b00563ce1905f4sm9110102pfa.5.2022.10.18.05.45.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Oct 2022 05:45:04 -0700 (PDT)
From:   Sinthu Raja <sinthu.raja@mistralsolutions.com>
X-Google-Original-From: Sinthu Raja <sinthu.raja@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Vignesh Raghavendra <vigneshr@ti.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Sinthu Raja <sinthu.raja@ti.com>
Subject: [PATCH 1/3] dt-bindings: arm: ti: Add binding for AM68 SK
Date:   Tue, 18 Oct 2022 18:08:47 +0530
Message-Id: <20221018123849.23695-2-sinthu.raja@ti.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20221018123849.23695-1-sinthu.raja@ti.com>
References: <20221018123849.23695-1-sinthu.raja@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-BESS-ID: 1666098463-303037-18535-8659-1
X-BESS-VER: 2019.1_20221004.2324
X-BESS-Apparent-Source-IP: 209.85.166.70
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.243545 [from 
        cloudscan20-230.eu-central-1b.ess.aws.cudaops.com]
        Rule breakdown below
         pts rule name              description
        ---- ---------------------- --------------------------------
        0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
        0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_SC0_MISMATCH_TO, BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
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
---
 Documentation/devicetree/bindings/arm/ti/k3.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/ti/k3.yaml b/Documentation/devicetree/bindings/arm/ti/k3.yaml
index 28b8232e1c5b..54f983fb23cf 100644
--- a/Documentation/devicetree/bindings/arm/ti/k3.yaml
+++ b/Documentation/devicetree/bindings/arm/ti/k3.yaml
@@ -69,6 +69,7 @@ properties:
         items:
           - enum:
               - ti,j721s2-evm
+              - ti,am68-sk
           - const: ti,j721s2
 
 additionalProperties: true
-- 
2.36.1

