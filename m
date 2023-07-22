Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 55A0375DEB6
	for <lists+devicetree@lfdr.de>; Sat, 22 Jul 2023 23:56:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229653AbjGVV4E (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 22 Jul 2023 17:56:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229656AbjGVV4A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 22 Jul 2023 17:56:00 -0400
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com [IPv6:2607:f8b0:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79CEA1FF9
        for <devicetree@vger.kernel.org>; Sat, 22 Jul 2023 14:55:59 -0700 (PDT)
Received: by mail-pf1-x430.google.com with SMTP id d2e1a72fcca58-6687466137bso1832025b3a.0
        for <devicetree@vger.kernel.org>; Sat, 22 Jul 2023 14:55:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1690062959; x=1690667759;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Op8r3roG6OOa9Lv1oC4Z/qAoTQvBrQgFrwVjhxRoefc=;
        b=mTdJFi4UkmtcIztVWh5pYf8zH4Z4pB5cWYDL86PAivIdbNh9UfwYadaN9XjWHg5S2a
         AgdVNuWOQs9lRuGL5m3CfaSWhAnKLNqWgvt4VqbAv9X3828cCDCXf4T/M4IfBD9c/dfp
         Eq7qlpwUHmok/4vGNAegu6ixgsSRvLK+fyp+N/hhC8jhLjC5in2DRiVVMuH53BcBLx42
         7xk0vkrr65OB421xPAmnwhXICEjdNIlzPro/O9nBJo7Xejbi1OUeluzoOOyAof6i8OqL
         hpGXy4vbuNMV0vv7zLjijyQQESkc+EC/9WAuzjhPCAxX20uFGlnzc9jzzYwz+oaUp923
         lMVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690062959; x=1690667759;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Op8r3roG6OOa9Lv1oC4Z/qAoTQvBrQgFrwVjhxRoefc=;
        b=lOvb2+9csDFsxqeUi5bpmYb8YpnMBukjP4nBsXm7DZgRg+Y36+6wdro2y2RCywqhqw
         s8pwlZheyWloBVX3gWmWXb3LjHKwjl9xWY1g0twbWVBO5F3oBcEa1Gyzhh35Qa2mI/i0
         5OGKHoHm9yAFSo2jECGlyWfDUZNwmkIJYqE9AXezlXXlGRWKRwaNCnjrwZq+NPWCnlvW
         deBe285lqfOa3H2mYk2mmAf3bwXFlXRIPSoNE5uO6iZGnF1BmLTOXcr/wrZc9WUsIDHj
         jbhCLlHap0OXAGGTetzs18b+K5PtjvgYF1Zu2fwk7UeP7EVgZUg+TXIQcuFcXJZ8NnhS
         1PaA==
X-Gm-Message-State: ABy/qLbQngIDI1+lf8K3nTPkMdPtk6bDM2KfJaiioFJWVfj3TYWEyyGB
        MQzRYKs4yq9qFqnzHjan/GEj+Q==
X-Google-Smtp-Source: APBJJlHi9uPk5HT8P/Bh1fdT5M6EBnO2qNX5zOmrDLhQ6F7I/qp+4TqP6xLAhgWDjArdpAjcRvYiqQ==
X-Received: by 2002:a05:6a00:1821:b0:680:6d16:8f8c with SMTP id y33-20020a056a00182100b006806d168f8cmr3608089pfa.32.1690062959005;
        Sat, 22 Jul 2023 14:55:59 -0700 (PDT)
Received: from [127.0.1.1] ([2601:1c2:1800:f680:2a8c:966f:392d:7230])
        by smtp.gmail.com with ESMTPSA id e23-20020a633717000000b0056368adf5e2sm5517642pga.87.2023.07.22.14.55.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Jul 2023 14:55:58 -0700 (PDT)
From:   Drew Fustini <dfustini@baylibre.com>
Date:   Sat, 22 Jul 2023 14:55:41 -0700
Subject: [PATCH 3/3] MAINTAINERS: add reviewer for T-Head RISC-V SoC
 support
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230722-upstream-beaglev-ahead-dts-v1-3-ccda511357f4@baylibre.com>
References: <20230722-upstream-beaglev-ahead-dts-v1-0-ccda511357f4@baylibre.com>
In-Reply-To: <20230722-upstream-beaglev-ahead-dts-v1-0-ccda511357f4@baylibre.com>
To:     Jisheng Zhang <jszhang@kernel.org>, Guo Ren <guoren@kernel.org>,
        Fu Wei <wefu@redhat.com>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Conor Dooley <conor@kernel.org>
Cc:     linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Robert Nelson <robertcnelson@beagleboard.org>,
        Jason Kridner <jkridner@beagleboard.org>,
        Drew Fustini <dfustini@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1690062955; l=651;
 i=dfustini@baylibre.com; s=20230430; h=from:subject:message-id;
 bh=YCC8HQBmQ4ArnnCjLKzrNbZrbvachARgWcNH5nyq8v4=;
 b=DD8uZ+RrE2UU4233SPWBBZvAtSm0Fj+EF7e7TvOfSnv2VL+fdfssMjERfpDTyWjmqIZU2m4G6
 jzN0MYkPTCsD5FC+ozl+/PB+Qr+QiUL5Kuhfs211l48QYFTbmDmmQ3C
X-Developer-Key: i=dfustini@baylibre.com; a=ed25519;
 pk=p3GKE9XFmjhwAayAHG4U108yag7V8xQVd4zJLdW0g7g=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

I will maintain support for the TH1520-based BeagleV Ahead board so
adding myself as a reviewer for T-Head SoC patches.

Signed-off-by: Drew Fustini <dfustini@baylibre.com>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index d516295978a4..eaec3333f2ed 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -18326,6 +18326,7 @@ RISC-V THEAD SoC SUPPORT
 M:	Jisheng Zhang <jszhang@kernel.org>
 M:	Guo Ren <guoren@kernel.org>
 M:	Fu Wei <wefu@redhat.com>
+R:	Drew Fustini <dfustini@baylibre.com>
 L:	linux-riscv@lists.infradead.org
 S:	Maintained
 F:	arch/riscv/boot/dts/thead/

-- 
2.34.1

