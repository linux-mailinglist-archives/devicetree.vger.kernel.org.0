Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A951F62F5D2
	for <lists+devicetree@lfdr.de>; Fri, 18 Nov 2022 14:20:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241464AbiKRNUe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Nov 2022 08:20:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44338 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241336AbiKRNUd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Nov 2022 08:20:33 -0500
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com [IPv6:2607:f8b0:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 520F642F47
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 05:20:29 -0800 (PST)
Received: by mail-oi1-x233.google.com with SMTP id h132so5316649oif.2
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 05:20:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PDnWFd1sOjMg4YFAq/1PlE9BGhC2xsxeUD6tnWLCCEw=;
        b=InbXJYJm0eKSMH84dLU0AoZ5Ma5nDykW2nXsX7jU83z52vnFzUWkFSJBJoShlMOZDj
         +AELDBGOjHlucyers+BVCyAciYzF22ghAsJ1RU/VXbp/UoHXlw9YkdJZa9dHW25moI3C
         VSSs4AcuFrf6Q9uMmWTufOx7Hvr9bVtrp4ekh7SHwpVrRs0OEYNYywR1qOQMcuejE0EY
         Fm2OWzQ0Ih234Gz3AY8lIOk6jIRU/C5h4wTcvbWOdGaB9J3RrvvZqGKjnsWff+2T0Dax
         wo4/GWLYaJEm+Z5REAfxOrZMrPsPOeidF+cfGewe0yW7lvTRXuhvnrNYzQ4TMhGVOLcz
         3M+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PDnWFd1sOjMg4YFAq/1PlE9BGhC2xsxeUD6tnWLCCEw=;
        b=RzilA0qm2njtJKKK9CQIyf97+JwVi3Zh9kAyh5Z/eWCkyY4liWYdHBqY7QFdjTPeRd
         YMcd9GnY0AcLNG3W2fSxDVoQSFbVQrnI70mYS/TDLwHeE/T2Ic+HoNJhZ3gQwFVvZtG7
         LoVvLHfl7F3cr44Jcx3gbWA2yjN5Cj+cZvbBZg7hiWjEXWWn/aebjL3IQFaELsr8HPCC
         L2OVgWwOqnRu5ZSRXpvE3ben//DSmPAn4bq3Ij0c5OmAKbHBmI3/nYN1YK6dRPRtKIDX
         H9ADiixb/seb6IA3ESu0nD7+uzXt89aqts3F1NcroDXDInQkBJRpf6sKqYwhMfl/jOQK
         AFhg==
X-Gm-Message-State: ANoB5plX5iIMti0sUHB/sROxiDgIT32GGARnunwDBKhMMBzYZEwxQbTt
        4jc862M+5x1inqgJFccMims=
X-Google-Smtp-Source: AA0mqf45dxQ4yTviGZHAtb9YRSSjXDD5j3KwSdB2xvnSWKwG1kxiP+IG0Z+WC22v1ptDQDQUxa+0cw==
X-Received: by 2002:a05:6808:2210:b0:350:59b0:3f0d with SMTP id bd16-20020a056808221000b0035059b03f0dmr6028814oib.173.1668777628512;
        Fri, 18 Nov 2022 05:20:28 -0800 (PST)
Received: from localhost.localdomain ([2804:14c:485:4b69:5e22:964c:bd31:bca4])
        by smtp.gmail.com with ESMTPSA id h14-20020a9d6f8e000000b0066d2fc495a4sm1570012otq.48.2022.11.18.05.20.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Nov 2022 05:20:28 -0800 (PST)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH 1/2] ARM: dts: imx53: Fix sram.yaml warnings
Date:   Fri, 18 Nov 2022 10:20:15 -0300
Message-Id: <20221118132016.1752358-1-festevam@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

Add ranges, #address-cells and #size-cells properties to the sram
node to fix the following warnings when checking sram.yaml:

make dtbs_check DT_SCHEMA_FILES=sram.yaml
...
  DTC_CHK arch/arm/boot/dts/imx53-qsb.dtb
arch/arm/boot/dts/imx53-qsb.dtb: sram@f8000000: '#address-cells' is a required property
	From schema: Documentation/devicetree/bindings/sram/sram.yaml
/home/fabio/linux-next/arch/arm/boot/dts/imx53-qsb.dtb: sram@f8000000: '#size-cells' is a required property
	From schema: Documentation/devicetree/bindings/sram/sram.yaml
/home/fabio/linux-next/arch/arm/boot/dts/imx53-qsb.dtb: sram@f8000000: 'ranges' is a required property
	From schema: Documentation/devicetree/bindings/sram/sram.yaml

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/imx53.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/imx53.dtsi b/arch/arm/boot/dts/imx53.dtsi
index 56b3c13f4eb7..17dc13719639 100644
--- a/arch/arm/boot/dts/imx53.dtsi
+++ b/arch/arm/boot/dts/imx53.dtsi
@@ -850,6 +850,9 @@ sahara: crypto@63ff8000 {
 		ocram: sram@f8000000 {
 			compatible = "mmio-sram";
 			reg = <0xf8000000 0x20000>;
+			ranges = <0 0xf8000000 0x20000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
 			clocks = <&clks IMX5_CLK_OCRAM>;
 		};
 	};
-- 
2.25.1

