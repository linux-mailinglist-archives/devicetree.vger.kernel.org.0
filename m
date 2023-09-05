Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ED28D79294B
	for <lists+devicetree@lfdr.de>; Tue,  5 Sep 2023 18:51:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351523AbjIEQ0E (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Sep 2023 12:26:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53382 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353760AbjIEH4U (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Sep 2023 03:56:20 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CFFE6CCB
        for <devicetree@vger.kernel.org>; Tue,  5 Sep 2023 00:56:14 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-9a5dff9d2d9so321450366b.3
        for <devicetree@vger.kernel.org>; Tue, 05 Sep 2023 00:56:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693900573; x=1694505373; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=tA6N1zwAD88Cgl3i6p7QciLW3xFhFAIdikvljwPx/E4=;
        b=PVHrswjZUhRRQRska/pIH66dsoT64dhltonmNPceeOhBbcB7eMuOP3q9HZeaC4Yp1r
         PwPJjKtKaKry3k71XIAf3/srkcBdaMQZIvsRYnmxkQKAAzQJkSWOeeYJadLfqU8sTZ3K
         XiPEicfhNP4LQC0hxO4Uloj+QFyh+OfB0qx4TTR/8K6Om8xL2GPiY10ltGrIqKVGF/87
         uBMCOdIHYAPqeRHOwK2y1Kgf++Jk7XXqApKWAlMCwV012UPPD6tl6IniiR7aLSxGA78f
         j81eguDI8kgxWmmHykLhAmFVyU4A0YXYMlw4S1chF/f9nqqN6p+o6Xi+pRQvtEukQM2x
         S0aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693900573; x=1694505373;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tA6N1zwAD88Cgl3i6p7QciLW3xFhFAIdikvljwPx/E4=;
        b=acjNrB78fOVNXCde6DEqCwhHL3s8b1dFp0kbJ8OhY/XD9Rrd2/4BGJaRg/btXFqbCZ
         mn0pEM1ZzU2LKzGC9sL1W8sr/jno8TyxVt3LlHeI+Z0HfTOCTRkptecCvceTxTAmI1RQ
         xv10yU4Imj95g2Nv0i72QrAp6idSp7MrisqAqUClm5LXnMXi1nlnY2nqrvcGnTGKNcBZ
         /1mnMDhAUdmWVPfwUHq8q+DkRdk0BegpsRvzVy5WYnFDzK8ak9vGgK9FIWQoitWkCmaW
         QF7MK/NQnm0FaMGhQrHwvQYlYLv3fjlcS9w34NjGqmyryMuy9zgbqAJF03J5wVJnjVND
         2prw==
X-Gm-Message-State: AOJu0YyC3wj58qL6qSiOiIv4fF0MjrgtWc/HNtbEJNjmxZkzFehzZo3f
        fvPJdtXUd47fgMcCenFeMEan6w==
X-Google-Smtp-Source: AGHT+IFzwHQmm2igqrBiBviDINXZhxNp5rbCu7WH1mYkxMQ5qhActIok3Pu8r3eEr4NGuhQcAx9ykw==
X-Received: by 2002:a17:907:75f4:b0:9a1:d79a:418e with SMTP id jz20-20020a17090775f400b009a1d79a418emr9434819ejc.40.1693900573242;
        Tue, 05 Sep 2023 00:56:13 -0700 (PDT)
Received: from krzk-bin.. (77-252-46-238.static.ip.netia.com.pl. [77.252.46.238])
        by smtp.gmail.com with ESMTPSA id j9-20020a170906410900b009926928d486sm7208682ejk.35.2023.09.05.00.56.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Sep 2023 00:56:12 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Chanwoo Choi <cw00.choi@samsung.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: mfd: Revert "dt-bindings: mfd: maxim,max77693: Add USB connector"
Date:   Tue,  5 Sep 2023 09:55:58 +0200
Message-Id: <20230905075558.21219-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This reverts commit da7ee30ae6662f016f28a9ef090b2132b3c0fb48.

Commit da7ee30ae666 ("dt-bindings: mfd: maxim,max77693: Add USB
connector") was an earlier version of my patch adding the connector,
later superseded by commit 789c9ce9b46f ("dt-bindings: mfd:
maxim,max77693: Add USB connector").

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Fix for v6.6-rc1.
---
 Documentation/devicetree/bindings/mfd/maxim,max77693.yaml | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/maxim,max77693.yaml b/Documentation/devicetree/bindings/mfd/maxim,max77693.yaml
index 9804d13de648..6a6f222b868f 100644
--- a/Documentation/devicetree/bindings/mfd/maxim,max77693.yaml
+++ b/Documentation/devicetree/bindings/mfd/maxim,max77693.yaml
@@ -31,10 +31,6 @@ properties:
   charger:
     $ref: /schemas/power/supply/maxim,max77693.yaml
 
-  connector:
-    $ref: /schemas/connector/usb-connector.yaml#
-    unevaluatedProperties: false
-
   led:
     $ref: /schemas/leds/maxim,max77693.yaml
 
-- 
2.34.1

