Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D0048487FAD
	for <lists+devicetree@lfdr.de>; Sat,  8 Jan 2022 00:53:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231960AbiAGXxn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Jan 2022 18:53:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59014 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231925AbiAGXxg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Jan 2022 18:53:36 -0500
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com [IPv6:2607:f8b0:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33C1DC061401
        for <devicetree@vger.kernel.org>; Fri,  7 Jan 2022 15:53:36 -0800 (PST)
Received: by mail-pf1-x42f.google.com with SMTP id p37so6523369pfh.4
        for <devicetree@vger.kernel.org>; Fri, 07 Jan 2022 15:53:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=1suEizrMvGP6y4nHTdrMBY8Z/9qqxnd7nZ3EYSd9DWU=;
        b=A+81pitwf4PEew7O1yF2AVQH4hy4VElUERoh0lH7dAt9CYBcL5IVQGqu0ocnzLyfVa
         rawQWefahy0AB4l3rc/7qRAZyb/cZwqfd34NwkWymbSSwBzlg0JFQVn87jFdU+jctCp6
         uw+4WcHpToLNhSrZp/fpUJf/SS87jmUaM3cG4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=1suEizrMvGP6y4nHTdrMBY8Z/9qqxnd7nZ3EYSd9DWU=;
        b=Zs2WujywnuNALdBHAi3pn9UqhwOfIIr7OhFcHINvQpLaYFStITLlOT/9wz9K/NHrUZ
         UeOGPYKhqDlOzbZPHSTMDxoLY3TMyDziW1429lCLqCS0nzVOPuWcq8/YSUisxPEHxh1V
         rFJHFojP8EdZ4COS67IDV9loK+zXpNBY0KM3Bk4T677Pd0NpdlPqbJpomkP/FHRkdFbz
         cOFHAaHV89cy4YtUM/MTIbRoGQ9UOfj+59oeZEgMTy1QWg1hRu4jQTtvqA09VS3cBjRG
         2zaGdPF2A8cEZA+0rmbDJh5eaxrR+n/0zuYsX98hh2TdwzKd9rnNTfPHFCVVUBexqGZi
         GeIQ==
X-Gm-Message-State: AOAM532eg7a1bycZm1ihXw5CQMeqrLxMDfeDGXqTPhNd8LTT4o97ld2y
        ZY5rW8bLyQlY+RamFN4wmz2w8Q==
X-Google-Smtp-Source: ABdhPJxds0fohPEqyTNsNoc8pOn/hFT5GWdvhrX8aPm+onPVVfGwVlzNPUBPKSNLxkkrxA9o00AxHg==
X-Received: by 2002:a63:7d0a:: with SMTP id y10mr4111864pgc.533.1641599615668;
        Fri, 07 Jan 2022 15:53:35 -0800 (PST)
Received: from localhost ([2620:15c:202:201:db:1c60:693f:c24e])
        by smtp.gmail.com with UTF8SMTPSA id h15sm59512pfq.0.2022.01.07.15.53.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Jan 2022 15:53:35 -0800 (PST)
From:   Brian Norris <briannorris@chromium.org>
To:     MyungJoo Ham <myungjoo.ham@samsung.com>,
        Kyungmin Park <kyungmin.park@samsung.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Heiko Stuebner <heiko@sntech.de>,
        linux-arm-kernel@lists.infradead.org,
        Lin Huang <hl@rock-chips.com>, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, linux-pm@vger.kernel.org,
        Derek Basehore <dbasehore@chromium.org>,
        linux-kernel@vger.kernel.org,
        Brian Norris <briannorris@chromium.org>
Subject: [PATCH 03/10] dt-bindings: devfreq: rk3399_dmc: Fix Hz units
Date:   Fri,  7 Jan 2022 15:53:13 -0800
Message-Id: <20220107155215.3.I9341269171c114d0e04e41d48037fd32816e2d8c@changeid>
X-Mailer: git-send-email 2.34.1.575.g55b058a8bb-goog
In-Reply-To: <20220107235320.965497-1-briannorris@chromium.org>
References: <20220107235320.965497-1-briannorris@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The driver and all downstream device trees [1] are using Hz units, but
the document claims MHz. DRAM frequency for these systems can't possibly
exceed 2^32-1 Hz, so the choice of unit doesn't really matter than much.

Rather than add unnecessary risk in getting the units wrong, let's just
go with the unofficial convention and make the docs match reality.

A sub-1MHz frequency is extremely unlikely, so include a minimum in the
schema, to help catch anybody who might have believed this was MHz.

[1] And notably, also those trying to upstream them:
https://lore.kernel.org/lkml/20210308233858.24741-3-daniel.lezcano@linaro.org/

Signed-off-by: Brian Norris <briannorris@chromium.org>
---

 .../bindings/devfreq/rk3399_dmc.yaml          | 24 +++++++++----------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/Documentation/devicetree/bindings/devfreq/rk3399_dmc.yaml b/Documentation/devicetree/bindings/devfreq/rk3399_dmc.yaml
index 6bb411dddb7b..2c871c57fd97 100644
--- a/Documentation/devicetree/bindings/devfreq/rk3399_dmc.yaml
+++ b/Documentation/devicetree/bindings/devfreq/rk3399_dmc.yaml
@@ -128,11 +128,11 @@ properties:
 
   rockchip,ddr3_odt_dis_freq:
     $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 1000000  # In case anyone thought this was MHz.
     description:
       When the DRAM type is DDR3, this parameter defines the ODT disable
-      frequency in MHz (Mega Hz). When the DDR frequency is less then
-      ddr3_odt_dis_freq, the ODT on the DRAM side and controller side are both
-      disabled.
+      frequency in Hz. When the DDR frequency is less then ddr3_odt_dis_freq,
+      the ODT on the DRAM side and controller side are both disabled.
 
   rockchip,ddr3_drv:
     deprecated: true
@@ -172,11 +172,11 @@ properties:
 
   rockchip,lpddr3_odt_dis_freq:
     $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 1000000  # In case anyone thought this was MHz.
     description:
       When the DRAM type is LPDDR3, this parameter defines then ODT disable
-      frequency in MHz (Mega Hz). When DDR frequency is less then
-      ddr3_odt_dis_freq, the ODT on the DRAM side and controller side are both
-      disabled.
+      frequency in Hz. When DDR frequency is less then ddr3_odt_dis_freq, the
+      ODT on the DRAM side and controller side are both disabled.
 
   rockchip,lpddr3_drv:
     deprecated: true
@@ -216,11 +216,11 @@ properties:
 
   rockchip,lpddr4_odt_dis_freq:
     $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 1000000  # In case anyone thought this was MHz.
     description:
       When the DRAM type is LPDDR4, this parameter defines the ODT disable
-      frequency in MHz (Mega Hz). When the DDR frequency is less then
-      ddr3_odt_dis_freq, the ODT on the DRAM side and controller side are both
-      disabled.
+      frequency in Hz. When the DDR frequency is less then ddr3_odt_dis_freq,
+      the ODT on the DRAM side and controller side are both disabled.
 
   rockchip,lpddr4_drv:
     deprecated: true
@@ -291,7 +291,7 @@ examples:
       rockchip,sr_mc_gate_idle = <0x3>;
       rockchip,srpd_lite_idle = <0x4>;
       rockchip,standby_idle = <0x2000>;
-      rockchip,ddr3_odt_dis_freq = <333>;
-      rockchip,lpddr3_odt_dis_freq = <333>;
-      rockchip,lpddr4_odt_dis_freq = <333>;
+      rockchip,ddr3_odt_dis_freq = <333000000>;
+      rockchip,lpddr3_odt_dis_freq = <333000000>;
+      rockchip,lpddr4_odt_dis_freq = <333000000>;
     };
-- 
2.34.1.575.g55b058a8bb-goog

