Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C17D765F27F
	for <lists+devicetree@lfdr.de>; Thu,  5 Jan 2023 18:22:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233494AbjAERVk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Jan 2023 12:21:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38178 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235194AbjAERUx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Jan 2023 12:20:53 -0500
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 493396319F
        for <devicetree@vger.kernel.org>; Thu,  5 Jan 2023 09:12:53 -0800 (PST)
Received: by mail-wr1-f53.google.com with SMTP id d17so17025777wrs.2
        for <devicetree@vger.kernel.org>; Thu, 05 Jan 2023 09:12:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XQxJ8mog5ezSsMdjmsKqEBp6+hXiOvAg1jR6vm7PG+8=;
        b=4kxlkctBN34tswnclEHBz3Zz73r4pUFC3OC7ddlY91cJy5vWRE78R5eHn/ugD86m3o
         jJh9k7A9+zB7UWJtwYiyQP5yb/m+gYZJOcY6bTC6XJsH6Y4oduXx6hjq0322pOClRJqr
         PZwUiUfdQRKJkQPm00aWn2qRJ3J0U+jAqOBw9IbL4/Y3kN2NmSwIVKuW2qUdXslRjIcA
         iVqbzc9PtKskIO1dfXDCdTKTFFk39hIB8FQ/0WIpCL+RfpI9xuRfIbpyThFlSQsrGA8i
         G0FnEuyS3Nxrm/0Up0tup4tht2hBMA2X68hicu/hs698GRIdbIRbXAkG5Jh+akhGAimJ
         tC7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XQxJ8mog5ezSsMdjmsKqEBp6+hXiOvAg1jR6vm7PG+8=;
        b=7o+oU61XtlNie2fy86GqrLo+3jE/dKPkDkBKB6surr5BeTC7qVxUqSSRTkTZkfTHHV
         9HhbVg+0040ZtpreSJSPagkm2kgOFKZJUhIFnU/iVEG69DFW6fyk7K3u//D10LWGrvOe
         ZWL7Tqmjgoo8zYQ2qYdLmi75hC+b9ARNU0xRksq+SA7DX9sPX1rG5AaGA4xbI1EVnM7b
         NSUsdo/gNw/jbL6FTz8iQZR7Qw/3/DJ+Q54e+razeftZBYmgymMlG++u4s0yEVpfX3b+
         rcZwCahbkP6YqpyHOFtiz65oZpEsTHyPA+hgRLJfLrEg8RooYDzMdpi2KTwsdXaIrGIA
         MYaQ==
X-Gm-Message-State: AFqh2kqb2lR411fWqqWJVRLAmiRrFM2zP95EzS/0hqlzIR7ATAvukmXH
        sSd5E41+kYpjtUKDcTewYq4Z1A==
X-Google-Smtp-Source: AMrXdXuj6LXzblcUMFL7Ac48d0ZUS2gXbM/A1z/fodQupcf7Yy/HCR4r5KENqvOgeaf+oVvjoUeOzg==
X-Received: by 2002:a05:6000:789:b0:242:43d1:6d8a with SMTP id bu9-20020a056000078900b0024243d16d8amr40267367wrb.59.1672938470765;
        Thu, 05 Jan 2023 09:07:50 -0800 (PST)
Received: from blmsp.fritz.box ([2001:4091:a245:805c:9cf4:fdb8:bb61:5f4e])
        by smtp.gmail.com with ESMTPSA id f14-20020adfe90e000000b002365730eae8sm37164853wrm.55.2023.01.05.09.07.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Jan 2023 09:07:50 -0800 (PST)
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
Subject: [PATCH 4/8] soc: mediatek: pm-domains: Document scpsys_bus_prot_data
Date:   Thu,  5 Jan 2023 18:07:31 +0100
Message-Id: <20230105170735.1637416-5-msp@baylibre.com>
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

Add a short documentation for the fields in struct scpsys_bus_prot_data.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 drivers/soc/mediatek/mtk-pm-domains.h | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/soc/mediatek/mtk-pm-domains.h b/drivers/soc/mediatek/mtk-pm-domains.h
index 8aaed1c939d7..da827e91d462 100644
--- a/drivers/soc/mediatek/mtk-pm-domains.h
+++ b/drivers/soc/mediatek/mtk-pm-domains.h
@@ -66,6 +66,18 @@
 				INFRA_TOPAXI_PROTECTEN,		\
 				INFRA_TOPAXI_PROTECTSTA1)
 
+/**
+ * struct scpsys_bus_prot_data - Bus protection setting
+ * @bus_prot_set_clr_mask: Bitmask used for the set and clear registers.
+ * @bus_prot_set: infracfg set register.
+ * @bus_prot_clr: infracfg clear register.
+ * @bus_prot_sta_mask: Bitmask used for the status register.
+ * @bus_prot_sta: infracfg status register.
+ * @bus_prot_reg_update: Only update the register bits given in the mask, do not
+ *			 write the whole register.
+ * @ignore_clk_ack: Ignore the result in the status register for clear
+ *		    operations.
+ */
 struct scpsys_bus_prot_data {
 	u32 bus_prot_set_clr_mask;
 	u32 bus_prot_set;
-- 
2.39.0

