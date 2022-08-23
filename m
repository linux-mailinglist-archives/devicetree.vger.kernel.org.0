Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9926359EC83
	for <lists+devicetree@lfdr.de>; Tue, 23 Aug 2022 21:38:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232929AbiHWThh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Aug 2022 15:37:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56644 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232741AbiHWThV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Aug 2022 15:37:21 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 07ABE99274
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 11:34:00 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id c187-20020a1c35c4000000b003a30d88fe8eso10086633wma.2
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 11:34:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=conchuod.ie; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=trv5fw0bTaRkhXK0X5euU+YZQIdt/hyNEtAW//ypjq4=;
        b=SbIqnUkCy+xr3G4o41X6O/3K6TdfRJnovS+CTSQDtTxCHC12Dr2hCrLWJb14TBsmL7
         lWBETJqBGmVPBNTdzb6i97jcciKXvfliHjaVH2WvuQDtdYipzwkytutPbIAoRIhAlXcN
         BiUQCaIU6+VbOthEftP+Vl5EKnyq3nQH7aRyPJyD0Y8TQ4TQ3IDh9NPwlGGsozrUWCfJ
         9gJrSfEZ9qukTVfG9ziZNXXLqbGpMFLs9oyc3pV7HHO2bLKvpzURDQZwqzvXfExw+900
         uPyd0qqVtAXIkJRBgKgUTRT7eIJaxdLAebLlBN7VwstK5T3aghNRMyNfOP/6qHrT223r
         mFdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=trv5fw0bTaRkhXK0X5euU+YZQIdt/hyNEtAW//ypjq4=;
        b=jptoKHL7V7sW9L66ttXRNA5rXLBxef1O+O/jNYgH3AUwAXB+lDbCDOtEPQqMtvgXkb
         hTyQdzdzV0PkTGe/QN4oM9tiNVIXeur7lCJOx0Hq1jPprmk/yeise2h4ia4Uq9i+7VCu
         qdW6DSQTEsbHceUSHxjk8djmGBAOMsKWE9I8W/BT7P6H1O0xJfA0GjBnyjP0n26Wxz4A
         mIMeuAAjFOi1Tlb+A6K3CNLQDLfivw0JFMzknU7aL4WdaRnOfB0j0Gt/qZzg++N24Yk4
         E5GkIYI92VA8r0tLkhtdzrUy9O/9WsUjdxBQxTqjCNYCfvT4AJA8mNMtlCJebak8P4Ip
         Xd+A==
X-Gm-Message-State: ACgBeo2TGKa969pp9nEv8JLjBbuvzLiIa2orWNZk8GETtN38WWsB0tso
        dBVNAUxBKYqt3m74hdoLOHZ+Pw==
X-Google-Smtp-Source: AA6agR5PsHa/f15Jc+wTtB6380Zen3xwCl+1v7C+oWEpfdzbxeubJb/sNC5ucLm5tjbY479QnKQpqg==
X-Received: by 2002:a05:600c:3b92:b0:3a6:5645:5fc7 with SMTP id n18-20020a05600c3b9200b003a656455fc7mr2978623wms.148.1661279638941;
        Tue, 23 Aug 2022 11:33:58 -0700 (PDT)
Received: from henark71.. ([51.37.149.245])
        by smtp.gmail.com with ESMTPSA id p16-20020a05600c1d9000b003a5fcae64d4sm19396556wms.29.2022.08.23.11.33.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Aug 2022 11:33:58 -0700 (PDT)
From:   Conor Dooley <mail@conchuod.ie>
To:     Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>
Cc:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        Anup Patel <anup@brainfault.org>,
        Conor Dooley <conor.dooley@microchip.com>,
        Guo Ren <guoren@kernel.org>,
        Sagar Kadam <sagar.kadam@sifive.com>,
        Jessica Clarke <jrtc27@jrtc27.com>,
        Andrew Jones <ajones@ventanamicro.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org, qemu-riscv@nongnu.org
Subject: [PATCH v4 4/4] dt-bindings: riscv: isa string bonus content
Date:   Tue, 23 Aug 2022 19:33:20 +0100
Message-Id: <20220823183319.3314940-5-mail@conchuod.ie>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20220823183319.3314940-1-mail@conchuod.ie>
References: <20220823183319.3314940-1-mail@conchuod.ie>
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

From: Conor Dooley <conor.dooley@microchip.com>

**NOT FOR CONSIDERATION**

I figured, sure why not add the strings for version number validation,
just in case we need them in the future. The commented out string is
considered by dt-schema to be "not a regex", but regex101 thinks it
is... Maybe dt-schema does not support named match groups, but they
are the only way that I could trivially find to make this somewhat
manageable. Either way, it is permissive so it allows combinations
of "M", "MpM" & no number.

Not-signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/riscv/cpus.yaml | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
index 90a7cabf58fe..6c725d067846 100644
--- a/Documentation/devicetree/bindings/riscv/cpus.yaml
+++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
@@ -80,7 +80,11 @@ properties:
       insensitive, letters in the riscv,isa string must be all
       lowercase to simplify parsing.
     $ref: "/schemas/types.yaml#/definitions/string"
-    pattern: ^rv(?:64|32)imaf?d?q?c?b?v?k?h?(?:_[hsxz](?:[a-z])+)*$
+    oneOf:
+      - pattern: ^rv(?:64|32)imaf?d?q?c?b?v?k?h?(?:_[hsxz](?:[a-z])+)*$
+      - pattern: ^rv(?:64|32)(?:i\d+)(?:m\d+)(?:a\d+)(?:f\d+)?(?:d\d+)?(?:q\d+)?(?:c\d+)?(?:b\d+)?(?:v\d+)?(?:k\d+)?(?:h\d+)?(?:(?:_[zsh][imafdqcbvksh]|_x)(?:[a-z])+\d+)*$
+      - pattern: ^rv(?:64|32)(?:i\d+p\d+)(?:m\d+p\d+)(?:a\d+p\d+)(?:f\d+p\d+)?(?:d\d+p\d+)?(?:q\d+p\d+)?(?:c\d+p\d+)?(?:b\d+p\d+)?(?:v\d+p\d+)?(?:k\d+p\d+)?(?:h\d+p\d+)?(?:(?:_[zsh][imafdqcbvksh]|_x)(?:[a-z])+(?:\d+p\d+))*$
+#      - pattern: ^rv(?:64|32)(?:i(?<num>(?:\d+|\d+p\d+)?)?)(?:m(?:\k<num>)?)(?:a(?:\k<num>)?)(?:f(?:\k<num>)?)?(?:d(?:\k<num>)?)?(?:q(?:\k<num>)?)?(?:c(?:\k<num>)?)?(?:b(?:\k<num>)?)?(?:v(?:\k<num>)?)?(?:k(?:\k<num>)?)?(?:h(?:\k<num>)?)?(?:(?:_[zsh][imafdqcbvksh]|_x)(?:[a-z])*(?:\d+|\d+p\d+)?)+$
 
   # RISC-V requires 'timebase-frequency' in /cpus, so disallow it here
   timebase-frequency: false
-- 
2.37.1

