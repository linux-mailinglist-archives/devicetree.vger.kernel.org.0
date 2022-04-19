Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1E6C55061DA
	for <lists+devicetree@lfdr.de>; Tue, 19 Apr 2022 03:54:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343930AbiDSB4h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Apr 2022 21:56:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58000 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245484AbiDSB4g (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Apr 2022 21:56:36 -0400
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3AAAB2A265
        for <devicetree@vger.kernel.org>; Mon, 18 Apr 2022 18:53:52 -0700 (PDT)
X-UUID: c8021cfefaca4af29c6e5ad8f47b89cf-20220419
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.4,REQID:c193972e-fdcf-4b0a-97a1-5e586513f81f,OB:0,LO
        B:0,IP:0,URL:0,TC:0,Content:-20,EDM:0,RT:0,SF:0,FILE:0,RULE:Release_Ham,AC
        TION:release,TS:-20
X-CID-META: VersionHash:faefae9,CLOUDID:d17723f0-da02-41b4-b6df-58f4ccd36682,C
        OID:IGNORED,Recheck:0,SF:nil,TC:nil,Content:0,EDM:-3,File:nil,QS:0,BEC:nil
X-UUID: c8021cfefaca4af29c6e5ad8f47b89cf-20220419
Received: from mtkexhb01.mediatek.inc [(172.21.101.102)] by mailgw01.mediatek.com
        (envelope-from <jason-jh.lin@mediatek.com>)
        (Generic MTA with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
        with ESMTP id 1683669977; Tue, 19 Apr 2022 09:53:48 +0800
Received: from mtkexhb02.mediatek.inc (172.21.101.103) by
 mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.2.792.15; Tue, 19 Apr 2022 09:53:46 +0800
Received: from mtkcas11.mediatek.inc (172.21.101.40) by mtkexhb02.mediatek.inc
 (172.21.101.103) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Tue, 19 Apr
 2022 09:53:46 +0800
Received: from mtksdccf07 (172.21.84.99) by mtkcas11.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Tue, 19 Apr 2022 09:53:46 +0800
Message-ID: <b518577296cb24749c6b76a6209c7e95b84e8ac0.camel@mediatek.com>
Subject: Re: [PATCH v18 02/10] dt-bindings: arm: mediatek: mmsys: add mt8195
 SoC binding
From:   Jason-JH Lin <jason-jh.lin@mediatek.com>
To:     Krzysztof Kozlowski <krzk@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
CC:     Rex-BC Chen =?UTF-8?Q?=28=E9=99=B3=E6=9F=8F=E8=BE=B0=29?= 
        <Rex-BC.Chen@mediatek.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "linux-mediatek@lists.infradead.org" 
        <linux-mediatek@lists.infradead.org>
Date:   Tue, 19 Apr 2022 09:53:46 +0800
In-Reply-To: <ff8a2ede-1489-0412-2425-3191f9fd9026@kernel.org>
References: <20220412103114.19922-1-jason-jh.lin@mediatek.com>
         <20220412103114.19922-3-jason-jh.lin@mediatek.com>
         <69dd1710a7f1c1715e079ece159fc527c7fecb4c.camel@mediatek.com>
         <ff8a2ede-1489-0412-2425-3191f9fd9026@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-MTK:  N
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        T_SCC_BODY_TEXT_LINE,T_SPF_TEMPERROR,UNPARSEABLE_RELAY autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Krzysztof,

Really appreciate your helpful information.
I hope we can figure out with IT soon.

Thank you very much!

Regards,
Jason-JH.Lin

On Mon, 2022-04-18 at 19:03 +0200, Krzysztof Kozlowski wrote:
> On 14/04/2022 05:11, Jason-JH Lin wrote:
> > Hello Rob, Krzysztof,
> > 
> > I found the dt-binding patches in this series never appeared in
> > devicetree-bindings patchwork and trigger the dt-binding check bot.
> > 
> > Do you know the reason for this?
> > Could you help me with this and let me know what should I do to
> > solve
> > this problem?
> 
> Hi,
> 
> All your emails end up regularly in my Gmail spam folder, similarly
> to
> emails from some other Mediatek people (e.g. Rex-BC Chen), so maybe
> that's the cause?
> 
> Why they end up in spam? I don't know, but it would be nice if you
> could
> work on this with your IT department. I know that corporate
> environments
> are tricky to change, but there is not much else to do. Google flags
> your emails always as spam.
> 
> You can see in the headers two DMARC failures:
> dmarc=fail (p=QUARANTINE sp=QUARANTINE dis=QUARANTINE)
> header.from=mediatek.com
> 
> Spamming 27 recipients is maybe another reason...
> 
> Best regards,
> Krzysztof
-- 
Jason-JH Lin <jason-jh.lin@mediatek.com>

