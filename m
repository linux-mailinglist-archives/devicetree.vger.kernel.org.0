Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8D595710106
	for <lists+devicetree@lfdr.de>; Thu, 25 May 2023 00:35:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231443AbjEXWfa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 May 2023 18:35:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59784 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232281AbjEXWf3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 May 2023 18:35:29 -0400
Received: from mail-ot1-x32c.google.com (mail-ot1-x32c.google.com [IPv6:2607:f8b0:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B58DE6D
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 15:35:04 -0700 (PDT)
Received: by mail-ot1-x32c.google.com with SMTP id 46e09a7af769-6afbb00c60fso54871a34.0
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 15:35:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684967699; x=1687559699;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=85gRKM7pf1VF4IINr+C8p9MDqkiLt0epIQnDUiVBTpc=;
        b=fbhp4+FJsl5borOuauSPZsAkNLYns8cgQCSPcYt/rmXXExgHWbvvdho+qBd84H0/fU
         oXkeSIglBlPDM3hQUJHRNrPJwLk5fj8BZj/37U+OGquSMBzbzanc9RL7JPzv+3vA0viV
         MYMizrK5rZI3gEZeifCrvH+yN9yIwZqRMurkK/L77HKnT9t2ZbiNqb6J4MjLI2HIkpMn
         kLERrv/H5G14QG3NGmG/0kRHlGGJidu20ynVwrlh9Uv0szEQRso0LriVIFeUoxgN3dKp
         XZ1karDITiQQQ9jl4y6FDTv5QgjvXwd3ucfeIgJfAqDa+FKbQJBx1xBrHIE8j0izUtyT
         QnhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684967699; x=1687559699;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=85gRKM7pf1VF4IINr+C8p9MDqkiLt0epIQnDUiVBTpc=;
        b=GK2UiMH+dSgo2zXGXonyS8PHnFftiMew4GCr/4YBajYx5ADR9obFVR8upe2hgWeG3r
         XDpbQC6TS14IwbX+h4vs0ldCxYILuUIvLewHuEmGBsAqTdH3ikghfnrSnnWt+5Ox651F
         puMmpdKpIKa4kMHVwwhHQRJZRsIxOdA3Ru5QyZR8OzA3dCp6YLjx/yP/uXmUE3lrIBUT
         wsxL/j//EeFfaM9cZFNQmTVr4OPFmeLug3xX2C9ZJtblh8CW8Xn4m5uG3n9qF0ECRgT0
         Bw3a+FvIe8bOvDJQZ2f/dW4XWDMFcsRCem41BWbqUPmpLUYdfKXlxPK3KV6so9HbcR7D
         G0Ag==
X-Gm-Message-State: AC+VfDyy3xIOKUL/60OdT1Cesr/dQkCKoTAztuakJjAqMs7sJQACMEv3
        ed+2Rx1Y0X2ODYBuut31mWU=
X-Google-Smtp-Source: ACHHUZ76Sb/CDAq+BhHWnQu42yzlRxMkvWmGouAma7orcl+O0CgvPoO1dI09gZYI9piiSqrmegvCuQ==
X-Received: by 2002:a05:6830:22d3:b0:6af:801d:e59 with SMTP id q19-20020a05683022d300b006af801d0e59mr1654116otc.2.1684967699081;
        Wed, 24 May 2023 15:34:59 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:4331:751b:6032:b5d])
        by smtp.gmail.com with ESMTPSA id z21-20020a05683010d500b006aaf82bd5a2sm19830oto.43.2023.05.24.15.34.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 May 2023 15:34:58 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        inux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH] ARM: dts: imx7d-flex-concentrator: Remove invalid ecspi property
Date:   Wed, 24 May 2023 19:34:40 -0300
Message-Id: <20230524223440.408404-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
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

From: Fabio Estevam <festevam@denx.de>

The 'num-chipselects' property is not a valid property for ecspi.

Remove it to fix the following DT check warning:

spi@30630000: Unevaluated properties are not allowed ('num-chipselects' was unexpected)
From schema: Documentation/devicetree/bindings/spi/fsl-imx-cspi.yaml

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/imx7d-flex-concentrator.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx7d-flex-concentrator.dts b/arch/arm/boot/dts/imx7d-flex-concentrator.dts
index bd6b5285aa8d..3a723843d562 100644
--- a/arch/arm/boot/dts/imx7d-flex-concentrator.dts
+++ b/arch/arm/boot/dts/imx7d-flex-concentrator.dts
@@ -107,7 +107,6 @@ &adc1 {
 &ecspi2 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_ecspi2>;
-	num-chipselects = <1>;
 	cs-gpios = <&gpio4 23 GPIO_ACTIVE_LOW>;
 	status = "okay";
 
@@ -122,7 +121,6 @@ pcf2127: rtc@0 {
 &ecspi4 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_ecspi4>;
-	num-chipselects = <1>;
 	cs-gpios = <&gpio3 3 GPIO_ACTIVE_LOW>;
 	status = "okay";
 
-- 
2.34.1

