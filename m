Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7EAB966CFBC
	for <lists+devicetree@lfdr.de>; Mon, 16 Jan 2023 20:45:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233987AbjAPTpD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Jan 2023 14:45:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51570 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233914AbjAPTpA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Jan 2023 14:45:00 -0500
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com [IPv6:2607:f8b0:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 412562CC56
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 11:44:59 -0800 (PST)
Received: by mail-pl1-x62c.google.com with SMTP id b17so23802258pld.7
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 11:44:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=schmorgal.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AkEROvqe/oVHJlSyZq7hsGS4ZpUmek5M63T+j5fOoH4=;
        b=AwdRFkobago4vsiJHwMe5Dh6GYla1J8byNau+Y1/W/hjY2G9cukKkxlc1DsOe/0tWc
         B1RmTtiLoSQL2qCQUne4j8FBSI6E8ZCREkl1qMQPGbcLruI70RSN/WgKdR7nbhLn7fsh
         TA4b/8dGaliM2Pqi2OyM53mXBZCDTZsltB0ak=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AkEROvqe/oVHJlSyZq7hsGS4ZpUmek5M63T+j5fOoH4=;
        b=Mx1h7PVIdcxkuot9LBuBEf8DvXasio9qrosUOsG+aWlUheNDyG7AmobMR/Sb0C3Swl
         ZvMlMeQSkneWcr3PbgijruxvRtQzbLpaIErwy973qgrHIhkqSlsEVDI/ESXTjFNR+Fc2
         9laSPgl0na48oObF0mIMAtfXR1PlYMYWUJCQqU30ytBaALSOinW5HJ10eNZY/NgpWfc/
         VvopDqNTVa8bp7awJsqo3XRLGQ3Z61LCV07swES1XDpiAbuqacbBJu6CwsaR86yaJell
         tADfAqRioGo2Uy3r7MYB9tsISzR4vcnxYRnpLKV6EGAuLaE0Abiuz+803jbBLgw8KEtS
         KLlg==
X-Gm-Message-State: AFqh2kqsNdCBNqC0tR37MxmpOFFroG0bTMzihzhoBdjqWxwuheJFwyzf
        wJ9xOcAlJXmJRqk4MBN3AgOs/w==
X-Google-Smtp-Source: AMrXdXuD0kGeKwPpNjEc/1VtIg/Dq0/glQdIA/fz68EmdD22rK1QbkqKrW6o1OxjbZqLwtS8MazGKQ==
X-Received: by 2002:a17:902:e303:b0:192:6c8a:6b81 with SMTP id q3-20020a170902e30300b001926c8a6b81mr721733plc.31.1673898298698;
        Mon, 16 Jan 2023 11:44:58 -0800 (PST)
Received: from doug-ryzen-5700G.. ([192.183.212.197])
        by smtp.gmail.com with ESMTPSA id t13-20020a170902b20d00b001926a76e8absm19734663plr.114.2023.01.16.11.44.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Jan 2023 11:44:58 -0800 (PST)
From:   Doug Brown <doug@schmorgal.com>
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Adrian Hunter <adrian.hunter@intel.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        Doug Brown <doug@schmorgal.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v5 8/8] dt-bindings: mmc: sdhci-pxa: add pxav1
Date:   Mon, 16 Jan 2023 11:44:01 -0800
Message-Id: <20230116194401.20372-9-doug@schmorgal.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230116194401.20372-1-doug@schmorgal.com>
References: <20230116194401.20372-1-doug@schmorgal.com>
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
index 3d46c2525787..09455f9fa8de 100644
--- a/Documentation/devicetree/bindings/mmc/sdhci-pxa.yaml
+++ b/Documentation/devicetree/bindings/mmc/sdhci-pxa.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/mmc/sdhci-pxa.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Marvell PXA SDHCI v2/v3
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

