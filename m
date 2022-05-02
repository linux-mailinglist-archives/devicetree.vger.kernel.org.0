Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7B347516FCB
	for <lists+devicetree@lfdr.de>; Mon,  2 May 2022 14:52:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230444AbiEBMzo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 May 2022 08:55:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50382 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1385110AbiEBMxu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 May 2022 08:53:50 -0400
Received: from esa2.hgst.iphmx.com (esa2.hgst.iphmx.com [68.232.143.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33E151147
        for <devicetree@vger.kernel.org>; Mon,  2 May 2022 05:50:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1651495821; x=1683031821;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=U7ic/RNoQY4d0W/UOAxEPCaLfnfBqlR3LVnngKZ9Uio=;
  b=BwXxM4DhyElN6KsLx7Te0DKqDwTP+ycYa4MZgEIpYcGY3Ao8vyu1h2lL
   NiGx0MvPCLmpYXgJddJ9Ib3xA/YpFwro/FXlL02lFN+ImAklcFRZdlfAf
   q2J762jUHlicshGV1zzvid30mESQczdDkeMmuKO4hti/Adi+GeSBT+YBM
   Za1F7pHMVa2s+1/jdoaOYHefnBLy6ibQ88KIsQ+Nh0M8PfTzfr8XiDngO
   HnJeBMZe+ReJQ3nCWFh5yr+PgXUMxKZife+6pkgtf2VfcS+tLKF+R3mTg
   2QGBqdRWIE0R6wqNcgfE8biiM8eQTUBV9niigbyWOF4MMC5X1wkoQdnUn
   g==;
X-IronPort-AV: E=Sophos;i="5.91,192,1647273600"; 
   d="scan'208";a="303547574"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 02 May 2022 20:50:20 +0800
IronPort-SDR: GQqUhSlFFYbD2OgCjxu29nwlrgrJxz+7MrWV4nGezZxZLr1m2LkbbhUa6cb/smaIfMtpy1dwaE
 0TNjOMtoyduIDZ0yWVWkXH4jVWire2lamuY32CYaNEILvdSbmB4ORfu2QQlaTrZGz2T0wxBRwg
 68HJ9vBAnJ7p9gubDkrY0LZZaPLsCDZWQaN2yGFh/3z3777XlXYJmaXKQY0uJeeP6p2sLlMF4D
 fw3UAWjsdgNwYP1bMzPM3tKxXuWqmCc0WOdMSiDwSfHiArCk+EPV+697EMA7WJNDV8ne9/R4Zo
 bOxlNoYphAyulPiK66nEgTvH
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 02 May 2022 05:20:25 -0700
IronPort-SDR: MwkCDZ9gDyn+1jyd5PTxjWBSvx5Bev0XnzApQ2tsiAAd/0x5+jWR10pFiQdnRkoru1q/vF7LAL
 cZaL+VDP7rx208jPcxGF3XPbYg8ffszXsQD5HtoUC5O9973lPx1JKwMNLlKBtCc2AuP55s18gI
 J6X9xxyo1KEFbWikElQR9jjse8rCtHSdimcDXJRMepdClr5PFZUmRl0RJuCvWUeukafo1JV+zx
 IjpkbdJRVV0Q1YH5c6dbdEMH3UuAXVAuwX1WM7Bsr1UsYWHWT6AYZ6PrB6QlMqceHc0nQETNrP
 8pE=
WDCIronportException: Internal
Received: from unknown (HELO x1-carbon.lan) ([10.225.164.66])
  by uls-op-cesaip02.wdc.com with ESMTP; 02 May 2022 05:50:19 -0700
From:   Niklas Cassel <niklas.cassel@wdc.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>
Cc:     Niklas Cassel <niklas.cassel@wdc.com>, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org
Subject: [PATCH v2 0/2] riscv mmu-type minor fixes
Date:   Mon,  2 May 2022 14:50:12 +0200
Message-Id: <20220502125015.1345312-1-niklas.cassel@wdc.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_PASS,
        SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello there,


Here are some minor riscv mmu-type related fixes.

The first patch simply adds "riscv,sv57" to the list of valid mmu-type
values.

The second patch fixes the "mmu:" print in /proc/cpuinfo on nommu systems.

Please review.


Kind regards,
Niklas

Changes since v1:
-Picked up tag from Rob Herring on patch 1/1.
-Send both patches as a series, since they are relate to mmu-type.

Niklas Cassel (2):
  dt-bindings: riscv: Add mmu-type riscv,sv57
  riscv: Don't output a bogus mmu-type on a no MMU kernel

 Documentation/devicetree/bindings/riscv/cpus.yaml | 1 +
 arch/riscv/kernel/cpu.c                           | 4 ++++
 2 files changed, 5 insertions(+)

-- 
2.35.1

