Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A4B7A5977BB
	for <lists+devicetree@lfdr.de>; Wed, 17 Aug 2022 22:17:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241476AbiHQUNK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Aug 2022 16:13:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34274 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241772AbiHQUMy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Aug 2022 16:12:54 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6AFAA7A8E
        for <devicetree@vger.kernel.org>; Wed, 17 Aug 2022 13:12:49 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id h204-20020a1c21d5000000b003a5b467c3abso1554030wmh.5
        for <devicetree@vger.kernel.org>; Wed, 17 Aug 2022 13:12:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=conchuod.ie; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=bxRxSRmrcbs0t6BbgHEjmeEJnj5+oLNwKov9kosBFsg=;
        b=bCrCj8WGt3a7+JPz4Wr2qZDF5Ihib0g+F+IXH5UFuOmbFTl/2ohBvo+eaBcG5rFYcE
         JeBp5CrNuRVupkpwchSLqzMMinELgmyHdlG7Gby4T2KNUmmwkmY7XUGYNJiVa/TD597A
         NR9XTujvKalhqDbu1Jp4hY/ljxWSHtxlA0sp2QW4RYb2fYdpSN5uFQ9tbNbEHHxHhJER
         3Dln3DsYHqEvlP6GfiVTVMoP4zR0gzA1F7aJ2ljUx5qSlse+xdciWu7oepRlc27TE07U
         dPla87qdJukDzfaHBgoyR2rEm4dwdJKxYv2vTJJ/0FlbjQwTvqJM+tRh0qStUKldpQZ8
         sALg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=bxRxSRmrcbs0t6BbgHEjmeEJnj5+oLNwKov9kosBFsg=;
        b=sEb+iFsGpq0aPsMjzNNvN4wPNbPDjOdJuaYdKPjeqOd8PCDPoUdrLHmRZsS/ue9WIk
         KavPd/rtucPeyMYbB81L6iuPrWM2JNd1NcyYhUBCslk5HXENPmRoI9gqRrN5nP16MhhC
         NSQdamwlKegHLBFqnKa0Zv8ohT/t2kDQDiubOxdz4X+OhadLGOGZrXgFVyimGfOAPTUF
         lBsYhDNBlfEBhXvqHT7VD+fqGoU7ZA3qTS/aRqYoSA0SLJ1SqZzloXl0FjnPLG9dnBIs
         BdUB8RdAwrkI78QQPPM5Jz4ibsTV+UaVciGzlHWhOJc7V9CAiaWTKiQ3rvimIhdeT/mH
         viRQ==
X-Gm-Message-State: ACgBeo1S3H7f7yy8vMC5oI2rbVSj0xA0LpOjXljSj8DEzmFmRqK9QJ7E
        GE/VANKAxthF+h8k1y6GwD4TVA==
X-Google-Smtp-Source: AA6agR74aNlPfmPJlKcC05Y6jx7zXOmB8kg1e0yHZoCDAb3lYxnfuQYXfqqonf1zKIGzDxzQd1NAnQ==
X-Received: by 2002:a7b:c402:0:b0:3a5:3c7:9741 with SMTP id k2-20020a7bc402000000b003a503c79741mr3131497wmi.72.1660767168134;
        Wed, 17 Aug 2022 13:12:48 -0700 (PDT)
Received: from henark71.. ([109.76.58.63])
        by smtp.gmail.com with ESMTPSA id i15-20020a05600c354f00b003a5dfd7e9eesm3029371wmq.44.2022.08.17.13.12.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Aug 2022 13:12:47 -0700 (PDT)
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
Subject: [NOT FOR INCLUSION v3 4/4] dt-bindings: riscv: isa string bonus content
Date:   Wed, 17 Aug 2022 21:12:13 +0100
Message-Id: <20220817201212.990712-5-mail@conchuod.ie>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20220817201212.990712-1-mail@conchuod.ie>
References: <20220817201212.990712-1-mail@conchuod.ie>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Conor Dooley <conor.dooley@microchip.com>

**NOT FOR INCLUSION**

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
index c0e0bc5dce04..38a824453012 100644
--- a/Documentation/devicetree/bindings/riscv/cpus.yaml
+++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
@@ -80,7 +80,11 @@ properties:
       insensitive, letters in the riscv,isa string must be all
       lowercase to simplify parsing.
     $ref: "/schemas/types.yaml#/definitions/string"
-    pattern: ^rv(?:64|32)imaf?d?q?c?b?v?k?h?(?:(?:_[zsh][imafdqcbvksh]|_x)(?:[a-z])+)*$
+    oneOf:
+      - pattern: ^rv(?:64|32)imaf?d?q?c?b?v?k?h?(?:(?:_[zsh][imafdqcbvksh]|_x)(?:[a-z])+)*$
+      - pattern: ^rv(?:64|32)(?:i\d+)(?:m\d+)(?:a\d+)(?:f\d+)?(?:d\d+)?(?:q\d+)?(?:c\d+)?(?:b\d+)?(?:v\d+)?(?:k\d+)?(?:h\d+)?(?:(?:_[zsh][imafdqcbvksh]|_x)(?:[a-z])+\d+)*$
+      - pattern: ^rv(?:64|32)(?:i\d+p\d+)(?:m\d+p\d+)(?:a\d+p\d+)(?:f\d+p\d+)?(?:d\d+p\d+)?(?:q\d+p\d+)?(?:c\d+p\d+)?(?:b\d+p\d+)?(?:v\d+p\d+)?(?:k\d+p\d+)?(?:h\d+p\d+)?(?:(?:_[zsh][imafdqcbvksh]|_x)(?:[a-z])+(?:\d+p\d+))*$
+#      - pattern: ^rv(?:64|32)(?:i(?<num>(?:\d+|\d+p\d+)?)?)(?:m(?:\k<num>)?)(?:a(?:\k<num>)?)(?:f(?:\k<num>)?)?(?:d(?:\k<num>)?)?(?:q(?:\k<num>)?)?(?:c(?:\k<num>)?)?(?:b(?:\k<num>)?)?(?:v(?:\k<num>)?)?(?:k(?:\k<num>)?)?(?:h(?:\k<num>)?)?(?:(?:_[zsh][imafdqcbvksh]|_x)(?:[a-z])*(?:\d+|\d+p\d+)?)+$
 
   # RISC-V requires 'timebase-frequency' in /cpus, so disallow it here
   timebase-frequency: false
-- 
2.37.1

