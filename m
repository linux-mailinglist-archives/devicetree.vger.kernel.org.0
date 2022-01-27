Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 92ED849EE81
	for <lists+devicetree@lfdr.de>; Fri, 28 Jan 2022 00:08:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343768AbiA0XIf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Jan 2022 18:08:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57932 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245705AbiA0XIe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Jan 2022 18:08:34 -0500
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com [IPv6:2607:f8b0:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 860E7C061714
        for <devicetree@vger.kernel.org>; Thu, 27 Jan 2022 15:08:34 -0800 (PST)
Received: by mail-pl1-x630.google.com with SMTP id x11so4210126plg.6
        for <devicetree@vger.kernel.org>; Thu, 27 Jan 2022 15:08:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=PIXY+sEGqfziH4n+3nglkYpU71hUD2jbkDapelJUYx4=;
        b=VHdpreI16umQb0mYgJNYwcpXLMOYb9t5rWTJ5lF4m9dkAlOLQJbt8IUssF2/vzGhhu
         P2J4/IhQS1aBIC7OrTZ1rtXRz+BfKAgWlbPsQXOeqn/lbT032Hn/Q9FuFAS2EqI91NEL
         qkeLOxEtvhwyVPeocb+jYET3MYH1WQ8LLra/E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PIXY+sEGqfziH4n+3nglkYpU71hUD2jbkDapelJUYx4=;
        b=DIVE+1efxgtCTuRTTppZ4EK35Lk2Op0V2wKU1DhqbuVS5JGuMiwTx5/nFjzPqDCorQ
         u8SWcH7z3kIBdUsYvh0+vtr8wNWWzFWY8VEXjXxI10dctgu5n/Rnthvczy0jdcG/qn1J
         Cs4A5UJz8RxhsWs5yY6qWRp2FSgTJ/GxsTVGXaFg8ioeuuMhyUXIjTGY280BpE/EYYKp
         c0SBHcdNCRoUKOvUj/3cOmd0wEPe79Y82oul772eTOmSmAbkSvKST6h7DWOu9+EwaEYC
         q3MqWK4iu1YBln7UW7/FW2RJDr+dQKxoLfssBXeGiZOFTbpwnQ5T/K75mUjZY/YIQC9L
         65IA==
X-Gm-Message-State: AOAM533O5K9fNYhQOO5cx3wIcFpBznGzMVNvpj5gEhLvxw6Q0QAk8Xcz
        io8xOBJ0ivyf9JON+Ukl5nfPoA==
X-Google-Smtp-Source: ABdhPJyOEdExuVH8zC2uGNPOjViFehIsUDjflPA1+PxmuS5k/khzsp0p8n9ZntEMyywxRWObRePXqQ==
X-Received: by 2002:a17:90b:1983:: with SMTP id mv3mr6659930pjb.222.1643324914114;
        Thu, 27 Jan 2022 15:08:34 -0800 (PST)
Received: from localhost ([2620:15c:202:201:723d:38a9:9e7f:3435])
        by smtp.gmail.com with UTF8SMTPSA id h10sm4000716pfv.31.2022.01.27.15.08.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Jan 2022 15:08:33 -0800 (PST)
From:   Brian Norris <briannorris@chromium.org>
To:     MyungJoo Ham <myungjoo.ham@samsung.com>,
        Kyungmin Park <kyungmin.park@samsung.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
        Lin Huang <hl@rock-chips.com>,
        linux-arm-kernel@lists.infradead.org,
        Derek Basehore <dbasehore@chromium.org>,
        devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
        Heiko Stuebner <heiko@sntech.de>,
        Brian Norris <briannorris@chromium.org>
Subject: [PATCH v2 05/15] dt-bindings: devfreq: rk3399_dmc: Add more disable-freq properties
Date:   Thu, 27 Jan 2022 15:07:16 -0800
Message-Id: <20220127150615.v2.5.I382d4de737198ea52deb118c9bdc4d93d76e009e@changeid>
X-Mailer: git-send-email 2.35.0.rc0.227.g00780c9af4-goog
In-Reply-To: <20220127230727.3369358-1-briannorris@chromium.org>
References: <20220127230727.3369358-1-briannorris@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

DDR DVFS tuning has found that several power-saving features don't have
good tradeoffs at higher frequencies -- at higher frequencies, we'll see
glitches or other errors. Provide tuning controls so these can be
disabled at higher OPPs, and left active only at the lower ones.

Signed-off-by: Brian Norris <briannorris@chromium.org>
---

Changes in v2:
 - hyphens, not underscores
 - *-hz units, and drop the types definition

 .../bindings/devfreq/rk3399_dmc.yaml          | 37 +++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/Documentation/devicetree/bindings/devfreq/rk3399_dmc.yaml b/Documentation/devicetree/bindings/devfreq/rk3399_dmc.yaml
index 8786b7fa9b28..afa058c52c0b 100644
--- a/Documentation/devicetree/bindings/devfreq/rk3399_dmc.yaml
+++ b/Documentation/devicetree/bindings/devfreq/rk3399_dmc.yaml
@@ -299,6 +299,38 @@ properties:
       self-refresh mode. The controller, pi, PHY and DRAM clock will be gated
       if bus is idle for standby_idle nanoseconds.
 
+  rockchip,pd-idle-dis-freq-hz:
+    description:
+      Defines the power-down idle disable frequency in Hz. When the DDR
+      frequency is greater than pd-idle-dis-freq, power-down idle is disabled.
+      See also rockchip,pd-idle-ns.
+
+  rockchip,sr-idle-dis-freq-hz:
+    description:
+      Defines the self-refresh idle disable frequency in Hz. When the DDR
+      frequency is greater than sr-idle-dis-freq, self-refresh idle is
+      disabled. See also rockchip,sr-idle-ns.
+
+  rockchip,sr-mc-gate-idle-dis-freq-hz:
+    description:
+      Defines the self-refresh and memory-controller clock gating disable
+      frequency in Hz. When the DDR frequency is greater than
+      sr-mc-gate-idle-dis-freq, the clock will not be gated when idle. See also
+      rockchip,sr-mc-gate-idle-ns.
+
+  rockchip,srpd-lite-idle-dis-freq-hz:
+    description:
+      Defines the self-refresh power down idle disable frequency in Hz. When
+      the DDR frequency is greater than srpd-lite-idle-dis-freq, memory will
+      not be placed into self-refresh power down mode when idle. See also
+      rockchip,srpd-lite-idle-ns.
+
+  rockchip,standby-idle-dis-freq-hz:
+    description:
+      Defines the standby idle disable frequency in Hz. When the DDR frequency
+      is greater than standby-idle-dis-freq, standby idle is disabled. See also
+      rockchip,standby-idle-ns.
+
 required:
   - compatible
   - devfreq-events
@@ -330,4 +362,9 @@ examples:
       rockchip,ddr3_odt_dis_freq = <333000000>;
       rockchip,lpddr3_odt_dis_freq = <333000000>;
       rockchip,lpddr4_odt_dis_freq = <333000000>;
+      rockchip,pd-idle-dis-freq-hz = <1000000000>;
+      rockchip,sr-idle-dis-freq-hz = <1000000000>;
+      rockchip,sr-mc-gate-idle-dis-freq-hz = <1000000000>;
+      rockchip,srpd-lite-idle-dis-freq-hz = <0>;
+      rockchip,standby-idle-dis-freq-hz = <928000000>;
     };
-- 
2.35.0.rc0.227.g00780c9af4-goog

