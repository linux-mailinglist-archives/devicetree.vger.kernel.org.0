Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2263477CF73
	for <lists+devicetree@lfdr.de>; Tue, 15 Aug 2023 17:45:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238210AbjHOPpS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Aug 2023 11:45:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49120 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238184AbjHOPox (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Aug 2023 11:44:53 -0400
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com [IPv6:2607:f8b0:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45520E61
        for <devicetree@vger.kernel.org>; Tue, 15 Aug 2023 08:44:52 -0700 (PDT)
Received: by mail-pf1-x431.google.com with SMTP id d2e1a72fcca58-686f1240a22so5491404b3a.0
        for <devicetree@vger.kernel.org>; Tue, 15 Aug 2023 08:44:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1692114292; x=1692719092;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EA3Mv4UUYDYTKgE8UCN4QVB+ZNunBcvwuNsqlG0Ry6I=;
        b=h5y6LkHH29JJACtPuQFK+ju2t31IHklluAmYjRYh+fL6/vBj+dpbjjuFRH8RzgIJHv
         3faXyzAfONVk56VELK7VOhWcS75QSQVePJqTrDnoseYSMoP59ZrBg7pQiCt5m+WhUOND
         X4HwAb1pEVkyNSyfcuE/NYTOB8f6VL515hgrw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692114292; x=1692719092;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EA3Mv4UUYDYTKgE8UCN4QVB+ZNunBcvwuNsqlG0Ry6I=;
        b=Vp+SkvQfyI4eQKCVNFU2SMpmVHv1qlxnCH9L1VoiqZydLbH/2RxwoJg+6eYSLpMhpd
         Mg5Oz+H89LeLGAAlBQuzq8JgTCTQD3IbCn2fPzs/jO1gCOy1iuREJ8WvmoYpMfUtYgL5
         6NlTeXWLmWoPS5KYT/FEm7umQ4JsWvoHFaw1YxysvXVi8Vn5i9UDPtAhSzP54rR8jeDY
         feEVLJX/ZUxlXVoBGjZHyvG6Jam4I4b3QpB5qngctQLCMKQPACXPAvh7OdNynnMSx89S
         fEAMlGrgamMNz5O4NwC7woDXKOr/qPbl572ci4LQs0I4XXvKc1v49Sp2cFcEgRtsJWMV
         v0yQ==
X-Gm-Message-State: AOJu0YwN8qJn4LA9U8pumrS3LWReZP3c5FxEch9joDdkVmX9LNkr0LC5
        eybUyn4lk2g21saJV1XyfWGi5w==
X-Google-Smtp-Source: AGHT+IFHXM2ifH0wB+IAbVqCwTi6GeJTVYyJNT05exRF3SZCQx7y2NkW6qKN3fV/cPF4uLvnwxcLEg==
X-Received: by 2002:a05:6a20:1052:b0:12f:dc31:a71e with SMTP id gt18-20020a056a20105200b0012fdc31a71emr13176557pzc.56.1692114291736;
        Tue, 15 Aug 2023 08:44:51 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:40cf:3807:f8c8:2d76])
        by smtp.gmail.com with ESMTPSA id n13-20020aa78a4d000000b0065e154bac6dsm9431247pfa.133.2023.08.15.08.44.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Aug 2023 08:44:51 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Tudor Ambarus <tudor.ambarus@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>
Cc:     Pratyush Yadav <pratyush@kernel.org>,
        Michael Walle <michael@walle.cc>,
        "Miquel Raynal )" <miquel.raynal@bootlin.com>,
        "Richard Weinberger )" <richard@nod.at>,
        "Vignesh Raghavendra )" <vigneshr@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        cros-qcom-dts-watchers@chromium.org,
        Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>
Subject: [PATCH 1/4] dt-bindings: mtd: jedec,spi-nor: Add disable-quad-mode property
Date:   Tue, 15 Aug 2023 23:31:52 +0800
Message-ID: <20230815154412.713846-2-hsinyi@chromium.org>
X-Mailer: git-send-email 2.41.0.694.ge786442a9b-goog
In-Reply-To: <20230815154412.713846-1-hsinyi@chromium.org>
References: <20230815154412.713846-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Some flash devices, eg. gd25lq64c, enable quad mode by default after
spi_nor_parse_bfpt(). However, the systems using these flash devices may
required the quad mode to be turned off for using write protection or to
avoid a potential short issue[1].

Add a disable-quad-mode property in devicetree that system can use it to
override the quad mode status parsed from BFPT.

[1]
https://www.elm-tech.com/ja/products/spi-flash-memory/gd25lq64/gd25lq64.pdf
page 13

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml b/Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml
index 58f0cea160ef5..4cf1da1108500 100644
--- a/Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml
+++ b/Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml
@@ -72,6 +72,13 @@ properties:
       be used on such systems, to denote the absence of a reliable reset
       mechanism.
 
+  disable-quad-mode:
+    type: boolean
+    description:
+      Some flash devices enables QE bit after BFPT is parsed. However, some system
+      may required quad mode to be disabled to use write protection. This boolean
+      flag is to override the quad enable status parsed from BFPT.
+
   no-wp:
     type: boolean
     description:
-- 
2.41.0.694.ge786442a9b-goog

