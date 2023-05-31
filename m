Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1FDB371734E
	for <lists+devicetree@lfdr.de>; Wed, 31 May 2023 03:43:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233509AbjEaBnp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 May 2023 21:43:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44072 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231473AbjEaBno (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 May 2023 21:43:44 -0400
Received: from mail-oa1-x32.google.com (mail-oa1-x32.google.com [IPv6:2001:4860:4864:20::32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 65194F9
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 18:43:41 -0700 (PDT)
Received: by mail-oa1-x32.google.com with SMTP id 586e51a60fabf-19a34a63522so582277fac.0
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 18:43:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685497420; x=1688089420;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lj8cUBMM4Kyl2UivwW5UEK62sHqLglmMEtBf6tnWuSo=;
        b=bH2I8+OalfFuKbW3oYa/YyEqCdIHZNCChJoFnjH6WHbAqSYE3+l6lIFpuhNb4b3SjO
         zvpXlUoi0CwFQijXJvTDNcsSrqSzQ7IE1UxcOsGE9RVwNCBTSdbRwHyJTFFS+HvXqA2b
         TGz5HtLgYE9qt9CpAEMaDFEejlz0LQDaH5zzPGPCg1qKxoiJPWx9KcNaMFCBGdyjaERX
         j1mZO58v7/slHNyOeeQ6vNa6Zhlh62QF3mj6nf6UdgV8MJcXdcReua5MfWXwvC1MqjVo
         IOOoow1TT55hgCUlJ7bEMaCDtfTvmPmIYXX4XlcxBDrKUSjGKgQ1vJs7sema336PdYKH
         9ysQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685497420; x=1688089420;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lj8cUBMM4Kyl2UivwW5UEK62sHqLglmMEtBf6tnWuSo=;
        b=LpXQe8jp1+8k8kzBcFHuy4AJ86Wl0gdoow2aLLOdPG8Nat0nz5pMkFRIK012QVo8Hz
         hvEjlOeNAQEoy6UWCf1qZCK4rn5DkUX47sXGG9T57vtEsXpFaV4EyZvxVSXbLDxBp8o/
         G4SRpQHLHlTYcXRuEFZiDG7M2UVQljVFoPnviFnMgkVYoHxh5dvTsSfgCE/TlQ0gvSA9
         QFdz0q66wT1ujut9ZzqAe94D+bZ9QVy7KtoQYikyrKRxg5mukRrgSKd8B8oLeii2k8GX
         +coTu56+nQx6GadSHkfVqo2s37BpRopXSlgRdyVXprJaKmOPFuREV+eLP1RsRKPdqDpP
         3dlA==
X-Gm-Message-State: AC+VfDwVKhd0tLvUc7H4cQ3nAK/QlOhzM/ber8FEJcr/F0CQL1DpyZYW
        GhKSSDzC6ey3AuT2WGjHqlqoB5kUjfA=
X-Google-Smtp-Source: ACHHUZ4sdjDNkdxKTMNWmKCHalmImX2glGn4pWTP2WoDFfeTJEzIOy4V5xX4OT9zq3H4n+qqBQ5j6g==
X-Received: by 2002:aca:e156:0:b0:38e:ca01:3a65 with SMTP id y83-20020acae156000000b0038eca013a65mr330481oig.1.1685497420434;
        Tue, 30 May 2023 18:43:40 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:c694:9254:2d8e:be7e])
        by smtp.gmail.com with ESMTPSA id fu17-20020a0568082a7100b003942036439dsm34153oib.46.2023.05.30.18.43.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 May 2023 18:43:39 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     neil.armstrong@linaro.org
Cc:     marex@denx.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH] dt-bindings: samsung,mipi-dsim: Use port-base reference
Date:   Tue, 30 May 2023 22:43:15 -0300
Message-Id: <20230531014315.1198880-1-festevam@gmail.com>
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

Use port-base reference for port@0 and port@1.

This fixes the following schema warning:

imx8mm-evk.dtb: dsi@32e10000: ports:port@1:endpoint: Unevaluated properties are not allowed ('data-lanes' was unexpected)
From schema: Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml

Fixes: 1f0d40d88f7a ("dt-bindings: bridge: Convert Samsung MIPI DSIM bridge to yaml")
Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 .../devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml b/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml
index 9f61ebdfefa8..51879030dd6d 100644
--- a/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml
@@ -93,14 +93,14 @@ properties:
 
     properties:
       port@0:
-        $ref: /schemas/graph.yaml#/properties/port
+        $ref: /schemas/graph.yaml#/$defs/port-base
         description:
           Input port node to receive pixel data from the
           display controller. Exactly one endpoint must be
           specified.
 
       port@1:
-        $ref: /schemas/graph.yaml#/properties/port
+        $ref: /schemas/graph.yaml#/$defs/port-base
         description:
           DSI output port node to the panel or the next bridge
           in the chain.
-- 
2.34.1

