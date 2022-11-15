Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 989E462902E
	for <lists+devicetree@lfdr.de>; Tue, 15 Nov 2022 03:55:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237444AbiKOCzW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Nov 2022 21:55:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38416 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237168AbiKOCyt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Nov 2022 21:54:49 -0500
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F4911A065
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 18:54:40 -0800 (PST)
Received: by mail-ed1-x535.google.com with SMTP id f7so20033030edc.6
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 18:54:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Lfd5vFsn4ORTC9eQFrAgBokxgVjsUt5YFyR8S2MDEt4=;
        b=QKdeWglrDTyEbJvkPFXGD+5eCNiWbpvzs2ceej/LNVabuapwd3NQGQhQnXCA3ip0Ut
         F+NiOgJdylxj0xjXeiVQ76JAXUe2mwhuth9aiUqFYafb1DE/wkFBNlSsn6mCWY2Ji5rz
         X8dr1s/lZZUkZWwsm6wgYl5vKs6wPgzgMUwHUl2kcrVvr6LUG/FfuWfzoOVLW6n1vg4t
         df31np77res+5W1068tJskWLzwjDvSQtaAd0gh5D/H9MmQEDA63lJwaE9x4buGRP0Goz
         4S/dfF4yF2bxSj8f994ah0werg4sZLFwlynSjuOD9cFm7KbDTuHZjZOAa4pJDzlVpgRx
         zzAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Lfd5vFsn4ORTC9eQFrAgBokxgVjsUt5YFyR8S2MDEt4=;
        b=PJBwTaUZWHlAqMB1rICBXp4YF2aGmvdc7cGPV/43MwPRya/QExPP/cZ+fW2TbXW393
         4zvqXLxUp4jUNh8pkYMp/Wt9qqSMoqTm+fe463uwGOBmgE/Ui8QE6HGOTabuaV94hJMA
         QJtJIo2BxKlkjNiL92p3IgkSBghl0CvRk6ArTibNvNR+wrbtcu3BXPO1IsxeehcgLUzc
         a3KSuhFDyyqEPI0GODCBoQvww45VDCJYjCZNMbpqPdYEJ0zrEL90Yes+zIkQZgYHSaVg
         gEWL00711gYhaR3kfg6JFvnyMDlVqAbDGcalyl6U7pecT/0JJMEwRFNufGMQOEQPZEYr
         cuuA==
X-Gm-Message-State: ANoB5plw+VO1nb0F85PKjSRvkhCBJiSz5EIdPH1YZLYgf8AlM/m/KuOT
        j5q8+bmnWVBIC89kI47i+Eh4VA==
X-Google-Smtp-Source: AA0mqf5yQwaFvSFd7YodrHhzpc49zT/4qGfOuHwOk8z6QV3S4fPap7lUmRBe/7UwDZmsEnmTMZTEEw==
X-Received: by 2002:a05:6402:40d:b0:461:de5e:ba52 with SMTP id q13-20020a056402040d00b00461de5eba52mr12972295edv.177.1668480878767;
        Mon, 14 Nov 2022 18:54:38 -0800 (PST)
Received: from c64.fritz.box ([2a01:2a8:8108:8301:7643:bec8:f62b:b074])
        by smtp.gmail.com with ESMTPSA id l9-20020a1709063d2900b0073d9a0d0cbcsm4861177ejf.72.2022.11.14.18.54.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Nov 2022 18:54:38 -0800 (PST)
From:   =?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@baylibre.com>
To:     linux-mediatek@lists.infradead.org
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com
Subject: [PATCH v2 12/15] dt-bindings: soc: mediatek: pwrap: add compatible for mt8365
Date:   Tue, 15 Nov 2022 03:54:18 +0100
Message-Id: <20221115025421.59847-13-bero@baylibre.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221115025421.59847-1-bero@baylibre.com>
References: <20221107211001.257393-1-bero@baylibre.com>
 <20221115025421.59847-1-bero@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add dt-binding documentation of pwrap for Mediatek MT8365

Signed-off-by: Bernhard Rosenkränzer <bero@baylibre.com>
---
 Documentation/devicetree/bindings/soc/mediatek/pwrap.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/mediatek/pwrap.txt b/Documentation/devicetree/bindings/soc/mediatek/pwrap.txt
index d24e2bc444be3..eb6379487c910 100644
--- a/Documentation/devicetree/bindings/soc/mediatek/pwrap.txt
+++ b/Documentation/devicetree/bindings/soc/mediatek/pwrap.txt
@@ -31,6 +31,7 @@ Required properties in pwrap device node.
 	"mediatek,mt8188-pwrap", "mediatek,mt8195-pwrap" for MT8188 SoCs
 	"mediatek,mt8195-pwrap" for MT8195 SoCs
 	"mediatek,mt8516-pwrap" for MT8516 SoCs
+	"mediatek,mt8365-pwrap" for MT8365 SoCs
 - interrupts: IRQ for pwrap in SOC
 - reg-names: "pwrap" is required; "pwrap-bridge" is optional.
   "pwrap": Main registers base
-- 
2.38.1

