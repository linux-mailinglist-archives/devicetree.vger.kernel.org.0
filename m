Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 32563629032
	for <lists+devicetree@lfdr.de>; Tue, 15 Nov 2022 03:55:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237489AbiKOCzc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Nov 2022 21:55:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237288AbiKOCyt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Nov 2022 21:54:49 -0500
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 367D01A393
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 18:54:41 -0800 (PST)
Received: by mail-ed1-x52e.google.com with SMTP id u24so19982222edd.13
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 18:54:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X3nU7X0djX9jQ80iI8+t0kZ5Fy4kB3s5F+snjwXKwEE=;
        b=qHw6yLdaXz/BrvdOtxs23rQqN6uoD9Yq57iWVm5qtsNwRyl0txxACn1YlsXr9XGR06
         X0/fXV7ooJLhtBLvSM9vlvjQz70IgAPiP/0OB1VajH1nuAHs49/uKU0sgovQglseTenS
         cekyB0G7jao5CsOa821xumiuslVIKSD42v79wdU6DODpP853aT4AHzZVUtVx0Ej2bJHV
         4Zq7TBRoXAIUXiPJadvqueUTT8uphzsjFZxUl9HcrUyAPwwJxbu8xIWq/6o3ZBcaS5gI
         7IqRN2ytMVjrpflB1xK/99Gncnx9qVl/WrqgWO5fksPIthHRzfoT484qu0KY8HfMpwkZ
         S+GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=X3nU7X0djX9jQ80iI8+t0kZ5Fy4kB3s5F+snjwXKwEE=;
        b=C+ycUYkSksHRgW+37ghx9B1KlyM9G7z80pMcZjix85PAW/b9+n+rlH+sfFCwAiCRDA
         28S7v/BYLLh6SsJJwo5bK9Flgg5F06DmJuK9x/GOESpEMCVNE2chq1p0cdozJE6ers4b
         ox8P9puqrbSDqNpfb2Fa7TLpaYxVEk0fH3c8AXby8xtbffXRcnMH7xrINeRkMcFh7G9O
         Iaetfl41lzHSwnq2KZSXrbyzUu9kWkjpSeh/lAAqWFnNejgy9C13H/OkDckwi18pfXrs
         pE8gXSgkPDft3fBEAcSULJpbCs6BdkH0LgOPOplwhcNR39R83CxXw4j6EJZFxGr4LYIK
         GDXw==
X-Gm-Message-State: ANoB5pk8Cwhe2kaN3AMS3idnffMltfby2hJvrhJsFBtlMmgQZtnLXLh3
        ehiJTivUDGGKqsGnoztSD4FOUA==
X-Google-Smtp-Source: AA0mqf5fY+yhWzH/Ndk7iEot+4/kLLx7PrL8ExjCcw5CMfSMJthgD//79QTiyAVrO97/Z5Zvj++zfA==
X-Received: by 2002:aa7:cf07:0:b0:461:f1c6:1f22 with SMTP id a7-20020aa7cf07000000b00461f1c61f22mr13826229edy.95.1668480879681;
        Mon, 14 Nov 2022 18:54:39 -0800 (PST)
Received: from c64.fritz.box ([2a01:2a8:8108:8301:7643:bec8:f62b:b074])
        by smtp.gmail.com with ESMTPSA id l9-20020a1709063d2900b0073d9a0d0cbcsm4861177ejf.72.2022.11.14.18.54.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Nov 2022 18:54:39 -0800 (PST)
From:   =?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@baylibre.com>
To:     linux-mediatek@lists.infradead.org
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com
Subject: [PATCH v2 13/15] dt-bindings: irq: mtk, sysirq: add support for mt8365
Date:   Tue, 15 Nov 2022 03:54:19 +0100
Message-Id: <20221115025421.59847-14-bero@baylibre.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221115025421.59847-1-bero@baylibre.com>
References: <20221107211001.257393-1-bero@baylibre.com>
 <20221115025421.59847-1-bero@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add binding documentation of mediatek,sysirq for mt8365 SoC.

Signed-off-by: Bernhard Rosenkränzer <bero@baylibre.com>
---
 .../devicetree/bindings/interrupt-controller/mediatek,sysirq.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/mediatek,sysirq.txt b/Documentation/devicetree/bindings/interrupt-controller/mediatek,sysirq.txt
index 84ced3f4179b9..3ffc60184e445 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/mediatek,sysirq.txt
+++ b/Documentation/devicetree/bindings/interrupt-controller/mediatek,sysirq.txt
@@ -25,6 +25,7 @@ Required properties:
 	"mediatek,mt6577-sysirq": for MT6577
 	"mediatek,mt2712-sysirq", "mediatek,mt6577-sysirq": for MT2712
 	"mediatek,mt2701-sysirq", "mediatek,mt6577-sysirq": for MT2701
+	"mediatek,mt8365-sysirq", "mediatek,mt6577-sysirq": for MT8365
 - interrupt-controller : Identifies the node as an interrupt controller
 - #interrupt-cells : Use the same format as specified by GIC in arm,gic.txt.
 - reg: Physical base address of the intpol registers and length of memory
-- 
2.38.1

