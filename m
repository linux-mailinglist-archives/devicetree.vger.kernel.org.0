Return-Path: <devicetree+bounces-1113-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B2E447A4BFA
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 17:24:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6CF4E281CDE
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 15:24:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82A8F1D696;
	Mon, 18 Sep 2023 15:23:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DB391CABB
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 15:23:35 +0000 (UTC)
Received: from out-219.mta1.migadu.com (out-219.mta1.migadu.com [IPv6:2001:41d0:203:375::db])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DDD87E69
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 08:19:40 -0700 (PDT)
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1695042943;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=pfa3PBg9asYKtNt2koiep7HfxuIir4IkICmX1c8bfJw=;
	b=0Cv0iCXpSncpg9/iBG2W/hr3ugd7Y6aCght+CRTbusQBhXrfkoyA5e3PqQAVcCNmSrKE10
	bFRCKoSTwnljO2/jOD21GAH9z4qCHGdOPWlA3r/nJ64qGw2H7cCwfQmc6jvmqtFAVuJv5j
	YjAzkWFqdFp9/rFy0yOiFg/kYyfVynqPM2BBOYQ5vWSSKy3CWwD0lVFVWPRZ/J6fYBzkcr
	Wz1w9KkU9qpGG1K9hZn5iJexFKp8hrHD4Gmn1qEgxlaCeZGPVyoIWVzxQOv2lmGP+eTm6h
	X/6sdcR7IwrSKdKHWOsBqTKN5S08v9k5dTh2SBP2ja393+93AshOUuudHaFhQQ==
From: John Watts <contact@jookia.org>
To: alsa-devel@alsa-project.org
Cc: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Charles Keepax <ckeepax@opensource.cirrus.com>,
	John Watts <contact@jookia.org>,
	patches@opensource.cirrus.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 0/3] ASoC: wm8782: Allow higher audio rates
Date: Mon, 18 Sep 2023 23:15:29 +1000
Message-ID: <20230918131532.2257615-1-contact@jookia.org>
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
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The wm8782 supports higher audio rates than just 48kHz. This is
configured by setting the FSAMPEN pin on the codec chip.

This patch series introduces the 'wlf,fsampen' device tree property
to indicate the pin status and control the maximum rate available
when using the codec.

v3 -> v4:
- Default value is specified in device tree documentation

v2 -> v3:
- Rate is now properly constrained using ALSA constraints

v1 -> v2:
- Switched from max-rate property to wlf,fsampen property
- Clarified property is optional, not required

John Watts (3):
  ASoC: wm8782: Constrain maximum audio rate at runtime
  ASoC: wm8782: Use wlf,fsampen device tree property
  ASoC: dt-bindings: wlf,wm8782: Add wlf,fsampen property

 .../devicetree/bindings/sound/wm8782.txt      |  7 +++
 sound/soc/codecs/wm8782.c                     | 63 +++++++++++++++----
 2 files changed, 57 insertions(+), 13 deletions(-)

-- 
2.42.0


