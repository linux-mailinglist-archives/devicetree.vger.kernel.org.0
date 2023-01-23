Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 462FF677CA5
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 14:38:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231816AbjAWNib (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 08:38:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58658 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231873AbjAWNi2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 08:38:28 -0500
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3B4614221
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 05:38:26 -0800 (PST)
Received: by mail-ej1-x62e.google.com with SMTP id v6so30540987ejg.6
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 05:38:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ehxoyvaIc4ExsaI/5CJUPfW8cWsLvfgBKNN5d4+uPKk=;
        b=VR9HWOoPmixdQ4AjASWT9GZdYWGZAxSM7xbdZfaviE3YAo/5HeiFmBKL/hUn1nxS9g
         MtnvUlrKh5U5QhhmQ+RJpyC82kkarTzSYjtpZcv+TI0fAycBP+EGc9xHFdHNR//kf6kQ
         bb1a68ssbXUmSJKtGHGskPCAEerSQ9YdEg/Fx6GlTCY03tElN/br7HGGyV3e5ZZLVL5O
         cvSR+A2qS0EyGI3iq38cvgbdn67T16fvExwx7QV/aUr9DbWrYO0TWeK4F1mPTnzehA6x
         zYFP3sPvAG88j5hIGwdVn5QOUbxcxvNRXI2IPFLEGanTS/tmgIq9Q7/+k7TqRqlF67TB
         xiDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ehxoyvaIc4ExsaI/5CJUPfW8cWsLvfgBKNN5d4+uPKk=;
        b=iEzWoB4gMUt6zXe0MIMY/N+SyeDXXzKGnqx4huWtWPvfdPtduruODzT++TtWXmGZ6w
         YvTLC2/fQMFjsFtE5ctbNgj3D/lMrmMxEES7VTqZWrHoYkAf2YNUEDmqhpCVvE8lgzmC
         Zb6vDVGcFb7VDIxVH0CXL0oBSmt19JkdTJsYYaz7AUW5kJOWnsJGWbsXgBbYs0m85rny
         f7u+W5A76sv3JmVzbvUERpKgJxgftarIcVGIvb8ojT3+B6S2OjcPM0wHxdYrKRfw+2hh
         dY0hKx0faG7NBSNvMHOY7e5qT6n36BZSs1b36P8nlv0wO7C2x3KSFtsCJ24YOhbVb/Ms
         HI5Q==
X-Gm-Message-State: AFqh2kqYr3im6+NdYDPrujcE2R9+4WzCJ8Mc4NGmgS7HKzrtz3snVwZu
        JJEYTi+YpOKfxhmkIQCxGA0B+g==
X-Google-Smtp-Source: AMrXdXsRRAXoiK6hJwxk8oz7TxWkF28p/lA+lqmYR6NW373WGtg3B8wN4nvjZIl531gHEA6tLth5zw==
X-Received: by 2002:a17:907:6d0e:b0:871:7b6f:9c53 with SMTP id sa14-20020a1709076d0e00b008717b6f9c53mr33986620ejc.30.1674481105281;
        Mon, 23 Jan 2023 05:38:25 -0800 (PST)
Received: from Lat-5310.dev.rtsoft.ru ([87.116.163.233])
        by smtp.gmail.com with ESMTPSA id s1-20020aa7cb01000000b00463b9d47e1fsm21502050edt.71.2023.01.23.05.38.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jan 2023 05:38:24 -0800 (PST)
From:   Andrey Konovalov <andrey.konovalov@linaro.org>
To:     davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
        pabeni@redhat.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, alexandre.torgue@foss.st.com,
        peppe.cavallaro@st.com, joabreu@synopsys.com,
        mcoquelin.stm32@gmail.com
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        netdev@vger.kernel.org,
        Andrey Konovalov <andrey.konovalov@linaro.org>
Subject: [PATCH 1/2] dt-bindings: net: snps,dwmac: add snps,rx-clk-runs-in-lpi parameter
Date:   Mon, 23 Jan 2023 16:37:46 +0300
Message-Id: <20230123133747.18896-2-andrey.konovalov@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230123133747.18896-1-andrey.konovalov@linaro.org>
References: <20230123133747.18896-1-andrey.konovalov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds a new parameter to the stmmac DT: snps,rx-clk-runs-in-lpi.

If this parameter is present in the device tree, the PHY should not stop
RX_CLK after entering Rx LPI state.

Signed-off-by: Andrey Konovalov <andrey.konovalov@linaro.org>
---
 Documentation/devicetree/bindings/net/snps,dwmac.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/snps,dwmac.yaml b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
index e88a86623fce..771f09db4a3f 100644
--- a/Documentation/devicetree/bindings/net/snps,dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
@@ -452,6 +452,11 @@ properties:
     description:
       Enable gating of the MAC TX clock during TX low-power mode
 
+  snps,rx-clk-runs-in-lpi:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      Keep RX_CLK from the PHY running in RX low-power mode
+
   snps,multicast-filter-bins:
     $ref: /schemas/types.yaml#/definitions/uint32
     description:
-- 
2.34.1

