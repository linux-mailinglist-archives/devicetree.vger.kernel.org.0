Return-Path: <devicetree+bounces-1120-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B5D277A4CAC
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 17:38:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7073F281FFA
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 15:38:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64AC21DDF4;
	Mon, 18 Sep 2023 15:38:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA9B1D6B3
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 15:38:06 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66B09CF2;
	Mon, 18 Sep 2023 08:36:38 -0700 (PDT)
Received: from jupiter.universe (dyndsl-091-248-188-252.ewe-ip-backbone.de [91.248.188.252])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 6F6C3660716C;
	Mon, 18 Sep 2023 15:13:39 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1695046419;
	bh=jUBMzzrZP2ozft5sWOPwadaxJadrsgcEVDuXZaKS9pI=;
	h=From:To:Cc:Subject:Date:From;
	b=EGZdGQ+qidXndDrZjztBDm3QNv9uAzpcV5FLI8O2khxEFKmvGUrRCWbHD7e27dqrV
	 obiniG2FlGTS4Mtu60nA0zPNDOYg30LUhzLLuaAX3SHsI1Fi5Ki1lXb38RegjHwYZ8
	 M36gu+MdtlGtxD4xQdjUHbS3hdtecRAQBdtKXU81ve9ayFFugB65+3ZJ7oABS4ziB9
	 KBYZxnUTu8BAVXoRWFoDey5OQddCjAkwkoYMlrCPXDnpIq30EEyZ/mBGGv+9b3fZXe
	 U7f/PNH8dzMFFQOvbUx9h0/TxxTux1no5Y4dUyI2XDBEwPERPOm5Kr1/HhdcXCm5dE
	 VO/VB/H2d+/MQ==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 7F6A64800CE; Mon, 18 Sep 2023 16:13:37 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH 0/2] RK3588 EVB1 PCIe support
Date: Mon, 18 Sep 2023 16:13:25 +0200
Message-Id: <20230918141327.131108-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.40.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi,

This enables PCIe network card and the PCIe slot for the RK3588 EVB1.
There is one more PCIe lane being used for a WLAN card, but I did not
yet get that working.

-- Sebastian

Sebastian Reichel (2):
  arm64: dts: rockchip: rk3588-evb1: add PCIe2 network controller
  arm64: dts: rockchip: rk3588-evb1: add PCIe3 bus

 .../boot/dts/rockchip/rk3588-evb1-v10.dts     | 98 +++++++++++++++++++
 1 file changed, 98 insertions(+)

-- 
2.40.1


