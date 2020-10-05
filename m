Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8F0112834DB
	for <lists+devicetree@lfdr.de>; Mon,  5 Oct 2020 13:24:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725914AbgJELYm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Oct 2020 07:24:42 -0400
Received: from out-2.mail.amis.net ([212.18.32.14]:48176 "EHLO
        out-2.mail.amis.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725843AbgJELYm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Oct 2020 07:24:42 -0400
X-Greylist: delayed 475 seconds by postgrey-1.27 at vger.kernel.org; Mon, 05 Oct 2020 07:24:42 EDT
Received: from in-2.mail.amis.net (in-2.mail.amis.net [212.18.32.19])
        by out-2.mail.amis.net (Postfix) with ESMTP id 7781681360;
        Mon,  5 Oct 2020 13:16:46 +0200 (CEST)
Received: from in-2.mail.amis.net (localhost [127.0.0.1])
        by in-2.mail.amis.net (Postfix) with ESMTP id 71531C9406;
        Mon,  5 Oct 2020 13:16:46 +0200 (CEST)
X-Virus-Scanned: amavisd-new at amis.net
X-Spam-Flag: NO
X-Spam-Score: -1
X-Spam-Level: 
X-Spam-Status: No, score=-1 required=5 tests=[ALL_TRUSTED=-1]
        autolearn=disabled
Received: from in-2.mail.amis.net ([127.0.0.1])
        by in-2.mail.amis.net (in-2.mail.amis.net [127.0.0.1]) (amavisd-new, port 10024)
        with ESMTP id js9Bz3HJPxjd; Mon,  5 Oct 2020 13:16:46 +0200 (CEST)
Received: from smtp1.amis.net (smtp1.amis.net [212.18.32.41])
        by in-2.mail.amis.net (Postfix) with ESMTP id 1E8FEC9402;
        Mon,  5 Oct 2020 13:16:46 +0200 (CEST)
Received: from localhost.localdomain (89-212-21-243.static.t-2.net [89.212.21.243])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by smtp1.amis.net (Postfix) with ESMTPSA id 8D2F8C2DD2;
        Mon,  5 Oct 2020 13:16:45 +0200 (CEST)
From:   Primoz Fiser <primoz.fiser@norik.com>
To:     alsa-devel@alsa-project.org
Cc:     Timur Tabi <timur@kernel.org>,
        Nicolin Chen <nicoleotsuka@gmail.com>,
        Xiubo Li <Xiubo.Lee@gmail.com>,
        Fabio Estevam <festevam@gmail.com>,
        Shengjiu Wang <shengjiu.wang@gmail.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH 2/2] ASoC: dt-bindings: fsl: add ac97 fixed mode support
Date:   Mon,  5 Oct 2020 13:16:44 +0200
Message-Id: <20201005111644.3131604-2-primoz.fiser@norik.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201005111644.3131604-1-primoz.fiser@norik.com>
References: <20201005111644.3131604-1-primoz.fiser@norik.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add devicetree bindings documentation for operating SSI in AC'97
variable/fixed mode of operation.

Signed-off-by: Primoz Fiser <primoz.fiser@norik.com>
---
 Documentation/devicetree/bindings/sound/fsl,ssi.txt | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/fsl,ssi.txt b/Documentation/devicetree/bindings/sound/fsl,ssi.txt
index 7e15a85cecd2..abc5abe11fb9 100644
--- a/Documentation/devicetree/bindings/sound/fsl,ssi.txt
+++ b/Documentation/devicetree/bindings/sound/fsl,ssi.txt
@@ -43,6 +43,11 @@ Optional properties:
 - fsl,mode:         The operating mode for the AC97 interface only.
                     "ac97-slave" - AC97 mode, SSI is clock slave
                     "ac97-master" - AC97 mode, SSI is clock master
+- fsl,ac97-mode:    SSI AC97 mode of operation.
+                    "variable" - AC97 Variable Mode, SLOTREQ bits determine
+                    next receive/transmit frame
+                    "fixed" - AC97 Fixed Mode, SSI transmits in accordance with
+                    AC97 Frame Rate Divider bits
 - fsl,ssi-asynchronous:
                     If specified, the SSI is to be programmed in asynchronous
                     mode.  In this mode, pins SRCK, STCK, SRFS, and STFS must
-- 
2.25.1

