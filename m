Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 22C151316B
	for <lists+devicetree@lfdr.de>; Fri,  3 May 2019 17:47:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726969AbfECPr5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 May 2019 11:47:57 -0400
Received: from mail-out.m-online.net ([212.18.0.10]:37403 "EHLO
        mail-out.m-online.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726377AbfECPr5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 May 2019 11:47:57 -0400
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
        by mail-out.m-online.net (Postfix) with ESMTP id 44wc3G4Z08z1rYWw;
        Fri,  3 May 2019 17:47:54 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
        by mail.m-online.net (Postfix) with ESMTP id 44wc3G3zq6z1qtf0;
        Fri,  3 May 2019 17:47:54 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
        by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
        with ESMTP id LF8oQFI9RBcL; Fri,  3 May 2019 17:47:53 +0200 (CEST)
X-Auth-Info: Do7dPbj9putD9hqyhF07qwHvll/bcrHuEUUlbo370WQ=
Received: from kurokawa.lan (ip-86-49-110-70.net.upcbroadband.cz [86.49.110.70])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.mnet-online.de (Postfix) with ESMTPSA;
        Fri,  3 May 2019 17:47:53 +0200 (CEST)
From:   Marek Vasut <marex@denx.de>
To:     dri-devel@lists.freedesktop.org
Cc:     Marek Vasut <marex@denx.de>, Rob Herring <robh+dt@kernel.org>,
        Jan Tuerk <jan.tuerk@emtrion.com>,
        Thierry Reding <treding@nvidia.com>, devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: display: Add ETM0700G0DH6 compatible string
Date:   Fri,  3 May 2019 17:47:49 +0200
Message-Id: <20190503154749.5630-1-marex@denx.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The ETM0700G0DH6 is currently documented as using edt,etm070080dh6
compatible string, however the Linux kernel driver as well as a
couple of DTs use edt,etm0700g0dh6 compatible string. Add it into
the documentation.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Jan Tuerk <jan.tuerk@emtrion.com>
Cc: Thierry Reding <treding@nvidia.com>
Cc: devicetree@vger.kernel.org
To: dri-devel@lists.freedesktop.org
---
 .../devicetree/bindings/display/panel/edt,et-series.txt         | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/panel/edt,et-series.txt b/Documentation/devicetree/bindings/display/panel/edt,et-series.txt
index d9f21d62422e..4cbb9dcbb344 100644
--- a/Documentation/devicetree/bindings/display/panel/edt,et-series.txt
+++ b/Documentation/devicetree/bindings/display/panel/edt,et-series.txt
@@ -32,7 +32,7 @@ simple-panel.txt
 | Identifier      | compatbile          | description                         |
 +=================+=====================+=====================================+
 | ETM0700G0DH6    | edt,etm070080dh6    | WVGA TFT Display with capacitive    |
-|                 |                     | Touchscreen                         |
+|                 | edt,etm0700g0dh6    | Touchscreen                         |
 +-----------------+---------------------+-------------------------------------+
 | ETM0700G0BDH6   | edt,etm070080bdh6   | Same as ETM0700G0DH6 but with       |
 |                 |                     | inverted pixel clock.               |
-- 
2.20.1

