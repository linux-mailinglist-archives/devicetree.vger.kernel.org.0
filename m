Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 619864EB2CA
	for <lists+devicetree@lfdr.de>; Tue, 29 Mar 2022 19:40:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240261AbiC2Rlw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Mar 2022 13:41:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59434 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240268AbiC2Rlv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Mar 2022 13:41:51 -0400
Received: from alexa-out.qualcomm.com (alexa-out.qualcomm.com [129.46.98.28])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83F8E2A24C
        for <devicetree@vger.kernel.org>; Tue, 29 Mar 2022 10:40:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
  t=1648575607; x=1680111607;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=L9a82y/lcvJzSe4xQ687SKzEc2I5M+TduJKXm5ghFVg=;
  b=w6nva+UjYBn901tXLVAM6M0qezzKMaBCBV65XWlhJZRvFtZo4f08OnnK
   PvJGWT6/3nZJ/UFLNp1uMEkH3NPSYJg9VbqhSjlU4Ef7BPk7+eSUIqbO9
   gHLuKktPdY1wmSr9+jao176IBpMb0qXMR0F6tPnP4Q9TGNG2BlNAkQ3TC
   I=;
Received: from ironmsg07-lv.qualcomm.com ([10.47.202.151])
  by alexa-out.qualcomm.com with ESMTP; 29 Mar 2022 10:40:07 -0700
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
  by ironmsg07-lv.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Mar 2022 10:40:06 -0700
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Tue, 29 Mar 2022 10:40:06 -0700
Received: from maru.qualcomm.com (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.22; Tue, 29 Mar
 2022 10:40:05 -0700
From:   Jae Hyun Yoo <quic_jaehyoo@quicinc.com>
To:     Andrew Jeffery <andrew@aj.id.au>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
        Joel Stanley <joel@jms.id.au>, Arnd Bergmann <arnd@arndb.de>
CC:     Jamie Iles <quic_jiles@quicinc.com>,
        Graeme Gregory <quic_ggregory@quicinc.com>,
        <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <linux-aspeed@lists.ozlabs.org>,
        "Jae Hyun Yoo" <quic_jaehyoo@quicinc.com>
Subject: [PATCH v3 0/7] Fix AST2600 quad mode SPI pinmux settings
Date:   Tue, 29 Mar 2022 10:39:25 -0700
Message-ID: <20220329173932.2588289-1-quic_jaehyoo@quicinc.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

I’m sending this patch series to fix current issues in AST2600 pinmux
settings while enabling quad mode SPI support.

FWSPI18 pins are basically 1.8v logic pins that are different from the
dedicated FWSPI pins that provide 3.3v logic level, so FWSPI18 pins can’t
be grouped with FWSPIDQ2 and FWSPIDQ3, so this series fix the issue.

Also, fixes QSPI1 and QSPI2 function settings in AST2600 pinctrl dtsi to
make it able to enable quad mode on SPI1 and SPI2 interfaces.

With this series, quad mode pinmux can be set like below.

FW SPI:
&fmc {
	pinctrl-names = "default";
	pinctrl-0 = <&pinctrl_fwqspi_default>;
}

SPI1:
&spi1 {
	pinctrl-names = "default";
	pinctrl-0 = <&pinctrl_qspi1_default>;
}

SPI2:
&spi2 {
	pinctrl-names = "default";
	pinctrl-0 = <&pinctrl_qspi2_default>;
}

Please review.

Thanks,
Jae

Changes in v3:
 * Added bindings patches. (Andrew)

Changes in v2:
 * Rebased it on the latest.

Jae Hyun Yoo (5):
  ARM: dts: aspeed-g6: remove FWQSPID group in pinctrl dtsi
  pinctrl: pinctrl-aspeed-g6: remove FWQSPID group in pinctrl
  dt-bindings: pinctrl: aspeed-g6: remove FWQSPID group
  dt-bindings: pinctrl: aspeed-g6: add FWQSPI function/group
  ARM: dts: aspeed-g6: fix SPI1/SPI2 quad pin group

Johnny Huang (2):
  pinctrl: pinctrl-aspeed-g6: add FWQSPI function-group
  ARM: dts: aspeed-g6: add FWQSPI group in pinctrl dtsi

 .../pinctrl/aspeed,ast2600-pinctrl.yaml         |  4 ++--
 arch/arm/boot/dts/aspeed-g6-pinctrl.dtsi        | 10 +++++-----
 drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c      | 17 ++++++++---------
 3 files changed, 15 insertions(+), 16 deletions(-)

-- 
2.25.1

