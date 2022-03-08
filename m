Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3470E4D0CD5
	for <lists+devicetree@lfdr.de>; Tue,  8 Mar 2022 01:38:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243562AbiCHAiz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Mar 2022 19:38:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49506 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230263AbiCHAiw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Mar 2022 19:38:52 -0500
Received: from alexa-out-sd-01.qualcomm.com (alexa-out-sd-01.qualcomm.com [199.106.114.38])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C252E30F61
        for <devicetree@vger.kernel.org>; Mon,  7 Mar 2022 16:37:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
  t=1646699877; x=1678235877;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=AFspTufxnZFR9Evdcdu/mYretERNYjS/iMbuOXoxi6M=;
  b=Mku0rcloN6Rhmr/ettB4UjHuRUX7JDaOKhbxmtSvsPdslhWMSDW2nzWT
   LYFxUTRoFLgVHLFAtZAxhumzpKY//rzz4aGYSIwdJ8020PdnfPh417bZs
   CQnbHyiYuytqQ64q+EzCHA7E8wvPBwmoZrI9pdOkHi+NidJJ4NtTKszxV
   I=;
Received: from unknown (HELO ironmsg05-sd.qualcomm.com) ([10.53.140.145])
  by alexa-out-sd-01.qualcomm.com with ESMTP; 07 Mar 2022 16:37:57 -0800
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
  by ironmsg05-sd.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Mar 2022 16:37:57 -0800
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.15; Mon, 7 Mar 2022 16:37:56 -0800
Received: from maru.qualcomm.com (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.15; Mon, 7 Mar 2022
 16:37:55 -0800
From:   Jae Hyun Yoo <quic_jaehyoo@quicinc.com>
To:     Joel Stanley <joel@jms.id.au>, Rob Herring <robh+dt@kernel.org>,
        "Andrew Jeffery" <andrew@aj.id.au>,
        Linus Walleij <linus.walleij@linaro.org>
CC:     Jamie Iles <quic_jiles@quicinc.com>,
        Graeme Gregory <quic_ggregory@quicinc.com>,
        <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <linux-aspeed@lists.ozlabs.org>,
        "Jae Hyun Yoo" <quic_jaehyoo@quicinc.com>
Subject: [PATCH 0/5] Fix AST2600 quad mode SPI pinmux settings
Date:   Mon, 7 Mar 2022 16:37:40 -0800
Message-ID: <20220308003745.3930607-1-quic_jaehyoo@quicinc.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
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
&spi1 {
	pinctrl-names = "default";
	pinctrl-0 = <&pinctrl_qspi1_default>;
}

Please review.

Thanks,
Jae


Jae Hyun Yoo (3):
  ARM: dts: aspeed-g6: remove FWQSPID group in pinctrl dtsi
  pinctrl: pinctrl-aspeed-g6: remove FWQSPID group in pinctrl dtsi
  ARM: dts: aspeed-g6: fix SPI1/SPI2 quad pin group

Johnny Huang (2):
  pinctrl: pinctrl-aspeed-g6: add FWQSPI function-group
  ARM: dts: aspeed-g6: add FWQSPI group in pinctrl dtsi

 arch/arm/boot/dts/aspeed-g6-pinctrl.dtsi   | 10 +++++-----
 drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c | 17 ++++++++---------
 2 files changed, 13 insertions(+), 14 deletions(-)

-- 
2.25.1

