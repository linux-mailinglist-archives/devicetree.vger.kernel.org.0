Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 54042479B92
	for <lists+devicetree@lfdr.de>; Sat, 18 Dec 2021 16:23:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230041AbhLRPXV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 18 Dec 2021 10:23:21 -0500
Received: from phobos.denx.de ([85.214.62.61]:54154 "EHLO phobos.denx.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232660AbhLRPXV (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 18 Dec 2021 10:23:21 -0500
Received: from tr.lan (ip-89-176-112-137.net.upcbroadband.cz [89.176.112.137])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 694478303B;
        Sat, 18 Dec 2021 16:23:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1639840999;
        bh=1lobMaw9pLY/MD9G5+vs9jJ/NBITmXZ5Lzdma5cfNR4=;
        h=From:To:Cc:Subject:Date:From;
        b=CCKhUrPk2Ni3buIODokFfcSH7f+zShNHV9oYp5IdLS8iGDnQJh8lPRp+88WZU7qEm
         GaTil1SzsMehivxgke0JAhq0sG9pGyWP7ESP0qxMZXlMyblC9aZTDNeoGyak1h2Bfc
         4eP5mFPkckbj7BWO9VCq0Y+SBt9bZj2cmAJVFdZxv7jwrEkLUa2OyBuQDPdO4iExeN
         l0MFUgHoMUo7cnOh9Gts62xkDr00V0zk44xxzdo/F5zDzC97L41N630XTztmPNCNT5
         C1P3fKsZ0y218wKYP72m91kc+TufrvcR/25244LykcZg0PWdhfsm4Lwrnqv+Wk00c8
         izAjSxNQOcBnA==
From:   Marek Vasut <marex@denx.de>
To:     dri-devel@lists.freedesktop.org
Cc:     Marek Vasut <marex@denx.de>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: display: bridge: lvds-codec: Document TI DS90CF364A decoder
Date:   Sat, 18 Dec 2021 16:23:09 +0100
Message-Id: <20211218152309.256183-1-marex@denx.de>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.2 at phobos.denx.de
X-Virus-Status: Clean
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add compatible string for TI DS90CF364A, which is another LVDS to DPI
decoder similar to DS90CF384A, except it is using smaller package and
only provides 18bit DPI bus.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: devicetree@vger.kernel.org
To: dri-devel@lists.freedesktop.org
---
 Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml b/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
index 1faae3e323a4..99c13f879916 100644
--- a/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
@@ -39,6 +39,7 @@ properties:
           - const: lvds-encoder # Generic LVDS encoder compatible fallback
       - items:
           - enum:
+              - ti,ds90cf364a # For the DS90CF364A FPD-Link LVDS Receiver
               - ti,ds90cf384a # For the DS90CF384A FPD-Link LVDS Receiver
           - const: lvds-decoder # Generic LVDS decoders compatible fallback
       - enum:
-- 
2.33.0

