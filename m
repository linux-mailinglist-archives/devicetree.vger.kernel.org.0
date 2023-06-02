Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 890FA72065D
	for <lists+devicetree@lfdr.de>; Fri,  2 Jun 2023 17:37:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236282AbjFBPh5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Jun 2023 11:37:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50138 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236294AbjFBPhz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Jun 2023 11:37:55 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A43F11B7
        for <devicetree@vger.kernel.org>; Fri,  2 Jun 2023 08:37:25 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-4f3bb395e69so3043809e87.2
        for <devicetree@vger.kernel.org>; Fri, 02 Jun 2023 08:37:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685720241; x=1688312241;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=e7Kuq3mXfgFaZobAOyCDNKXnim1hLUlnb4E0t1xles8=;
        b=TDsfPKkp1rYcvL1AotUbuBeET+vRQKM4KvbiNX42igWfVoczmVqZvVfa2GgSv7I2+w
         aqghp0Y7NONVVZHHMNV3PMWHnefsfQaT9f3WFMm8MkoDJqU+7E3Vqx86irV2p+2XZkrf
         hfKTl0f2hvoUq3GX9T+xLuqhr9ahDsAQtAo4kxL/BeqNscauiUZojClC7oZpd9KYF0rp
         m5y6vaAJNna7A4wyNE0eqvnrhmfyydkw0mFhC6bc7vZuXVcGfquV9S+DpP3NCLg4T4+4
         YtZbeuL+GAJ6QazI/liCKLLOymBIT8E033biUN+7ySjy0R7GC0htngeGdhCNghQTj2EW
         lcLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685720241; x=1688312241;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=e7Kuq3mXfgFaZobAOyCDNKXnim1hLUlnb4E0t1xles8=;
        b=X43M6tNhEBm6SRK096nEBjTAFWQg4/LodMlzF/E4SeLUMhgzw2XlwG8csqWIXUzG9K
         25oJaBBAFPEvSTLj7D57PCfKB5UdZUMkvkNtI3D2N9ers5gMcN1FDdqX5bDK27D2W5ln
         3oHruYzZmyAVwXZCDvRDimo7djnV7hs5WI0x90haXCH85PLcRjBT7Fmn5s1hHAkyVjzy
         oDaD8rNINCj2RUsUkAbg/JZQVZ/5ia6yvfwLlv7C7AStYXpiaE8ZvDWtyKymW1fIfGYu
         o5VJY9L7lJ+Q5/u7E8POUMl99qR4z8W5oxUY3OfoAYnP8cGfihr66DiJSCrgUPiWP7hH
         fIGw==
X-Gm-Message-State: AC+VfDySa/zw3BKVYJTB59JVEZfr+C2KXy9TauLTC9OC8SsoyV9h9XEZ
        aqbBH4Wue4fDpC917M0yck4=
X-Google-Smtp-Source: ACHHUZ5hp62Wjbjn7zaTsbr5obgOPEPESjrzV/jhv+8fDOy6Za1ibisQrwh+t/eandk3DO1Yda44MQ==
X-Received: by 2002:ac2:532d:0:b0:4ec:8524:65a4 with SMTP id f13-20020ac2532d000000b004ec852465a4mr1911961lfh.55.1685720240964;
        Fri, 02 Jun 2023 08:37:20 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id d15-20020ac24c8f000000b004eb4357122bsm195882lfl.259.2023.06.02.08.37.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Jun 2023 08:37:20 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] dt-bindings: arm: bcm: Add bindings for Buffalo WZR-1166DHP(2)
Date:   Fri,  2 Jun 2023 17:36:57 +0200
Message-Id: <20230602153657.11362-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

Add two more Northstar devices based on the BCM4708 SoC. Linux already
contains DTS files for both.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.yaml b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.yaml
index cc34025fdc78..5c3ac97e8728 100644
--- a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.yaml
+++ b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.yaml
@@ -25,6 +25,8 @@ properties:
           - enum:
               - asus,rt-ac56u
               - asus,rt-ac68u
+              - buffalo,wzr-1166dhp
+              - buffalo,wzr-1166dhp2
               - buffalo,wzr-1750dhp
               - linksys,ea6300-v1
               - linksys,ea6500-v2
-- 
2.35.3

