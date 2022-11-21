Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8475863185C
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 02:55:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229934AbiKUBzU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 20 Nov 2022 20:55:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35010 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229864AbiKUBzO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 20 Nov 2022 20:55:14 -0500
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 76E9230F4D
        for <devicetree@vger.kernel.org>; Sun, 20 Nov 2022 17:55:11 -0800 (PST)
Received: by mail-ej1-x62f.google.com with SMTP id m22so25289100eji.10
        for <devicetree@vger.kernel.org>; Sun, 20 Nov 2022 17:55:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xM57jD3fRmCbS1XbxyoE71rQoQKI/Y1OhUjPEqjbJaQ=;
        b=3rYtqJtpfY1XBXHoPLhTx3RiVugMlkxe2v0zLw+nO9vnH8cUX3asUyAhkE6D6kmyWp
         drp2dTjwucgyTm8PVVJKpZOAK4nmKSkn3I7Ce4MIMuMc7FoBHHr5ThR4SgcoTI/tcs+K
         mic2r4ZLP7zKFSiz2L82z2/h3d/+OPoq6hhfDgDRTV3PFijIaosqnfdrf3a4Hpb3U51m
         qIYnhMr+qt8OsabDdSfGTG4yn2424+HAC0jedas2Oqqxs9gxAfWHgFyBRRLSanIq2yoF
         6JqOquRZzkLbVyM43ujFG7ZLMT0dfSznja6PgL9m4+B4WiTiazbf84x3UEcMlexyEezE
         rLEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xM57jD3fRmCbS1XbxyoE71rQoQKI/Y1OhUjPEqjbJaQ=;
        b=JVLgbjfNp2E9QAdb61T7EhhnADdT6ggMVsmhsif42AOaD8lmIpC8nqeXHftRzOcUWa
         LKUTwI24ecLZU68WB3OyWPf8u8+m+s022TcVENR0Krst2KlOWZM4va0Xz0I/5l+WlVwp
         ZwFyZyxo90Etk9epL4R/W7RzAwnYX/Eo0aw7MQV6+4XOAzc0J+FKaSphmTZTA9C1JOXg
         8FlNEaVCF3W6F50aCuEDFhCUHeWjfTDuEHmghVxKyTj74XB4jLEuUaT4V6qMeCpQwlHZ
         k5l6fKmY34xpDgjnvq4nA4KRUeDCvRzNXkvXlCxy2UWBCYcsXqEKGCr+4JrsKsgEaYxn
         GPFA==
X-Gm-Message-State: ANoB5pliCyIVXRJkZpyGPkZ1rsUTXwzWgl99WoHnv5FKjehvvtvV4Tog
        7jOY6oXT5KozpFQBFwwUTgDB80e7WtKVvtR1
X-Google-Smtp-Source: AA0mqf6mpu5fXTEu5fclo9wzEMbRjLzOsiLY/jkrU0nKWzcU/tMWIGWZKzPzHzrd36r6DW0ahsh3lQ==
X-Received: by 2002:a17:907:d042:b0:78c:c893:1965 with SMTP id vb2-20020a170907d04200b0078cc8931965mr13152538ejc.247.1668995709816;
        Sun, 20 Nov 2022 17:55:09 -0800 (PST)
Received: from c64.fritz.box ([2a01:2a8:8108:8301:7643:bec8:f62b:b074])
        by smtp.gmail.com with ESMTPSA id g2-20020a170906538200b00782e3cf7277sm4415513ejo.120.2022.11.20.17.55.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Nov 2022 17:55:09 -0800 (PST)
From:   =?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@baylibre.com>
To:     devicetree@vger.kernel.org
Cc:     linux-mediatek@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org,
        krzysztof.kozlowski@linaro.org, khilman@baylibre.com,
        mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com,
        matthias.bgg@gmail.com
Subject: [PATCH 4/9] dt-bindings: pinctrl: st,stm32: Don't list pins-are-numbered as required
Date:   Mon, 21 Nov 2022 02:54:46 +0100
Message-Id: <20221121015451.2471196-5-bero@baylibre.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221121015451.2471196-1-bero@baylibre.com>
References: <20221121015451.2471196-1-bero@baylibre.com>
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

Don't list the pins-are-numbered property as required

Signed-off-by: Bernhard Rosenkränzer <bero@baylibre.com>
---
 Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml
index 9d59208d83c18..7c08d362132a4 100644
--- a/Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml
@@ -206,7 +206,6 @@ required:
   - '#address-cells'
   - '#size-cells'
   - ranges
-  - pins-are-numbered
 
 additionalProperties: false
 
-- 
2.38.1

