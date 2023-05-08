Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9ADF26FAD2D
	for <lists+devicetree@lfdr.de>; Mon,  8 May 2023 13:32:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235725AbjEHLcE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 May 2023 07:32:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51216 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235921AbjEHLbn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 May 2023 07:31:43 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA34E3EDB5
        for <devicetree@vger.kernel.org>; Mon,  8 May 2023 04:31:00 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-4efe9a98736so5001310e87.1
        for <devicetree@vger.kernel.org>; Mon, 08 May 2023 04:31:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=semihalf.com; s=google; t=1683545458; x=1686137458;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=shiQSDHxh2e+KlYJCYWsmpEL6ugBkLgWKoLDXET6U5s=;
        b=n8CNxVHOk+38/s0589knvXD81SPym5aqdK0A73K52Br0MOHeFOM9Gr1OdsbbgzcbgP
         CdI1J7TsZjoVcLmoHVrfwtp7KnxCGHSnxbAH9Nin+SFoCizJewq0XFhB4glBWCgP5flD
         Uq6+pxH1hJy/WdI3ksWcwMGf3Zndb1eNYiO5mXQtTGQe/C+VNe30Jje6G9Q5hVsZQLme
         19iNgCeO8LSwrAwfo+zp9FoXx1WRS1e+ZE+2Ls+m9HrnCGJ4XU+Urxkfo4qCBBJAGGfg
         n0QW1h1NoKyf+nGMljdfdfHOhgohcigAgK40Zhwpg5+iNmWFgPoQoMdhpUGVu3xm3cg1
         bDLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683545458; x=1686137458;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=shiQSDHxh2e+KlYJCYWsmpEL6ugBkLgWKoLDXET6U5s=;
        b=O5I4X7F4SSO8aPtFgdLGe2yoD9iYxKL3kUE/kE67BvpTuMnMLkQDLYXIw6DcMyCm31
         wk5SZ+sVDK+23dpEVIr4K27/+/wU1n5wnB4eXPboN5lrUJF70PxD+wyQHAiZdZoqL8Pa
         jHCaIqqcc2FC2dVF9yjv2vs75Irskj819Pg5aaXwr4aEMy1JumJi9z1MpBhI7hshMhDv
         IDwpPh+ef4vPsMnQCLxeiFxRdhCyolnacyA5o63j3huvoxkgbXdOoIzWqxmO9CFgIDq6
         27lUd36HJoh7663jSbOavpMkAESG4XULU4SWLb809YDMef5AryVdI7L9omqFYefFPKU4
         SZNQ==
X-Gm-Message-State: AC+VfDwvEpAzyCpq3pmyoCrMML9KSWrsh0mluF1YanvFEvYWrguXqrCc
        dSo0OrmVblGG+sFVNwFBv/IctA==
X-Google-Smtp-Source: ACHHUZ50+PimcUDxTXMGgv4EmguGyZF2tQHBDg+ZcDZGs3SUV4qB2dxtuCHtl09GTLefG4MJiuTaHw==
X-Received: by 2002:ac2:4461:0:b0:4ee:e0c7:434d with SMTP id y1-20020ac24461000000b004eee0c7434dmr2134076lfl.51.1683545458729;
        Mon, 08 May 2023 04:30:58 -0700 (PDT)
Received: from panikiel.office.semihalf.net ([83.142.187.84])
        by smtp.gmail.com with ESMTPSA id k8-20020a2e2408000000b002a8b9353338sm1144406ljk.117.2023.05.08.04.30.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 May 2023 04:30:58 -0700 (PDT)
From:   =?UTF-8?q?Pawe=C5=82=20Anikiel?= <pan@semihalf.com>
To:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, lgirdwood@gmail.com,
        broonie@kernel.org
Cc:     perex@perex.cz, tiwai@suse.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, dinguyen@kernel.org,
        lars@metafoo.de, nuno.sa@analog.com, upstream@semihalf.com,
        amstan@chromium.org,
        =?UTF-8?q?Pawe=C5=82=20Anikiel?= <pan@semihalf.com>
Subject: [PATCH v2 4/7] ASoC: dt-bindings: Add Google Chameleon v3 audio codec
Date:   Mon,  8 May 2023 13:30:34 +0200
Message-ID: <20230508113037.137627-5-pan@semihalf.com>
X-Mailer: git-send-email 2.40.1.521.gf1e218fcd8-goog
In-Reply-To: <20230508113037.137627-1-pan@semihalf.com>
References: <20230508113037.137627-1-pan@semihalf.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Add binding for google,chv3-codec device.

Signed-off-by: Paweł Anikiel <pan@semihalf.com>
---
 .../bindings/sound/google,chv3-codec.yaml     | 31 +++++++++++++++++++
 1 file changed, 31 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/google,chv3-codec.yaml

diff --git a/Documentation/devicetree/bindings/sound/google,chv3-codec.yaml b/Documentation/devicetree/bindings/sound/google,chv3-codec.yaml
new file mode 100644
index 000000000000..5329dc140b1c
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/google,chv3-codec.yaml
@@ -0,0 +1,31 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/google,chv3-codec.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Google Chameleon v3 audio codec
+
+maintainers:
+  - Paweł Anikiel <pan@semihalf.com>
+
+allOf:
+  - $ref: dai-common.yaml#
+
+properties:
+  compatible:
+    const: google,chv3-codec
+
+  "#sound-dai-cells":
+    const: 0
+
+required:
+  - compatible
+
+additionalProperties: false
+
+examples:
+  - |
+    audio-codec {
+        compatible = "google,chv3-codec";
+    };
-- 
2.40.1.521.gf1e218fcd8-goog

