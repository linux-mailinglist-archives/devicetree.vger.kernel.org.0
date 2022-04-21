Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 38BBF50A186
	for <lists+devicetree@lfdr.de>; Thu, 21 Apr 2022 16:05:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1388303AbiDUOGU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Apr 2022 10:06:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40420 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1388599AbiDUOGR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Apr 2022 10:06:17 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6ADD393C5
        for <devicetree@vger.kernel.org>; Thu, 21 Apr 2022 07:03:10 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id s25so1964126wrb.8
        for <devicetree@vger.kernel.org>; Thu, 21 Apr 2022 07:03:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=wQKtX8WQCvG5ejnoi5Tx3qqomca9PHBF2mLes/stX7M=;
        b=AgEJXmMrcJiYHb/zC+7om2oCRjpYUw8xNsSKSQV9uECuRMPTThufzJ1NJY+df/hfKK
         XV9IBzJaoUikKzxvhHEXHe7kK+RqS6k4BEZ6Vyq3uQySxeXxYfJO9sgcVe5o2Xx6G4tt
         vFjNsdML7fETc24SqP/5MXFeTEpuRO5k+/4dC65zh312CKWKi2DgDWFQxeruHy4fmuOG
         jmhD9RwDHKfa4qmANxzECjdjQeC2h1IavNVWNTyDvuKztgwbmIfc9OMRPfFYV82O+9Ma
         wUyY6IxNyvlJtIxV1WW3gW9lseMJcOwoLKSuuBDd2FfImpLXdYUjm1o9Uw+kFrwC2ms4
         1m1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=wQKtX8WQCvG5ejnoi5Tx3qqomca9PHBF2mLes/stX7M=;
        b=cQEtaNnDKXx11WpUqmasdKQokFPJO0DtHtyopS7HAKgTyvIUH8xTB9JBB3lrv3lbDp
         0szyxZ3/89dtceXlaDChPu6+r+LgrMFN1xBY1fJCkYt4spImotKD3feM/L0X0RY2VJNB
         D7dSydf58umD5VeZKq/kQ4GxfuA4HuvLUy1vjfJ1vH7aoF+JfGoGigWc8PqUHZpf9638
         paloy6gvYpCUd7x//QvuE1kIwz+Hj9WcUWEIabMDyFEvWrdO+Zq1zYRlyt4YINN1iHRD
         mVtn/fBpZDOZWv3ExAvkwXXyqqUoHuCN2lKIDSqiWAtv/UM+xdOxv4jVW7OcXMFOGdii
         nLww==
X-Gm-Message-State: AOAM531ephiUkZpOEk7fquCkBfoHz6j9vexDLUzmswBak0wdKETADl9Z
        dzQOGg4Yy2J23ljpaD9l679ztQ==
X-Google-Smtp-Source: ABdhPJwNBbP3ZT3FPSvScQRH2EbIoBe4I+WYo8GwVldT54PatPc9ePoTluWLxh6Mkgyejmraj+GshA==
X-Received: by 2002:a5d:53cb:0:b0:207:ab75:3ce7 with SMTP id a11-20020a5d53cb000000b00207ab753ce7mr20360816wrw.171.1650549788683;
        Thu, 21 Apr 2022 07:03:08 -0700 (PDT)
Received: from groot.home ([2a01:cb19:85e6:1900:e19f:c42c:d783:89c1])
        by smtp.gmail.com with ESMTPSA id g5-20020adfd1e5000000b0020a97e7ba9fsm2899192wrd.92.2022.04.21.07.03.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Apr 2022 07:03:08 -0700 (PDT)
From:   Mattijs Korpershoek <mkorpershoek@baylibre.com>
To:     Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Fengping Yu <fengping.yu@mediatek.com>
Cc:     Kevin Hilman <khilman@baylibre.com>, linux-input@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        Mattijs Korpershoek <mkorpershoek@baylibre.com>
Subject: [PATCH] dt-bindings: input: mediatek,mt6779-keypad: update maintainer
Date:   Thu, 21 Apr 2022 16:02:55 +0200
Message-Id: <20220421140255.2781505-1-mkorpershoek@baylibre.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fengping has no longer interest and time to maintain this driver so he
agreed to transfer maintainership over to me.

Signed-off-by: Mattijs Korpershoek <mkorpershoek@baylibre.com>
---
 .../devicetree/bindings/input/mediatek,mt6779-keypad.yaml       | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/input/mediatek,mt6779-keypad.yaml b/Documentation/devicetree/bindings/input/mediatek,mt6779-keypad.yaml
index b1770640f94b..03ebd2665d07 100644
--- a/Documentation/devicetree/bindings/input/mediatek,mt6779-keypad.yaml
+++ b/Documentation/devicetree/bindings/input/mediatek,mt6779-keypad.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Mediatek's Keypad Controller device tree bindings
 
 maintainers:
-  - Fengping Yu <fengping.yu@mediatek.com>
+  - Mattijs Korpershoek <mkorpershoek@baylibre.com>
 
 allOf:
   - $ref: "/schemas/input/matrix-keymap.yaml#"
-- 
2.32.0

