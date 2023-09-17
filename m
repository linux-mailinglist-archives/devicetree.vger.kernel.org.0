Return-Path: <devicetree+bounces-885-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BC427A36DF
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 19:37:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2AD601C2167E
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 17:37:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 001BE63D1;
	Sun, 17 Sep 2023 17:37:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E98B4A29
	for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 17:37:42 +0000 (UTC)
Received: from out-213.mta1.migadu.com (out-213.mta1.migadu.com [IPv6:2001:41d0:203:375::d5])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59CDDF1
	for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 10:37:39 -0700 (PDT)
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1694972257;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=cothmr+77o5e2+4r9KfUSFxuV8BjV2N0LakyRZnqIAM=;
	b=Hx+AGSSUKxqQRB0EAhnk2jNtrY8DxlBBs4gWDHSw3BGOuKmiXCAzH93LkH3bl/8Tj2p7RM
	oqBdX7ALk9Pagk5qFr0uOR5fLkqlailnskw8WzyHDuPpXciVsq/+Qgwa2HEpXzDOcWDY+F
	WoJO80mhaMOaDfv0ILZx4pm+vXLYQnbm+WJmbfb0GMQ/Kaj/EpTdT7336m3FVbVqdL+zAk
	+DA/TY1SdQLjsfDrPZUP9nlN4vPUGGhPWnvkI9zKVyqf/9U1LD1tTs4jxR6uTCR//hnCcV
	Z0gZu2zKAF4mbf88Tk/cSAGiZvJS7pyutsdmQ07E3rfI2shF3cRVDp/Q4RiHIQ==
From: John Watts <contact@jookia.org>
To: alsa-devel@alsa-project.org
Cc: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	John Watts <contact@jookia.org>,
	patches@opensource.cirrus.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/3] ASoC: wm8782: Allow higher audio rates
Date: Mon, 18 Sep 2023 03:37:23 +1000
Message-ID: <20230917173726.1916439-1-contact@jookia.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The wm8782 supports higher audio rates than just 48kHz. This is
configured by setting the FSAMPEN pin on the codec chip.

This patch series introduces the 'wlf,fsampen' device tree property
to indicate the pin status and control the maximum rate available
when using the codec.

v2 -> v3:
- Rate is now properly constrained using ALSA constraints

v1 -> v2:
- Switched from max-rate property to wlf,fsampen property
- Clarified property is optional, not required

John Watts (3):
  ASoC: wm8782: Constrain maximum audio rate at runtime
  ASoC: wm8782: Use wlf,fsampen device tree property
  ASoC: dt-bindings: wlf,wm8782: Add wlf,fsampen property

 .../devicetree/bindings/sound/wm8782.txt      |  5 ++
 sound/soc/codecs/wm8782.c                     | 63 +++++++++++++++----
 2 files changed, 55 insertions(+), 13 deletions(-)

-- 
2.42.0


