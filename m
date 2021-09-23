Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 00850415888
	for <lists+devicetree@lfdr.de>; Thu, 23 Sep 2021 08:55:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239486AbhIWG5R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Sep 2021 02:57:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55414 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239490AbhIWG5P (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Sep 2021 02:57:15 -0400
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 641A5C061766
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 23:55:44 -0700 (PDT)
Received: by mail-pj1-x102b.google.com with SMTP id cu17-20020a17090afa9100b0019e7708e61cso630504pjb.5
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 23:55:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=N4fLW3GjiZK81aHwIFNX6SQcQ6QOSmBTc6L0mWZHJks=;
        b=S5u2ACy7xH+pz5i0ZeHgjEotrZPmDkrGrAsAZFIPjV4ZlTD4gJpQ6kZmvRjo8x76xW
         4JxKTTlc75Hgz4+6DKm1f++dR5tw6xyZ4zIEmQrMC++Z+TeL69hM+IfKGwDbaUAlqzuM
         W/+sVMobbMSJ7a+otzLN05ITrSX/uvrq/6voM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=N4fLW3GjiZK81aHwIFNX6SQcQ6QOSmBTc6L0mWZHJks=;
        b=OCoYb73m30Hws20MX9xYZ+X1wWL83MCPw2TS3m+DypLYKR3vr5iIfsEfS0SEFZyXgC
         qyFX0YnT5G6eWBvGngXto+rQ6b6x3NZsu6yrLx6w18ntg8DG3X4jNkrDCoujgZ52ajsH
         u1CfhLPWM3gulNjUkOJKGAzXadacL4VKAc/C+exgi7XQ7zb/8uJuoakPDQPLo42uc8b9
         iEQtekFyuIS0g19BOC0sBLls4vUUShF8UtVae26rIE5D3rt0YgbXaG6ezTSaor1XizkW
         1Pyl+nM7fObV0Cp7OuN5007vxjmJrqjgyPvO9qUdHYjlEtd+69AGNqeVsX4vpFg5QGjK
         OvGw==
X-Gm-Message-State: AOAM532lHq7sQuHKGUAum2zzcIB1ase4OQPFDykvGTe4VVwWHHW76MH/
        pp+6zaSRMVaPXPdwdgOGnfTe4sxwSXwx8Q==
X-Google-Smtp-Source: ABdhPJxGltxscSn5525SfZ7R0hnNTnhy8yrqpFCCM58LUt+TEW2MYfTyRHlSpyaRwWjldNRSRVNR7A==
X-Received: by 2002:a17:902:e793:b0:13b:9cae:5dcd with SMTP id cp19-20020a170902e79300b0013b9cae5dcdmr2587777plb.53.1632380143745;
        Wed, 22 Sep 2021 23:55:43 -0700 (PDT)
Received: from shiro.work ([2400:4162:2428:2f01:7285:c2ff:fe8e:66d7])
        by smtp.googlemail.com with ESMTPSA id e12sm1581888pgv.82.2021.09.22.23.55.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Sep 2021 23:55:43 -0700 (PDT)
From:   Daniel Palmer <daniel@0x0f.com>
To:     devicetree@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-leds@vger.kernel.org
Cc:     linus.walleij@linaro.org, bgolaszewski@baylibre.com,
        robh+dt@kernel.org, pavel@ucw.cz,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Daniel Palmer <daniel@0x0f.com>, Rob Herring <robh@kernel.org>
Subject: [PATCH v2 02/11] dt-bindings: gpio: msc313: Add offsets for ssd20xd
Date:   Thu, 23 Sep 2021 15:54:51 +0900
Message-Id: <20210923065500.2284347-3-daniel@0x0f.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210923065500.2284347-1-daniel@0x0f.com>
References: <20210923065500.2284347-1-daniel@0x0f.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the gpio offsets for the SSD201 and SSD202D chips.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
Acked-by: Rob Herring <robh@kernel.org>
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
---
 include/dt-bindings/gpio/msc313-gpio.h | 71 ++++++++++++++++++++++++++
 1 file changed, 71 insertions(+)

diff --git a/include/dt-bindings/gpio/msc313-gpio.h b/include/dt-bindings/gpio/msc313-gpio.h
index 2dd56683d3c1..5458c6580a02 100644
--- a/include/dt-bindings/gpio/msc313-gpio.h
+++ b/include/dt-bindings/gpio/msc313-gpio.h
@@ -50,4 +50,75 @@
 #define MSC313_GPIO_SPI0_DI	(MSC313_GPIO_SPI0 + 2)
 #define MSC313_GPIO_SPI0_DO	(MSC313_GPIO_SPI0 + 3)
 
+/* SSD20x */
+#define SSD20XD_GPIO_FUART	0
+#define SSD20XD_GPIO_FUART_RX	(SSD20XD_GPIO_FUART + 0)
+#define SSD20XD_GPIO_FUART_TX	(SSD20XD_GPIO_FUART + 1)
+#define SSD20XD_GPIO_FUART_CTS	(SSD20XD_GPIO_FUART + 2)
+#define SSD20XD_GPIO_FUART_RTS	(SSD20XD_GPIO_FUART + 3)
+
+#define SSD20XD_GPIO_SD		(SSD20XD_GPIO_FUART_RTS + 1)
+#define SSD20XD_GPIO_SD_CLK	(SSD20XD_GPIO_SD + 0)
+#define SSD20XD_GPIO_SD_CMD	(SSD20XD_GPIO_SD + 1)
+#define SSD20XD_GPIO_SD_D0	(SSD20XD_GPIO_SD + 2)
+#define SSD20XD_GPIO_SD_D1	(SSD20XD_GPIO_SD + 3)
+#define SSD20XD_GPIO_SD_D2	(SSD20XD_GPIO_SD + 4)
+#define SSD20XD_GPIO_SD_D3	(SSD20XD_GPIO_SD + 5)
+
+#define SSD20XD_GPIO_UART0	(SSD20XD_GPIO_SD_D3 + 1)
+#define SSD20XD_GPIO_UART0_RX	(SSD20XD_GPIO_UART0 + 0)
+#define SSD20XD_GPIO_UART0_TX	(SSD20XD_GPIO_UART0 + 1)
+
+#define SSD20XD_GPIO_UART1	(SSD20XD_GPIO_UART0_TX + 1)
+#define SSD20XD_GPIO_UART1_RX	(SSD20XD_GPIO_UART1 + 0)
+#define SSD20XD_GPIO_UART1_TX	(SSD20XD_GPIO_UART1 + 1)
+
+#define SSD20XD_GPIO_TTL	(SSD20XD_GPIO_UART1_TX + 1)
+#define SSD20XD_GPIO_TTL0	(SSD20XD_GPIO_TTL + 0)
+#define SSD20XD_GPIO_TTL1	(SSD20XD_GPIO_TTL + 1)
+#define SSD20XD_GPIO_TTL2	(SSD20XD_GPIO_TTL + 2)
+#define SSD20XD_GPIO_TTL3	(SSD20XD_GPIO_TTL + 3)
+#define SSD20XD_GPIO_TTL4	(SSD20XD_GPIO_TTL + 4)
+#define SSD20XD_GPIO_TTL5	(SSD20XD_GPIO_TTL + 5)
+#define SSD20XD_GPIO_TTL6	(SSD20XD_GPIO_TTL + 6)
+#define SSD20XD_GPIO_TTL7	(SSD20XD_GPIO_TTL + 7)
+#define SSD20XD_GPIO_TTL8	(SSD20XD_GPIO_TTL + 8)
+#define SSD20XD_GPIO_TTL9	(SSD20XD_GPIO_TTL + 9)
+#define SSD20XD_GPIO_TTL10	(SSD20XD_GPIO_TTL + 10)
+#define SSD20XD_GPIO_TTL11	(SSD20XD_GPIO_TTL + 11)
+#define SSD20XD_GPIO_TTL12	(SSD20XD_GPIO_TTL + 12)
+#define SSD20XD_GPIO_TTL13	(SSD20XD_GPIO_TTL + 13)
+#define SSD20XD_GPIO_TTL14	(SSD20XD_GPIO_TTL + 14)
+#define SSD20XD_GPIO_TTL15	(SSD20XD_GPIO_TTL + 15)
+#define SSD20XD_GPIO_TTL16	(SSD20XD_GPIO_TTL + 16)
+#define SSD20XD_GPIO_TTL17	(SSD20XD_GPIO_TTL + 17)
+#define SSD20XD_GPIO_TTL18	(SSD20XD_GPIO_TTL + 18)
+#define SSD20XD_GPIO_TTL19	(SSD20XD_GPIO_TTL + 19)
+#define SSD20XD_GPIO_TTL20	(SSD20XD_GPIO_TTL + 20)
+#define SSD20XD_GPIO_TTL21	(SSD20XD_GPIO_TTL + 21)
+#define SSD20XD_GPIO_TTL22	(SSD20XD_GPIO_TTL + 22)
+#define SSD20XD_GPIO_TTL23	(SSD20XD_GPIO_TTL + 23)
+#define SSD20XD_GPIO_TTL24	(SSD20XD_GPIO_TTL + 24)
+#define SSD20XD_GPIO_TTL25	(SSD20XD_GPIO_TTL + 25)
+#define SSD20XD_GPIO_TTL26	(SSD20XD_GPIO_TTL + 26)
+#define SSD20XD_GPIO_TTL27	(SSD20XD_GPIO_TTL + 27)
+
+#define SSD20XD_GPIO_GPIO	(SSD20XD_GPIO_TTL27 + 1)
+#define SSD20XD_GPIO_GPIO0	(SSD20XD_GPIO_GPIO + 0)
+#define SSD20XD_GPIO_GPIO1	(SSD20XD_GPIO_GPIO + 1)
+#define SSD20XD_GPIO_GPIO2	(SSD20XD_GPIO_GPIO + 2)
+#define SSD20XD_GPIO_GPIO3	(SSD20XD_GPIO_GPIO + 3)
+#define SSD20XD_GPIO_GPIO4	(SSD20XD_GPIO_GPIO + 4)
+#define SSD20XD_GPIO_GPIO5	(SSD20XD_GPIO_GPIO + 5)
+#define SSD20XD_GPIO_GPIO6	(SSD20XD_GPIO_GPIO + 6)
+#define SSD20XD_GPIO_GPIO7	(SSD20XD_GPIO_GPIO + 7)
+#define SSD20XD_GPIO_GPIO10	(SSD20XD_GPIO_GPIO + 8)
+#define SSD20XD_GPIO_GPIO11	(SSD20XD_GPIO_GPIO + 9)
+#define SSD20XD_GPIO_GPIO12	(SSD20XD_GPIO_GPIO + 10)
+#define SSD20XD_GPIO_GPIO13	(SSD20XD_GPIO_GPIO + 11)
+#define SSD20XD_GPIO_GPIO14	(SSD20XD_GPIO_GPIO + 12)
+#define SSD20XD_GPIO_GPIO85	(SSD20XD_GPIO_GPIO + 13)
+#define SSD20XD_GPIO_GPIO86	(SSD20XD_GPIO_GPIO + 14)
+#define SSD20XD_GPIO_GPIO90	(SSD20XD_GPIO_GPIO + 15)
+
 #endif /* _DT_BINDINGS_MSC313_GPIO_H */
-- 
2.33.0

