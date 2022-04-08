Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8F27E4F8B3B
	for <lists+devicetree@lfdr.de>; Fri,  8 Apr 2022 02:56:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233029AbiDHAql (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Apr 2022 20:46:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233015AbiDHAqk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Apr 2022 20:46:40 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B19925882E
        for <devicetree@vger.kernel.org>; Thu,  7 Apr 2022 17:44:34 -0700 (PDT)
Received: from tr.lan (ip-89-176-112-137.net.upcbroadband.cz [89.176.112.137])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id C5B01839A1;
        Fri,  8 Apr 2022 02:44:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1649378672;
        bh=w0D23MRSjhyzKPbKbg3mlGfdQCG2spK00bysC/PSgLk=;
        h=From:To:Cc:Subject:Date:From;
        b=bU1FJfmRE2nqm6/YMm+Vjv8+uSSIExcKO1uDUejwkkLw3h6gUslOb/n8RH4Ham3/Y
         47Vz/xOG5v7+8f0Vb+9JvsNjfbOa9gYaXGQdZw2zmMKwt+wlXTOtuIJBUDyGRNAkYD
         syMplkjUrIrEXaAesnxNY5Dye8DoboOhhmnzzbifqBxRffpAryTYYFMaiy9GtXBi1T
         2nbUMKrbTKjXS+uRr+PV4zmaWTULbdqKelGQZVMP39v/YyQErRglmMyefsHoaWKPz3
         z92xDCN49iY17jKhHwOiqJfUzM+V23ssW6NPPYunqfObUx7q9wV+PD31yl9pCNYpkX
         CnSYR31DnYK/A==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        robh+dt@kernel.org
Cc:     Marek Vasut <marex@denx.de>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Gabriel Fernandez <gabriel.fernandez@foss.st.com>
Subject: [PATCH v2] dt-bindings: rcc: Add common clock properties
Date:   Fri,  8 Apr 2022 02:44:12 +0200
Message-Id: <20220408004412.663880-1-marex@denx.de>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.5 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add common properties appearing in DTSes (assigned-clocks and similar)
to fix dtbs_check warnings like:

arch/arm/boot/dts/stm32mp153c-dhcom-drc02.dt.yaml: rcc@50000000: 'assigned-clock-parents', 'assigned-clock-rates', 'assigned-clocks', 'clock-names', 'clocks' do not match any of the regexes: 'pinctrl-[0-9]+'

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: Gabriel Fernandez <gabriel.fernandez@foss.st.com>
Cc: Rob Herring <robh+dt@kernel.org>
To: devicetree@vger.kernel.org
Acked-by: Gabriel Fernandez <gabriel.fernandez@foss.st.com>
---
V2: Add AB from Gabriel
---
 .../devicetree/bindings/clock/st,stm32mp1-rcc.yaml          | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/st,stm32mp1-rcc.yaml b/Documentation/devicetree/bindings/clock/st,stm32mp1-rcc.yaml
index a0ae4867ed27e..9bcf198bae170 100644
--- a/Documentation/devicetree/bindings/clock/st,stm32mp1-rcc.yaml
+++ b/Documentation/devicetree/bindings/clock/st,stm32mp1-rcc.yaml
@@ -62,6 +62,12 @@ properties:
   reg:
     maxItems: 1
 
+  clocks: true
+  clock-names: true
+  assigned-clocks: true
+  assigned-clock-parents: true
+  assigned-clock-rates: true
+
 required:
   - "#clock-cells"
   - "#reset-cells"
-- 
2.35.1

