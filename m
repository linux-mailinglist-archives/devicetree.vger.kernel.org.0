Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B68B765F282
	for <lists+devicetree@lfdr.de>; Thu,  5 Jan 2023 18:22:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234495AbjAERVl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Jan 2023 12:21:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38180 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235195AbjAERUy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Jan 2023 12:20:54 -0500
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A5EF631A2
        for <devicetree@vger.kernel.org>; Thu,  5 Jan 2023 09:12:53 -0800 (PST)
Received: by mail-wr1-f47.google.com with SMTP id d4so28790722wrw.6
        for <devicetree@vger.kernel.org>; Thu, 05 Jan 2023 09:12:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+AVf+pfLkaJ1Gl2NWqezqv2bXezRKHHSaj8ghEqd14w=;
        b=y7jLrTG7p7QjcN2Cna7QAn3CMLp/iGX9hFgyWOvIeyQoOsHM3qakRasdP5KMfs+NZ2
         FPGzPh9C37o2fDUts5urh+UMB69Vw/ZtDYJo91usNWWpzFe27e91iTXgrN37D02UUx9t
         A9JvGt7PQ8GoRaaxdmXkthGFdlZyGOajaTqKTinkqnl+uv1XKe3UHCKFEvvr+4LtZsLL
         AjXOiLXb2Mb1Xe0l7+XuzUtB3Imrpgn0hRHnNjrVUHZ6R94g8p2yLgyyT+xyPCEPI3RN
         DYPF1DpAztnyht4GNPZeB9OWUWZVtmH+Mr01s3DiR0khgIxwjyEXhz5WtNBVPTTz3INm
         YZKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+AVf+pfLkaJ1Gl2NWqezqv2bXezRKHHSaj8ghEqd14w=;
        b=ojwZN/Em9z7DBlB4v+vL002gVe7dQBMQd9WXx8EYPPlya4ku10PYfqGa55+F8ZB6iX
         N/YyFk5l8bOpr81HpYKTRLPvhptVhkILdRe7Sb+jpdo9ss4YByPSOPn++jnJjzdmg+O2
         5nOamsb1MCDip4z2J1FCxxYuo79sNAd8WNZWAkpa/nTFzLFT+Mnpi5RDbBSECFMR4ZmZ
         IdKWu38WQhrphjGbbELzrBGIcklxp39N2qhEKk5cVJKW1kxg+x2v/UA0zjTcR4VUvN+e
         UlCEvrMLJovtmg/FyR5VCyppr1+ccewqbdY6SgITUN9ztTruGQ0Ig728g+aOoUNSPzdw
         wcdg==
X-Gm-Message-State: AFqh2krc9sjakBj6aNNrSzXC9GqT8pMRJ7yX3CkmhbOQkjaMyfhtfD+q
        FWnVcWFzBsAB0ef+IpaDqFK7rA==
X-Google-Smtp-Source: AMrXdXvaEZbEf1VJvkJQZUZ0wp7+NbVXpfFjW83Omw2E04q6K1OndbNKvbHNrGOYQSYHZx9OqH/3Tw==
X-Received: by 2002:adf:ea4a:0:b0:27e:8d9b:bc20 with SMTP id j10-20020adfea4a000000b0027e8d9bbc20mr26665705wrn.27.1672938471790;
        Thu, 05 Jan 2023 09:07:51 -0800 (PST)
Received: from blmsp.fritz.box ([2001:4091:a245:805c:9cf4:fdb8:bb61:5f4e])
        by smtp.gmail.com with ESMTPSA id f14-20020adfe90e000000b002365730eae8sm37164853wrm.55.2023.01.05.09.07.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Jan 2023 09:07:51 -0800 (PST)
From:   Markus Schneider-Pargmann <msp@baylibre.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Chun-Jie Chen <chun-jie.chen@mediatek.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Fabien Parent <parent.f@gmail.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Markus Schneider-Pargmann <msp@baylibre.com>
Subject: [PATCH 5/8] soc: mediatek: pm-domains: Fix caps field documentation
Date:   Thu,  5 Jan 2023 18:07:32 +0100
Message-Id: <20230105170735.1637416-6-msp@baylibre.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230105170735.1637416-1-msp@baylibre.com>
References: <20230105170735.1637416-1-msp@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This field is not for ACTIVE_WAKEUP exclusively. There are a lot of
other flags defined as well.

Fixes: 59b644b01cf4 ("soc: mediatek: Add MediaTek SCPSYS power domains")
Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 drivers/soc/mediatek/mtk-pm-domains.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/soc/mediatek/mtk-pm-domains.h b/drivers/soc/mediatek/mtk-pm-domains.h
index da827e91d462..34642a279213 100644
--- a/drivers/soc/mediatek/mtk-pm-domains.h
+++ b/drivers/soc/mediatek/mtk-pm-domains.h
@@ -95,7 +95,7 @@ struct scpsys_bus_prot_data {
  * @ctl_offs: The offset for main power control register.
  * @sram_pdn_bits: The mask for sram power control bits.
  * @sram_pdn_ack_bits: The mask for sram power control acked bits.
- * @caps: The flag for active wake-up action.
+ * @caps: MTK_SCPD_* capability flags.
  * @bp_infracfg: bus protection for infracfg subsystem
  * @bp_smi: bus protection for smi subsystem
  */
-- 
2.39.0

