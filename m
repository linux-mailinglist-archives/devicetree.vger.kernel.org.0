Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CE3716CCA45
	for <lists+devicetree@lfdr.de>; Tue, 28 Mar 2023 20:52:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229786AbjC1SwB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Mar 2023 14:52:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52796 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229544AbjC1SwA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Mar 2023 14:52:00 -0400
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com [IPv6:2607:f8b0:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE583268A
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 11:51:58 -0700 (PDT)
Received: by mail-ot1-x32e.google.com with SMTP id 46e09a7af769-69f00c18059so360498a34.0
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 11:51:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680029518;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mLL4CLqDQZ5BhGKTBxzjFcWaMuPeEeHU7lByHm4xcm4=;
        b=ow7yfjk5n+p6zkjHR9e4JMo3xQd7aLPA8DY4dYUR0FXccWFENrVF3YUUQojPYq80NH
         UKOXbHKJK6Pv8Dr6ofWsGaw/4wrqc2wa9m7FIOChwlaqhz47B7SLsgMeBVtaoB1zUEA2
         7aTDax12e6i42HJT3DIlvb2YqLTLClPFROlln+cgCxnmwc3aGkfhBGI/fSU9w7ZQMkzC
         3Ld5LF8PwNHM7bAUSJH5w9ebRvuSsR8OJYlxvhQhtMmD682F2+mvHiVGnrvzChVVP9xv
         c1ggO76gvlF2vGmmi3vjc+uB036uAsjMaZAq1DcZ/siYFGev8uHR8x8Hl758Qul24VTE
         n+YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680029518;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mLL4CLqDQZ5BhGKTBxzjFcWaMuPeEeHU7lByHm4xcm4=;
        b=yYJPDBTiW3Jaddy9x3moTLWGo6gDrcIGFXa+Ab1tPpq3UKNy2GwF5kbJbyXqqriUcU
         ZACjQW8EF0B+8d+nPhD2hHxsouZCR93KU2KOzcZEE6Zb+Vpzgx+sCfgLA/IePJExTTWO
         /koVO4kOMBSjGMLyJ0ONZ2eJHzc+PA5YqMqAYffcmK6hVVKhMeeJQIoBHcuvwHCUZ8oH
         Tq0lQJv13GGH8PUlmCVcJRnlDsFCw4XD/e5Hrd48bR/4SQzKFh7sz9FEeKG6wV6goIz0
         t7D5/NU0GRc+C9Yf+sHjASkgJrg1lKDIS1xy9/Sqsr+NJTDLiyuJPMTHXRYqURMAOSGr
         QnTQ==
X-Gm-Message-State: AO0yUKUCJ9QGesHD743EthrznSoD/cT4tqBN3wMYFHt83j5UPURH3mHB
        CwG6pHpICxg0mqPrcU5mL4k=
X-Google-Smtp-Source: AK7set9NM+MciLeKQx5vO+Mdjvzr5vUoE/leQIw/voM0JlKTMDplV8zVj5AvxAoC6dnr59+XWK9T4g==
X-Received: by 2002:aca:3b43:0:b0:37f:9335:7f96 with SMTP id i64-20020aca3b43000000b0037f93357f96mr5648200oia.0.1680029518145;
        Tue, 28 Mar 2023 11:51:58 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:3342:12c0:f0a:8ea8])
        by smtp.gmail.com with ESMTPSA id m206-20020acabcd7000000b0037d7f4eb7e8sm12683518oif.31.2023.03.28.11.51.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Mar 2023 11:51:57 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        alistair@alistair23.me, philippe.schenker@toradex.com,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH 2/2] ARM: dts: imx6ull-colibri: Remove unnecessary #address-cells/#size-cells
Date:   Tue, 28 Mar 2023 15:51:47 -0300
Message-Id: <20230328185147.529718-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230328185147.529718-1-festevam@gmail.com>
References: <20230328185147.529718-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

Building with W=1 leads to the following dtc warning:

arch/arm/boot/dts/imx6ull-colibri.dtsi:36.9-46.5: Warning (graph_child_address): /connector/ports: graph node has single child node 'port@0', #address-cells/#size-cells are not necessary

Since a single port is used, 'ports' can be removed, as well as the
unnecessary #address-cells/#size-cells.

Fixes: bd5880e10982 ("ARM: dts: colibri-imx6ull: Enable dual-role switching")
Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/imx6ull-colibri.dtsi | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boot/dts/imx6ull-colibri.dtsi b/arch/arm/boot/dts/imx6ull-colibri.dtsi
index bf64ba84b358..fde8a19aac0f 100644
--- a/arch/arm/boot/dts/imx6ull-colibri.dtsi
+++ b/arch/arm/boot/dts/imx6ull-colibri.dtsi
@@ -33,15 +33,9 @@ connector {
 		self-powered;
 		type = "micro";
 
-		ports {
-			#address-cells = <1>;
-			#size-cells = <0>;
-
-			port@0 {
-				reg = <0>;
-				usb_dr_connector: endpoint {
-					remote-endpoint = <&usb1_drd_sw>;
-				};
+		port {
+			usb_dr_connector: endpoint {
+				remote-endpoint = <&usb1_drd_sw>;
 			};
 		};
 	};
-- 
2.34.1

