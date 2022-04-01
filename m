Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 160744EF85A
	for <lists+devicetree@lfdr.de>; Fri,  1 Apr 2022 18:49:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348875AbiDAQva (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Apr 2022 12:51:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53214 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349831AbiDAQvT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Apr 2022 12:51:19 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C966F1C
        for <devicetree@vger.kernel.org>; Fri,  1 Apr 2022 09:38:20 -0700 (PDT)
Received: from tr.lan (ip-89-176-112-137.net.upcbroadband.cz [89.176.112.137])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 28DC384042;
        Fri,  1 Apr 2022 18:38:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1648831098;
        bh=681/ecAfuGyug/aKomT5gTVBLC3jqCPuH5Xv9vjRARY=;
        h=From:To:Cc:Subject:Date:From;
        b=ajUimAb5nrq0PXOK+abU7Q0HPvmGiJfxe5v5zjUTIKJnaW6daJq5zbDrBoPwEKAaR
         Eyt9H0Xm/9i3z/QDIIMDuqIH5L+gCCFoctXWJ4OdPgv+HKa/5Gc8F5rkG6vi9zVo8A
         +v46Cq+YE0fTT/SemFmnR2zOiYc4Xo66lmlrlrJCd0PgLb48TfdvdzFmBrfYHLpTZr
         pFLUikor/GouKzqdhS715+I+YemFAscsSn0k3f4lgzMd5kZX8us0DbV4cdBzNAKFPq
         TmCa0Eki2kcAaV+bGSJclTNFljNXdHngeeT3qiKzeg2nIIVnFoLv02oRVCr/7xt+/k
         hpbF9RtbrTqkw==
From:   Marek Vasut <marex@denx.de>
To:     dri-devel@lists.freedesktop.org
Cc:     robert.foss@linaro.org, Marek Vasut <marex@denx.de>,
        Christoph Niedermaier <cniedermaier@dh-electronics.com>,
        Daniel Vetter <daniel.vetter@ffwll.ch>,
        Dmitry Osipenko <digetx@gmail.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        devicetree@vger.kernel.org
Subject: [RFC][PATCH 1/3] dt-bindings: display: panel: mipi-dbi-spi: Make width-mm/height-mm mandatory
Date:   Fri,  1 Apr 2022 18:37:53 +0200
Message-Id: <20220401163755.302548-1-marex@denx.de>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.5 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Make the width-mm/height-mm panel properties mandatory
to correctly report the panel dimensions to the OS.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Christoph Niedermaier <cniedermaier@dh-electronics.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Dmitry Osipenko <digetx@gmail.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Noralf Trønnes <noralf@tronnes.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Robert Foss <robert.foss@linaro.org>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: devicetree@vger.kernel.org
To: dri-devel@lists.freedesktop.org
---
 .../devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml   | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml b/Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml
index f29789994b18..c2df8d28aaf5 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml
@@ -83,6 +83,8 @@ properties:
 required:
   - compatible
   - reg
+  - width-mm
+  - height-mm
   - panel-timing
 
 unevaluatedProperties: false
-- 
2.35.1

