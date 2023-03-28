Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DFC146CBC54
	for <lists+devicetree@lfdr.de>; Tue, 28 Mar 2023 12:16:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230156AbjC1KPe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Mar 2023 06:15:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49236 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232499AbjC1KPb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Mar 2023 06:15:31 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4844C6A7E
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 03:15:23 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id j11so15056028lfg.13
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 03:15:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679998521;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Mg5frztIjRO8xPyyjAsQX1BZNMpBQv5h5VL7qvtYjg4=;
        b=lm5A7AK2Y+pysxDKtabuoncNSLYvl5ECwtcbuz4TIkydtDNPASeam7ZKONUi/scwvc
         ytKM3N4EGv4pO5HSK/htEkU12yk1qH9lcTVKcENTTw/671ZYjTtYbHgswP6Rud0Ku2qC
         xNi2SfCnV+jJP+TNfO/P4lOByJvQwKZ0E7CD7mnbv+MKnEuqKZzitDFQ8eDph7cNrbrB
         9LuQ//3mX1ehdknmbHaI3IFjnUYPjnlNJ4gqiOC6MftsGq6ykA2MYFhGHopNpewR1E3o
         xy4qI7USNQO3C7gn2ZkE2fIr4qtvc7HAJmc0zzRwadpw0ZnHtKCYOJh2lV75qSIudsBE
         va4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679998521;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Mg5frztIjRO8xPyyjAsQX1BZNMpBQv5h5VL7qvtYjg4=;
        b=OwXjacIv7ogk0CzejH+SbPeFF4ay5fCR80XKSTRQ9Rcjx2CVC5f8LGqfN+5gKef2qr
         Hc9oYGNqm5NtGxDXtm0xgpPSOA5FsPqCS88fewxlHqfTQ2uTsaDIiQ+K/rJM6buWAUYJ
         VQdWKk8dILh1NAlO0g2SFm9PpVjYccNbPwGiUCCQ6T2TDYJFb0XNpdTXZf8lTXniw7Ah
         nhFPtEe0pxMbuOmv7ka46lPXOG1PJTNuq9EAitWrk9hpRugmIG1UJneFlD4pL4Ep/PQg
         4pFBn0QHt690GAwh1+eexnZpyHnL3Au6FZ1Ly47K3gqCFp9xAvfHFeJQa4+qXBFuIzd6
         boxA==
X-Gm-Message-State: AAQBX9et6Q024zj5xOqCjDIEY/3b8hUVCkkggplwyQfKTIh7eqKypBeh
        IIAhyHXz55r9sdR7COUKkQaymQ==
X-Google-Smtp-Source: AKy350b/KQGsVvcnnL1FGPlSVECFF8UzHQ2+2AMIm95qvEQVJmIBQxAVUk4oaRBvI+XrGAXwADS/hA==
X-Received: by 2002:a05:6512:4dc:b0:4ea:fa87:7a8a with SMTP id w28-20020a05651204dc00b004eafa877a8amr4397954lfq.37.1679998521674;
        Tue, 28 Mar 2023 03:15:21 -0700 (PDT)
Received: from ta1.c.googlers.com.com (61.215.228.35.bc.googleusercontent.com. [35.228.215.61])
        by smtp.gmail.com with ESMTPSA id o25-20020ac24959000000b004e84d64ab51sm5061405lfi.58.2023.03.28.03.15.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Mar 2023 03:15:21 -0700 (PDT)
From:   Tudor Ambarus <tudor.ambarus@linaro.org>
To:     nicolas.ferre@microchip.com, claudiu.beznea@microchip.com
Cc:     alexandre.belloni@bootlin.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        tudor.ambarus@linaro.org,
        Tudor Ambarus <tudor.ambarus@microchip.com>
Subject: [PATCH v3 2/4] ARM: dts: at91-sama5d27_som1: Set sst26vf064b SPI NOR flash at its maximum frequency
Date:   Tue, 28 Mar 2023 10:15:15 +0000
Message-Id: <20230328101517.1595738-3-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.40.0.348.gf938b09366-goog
In-Reply-To: <20230328101517.1595738-1-tudor.ambarus@linaro.org>
References: <20230328101517.1595738-1-tudor.ambarus@linaro.org>
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

From: Tudor Ambarus <tudor.ambarus@microchip.com>

sama5d27-som1 populates an sst26vf064b SPI NOR flash. Its maximum
operating frequency for 2.7-3.6V is 104 MHz. As the flash is operated
at 3.3V, increase its maximum supported frequency to 104MHz. The
increasing of the spi-max-frequency value requires the setting of the
"CE# Not Active Hold Time", thus set the spi-cs-setup-ns to a value of 7.

The sst26vf064b datasheet specifies just a minimum value for the
"CE# Not Active Hold Time" and it advertises it to 5 ns. There's no
maximum time specified. I determined experimentally that 5 ns for the
spi-cs-setup-ns is not enough when the flash is operated close to its
maximum frequency and tests showed that 7 ns is just fine, so set the
spi-cs-setup-ns dt property to 7.

With the increase of frequency the reads are now faster with ~37%.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 arch/arm/boot/dts/at91-sama5d27_som1.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/at91-sama5d27_som1.dtsi b/arch/arm/boot/dts/at91-sama5d27_som1.dtsi
index 8aa9e8dea337..95ecb7d040a8 100644
--- a/arch/arm/boot/dts/at91-sama5d27_som1.dtsi
+++ b/arch/arm/boot/dts/at91-sama5d27_som1.dtsi
@@ -43,7 +43,8 @@ flash@0 {
 					#size-cells = <1>;
 					compatible = "jedec,spi-nor";
 					reg = <0>;
-					spi-max-frequency = <80000000>;
+					spi-max-frequency = <104000000>;
+					spi-cs-setup-ns = <7>;
 					spi-tx-bus-width = <4>;
 					spi-rx-bus-width = <4>;
 					m25p,fast-read;
-- 
2.40.0.348.gf938b09366-goog

