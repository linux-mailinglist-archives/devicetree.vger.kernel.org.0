Return-Path: <devicetree+bounces-1110-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 17CE47A4BC8
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 17:22:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 375FC1C20D1D
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 15:22:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF6C81D55F;
	Mon, 18 Sep 2023 15:21:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 886C81D695
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 15:21:41 +0000 (UTC)
Received: from out-217.mta1.migadu.com (out-217.mta1.migadu.com [IPv6:2001:41d0:203:375::d9])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB818E5B
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 08:19:34 -0700 (PDT)
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1695042967;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=f4JO3nPtbJqM3dkylLDmImTDJGUU/OSMwJOj0UlM/Ak=;
	b=TfnB1KhlXidh22YPceMlN18+XrH4ujdCm5j8lJg6uxN9ms0aAHROG1HXUcT4YkltlOJYLO
	2w/YjChRnnByz+GDdIo2GwmjAWlDJQ9o/B9oH4KB4OfdZmieUCqQmQ1HEbS5cPDi7LtbCJ
	HBuCUmHtOmgGynv7u0KrBIZa0MiGkRbf17IqPjTyywqjqk2q7nE5Gwsb2av5HPRDzgCGWW
	3MBUHEsF441/67YtaMlH+THdpg/Fl/c6W5oWMLtmrokAbdoKqH/8rEDl6aoHn3ObzKrVRU
	KME44FGXd8fiFy9DDfRf4mF4sFeU0OTXzGEz3Eqz4FLX99d2CViK9O2/bAW7zg==
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
Subject: [PATCH v4 3/3] ASoC: dt-bindings: wlf,wm8782: Add wlf,fsampen property
Date: Mon, 18 Sep 2023 23:15:32 +1000
Message-ID: <20230918131532.2257615-4-contact@jookia.org>
In-Reply-To: <20230918131532.2257615-1-contact@jookia.org>
References: <20230918131532.2257615-1-contact@jookia.org>
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
	SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The WM8782 can safely support rates higher than 48kHz by changing the
value of the FSAMPEN pin.

Allow specifying the FSAMPEN pin value in the device tree.

Signed-off-by: John Watts <contact@jookia.org>
Acked-by: Charles Keepax <ckeepax@opensource.cirrus.com>
---
 Documentation/devicetree/bindings/sound/wm8782.txt | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/wm8782.txt b/Documentation/devicetree/bindings/sound/wm8782.txt
index 256cdec6ec4d..1a28f3280972 100644
--- a/Documentation/devicetree/bindings/sound/wm8782.txt
+++ b/Documentation/devicetree/bindings/sound/wm8782.txt
@@ -8,10 +8,17 @@ Required properties:
  - Vdda-supply : phandle to a regulator for the analog power supply (2.7V - 5.5V)
  - Vdd-supply  : phandle to a regulator for the digital power supply (2.7V - 3.6V)
 
+Optional properties:
+
+ - wlf,fsampen:
+   FSAMPEN pin value, 0 for low, 1 for high, 2 for disconnected.
+   Defaults to 0 if left unspecified.
+
 Example:
 
 wm8782: stereo-adc {
 	compatible = "wlf,wm8782";
 	Vdda-supply = <&vdda_supply>;
 	Vdd-supply = <&vdd_supply>;
+	wlf,fsampen = <2>; /* 192KHz */
 };
-- 
2.42.0


