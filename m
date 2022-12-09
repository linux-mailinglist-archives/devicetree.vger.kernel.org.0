Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E0510647F4A
	for <lists+devicetree@lfdr.de>; Fri,  9 Dec 2022 09:34:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229807AbiLIIeD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Dec 2022 03:34:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44924 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229808AbiLIId6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Dec 2022 03:33:58 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A4D555F6EA
        for <devicetree@vger.kernel.org>; Fri,  9 Dec 2022 00:33:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1670574829; x=1702110829;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=PORLHYSX/1kTqOMLWJEv1w2doPx8L9CMFxROJgP2dxg=;
  b=q4qBEVHa7VMEElpUj2pSUTrBmxSDQv1qoNl1FcgOxxiQFBAe7Av3wuLF
   7+1sQK29heEzKWC2ApqN3J0GXjVs8lVOJhHEBoEfnOBQP1R4Xa/A331MO
   zpvxjzMMEvnQEEFwkg4C9xHjFXkYz3oA3FrOsGugVuZ2NIZEORiPF45H+
   +i1nPftIkDkSa9vrX98YvJt4ZZ8PPh9M9koyLDUoQyTm/62av3R0325ZG
   XOmqNd3rV2VeW8dUWdp59C+ExWhlgWLyz/Hh27Pmey05KW62aX9ZhJOKL
   ndRrQJgyj4+6/iIpK03x0XNdPaXuW3YbvFx9bvdyOv/OhQoci+wdqku9K
   Q==;
X-IronPort-AV: E=Sophos;i="5.96,230,1665439200"; 
   d="scan'208";a="27857150"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 09 Dec 2022 09:33:47 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Fri, 09 Dec 2022 09:33:47 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Fri, 09 Dec 2022 09:33:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1670574827; x=1702110827;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=PORLHYSX/1kTqOMLWJEv1w2doPx8L9CMFxROJgP2dxg=;
  b=p2cagO7zTPKeH7+1Q2HHf2dXpTNl5NAVZc2w4eDESXSt1Z3HCSfEERHJ
   JC2TDleoS4/MU+ZgOb62nzzZ/gcQKhTrLwQK8DJoJS4VAtvLvszl3iTwv
   OJLCG4Qwxu4fCfoITDIlxyYFMd39gQXEfJjaUL4xY5xiu4fCJdlxbu/Am
   96XmEVnQBHeXJ48LlK1c+dighe7Gw3RxyNaEcT4iv+NxL08sdBkf2ZBeS
   kQCXR7IWAsIJf0TCF8pRel6WNXehWlu7hWKXg3Lr3ZdcU5+EcDRcV5e4N
   iDWhWNhDbfIsWvkVlhhE6NV3u797nlBfZWiD7TUUR5N0ssm/VpyiycMFh
   Q==;
X-IronPort-AV: E=Sophos;i="5.96,230,1665439200"; 
   d="scan'208";a="27857145"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 09 Dec 2022 09:33:46 +0100
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 766B2280071;
        Fri,  9 Dec 2022 09:33:45 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <robert.foss@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Marek Vasut <marex@denx.de>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
Subject: [PATCH 0/2] TI SN65DSI83 GPIO enable delay support
Date:   Fri,  9 Dec 2022 09:33:37 +0100
Message-Id: <20221209083339.3780776-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi all,

this small series adds a new optional property for specifying a platform
spefic enable delay. The LVDS Bridge requires at least a reset time of
10ms, but this is just the low pulse width. The actual rising time is a
different matter and is highly platform specific. My platform has a rising
time of ~110ms until the SN signal reaches VCC x 0.7 voltage level. Thus
make this time platform configurable.

Alexander Stein (2):
  dt-bindings: drm/bridge: ti-sn65dsi83: Add enable delay property
  drm: bridge: ti-sn65dsi83: Add enable delay support

 .../devicetree/bindings/display/bridge/ti,sn65dsi83.yaml   | 4 ++++
 drivers/gpu/drm/bridge/ti-sn65dsi83.c                      | 7 ++++++-
 2 files changed, 10 insertions(+), 1 deletion(-)

-- 
2.34.1

