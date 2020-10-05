Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 088B72834DC
	for <lists+devicetree@lfdr.de>; Mon,  5 Oct 2020 13:24:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725843AbgJELYm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Oct 2020 07:24:42 -0400
Received: from out-2.mail.amis.net ([212.18.32.14]:48187 "EHLO
        out-2.mail.amis.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725891AbgJELYm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Oct 2020 07:24:42 -0400
Received: from in-3.mail.amis.net (in-3.mail.amis.net [212.18.32.22])
        by out-2.mail.amis.net (Postfix) with ESMTP id F086B81354;
        Mon,  5 Oct 2020 13:16:45 +0200 (CEST)
Received: from in-3.mail.amis.net (localhost [127.0.0.1])
        by in-3.mail.amis.net (Postfix) with ESMTP id EB6EBC943C;
        Mon,  5 Oct 2020 13:16:45 +0200 (CEST)
X-Virus-Scanned: amavisd-new at amis.net
X-Spam-Flag: NO
X-Spam-Score: -1
X-Spam-Level: 
X-Spam-Status: No, score=-1 required=5 tests=[ALL_TRUSTED=-1]
        autolearn=disabled
X-Amavis-OS-Fingerprint: MYNETWORKS, [2001:15c0:ffff:f::41]:46263
Received: from in-3.mail.amis.net ([127.0.0.1])
        by in-3.mail.amis.net (in-3.mail.amis.net [127.0.0.1]) (amavisd-new, port 10024)
        with ESMTP id 4cAIiDtffvPC; Mon,  5 Oct 2020 13:16:45 +0200 (CEST)
Received: from smtp1.amis.net (smtp1.amis.net [IPv6:2001:15c0:ffff:f::41])
        by in-3.mail.amis.net (Postfix) with ESMTP id 8083FC9434;
        Mon,  5 Oct 2020 13:16:45 +0200 (CEST)
Received: from localhost.localdomain (89-212-21-243.static.t-2.net [89.212.21.243])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by smtp1.amis.net (Postfix) with ESMTPSA id E7E94C2DD1;
        Mon,  5 Oct 2020 13:16:44 +0200 (CEST)
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
Subject: [PATCH 1/2] ASoC: fsl: fsl_ssi: add ac97 fixed mode support
Date:   Mon,  5 Oct 2020 13:16:43 +0200
Message-Id: <20201005111644.3131604-1-primoz.fiser@norik.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

SSI supports "variable" and "fixed" mode of operation in AC'97 mode. Up
to now, driver always configured SSI port to operate in "variable" AC'97
mode which is known to be unreliable with some CODECs, see:
commit 01ca485171e3 ("ASoC: fsl_ssi: only enable proper channel slots in
AC'97 mode") for more information on issues related to spurious SLOTREQ
bits. But in summary, when SSI operates in AC'97 variable mode of
operation, CODECs can sometimes send SLOTREQ bits for non-existent audio
slots which then "stick" in SSI and completely break audio output.
Contrary when operating SSI in AC'97 fixed mode, described issues were
completely gone!

Thus add support for operating SSI in AC'97 Fixed Mode of operation
which provides better audio reliability when compared to AC'97 Variable
Mode with some CODECs.

Signed-off-by: Primoz Fiser <primoz.fiser@norik.com>
---
 sound/soc/fsl/fsl_ssi.c | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/sound/soc/fsl/fsl_ssi.c b/sound/soc/fsl/fsl_ssi.c
index 404be27c15fe..3b89785f6de8 100644
--- a/sound/soc/fsl/fsl_ssi.c
+++ b/sound/soc/fsl/fsl_ssi.c
@@ -243,6 +243,7 @@ struct fsl_ssi_soc_data {
  * @dma_maxburst: Max number of words to transfer in one go. So far,
  *                this is always the same as fifo_watermark.
  * @ac97_reg_lock: Mutex lock to serialize AC97 register access operations
+ * @ac97_fixed_mode: SSI in AC97 fixed mode of operation
  */
 struct fsl_ssi {
 	struct regmap *regs;
@@ -287,6 +288,7 @@ struct fsl_ssi {
 	u32 dma_maxburst;
 
 	struct mutex ac97_reg_lock;
+	bool ac97_fixed_mode;
 };
 
 /*
@@ -616,7 +618,12 @@ static void fsl_ssi_setup_ac97(struct fsl_ssi *ssi)
 	regmap_write(regs, REG_SSI_SRCCR, SSI_SxCCR_WL(17) | SSI_SxCCR_DC(13));
 
 	/* Enable AC97 mode and startup the SSI */
-	regmap_write(regs, REG_SSI_SACNT, SSI_SACNT_AC97EN | SSI_SACNT_FV);
+	if (ssi->ac97_fixed_mode) {
+		regmap_write(regs, REG_SSI_SACNT, SSI_SACNT_AC97EN);
+		regmap_write(regs, REG_SSI_SATAG, 0x9800);
+	} else
+		regmap_write(regs, REG_SSI_SACNT,
+				SSI_SACNT_AC97EN | SSI_SACNT_FV);
 
 	/* AC97 has to communicate with codec before starting a stream */
 	regmap_update_bits(regs, REG_SSI_SCR,
@@ -1092,8 +1099,10 @@ static int fsl_ssi_trigger(struct snd_pcm_substream *substream, int cmd,
 		 * send valid data to slots other than normal playback slots.
 		 *
 		 * To be safe, configure SACCST right before TX starts.
+		 *
+		 * Above applies only when SSI operates in AC97 Variable Mode.
 		 */
-		if (tx && fsl_ssi_is_ac97(ssi))
+		if (tx && fsl_ssi_is_ac97(ssi) && !ssi->ac97_fixed_mode)
 			fsl_ssi_tx_ac97_saccst_setup(ssi);
 		fsl_ssi_config_enable(ssi, tx);
 		break;
@@ -1437,6 +1446,11 @@ static int fsl_ssi_probe_from_dt(struct fsl_ssi *ssi)
 		ssi->synchronous = true;
 	}
 
+	/* Check AC97 mode of operation */
+	sprop = of_get_property(np, "fsl,ac97-mode", NULL);
+	if (sprop && !strcmp(sprop, "fixed"))
+		ssi->ac97_fixed_mode = true;
+
 	/* Select DMA or FIQ */
 	ssi->use_dma = !of_property_read_bool(np, "fsl,fiq-stream-filter");
 
-- 
2.25.1

