Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C53424C727E
	for <lists+devicetree@lfdr.de>; Mon, 28 Feb 2022 18:25:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233610AbiB1R01 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Feb 2022 12:26:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42866 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233583AbiB1R0Y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Feb 2022 12:26:24 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 852BF75E67
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 09:25:43 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id v21so16586295wrv.5
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 09:25:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=yvzT6l9BiPYrs+bU9uwRIaPTuYIMWgEcekkBhq5JP8k=;
        b=Qu+fHpeNMxJy5zLFRoLMWxsXMgLo58Ef/jRu8wDZj82XLJiM5F8bGB70Ez/AbNijLn
         k8VWr+amgFMAV24Z496cMyDdFkWFokZqlhGFOGMlTHbrOvY2tX/4LGR82401KK5HJC35
         sZDJaVZ7ryPDWCpw5iXYyua+gcILPDxQuR9FyHt5yGL4jWP06JQhGZzAO30RyZhn5f9N
         OjljJk+Ae8/wE2AOt6MrWLx61HSqO136jp7aywDWQofEjdyI1p0zHgX0F7HUghHcoXRi
         pNlzJjEGpNWTups9edT9aCoJC3CNpAYb/mjb3vwPiedTRdeRY68/5bdZXyXfSpUu13yc
         QfxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=yvzT6l9BiPYrs+bU9uwRIaPTuYIMWgEcekkBhq5JP8k=;
        b=PNaeT1QkK3Nh3lkrzTGr0XTIWtCPzfnHg1/fT4b1tDK4cwFzadLE6SGfKxX/6iDG5W
         UqdI9e9q4sN7XPOHJuZnfKgpgMLGq+sT0KHAGQwqrPYJ8r2EWsOR2soQzvC+oRcpNgqP
         6JlDdFGbvin0u3XUdCPCC+BHGkg2iKFUArhzhzT4KtC8fkiMIu6D0luDinWYnLcVSRDS
         D/Z9Cv0Dp+CR8cQ4BqfRo7nz45FsxXZ8gIIwaYxFVhhLdW+XltUNhFCyUy8HadkktBjB
         52K93ls/nbMuvu2ehqidxnrAJUwowWx3GBO3CpHpojtqLJ9DBOk5s87wnJatLb5j0PQs
         auWw==
X-Gm-Message-State: AOAM533hW/D7CIo2Tbz3O5vTUNcS7kiUyADK8im4XJ4w89c/3x8X3FdH
        wVxD8PMuwx/shTxgEqX/fD58yw==
X-Google-Smtp-Source: ABdhPJxLGIwim7aiGspyvls/E1qsudDF1oAD8X7BsUscoVh4EVZOrO42H4kP6XT0HYMt4hXFSTKz0g==
X-Received: by 2002:adf:910a:0:b0:1ed:c3fc:2dcf with SMTP id j10-20020adf910a000000b001edc3fc2dcfmr16786007wrj.430.1646069142139;
        Mon, 28 Feb 2022 09:25:42 -0800 (PST)
Received: from srini-hackbox.lan (cpc90716-aztw32-2-0-cust825.18-1.cable.virginm.net. [86.26.103.58])
        by smtp.gmail.com with ESMTPSA id f21-20020a7bcd15000000b0034efd01ee16sm11514124wmj.42.2022.02.28.09.25.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Feb 2022 09:25:41 -0800 (PST)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     robh+dt@kernel.org, vkoul@kernel.org,
        yung-chuan.liao@linux.intel.com
Cc:     pierre-louis.bossart@linux.intel.com, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org,
        quic_srivasam@quicinc.com,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v3 2/3] dt-bindings: soundwire: qcom: document optional wake irq
Date:   Mon, 28 Feb 2022 17:25:27 +0000
Message-Id: <20220228172528.3489-3-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20220228172528.3489-1-srinivas.kandagatla@linaro.org>
References: <20220228172528.3489-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Wake IRQ is optional interrupt that can be wired up on SoundWire controller
instances like RX path along with MBHC(Multi Button Headset connection).
Document this in bindings.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 .../devicetree/bindings/soundwire/qcom,sdw.txt     | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/soundwire/qcom,sdw.txt b/Documentation/devicetree/bindings/soundwire/qcom,sdw.txt
index b93a2b3e029d..51ddbc509382 100644
--- a/Documentation/devicetree/bindings/soundwire/qcom,sdw.txt
+++ b/Documentation/devicetree/bindings/soundwire/qcom,sdw.txt
@@ -22,7 +22,19 @@ board specific bus parameters.
 - interrupts:
 	Usage: required
 	Value type: <prop-encoded-array>
-	Definition: should specify the SoundWire Controller IRQ
+	Definition: should specify the SoundWire Controller core and optional
+		    wake IRQ
+
+- interrupt-names:
+	Usage: Optional
+	Value type: boolean
+	Value type: <stringlist>
+	Definition: should be "core" for core and "wakeup" for wake interrupt.
+
+- wakeup-source:
+	Usage: Optional
+	Value type: boolean
+	Definition: should specify if SoundWire Controller is wake up capable.
 
 - clock-names:
 	Usage: required
-- 
2.21.0

