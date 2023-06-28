Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 95AFF740BFB
	for <lists+devicetree@lfdr.de>; Wed, 28 Jun 2023 10:56:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235005AbjF1I4M (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Jun 2023 04:56:12 -0400
Received: from mg.richtek.com ([220.130.44.152]:44336 "EHLO mg.richtek.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S236442AbjF1Iri (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 28 Jun 2023 04:47:38 -0400
X-MailGates: (flag:4,DYNAMIC,BADHELO,RELAY,NOHOST:PASS)(compute_score:DE
        LIVER,40,3)
Received: from 192.168.10.47
        by mg.richtek.com with MailGates ESMTP Server V5.0(12336:0:AUTH_RELAY)
        (envelope-from <cy_huang@richtek.com>); Wed, 28 Jun 2023 16:47:19 +0800 (CST)
Received: from ex3.rt.l (192.168.10.46) by ex4.rt.l (192.168.10.47) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.25; Wed, 28 Jun
 2023 16:47:18 +0800
Received: from linuxcarl2.richtek.com (192.168.10.154) by ex3.rt.l
 (192.168.10.45) with Microsoft SMTP Server id 15.2.1118.25 via Frontend
 Transport; Wed, 28 Jun 2023 16:47:18 +0800
From:   <cy_huang@richtek.com>
To:     <broonie@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>
CC:     <robh+dt@kernel.org>, <lgirdwood@gmail.com>,
        <cy_huang@richtek.com>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
Subject: [PATCH 0/2] Add support for RT5733
Date:   Wed, 28 Jun 2023 16:47:15 +0800
Message-ID: <1687942037-14652-1-git-send-email-cy_huang@richtek.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: ChiYuan Huang <cy_huang@richtek.com>

This series is to add the compatible support for rt5733 based on rt5739.

ChiYuan Huang (2):
  regulator: dt-bindings: rt5739: Add compatible for rt5733
  regulator: rt5739: Add DID check and compatible for rt5733

 .../bindings/regulator/richtek,rt5739.yaml    |  1 +
 drivers/regulator/rt5739.c                    | 49 ++++++++++++++++---
 2 files changed, 42 insertions(+), 8 deletions(-)

-- 
2.40.1

