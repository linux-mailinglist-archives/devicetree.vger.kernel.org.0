Return-Path: <devicetree+bounces-977-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id ACE3E7A43BB
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 10:00:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CA9E21C20CE3
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 08:00:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CC70F504;
	Mon, 18 Sep 2023 08:00:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3C5F33E2
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 08:00:22 +0000 (UTC)
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7506D10DB;
	Mon, 18 Sep 2023 00:57:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1695023862; x=1726559862;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=v6+UfxWrGkPBnYKXPVlGoapzSwF/8Nn2Ixda6Z4JnQ4=;
  b=YTGn2j14K3+preZ3xXgGB5y2jE2u+hbirdetucdxtGDZXs60C0gD+dyz
   slfIbY962xs9GF2sE4rMlzBlc8lCxy7oCzwDZRFnA8AwjfTOOoiUImU5N
   oSG1qxrYVDUKddy3LA25FGUH3ujd0MH2R+ewxmCMa3//7HevdjymlnbFy
   ffkxSjshFmiMjERnvIgfLqKDsyS5m+uGF22wYwphcU7Q0SGpvKzCWlYQ5
   XnQ7bQ+oFIUynAJ9dLP/bOZFalklWK/vXj3qNHtvHmNTyuUPdbmnOypRe
   kwpwoehmiXnq2k/1ix5+61PVJj1PO8AI3OPDKUgVgla8pb/Kxn/58jd1a
   g==;
X-CSE-ConnectionGUID: 3kEnWZhoRDqFxJjdItUUdg==
X-CSE-MsgGUID: DZpMbPIAQSmYF2DMMDBOOA==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.02,156,1688454000"; 
   d="scan'208";a="5345921"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa1.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 18 Sep 2023 00:56:45 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 18 Sep 2023 00:56:37 -0700
Received: from marius-VM.mshome.net (10.10.85.11) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.2507.21 via Frontend
 Transport; Mon, 18 Sep 2023 00:56:35 -0700
From: <marius.cristea@microchip.com>
To: <jic23@kernel.org>, <lars@metafoo.de>, <robh+dt@kernel.org>
CC: <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
	<linux-iio@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <marius.cristea@microchip.com>
Subject: [PATCH v1] iio: adc: MCP3564: fix the static checker warning
Date: Mon, 18 Sep 2023 10:56:33 +0300
Message-ID: <20230918075633.1884-1-marius.cristea@microchip.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,SPF_HELO_NONE,SPF_NONE autolearn=no autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Marius Cristea <marius.cristea@microchip.com>

The patch 33ec3e5fc1ea: "iio: adc: adding support for MCP3564 ADC"
from Aug 29, 2023 (linux-next), leads to the following Smatch static
checker warning:

        drivers/iio/adc/mcp3564.c:1426 mcp3564_probe()
        warn: address of NULL pointer 'indio_dev'

drivers/iio/adc/mcp3564.c
    1421         struct iio_dev *indio_dev;
    1422         struct mcp3564_state *adc;
    1423
    1424         indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*adc));
    1425         if (!indio_dev) {
--> 1426                 dev_err_probe(&indio_dev->dev, PTR_ERR(indio_dev),
                                       ^^^^^^^^^^^^^^^

Fixes: 33ec3e5fc1ea (iio: adc: adding support for MCP3564 ADC)
Signed-off-by: Marius Cristea <marius.cristea@microchip.com>
---
 drivers/iio/adc/mcp3564.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/iio/adc/mcp3564.c b/drivers/iio/adc/mcp3564.c
index 64145f4ae55c..9ede1a5d5d7b 100644
--- a/drivers/iio/adc/mcp3564.c
+++ b/drivers/iio/adc/mcp3564.c
@@ -1422,11 +1422,8 @@ static int mcp3564_probe(struct spi_device *spi)
 	struct mcp3564_state *adc;
 
 	indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*adc));
-	if (!indio_dev) {
-		dev_err_probe(&indio_dev->dev, PTR_ERR(indio_dev),
-			      "Can't allocate iio device\n");
+	if (!indio_dev)
 		return -ENOMEM;
-	}
 
 	adc = iio_priv(indio_dev);
 	adc->spi = spi;

base-commit: 22da192f43f7d302d02644efa192ba5a05d935c9
-- 
2.34.1


