Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F30EC5BFBFD
	for <lists+devicetree@lfdr.de>; Wed, 21 Sep 2022 12:07:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230424AbiIUKGn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Sep 2022 06:06:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60886 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230358AbiIUKGl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Sep 2022 06:06:41 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 27B2E85AA0
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 03:06:37 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id lh5so12392735ejb.10
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 03:06:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=i7AiJke0RXt3Y3gefpg024oHyymEk36+1L9tZaTyjZQ=;
        b=t6+YqmRo2WFruAVVMiAUGdnIJlq1p0yLTMFevb2kYhYeYvpy4T1UvGBSg7PiELpuho
         yZZhIdh6b4QvllAVxv2url55QjqY6KTbA3UjrK9RE2jUopTautClbplRgLEp0buJBZ0R
         gGWTn6bqC+/ebZQxGqzFv2py0Mbk6cfaKdGooPdBYso/V6+vYccINUbEN/3vgJL5/BB6
         orkD5otB5j0sq9tO1z1zgVwwbH7M4SuOAUMs1iBLHu1dxpZQaCmv4KqSuiMuAdgL5av2
         vaXpQCNDduyUl6jpfyqpyLOnL4nAm9Ve8gUb1JVu602ULji+YIM/cMGJdniO3oUUoSzD
         T/Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=i7AiJke0RXt3Y3gefpg024oHyymEk36+1L9tZaTyjZQ=;
        b=LegMC4DjFnXYeKxDQJJrYqdrVUHxdm51v0Zxcx7dLuK44DonetmZtciZUUZ04l/HTc
         ilwwFM16631CVoEfydFl+mOCTZLAeFM5fmJ2d5rddtk6nrTzMrDG8w9nCoEK9IuYprba
         Pglu2JRowWFTAkgKVh5oa7R3CF0EE1qMc7P6Y6Su8tMUU5FO/9+JbmwDQJDtGetDoBMq
         4FcZhnrcyxci5CP1+93lgIgI9ohSoRHfhLinAnUxP+CEUfYDVbUKriNIgCjXfw8u2OER
         5uja1kKvPT2xhahkK2WrbO2G4dwG6kVIh9kAeFFhLLzCZmPjwpwgrdMTBuPegysxiwMT
         6X/w==
X-Gm-Message-State: ACrzQf0e2pcL/Q+Pa9MHjkW1tb2RSI/efohjc01w3JRvD0eIn/TobY78
        sj1OBX2VDzzo5ALUloZItWAZsQ==
X-Google-Smtp-Source: AMsMyM50oCeyjRxK+fmYG030jR8TngTYGZrmO525DVI9C+v/ppgfZYe2k1gzpHyS6YpuEkF1O2lgBQ==
X-Received: by 2002:a17:907:320c:b0:741:1e55:7a69 with SMTP id xg12-20020a170907320c00b007411e557a69mr20507637ejb.740.1663754795366;
        Wed, 21 Sep 2022 03:06:35 -0700 (PDT)
Received: from baylibre-ThinkPad-T14s-Gen-2i.. (32.31.102.84.rev.sfr.net. [84.102.31.32])
        by smtp.gmail.com with ESMTPSA id v1-20020a170906292100b0074134543f82sm1087710ejd.90.2022.09.21.03.06.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Sep 2022 03:06:35 -0700 (PDT)
From:   Julien Panis <jpanis@baylibre.com>
To:     william.gray@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, mranostay@ti.com
Subject: [PATCH v7 4/4] MAINTAINERS: add TI ECAP driver info
Date:   Wed, 21 Sep 2022 12:06:27 +0200
Message-Id: <20220921100627.124085-5-jpanis@baylibre.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220921100627.124085-1-jpanis@baylibre.com>
References: <20220921100627.124085-1-jpanis@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This commit adds driver info for TI ECAP used in capture operating mode.

Signed-off-by: Julien Panis <jpanis@baylibre.com>
---
 MAINTAINERS | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index d4999f68bda8..fa92518b22ef 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -20322,6 +20322,12 @@ T:	git git://linuxtv.org/mhadli/v4l-dvb-davinci_devices.git
 F:	drivers/media/platform/ti/davinci/
 F:	include/media/davinci/
 
+TI ENHANCED CAPTURE (eCAP) DRIVER
+R:	Julien Panis <jpanis@baylibre.com>
+L:	linux-iio@vger.kernel.org
+F:	Documentation/devicetree/bindings/counter/ti,am62-ecap-capture.yaml
+F:	drivers/counter/ti-ecap-capture.c
+
 TI ENHANCED QUADRATURE ENCODER PULSE (eQEP) DRIVER
 R:	David Lechner <david@lechnology.com>
 L:	linux-iio@vger.kernel.org
-- 
2.37.3

