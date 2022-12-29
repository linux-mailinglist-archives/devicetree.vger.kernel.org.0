Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DF33B659164
	for <lists+devicetree@lfdr.de>; Thu, 29 Dec 2022 21:05:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233850AbiL2UFM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Dec 2022 15:05:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45180 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229598AbiL2UFK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Dec 2022 15:05:10 -0500
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2FCAB167D0
        for <devicetree@vger.kernel.org>; Thu, 29 Dec 2022 12:05:10 -0800 (PST)
Received: by mail-pj1-x1031.google.com with SMTP id fy4so20303983pjb.0
        for <devicetree@vger.kernel.org>; Thu, 29 Dec 2022 12:05:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=schmorgal.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D97gZO02zquDgcm7K4u6L4rTn9priLTA6Jh37BL7zRw=;
        b=Zq5LtO+m7N/Al+Ndcxo7C3dHQ3if3lxoH34/P+I+8HNuyLUoNP0YYXju6Qyl1xQJJ/
         2Q/aew1o+sJTSHs7eelwv/0xYvfDEQPG70rQP15lup4nYRuxWvwH+1boSwr4X4xy9P8H
         zVROzHTAb7G+OMZzZqpscxRhtSsHATejiHdco=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=D97gZO02zquDgcm7K4u6L4rTn9priLTA6Jh37BL7zRw=;
        b=0O3VD/JE4RoVGY+VqcAcclinVU75uiySwfiCav6Pe8517tWvo3URkFU+ArcaeFgKeS
         bcQ/Np1LKYkoRKQXiO3lbl72Srsy/+Whzi4diTm5rO6AorJMGh4F/M/Yb41Dk/oNagsM
         uL2KAjINOLJxlkUuAAT6bgGoER82s3CImaOmntEK91X+UY9zcTUi3IDN34ud3T+GfbZG
         E9PmGXUU2kDz6J9srYK9qgKFUtiOa6JlQtomziJoE0lyzFF3bBTQo2ywIdsrBnWYitm3
         brXccLpzJGWgFgE2HWwG5yeu4ic4CtT6Ii8OUDlMP+Xbv1pvFPRESjZJd3KRizwsJBR5
         iPyA==
X-Gm-Message-State: AFqh2kpCwb8gid+ObimslTQE9VqgYA5IpD5RedE3KVclo5p0kNN5u90d
        9X3wRB/y8mDG8eKBe29UIlRqEw==
X-Google-Smtp-Source: AMrXdXuh6ymW7m41dNTlmOb0eeXYgoLwkXP/Y+DgscSaYg24IHb3zsaixsX8f8wpTM3Q7voM/KKWRQ==
X-Received: by 2002:a17:902:ce83:b0:189:dc9e:cef3 with SMTP id f3-20020a170902ce8300b00189dc9ecef3mr40201778plg.16.1672344309688;
        Thu, 29 Dec 2022 12:05:09 -0800 (PST)
Received: from doug-ryzen-5700G.. ([192.183.212.197])
        by smtp.gmail.com with ESMTPSA id w17-20020a170902e89100b00189ac5a2340sm13438589plg.124.2022.12.29.12.05.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Dec 2022 12:05:09 -0800 (PST)
From:   Doug Brown <doug@schmorgal.com>
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Adrian Hunter <adrian.hunter@intel.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        Doug Brown <doug@schmorgal.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 8/8] dt-bindings: mmc: sdhci-pxa: add pxav1
Date:   Thu, 29 Dec 2022 12:04:11 -0800
Message-Id: <20221229200411.295339-9-doug@schmorgal.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221229200411.295339-1-doug@schmorgal.com>
References: <20221229200411.295339-1-doug@schmorgal.com>
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

Add a compatible for the pxav1 controller in the PXA168, along with
optional pinctrl properties to use for an errata workaround.

Signed-off-by: Doug Brown <doug@schmorgal.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/mmc/sdhci-pxa.yaml    | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mmc/sdhci-pxa.yaml b/Documentation/devicetree/bindings/mmc/sdhci-pxa.yaml
index 1c87f4218e18..09455f9fa8de 100644
--- a/Documentation/devicetree/bindings/mmc/sdhci-pxa.yaml
+++ b/Documentation/devicetree/bindings/mmc/sdhci-pxa.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/mmc/sdhci-pxa.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Marvell PXA SDHCI v2/v3 bindings
+title: Marvell PXA SDHCI v1/v2/v3
 
 maintainers:
   - Ulf Hansson <ulf.hansson@linaro.org>
@@ -34,6 +34,7 @@ allOf:
 properties:
   compatible:
     enum:
+      - mrvl,pxav1-mmc
       - mrvl,pxav2-mmc
       - mrvl,pxav3-mmc
       - marvell,armada-380-sdhci
@@ -61,6 +62,22 @@ properties:
       - const: io
       - const: core
 
+  pinctrl-names:
+    description:
+      Optional for supporting PXA168 SDIO IRQ errata to switch CMD pin between
+      SDIO CMD and GPIO mode.
+    items:
+      - const: default
+      - const: state_cmd_gpio
+
+  pinctrl-0:
+    description:
+      Should contain default pinctrl.
+
+  pinctrl-1:
+    description:
+      Should switch CMD pin to GPIO mode as a high output.
+
   mrvl,clk-delay-cycles:
     description: Specify a number of cycles to delay for tuning.
     $ref: /schemas/types.yaml#/definitions/uint32
-- 
2.34.1

