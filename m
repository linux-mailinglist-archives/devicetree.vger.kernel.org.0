Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ED0866CB833
	for <lists+devicetree@lfdr.de>; Tue, 28 Mar 2023 09:34:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231172AbjC1Hdu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Mar 2023 03:33:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43294 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231203AbjC1Hdt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Mar 2023 03:33:49 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8F3F40EE
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 00:33:46 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id ek18so45789883edb.6
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 00:33:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1679988824;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XLJ+jDIrSZvakcXMeiXZPJ9OyuW2iT0qYiAHEyeO2Pk=;
        b=IuvzJdDPnOdoihfE8rpb6ML6DhTCgt5AqAoK0mzHTDNvm0mdLQ/AGkiYZa7Mo7hBdZ
         uEsaGbkhpR4ckAmk/okfbUSjZZKa5YXBFEkVDw+NThJPuQO6N2Md2KEZL2AfjJI2HPy+
         3aPWXZXXntS1Hm/Q35co8OlDBjYUJlSALPV2g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679988824;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XLJ+jDIrSZvakcXMeiXZPJ9OyuW2iT0qYiAHEyeO2Pk=;
        b=E4lMkQrbrkegwIuNsT8x2fvZGuPw02D7Z1sHVLKSNy6AlBUbuPK4Ae4NcwNkAi+A47
         W8vjRatEBGs8q0dIEmN56T71hNDSiJYlew09kFeLTxIZG1m7lO3yagSz30aIqJ9bxT+j
         LHzmo+Apktdr03YlUxCg2K+KhXGz737Yvif2NVBydGsDt7oWy0vNRE3JNAv5rZ7Nlph+
         jMtGWuOOX/EY5UZmNJ3esoenRYeMMCLOjQ/P6ybTIY0N27LnMNTyqUVd1caBUeVzOY6P
         /ey0B1xUbjfH+J9sPwPZjmBup6P4PUnmRUcRBQb0+JcJqOevMrIR8LNfW9IBwsVskAv5
         /V7Q==
X-Gm-Message-State: AAQBX9dmH4vQ4RoJlKLIcFnxsY3kO9tzO4BJ+B6BwCFsDhGcAFLKsyCW
        vGAxsoLqVOjxB5aHGmC3T0WfWw==
X-Google-Smtp-Source: AKy350aUGpDaVX4CRikG6yXjQagHkEfMr4HIcK5RDdByqX6CyW1EKgPOFrD20rNVzZiwL4lT4nEb5g==
X-Received: by 2002:aa7:cac5:0:b0:500:4a5d:af3f with SMTP id l5-20020aa7cac5000000b005004a5daf3fmr15247146edt.34.1679988824575;
        Tue, 28 Mar 2023 00:33:44 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-87-0-102-254.retail.telecomitalia.it. [87.0.102.254])
        by smtp.gmail.com with ESMTPSA id 15-20020a508e4f000000b004fa99a22c3bsm15478850edx.61.2023.03.28.00.33.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Mar 2023 00:33:44 -0700 (PDT)
From:   Dario Binacchi <dario.binacchi@amarulasolutions.com>
To:     linux-kernel@vger.kernel.org
Cc:     Vincent Mailhol <mailhol.vincent@wanadoo.fr>,
        Rob Herring <robh@kernel.org>,
        Amarula patchwork <linux-amarula@amarulasolutions.com>,
        michael@amarulasolutions.com,
        Marc Kleine-Budde <mkl@pengutronix.de>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Dario Binacchi <dario.binacchi@amarulasolutions.com>,
        Christophe Roullier <christophe.roullier@foss.st.com>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Mark Brown <broonie@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH v10 1/5] dt-bindings: arm: stm32: add compatible for syscon gcan node
Date:   Tue, 28 Mar 2023 09:33:24 +0200
Message-Id: <20230328073328.3949796-2-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20230328073328.3949796-1-dario.binacchi@amarulasolutions.com>
References: <20230328073328.3949796-1-dario.binacchi@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Since commit ad440432d1f9 ("dt-bindings: mfd: Ensure 'syscon' has a
more specific compatible") it is required to provide at least 2 compatibles
string for syscon node.
This patch documents the new compatible for stm32f4 SoC to support
global/shared CAN registers access for bxCAN controllers.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Acked-by: Rob Herring <robh@kernel.org>

---

(no changes since v9)

Changes in v9:
- Fix commit description formatting. No semantic changes have been made.

Changes in v5:
- Add Rob Herring's Acked-by tag.

 .../devicetree/bindings/arm/stm32/st,stm32-syscon.yaml          | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/stm32/st,stm32-syscon.yaml b/Documentation/devicetree/bindings/arm/stm32/st,stm32-syscon.yaml
index b2b156cc160a..ad8e51aa01b0 100644
--- a/Documentation/devicetree/bindings/arm/stm32/st,stm32-syscon.yaml
+++ b/Documentation/devicetree/bindings/arm/stm32/st,stm32-syscon.yaml
@@ -20,6 +20,7 @@ properties:
               - st,stm32-syscfg
               - st,stm32-power-config
               - st,stm32-tamp
+              - st,stm32f4-gcan
           - const: syscon
       - items:
           - const: st,stm32-tamp
@@ -42,6 +43,7 @@ if:
       contains:
         enum:
           - st,stm32mp157-syscfg
+          - st,stm32f4-gcan
 then:
   required:
     - clocks
-- 
2.32.0

