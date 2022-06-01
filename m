Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2862753A37A
	for <lists+devicetree@lfdr.de>; Wed,  1 Jun 2022 13:03:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352473AbiFALDQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Jun 2022 07:03:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52502 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352418AbiFALDK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Jun 2022 07:03:10 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1ABA9880C7
        for <devicetree@vger.kernel.org>; Wed,  1 Jun 2022 04:03:09 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id t13so1814131wrg.9
        for <devicetree@vger.kernel.org>; Wed, 01 Jun 2022 04:03:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=OnvXF5s5GrKznhV9RiSELRMKmTLaCDRSK8iW7WfFUKs=;
        b=OSFoRwjoVdXIYu1i8ASpaOgYErZK4abslLMXIg14B84wAwFiqo3ENN+jRsPEoJ1Qf/
         GLH1IRKGegXk5UyjI56HuSfaL8fRcHqT/tLQR1yQhZuowLnSOkMz+m8eE0ZA5sqDWtb5
         72JIkmAjAkMQi6RXRQ4ydVKsHV/drR+t1z08uKcTGSNK9e+Q3LHL7nfR3YS+YX7MnYoU
         1XSUr8cX+KOUatphzmZqQXYnoG59hGlt6Sw9mJXR1sCrOBxlJgPHlhiZp47XB0HZw7B2
         QW5VwJ5kA4c3fRYWaG4nPYTbuRxCppGSGBluTJcKleeWxLsfIZk4dYvaJDnj43LQsCfA
         L84Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=OnvXF5s5GrKznhV9RiSELRMKmTLaCDRSK8iW7WfFUKs=;
        b=IYSfWGO4ioFfSyat/Wv9F/qpJ9B1mhkD5O1e9h29e4a1FNlm/zqOFYDM43TX6sLOpU
         HFNv0nHd9W95Dw5C05asFOu1tGXGJmd8A6R3m8jGYEQSEdP/01KS5dkjQmeFqCcTcN7X
         eRVMwU7ggHx+9kJLYLjoK22//6iWZpgSAcP1ijlrGlCtGk4ioW85/NyaT7z3O03BnUYh
         8moPsa7xv6L+r4/42cxd4x3xaLntaDsCE0n/dX40T5MPHsR6JkrnWkgAPwR0oMIm+nS0
         n+xQxBHUyhxcMq5T7YpQgpqp+silJIJkqigglESN7u77kfeC1C6B8yQWUBVU5R6a+WJ6
         lTZg==
X-Gm-Message-State: AOAM531I7a7ocTPcYoMV987tOxQGazvFgf5PUa9vxSXN+V4blS+UmFFF
        f+fHm8bRSOAqgoAFvBSdy58=
X-Google-Smtp-Source: ABdhPJymYOkcWRKsxtIvvy63ziXLPzoCyHa9UOjlimZGWPD9nRjpBYX2OWLNLJkY8aFJfPMxiZ4dzQ==
X-Received: by 2002:a5d:68c1:0:b0:210:2e3c:5b0d with SMTP id p1-20020a5d68c1000000b002102e3c5b0dmr15031597wrw.694.1654081387634;
        Wed, 01 Jun 2022 04:03:07 -0700 (PDT)
Received: from morpheus.home.roving-it.com (82-132-215-116.dab.02.net. [82.132.215.116])
        by smtp.googlemail.com with ESMTPSA id j14-20020a05600c190e00b00397381a7ae8sm6074559wmq.30.2022.06.01.04.03.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Jun 2022 04:03:07 -0700 (PDT)
From:   Peter Robinson <pbrobinson@gmail.com>
To:     Arnd Bergmann <arnd@arndb.de>,
        bcm-kernel-feedback-list@broadcom.com,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, Emma Anholt <emma@anholt.net>,
        Florian Fainelli <f.fainelli@gmail.com>, javierm@redhat.com,
        linux-arm-kernel@lists.infradead.org,
        linux-rpi-kernel@lists.infradead.org, maxime@cerno.tech,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc:     Peter Robinson <pbrobinson@gmail.com>,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v5 1/6] dt-bindings: gpu: v3d: Add BCM2711's compatible
Date:   Wed,  1 Jun 2022 12:02:44 +0100
Message-Id: <20220601110249.569540-2-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220601110249.569540-1-pbrobinson@gmail.com>
References: <20220601110249.569540-1-pbrobinson@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

BCM2711, Raspberry Pi 4's SoC, contains a V3D core. So add its specific
compatible to the bindings.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
---
Changes since v5:
- Change compatible to align downstream and othee HW, reorder to suit

 Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml b/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
index e6485f7b046f..217c42874f41 100644
--- a/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
+++ b/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
@@ -16,6 +16,7 @@ properties:
 
   compatible:
     enum:
+      - brcm,2711-v3d
       - brcm,7268-v3d
       - brcm,7278-v3d
 
-- 
2.36.1

