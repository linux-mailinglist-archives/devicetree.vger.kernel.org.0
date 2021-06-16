Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 42E3E3A8D36
	for <lists+devicetree@lfdr.de>; Wed, 16 Jun 2021 02:07:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231723AbhFPAJu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Jun 2021 20:09:50 -0400
Received: from mailgw02.mediatek.com ([210.61.82.184]:34971 "EHLO
        mailgw02.mediatek.com" rhost-flags-OK-FAIL-OK-FAIL) by vger.kernel.org
        with ESMTP id S231725AbhFPAJt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Jun 2021 20:09:49 -0400
X-UUID: e98eac024ef040cf86326b6133403fc9-20210616
X-UUID: e98eac024ef040cf86326b6133403fc9-20210616
Received: from mtkcas10.mediatek.inc [(172.21.101.39)] by mailgw02.mediatek.com
        (envelope-from <chun-jie.chen@mediatek.com>)
        (Generic MTA with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
        with ESMTP id 797003582; Wed, 16 Jun 2021 08:07:41 +0800
Received: from mtkcas11.mediatek.inc (172.21.101.40) by
 mtkmbs06n1.mediatek.inc (172.21.101.129) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 16 Jun 2021 08:07:40 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas11.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Wed, 16 Jun 2021 08:07:40 +0800
From:   Chun-Jie Chen <chun-jie.chen@mediatek.com>
To:     Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Nicolas Boichat <drinkcat@chromium.org>,
        Rob Herring <robh+dt@kernel.org>
CC:     <linux-arm-kernel@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-mediatek@lists.infradead.org>,
        <srv_heupstream@mediatek.com>,
        <Project_Global_Chrome_Upstream_Group@mediatek.com>,
        Chun-Jie Chen <chun-jie.chen@mediatek.com>
Subject: [RESEND PATCH v2 4/4] soc: mediatek: pm-domains: Remove unused macro
Date:   Wed, 16 Jun 2021 08:06:58 +0800
Message-ID: <20210616000659.28347-5-chun-jie.chen@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20210616000659.28347-1-chun-jie.chen@mediatek.com>
References: <20210616000659.28347-1-chun-jie.chen@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain
X-MTK:  N
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Due to clk resource data will be allocated dynamically by
searching parent count of clk in power domain node, so remove
the unused marco MAX_SUBSYS_CLKS for static allocation.

Signed-off-by: Chun-Jie Chen <chun-jie.chen@mediatek.com>
---
 drivers/soc/mediatek/mtk-pm-domains.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/soc/mediatek/mtk-pm-domains.h b/drivers/soc/mediatek/mtk-pm-domains.h
index caaa38100093..1b8967b9829e 100644
--- a/drivers/soc/mediatek/mtk-pm-domains.h
+++ b/drivers/soc/mediatek/mtk-pm-domains.h
@@ -72,8 +72,6 @@ struct scpsys_bus_prot_data {
 	bool ignore_clr_ack;
 };
 
-#define MAX_SUBSYS_CLKS 10
-
 /**
  * struct scpsys_domain_data - scp domain data for power on/off flow
  * @name: The name of the power domain.
-- 
2.18.0

