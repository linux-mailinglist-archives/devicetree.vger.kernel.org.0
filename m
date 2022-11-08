Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 74207620828
	for <lists+devicetree@lfdr.de>; Tue,  8 Nov 2022 05:15:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233278AbiKHEPs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Nov 2022 23:15:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44416 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232942AbiKHEPM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Nov 2022 23:15:12 -0500
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com [IPv6:2607:f8b0:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E250F15FE2
        for <devicetree@vger.kernel.org>; Mon,  7 Nov 2022 20:15:11 -0800 (PST)
Received: by mail-pf1-x42c.google.com with SMTP id y203so12732309pfb.4
        for <devicetree@vger.kernel.org>; Mon, 07 Nov 2022 20:15:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6eA4MJ/qoMP/W5SydwhxRhNTGiKKsFvgB72Epz7yqRE=;
        b=gsYUEWLJX04V2A/ruH1eDUIOiysfNa3NMn0XreSSVrEWc2eB0pcbqyyQyYPFb87nkG
         1URIrVAhMGFWzkFSjiDP6+Qj9628vlsBYSITl2fD4cjePrmszhdIkFX4tX6Cmdo11J4W
         JH3s1ti+dHkpgRo7PZxRHBQGMs76PwG0YnYm2eylFdhdhrJ1b15SPPl928aQRF72SIUA
         YL9RfSEw9XKb/dDIpv/8ihXA3EQHraBDC9oeO/VCVCHCSAw7n8INtt8FBkaQbBIkU7zn
         F1g/I8AtwgODJ8HhD3FTyLRBFU9FqEyjSo7QaY0P4k5PExqBkIF4UYIt4O+0ZdtPpTxC
         v+9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6eA4MJ/qoMP/W5SydwhxRhNTGiKKsFvgB72Epz7yqRE=;
        b=AfWuS7j/HXaXjjRsafyd5ZhtNlJkshxb1kraPJaGJmJZoYr8BCVljGDfWy1nRdh3lu
         iDdxUJwtlyxJooCB5h2HUPTS1NVmEebKee+Xnla7trkJEmmh7VZ6Qpqy4gUBM1OYkSuO
         15N9HG3f9BYGDl1UI82bs6M2CKI+OJUGrzfWUMHngVHWZOqu9QhBfyUK3W1ZGvajas42
         t0UJ6cXVYSMIySW9RqVPmTdsOzEL6/IbAONbwUhMg8m/9h/Kl1twl1ECoU9Diwwybvng
         SBVoRUp8XiXT8tfvXavWkIbKhjaYVm7b6OYRdI/T0XkI4eQYjBKVkJGDAslrwGAdIQGr
         UaPg==
X-Gm-Message-State: ACrzQf1nLPSShWoIKgeVqcAo1JN2bi4J1N7IzdFhWe7ID96fadxf87ez
        DQB/n2gG/GMt6QpUlh/B3uFHrw==
X-Google-Smtp-Source: AMsMyM4kzy7ZFvcAOfDTWkdOWLdymXVXgyYs7V+o6zwMxpKpLJp0wKVnncWZ8IveoewLHgHRflPCCQ==
X-Received: by 2002:a63:c65:0:b0:470:cb4:aca3 with SMTP id 37-20020a630c65000000b004700cb4aca3mr25383910pgm.389.1667880911428;
        Mon, 07 Nov 2022 20:15:11 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a809:63d1:2564:ea55:4e97])
        by smtp.gmail.com with ESMTPSA id e5-20020a170902b78500b00186ac812ab0sm5799783pls.83.2022.11.07.20.15.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Nov 2022 20:15:11 -0800 (PST)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Johan Jonker <jbx6244@gmail.com>,
        Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh@kernel.org>
Subject: [PATCH v7 08/10] dt-bindings: arm: rockchip: Add Edgeble Neural Compute Module 2
Date:   Tue,  8 Nov 2022 09:43:58 +0530
Message-Id: <20221108041400.157052-9-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221108041400.157052-1-jagan@edgeble.ai>
References: <20221108041400.157052-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Neural Compute Module 2(Neu2) is a 96boards SoM-CB compute module
based on Rockchip RV1126 from Edgeble AI.

Edgeble Neural Compute Module 2(Neu2) IO board is an industrial
form factor evaluation board from Edgeble AI.

Neu2 needs to mount on top of this IO board in order to create complete
Edgeble Neural Compute Module 2(Neu2) IO platform.

Add dt-bindings for it.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v7:
- collect Rob Ack
Changes for v6:
- updated SOM and Carrier name

 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 244c42eaae8c..26fdd205a899 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -85,6 +85,12 @@ properties:
           - const: chipspark,rayeager-px2
           - const: rockchip,rk3066a
 
+      - description: Edgeble Neural Compute Module 2(Neu2) SoM based boards
+        items:
+          - const: edgeble,neural-compute-module-2-io   # Edgeble Neural Compute Module 2 IO Board
+          - const: edgeble,neural-compute-module-2      # Edgeble Neural Compute Module 2 SoM
+          - const: rockchip,rv1126
+
       - description: Elgin RV1108 R1
         items:
           - const: elgin,rv1108-r1
-- 
2.25.1

