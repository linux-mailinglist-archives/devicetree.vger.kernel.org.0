Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3907B542359
	for <lists+devicetree@lfdr.de>; Wed,  8 Jun 2022 08:51:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231771AbiFHDG5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Jun 2022 23:06:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39326 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1383420AbiFHDF7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Jun 2022 23:05:59 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.10])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 025711F0FE3
        for <devicetree@vger.kernel.org>; Tue,  7 Jun 2022 13:43:08 -0700 (PDT)
Received: from localhost.localdomain ([37.4.249.155]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MLyzP-1oG4Qr2uED-00I0KD; Tue, 07 Jun 2022 22:42:56 +0200
From:   Stefan Wahren <stefan.wahren@i2se.com>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Lee Jones <lee.jones@linaro.org>
Cc:     Peter Robinson <pbrobinson@gmail.com>,
        Melissa Wen <melissa.srw@gmail.com>,
        Phil Elwell <phil@raspberrypi.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Maxime Ripard <maxime@cerno.tech>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH V3 10/11] soc: bcm: bcm2835-power: Add support for BCM2711's RPiVid ASB
Date:   Tue,  7 Jun 2022 22:42:25 +0200
Message-Id: <20220607204226.8703-11-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220607204226.8703-1-stefan.wahren@i2se.com>
References: <20220607204226.8703-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:DrGPhiljN2HHySf7QaT4eoAuopHSufIfvWCuC3mvkeBvEQWoQEe
 ATtwlTHKorTQg94UivVxR/Bi1ZqpPRfxt9eC8yLue2HfmFqtZXi5l2D2aEP+nIJk8s1Gqc1
 Ddx237LFrHMpMjm+NWGCKxlOQsg2TYpefPg7+92PzZWGf7DjqgFjQNNIYHMbcu1s1m9w8Cq
 dmijuFpeVBFAvbrUJlR3A==
X-UI-Out-Filterresults: notjunk:1;V03:K0:hfI6Mk31Q0E=:iTaH2Nqxxp5KO18o1zeINK
 twrxC8hi6t1wH+4KKJe1qGI19q/k/hrANoV2prRrN4VTrpYpAqeh5eqWi25MtmE0WwYuNV3+p
 dG+mYZrsF2eV0oSNmjio9vFkH9tDTXNV1MlugS7InNxYjICO6BnxdIT4In8DqsHHdIvq56pBh
 aLfPvkHJY2CevIdiOWs6Ph46jk321o7LLsQTy2xppBXrKcCaPY+BQ7WaonLA7W4Rb2bfyXhUK
 LcOP2qd0pwpA8rG8bE30GzSyws2BJUIvBffDNPZUvbXNre2cilqkJL+Axo4ncdslDpoeAyfXm
 MuqB4ks3rehxsOY7UuptIojxLHMUkbxC4Od19UroHyULkWQ4kK+Xvvl6vYqx5LdGpDX7lX3Q8
 8GVLC+CuJVkiJlkcpLY2eRuG9Y9WFC//2eVh740i0jenAEubg3dWbGa+kRe5IvaYwUjetUA61
 Mq1vZ/Qy+rLNtoEHSe+gM8nTvmeG34+thQYX5Yw5FpUYrrO800nP8jLD4z13k9lLVOKgm7bID
 fJLUe+tY4R999URUqqlAoVf6ulx69k2Y9qoem9F2Q982Cso5MI2ld5ov+w51K8NGpgXRFr8Op
 Xe+l5w9z2LfnK+jL47TNIGg7H9rheJAd3g8TceasV5sqW7qiR13ENHBgo8MZDDUcAJHSyJtm+
 59El4HmHuvXQ6l05WH7FeBSooEAnJPpgN2zu4UNMuUGPupyfQI4jam9DMXwzHrEOLTkJlYOVj
 7Up6I+DM49AwcHOF+0QDkkf1wBAhY6qbITvqZfx234yoS7MT+7tAEei1NQU=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

In BCM2711 the new RPiVid ASB took over V3D. The old ASB is still present
with the ISP and H264 bits, and V3D is in the same place in the new ASB
as the old one.

Use the fact that 'pm->rpivid_asb' is populated as a hint that we're on
BCM2711.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
Reviewed-by: Peter Robinson <pbrobinson@gmail.com>
---
 drivers/soc/bcm/bcm2835-power.c | 25 +++++++++++++++++++++++--
 1 file changed, 23 insertions(+), 2 deletions(-)

diff --git a/drivers/soc/bcm/bcm2835-power.c b/drivers/soc/bcm/bcm2835-power.c
index 9c352f66e6d5..1e06d91c0739 100644
--- a/drivers/soc/bcm/bcm2835-power.c
+++ b/drivers/soc/bcm/bcm2835-power.c
@@ -126,6 +126,8 @@
 
 #define ASB_AXI_BRDG_ID			0x20
 
+#define BCM2835_BRDG_ID			0x62726467
+
 struct bcm2835_power_domain {
 	struct generic_pm_domain base;
 	struct bcm2835_power *power;
@@ -139,6 +141,8 @@ struct bcm2835_power {
 	void __iomem		*base;
 	/* AXI Async bridge registers. */
 	void __iomem		*asb;
+	/* RPiVid bridge registers. */
+	void __iomem		*rpivid_asb;
 
 	struct genpd_onecell_data pd_xlate;
 	struct bcm2835_power_domain domains[BCM2835_POWER_DOMAIN_COUNT];
@@ -151,8 +155,15 @@ static int bcm2835_asb_control(struct bcm2835_power *power, u32 reg, bool enable
 	u64 start;
 	u32 val;
 
-	if (!reg)
+	switch (reg) {
+	case 0:
 		return 0;
+	case ASB_V3D_S_CTRL:
+	case ASB_V3D_M_CTRL:
+		if (power->rpivid_asb)
+			base = power->rpivid_asb;
+		break;
+	}
 
 	start = ktime_get_ns();
 
@@ -621,13 +632,23 @@ static int bcm2835_power_probe(struct platform_device *pdev)
 	power->dev = dev;
 	power->base = pm->base;
 	power->asb = pm->asb;
+	power->rpivid_asb = pm->rpivid_asb;
 
 	id = readl(power->asb + ASB_AXI_BRDG_ID);
-	if (id != 0x62726467 /* "BRDG" */) {
+	if (id != BCM2835_BRDG_ID /* "BRDG" */) {
 		dev_err(dev, "ASB register ID returned 0x%08x\n", id);
 		return -ENODEV;
 	}
 
+	if (power->rpivid_asb) {
+		id = readl(power->rpivid_asb + ASB_AXI_BRDG_ID);
+		if (id != BCM2835_BRDG_ID /* "BRDG" */) {
+			dev_err(dev, "RPiVid ASB register ID returned 0x%08x\n",
+				     id);
+			return -ENODEV;
+		}
+	}
+
 	power->pd_xlate.domains = devm_kcalloc(dev,
 					       ARRAY_SIZE(power_domain_names),
 					       sizeof(*power->pd_xlate.domains),
-- 
2.25.1

