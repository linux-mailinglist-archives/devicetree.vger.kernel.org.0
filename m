Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CD99F656866
	for <lists+devicetree@lfdr.de>; Tue, 27 Dec 2022 09:27:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229751AbiL0I15 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Dec 2022 03:27:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35078 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229723AbiL0I14 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Dec 2022 03:27:56 -0500
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2035C2647
        for <devicetree@vger.kernel.org>; Tue, 27 Dec 2022 00:27:55 -0800 (PST)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 2BR8Rj5F019879;
        Tue, 27 Dec 2022 02:27:45 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1672129665;
        bh=W2jS52aaXKHKNZtM8BluGXp3l1JVDspx5b4whSMVk0k=;
        h=From:To:CC:Subject:Date;
        b=OxHXXt6ZwA8X1XOTCJRzmVKjZUQjQLUJ+DFVBMJ5zDKIkjDb3vRBDtlVXkZkCb5Js
         HS0lzj6IHlkZIDe2NcWxi1GBaojZ48cPprZ+H/aBL140jE6SqNxS325HWrYbK7hXMn
         tOoeOZLyPIBiiQ5w4i9neEWofEFCX8PIW6le42w8=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 2BR8RjRT100652
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 27 Dec 2022 02:27:45 -0600
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16; Tue, 27
 Dec 2022 02:27:44 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16 via
 Frontend Transport; Tue, 27 Dec 2022 02:27:44 -0600
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 2BR8RiVj099504;
        Tue, 27 Dec 2022 02:27:44 -0600
From:   Jai Luthra <j-luthra@ti.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>
CC:     <alsa-devel@alsa-project.org>, <devicetree@vger.kernel.org>,
        Jai Luthra <j-luthra@ti.com>
Subject: [PATCH v5 0/2] dt-bindings: sound: tlv320aic3x: Convert to dtschema
Date:   Tue, 27 Dec 2022 13:57:15 +0530
Message-ID: <20221227082717.29561-1-j-luthra@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert bindings for TI's TLV320AIC3x audio codecs to dtschema.

v5:
Follow up commit with properties around clocks and port that were 
missing in original txt bindings

v4: https://lore.kernel.org/all/20221221145216.11400-1-j-luthra@ti.com/

Jai Luthra (2):
  dt-bindings: sound: tlv320aic3x: Convert to dtschema
  dt-bindings: sound: tlv320aic3x: Add optional clock and port
    properties

 .../bindings/sound/ti,tlv320aic3x.yaml        | 164 ++++++++++++++++++
 .../devicetree/bindings/sound/tlv320aic3x.txt |  97 -----------
 2 files changed, 164 insertions(+), 97 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/sound/ti,tlv320aic3x.yaml
 delete mode 100644 Documentation/devicetree/bindings/sound/tlv320aic3x.txt

-- 
2.17.1

