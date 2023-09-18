Return-Path: <devicetree+bounces-1125-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B2CB7A4CEE
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 17:44:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4021C1C2138B
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 15:44:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03E351F5F1;
	Mon, 18 Sep 2023 15:43:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D60221D686
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 15:43:57 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E8C4E60;
	Mon, 18 Sep 2023 08:42:24 -0700 (PDT)
Received: from jupiter.universe (dyndsl-091-248-188-252.ewe-ip-backbone.de [91.248.188.252])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 3BCF066071F1;
	Mon, 18 Sep 2023 15:14:58 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1695046498;
	bh=eDPgzqzOt8C0tSrqfznZpadr+6u2SSJcGi+WOSLOE6s=;
	h=From:To:Cc:Subject:Date:From;
	b=bU0psDT57KgX+Ugd6nMxTkzKM49BD9cEdn+Kbs/ziEiQfkgBtxVo1mbgK0WxoXEZt
	 0oZdoNpGlC43YAUw0nbUJwwrnoD5AF09FCFLRPsi+uPrmxsF0VE6zvwBLL7o0VZAhJ
	 rLlfjLaSfWFclolrHa6Pms5dNESXkQgFXkpy8AiL3mmCXKkItojagVug4HC1FGc0Lg
	 B9DjBbW0BIUzCqALgw6QQpAI6WdHlNb9tpXj+4UagsZacINr3zBifdVT3to0qKj52h
	 aiGlDgywyn/OxXnI9mwLQPIp4sHpP26F+YizGUSbS+4keItbMUzGM6y/VuVcDoid+O
	 VyYUqtaIvYYAw==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 7ED764800CE; Mon, 18 Sep 2023 16:14:56 +0200 (CEST)
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
Subject: [PATCH 0/3] RK3588 Rock 5B PCIe support
Date: Mon, 18 Sep 2023 16:14:48 +0200
Message-Id: <20230918141451.131247-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.40.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,
	SPF_PASS autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi,

This enables PCIe network card and PCIe for both M.2 ports the Rock 5B has.

-- Sebastian

Sebastian Reichel (3):
  arm64: dts: rockchip: rock-5b: add PCIe network controller
  arm64: dts: rockchip: rock-5b: add PCIe for M.2 M-key
  arm64: dts: rockchip: rock-5b: add PCIe for M.2 E-Key

 .../boot/dts/rockchip/rk3588-rock-5b.dts      | 97 +++++++++++++++++++
 1 file changed, 97 insertions(+)

-- 
2.40.1


