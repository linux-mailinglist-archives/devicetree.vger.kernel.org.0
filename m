Return-Path: <devicetree+bounces-1211-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A30A7A553E
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 23:51:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 559BC1C20A8D
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 21:51:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEEA228E06;
	Mon, 18 Sep 2023 21:51:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A0CA286B1
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 21:50:59 +0000 (UTC)
X-Greylist: delayed 66 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Mon, 18 Sep 2023 14:50:58 PDT
Received: from mail.sakamoto.pl (mail.sakamoto.pl [185.236.240.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B809D8E
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 14:50:58 -0700 (PDT)
Authentication-Results: mail.sakamoto.pl;
	auth=pass (plain)
Date: Mon, 18 Sep 2023 23:49:44 +0200
From: Alicja Michalska <alka@sakamoto.pl>
To: devicetree@vger.kernel.org
Cc: dri-devel@lists.freedesktop.org, andrzej.hajda@intel.com,
	neil.armstrong@linaro.org, Laurent.pinchart@ideasonboard.com,
	jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@gmail.com,
	daniel@ffwll.ch
Subject: [PATCH] dt-bindings: display: anx7814: Add definition for anx7816
Message-ID: <ZQjFabKW7QvrvsnG@tora>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Haraka-GeoIP: FR
X-Haraka-GeoIP-Received: 37.165.191.167:FR
Received: from localhost (Unknown [127.0.0.1])
	by mail.sakamoto.pl (Haraka/2.8.28) with ESMTPSA id 00563704-9D56-448D-AC2A-1D164520EB98.1
	envelope-from <alka@sakamoto.pl>
	tls TLS_AES_256_GCM_SHA384 (authenticated bits=0);
	Mon, 18 Sep 2023 23:49:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=sakamoto.pl; s=s20200705610;
	h=from:subject:date:message-id:to:cc:mime-version;
	bh=sI571ETAaL0Us0YlexREagZHnhYjl//syzK9E0tVq1U=;
	b=gLhvsyYwxgka72wBii+b4ZJ8YMKsQMkTMIuTAq1Uss5mNwKYZXZh5an1lYSrGaeY1ZaOFJw7o+
	6Ku5p9u/H3a4GwhwJM9mMngwSJplp48Yiy8bpZ6qA5fu8i9L33aZt52q3MdNB/13C+K9w4Y5kA54
	c27hLPdEy2V5kSzgCb5Z6ALrAR6C+USrZ83tQUol20WVUzYeXhBkHNFg7HB+DS/C/PbSdHzaI4IU
	enwrOgzdH+Y+xH+GpNhklu6jp9PrLQq9qdz8rElXfpvb+uirOGNIq1y1OBl9PLIQXrHMtILGAP+Z
	DGLoBPn8Qskfk38P7QrWju0CdslEWh4nXa1FDfTQ==
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,MSGID_FROM_MTA_HEADER,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

As requested by Robert Foss <rfoss@kernel.org>, this patch adds
definition for anx7816. It supplements the patch submitted to dri-devel.

Signed-off-by: Alicja Michalska <ahplka19@gmail.com>
---
 .../devicetree/bindings/display/bridge/analogix,anx7814.yaml     | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/analogix,anx7814.yaml b/Documentation/devicetree/bindings/display/bridge/analogix,anx7814.yaml
index 4a5e5d9d6f90..4509c496731b 100644
--- a/Documentation/devicetree/bindings/display/bridge/analogix,anx7814.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/analogix,anx7814.yaml
@@ -17,6 +17,7 @@ properties:
       - analogix,anx7808
       - analogix,anx7812
       - analogix,anx7814
+      - analogix,anx7816
       - analogix,anx7818
 
   reg:
-- 
2.41.0


