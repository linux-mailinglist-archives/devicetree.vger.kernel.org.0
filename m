Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5D53D2574DF
	for <lists+devicetree@lfdr.de>; Mon, 31 Aug 2020 09:59:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728134AbgHaH7a (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Aug 2020 03:59:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728083AbgHaH72 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Aug 2020 03:59:28 -0400
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com [IPv6:2607:f8b0:4864:20::643])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C2989C061573
        for <devicetree@vger.kernel.org>; Mon, 31 Aug 2020 00:59:28 -0700 (PDT)
Received: by mail-pl1-x643.google.com with SMTP id x18so1424400pll.6
        for <devicetree@vger.kernel.org>; Mon, 31 Aug 2020 00:59:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=k+B4CdFk9Gd+ps9B74oSqsmnwlY3UVt8wl1Elm8SmY0=;
        b=Gw+iV3VCzPbHdseLXtIBeU3Mi7xPaq7mLlHGZet4W5Vg44/+hSefO84DFwQRuR4NXB
         WnMmQeWlrhuUj644V+h2MjXVjaPCXemYHe4U69QAzPwW3oOK2mHIetBGHyT73gRHvLyt
         Rm01QODybCqKg+fpieLU/TT9sQtmPdpe1iDOHN+k6oGY+8PRqiEADweuFpfOd26Mp9mA
         Q5pkTgx4rOzgNhutl0GV0J5T0DuK3lckh/Jcmtg1KSpA3XTCgmuc1Daem+Q8gw7dFg0J
         T44BvpbZ4jUSMkiEB677FEZMEig+U0+9FocZcu+6JhpCF5OSCP7Eq5+IKiOVYLK/Yikk
         3VKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=k+B4CdFk9Gd+ps9B74oSqsmnwlY3UVt8wl1Elm8SmY0=;
        b=sbDL6eEpc/I5ItCSQZQPwrrzaUIZxjBPSJeyWee+MGJnD1+MVHUUzSh73HnsKCErM1
         jE/USdqEUv3ImuK59pl2rir6FHEBMRcj/o7cPPtZtR/4B58tRcNSDhz7VEC+NaBj5GRO
         0fyCyPPP241MueeWTDIV8sVHifpTl5mM1B+YoT2RAh+lScth8m3ErPfGUSxboWvVPikD
         Yzrga7TH7iGOOUymoxzZbw1Uqw/3BxSAgC2+OHvzn+iepPP5cRZzItFOmQE6DY0Iy7LX
         Vk/otXQHUSHvHZvYhViRyydnei8NJyk0c2QtC+zQM78k0ooRWJXBtTUh7ZIJF0/f649e
         4kdw==
X-Gm-Message-State: AOAM5335o0clG1ssmw+4Qd7CVO2CUwCAB9yugmZ/5olzP/qCRrkqehi3
        qK3KS5Tg7ddgChDTOCo+E7Jys1PNOz7edQ==
X-Google-Smtp-Source: ABdhPJxM1akzJJ5PBiQPJSLV9xRX13Xf2FYVn00D9IOJBlm0VjEUERTaIw4zRZS87qSvtuFemOdjLw==
X-Received: by 2002:a17:90a:d18d:: with SMTP id fu13mr290077pjb.137.1598860768201;
        Mon, 31 Aug 2020 00:59:28 -0700 (PDT)
Received: from localhost.localdomain ([45.114.62.190])
        by smtp.gmail.com with ESMTPSA id g19sm6424057pgj.86.2020.08.31.00.59.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Aug 2020 00:59:27 -0700 (PDT)
From:   Anand Moon <linux.amoon@gmail.com>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Christian Hewitt <christianshewitt@gmail.com>,
        Anand Moon <linux.amoon@gmail.com>
Subject: [PATCH v4 2/2] arm64: defconfig: Enable RTC devices for Amlogic boards
Date:   Mon, 31 Aug 2020 13:29:11 +0530
Message-Id: <20200831075911.434-3-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200831075911.434-1-linux.amoon@gmail.com>
References: <20200831075911.434-1-linux.amoon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enables the RTC PCF8563 driver used on Amlogic Libretech-pc
and Odroid-N2 boards supported in mainline kernel.

Cc: Kevin Hilman <khilman@baylibre.com>
Acked-by: Neil Armstrong <narmstrong@baylibre.com>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
Changes v4
--None
Changes v3
--None
Changes v2
--Added Neil's ACK
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index e0f33826819f..3d9756833e0e 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -773,6 +773,7 @@ CONFIG_RTC_DRV_DS1307=m
 CONFIG_RTC_DRV_MAX77686=y
 CONFIG_RTC_DRV_RK808=m
 CONFIG_RTC_DRV_PCF85363=m
+CONFIG_RTC_DRV_PCF8563=m
 CONFIG_RTC_DRV_RX8581=m
 CONFIG_RTC_DRV_RV8803=m
 CONFIG_RTC_DRV_S5M=y
-- 
2.28.0

