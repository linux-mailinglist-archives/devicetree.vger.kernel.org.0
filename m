Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C883F432E9D
	for <lists+devicetree@lfdr.de>; Tue, 19 Oct 2021 08:52:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229755AbhJSGzG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Oct 2021 02:55:06 -0400
Received: from mx1.tq-group.com ([93.104.207.81]:53801 "EHLO mx1.tq-group.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229649AbhJSGzF (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 19 Oct 2021 02:55:05 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1634626373; x=1666162373;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=fCtuMRCgd/CVT3MfJ/Uq7+CQLaTtErXGb4KPPavX0qs=;
  b=RNoCquH2XGTr59oQCuc6slh047jKpWz70oX+OjZFFDhstlLpukxNUHWR
   PLxEq+j3IVRg7ExHDKMf7u1tHFPtDjXB22kSgDAiQS8uDfgsILaTvvtYB
   pQOlpmEePx/yh6ltYYmGm9zqec5ZpJHebcKniFoQc/q4oym7ymfdfXIZc
   e1gMq3m3fRBmudFS3LslEUhL9t9m4VoFz40C41oljJuuPzWcm6B0YpFUN
   dTZzlmof1LI5X+yMCs+c4JX+uMufqUQQ6LpzfOtJ+PDh1F1URhMIhTkkR
   9XlNfOGSJSL18QEQxTcR2AtGob3tHT2Iy3QKxYgQAh4TVSysbt1MbjNw9
   Q==;
X-IronPort-AV: E=Sophos;i="5.85,383,1624312800"; 
   d="scan'208";a="20119995"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 19 Oct 2021 08:52:52 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 19 Oct 2021 08:52:52 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 19 Oct 2021 08:52:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1634626372; x=1666162372;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=fCtuMRCgd/CVT3MfJ/Uq7+CQLaTtErXGb4KPPavX0qs=;
  b=PtnlNEyN5Weg0uylRgB84Ectucyw0YKutOEwKfAqew0yXhBNev5E3u1T
   jDT3wr/rD9A4dBsZJIWrjV4y22RkHkdD+La4mv1VLDtx73qMVs20z4Ves
   j5fkEX0PHHfBjBtoEmq6UyK/tPIIHa4heGSLXthUy6F/s7+/9vWl6zAur
   /A1DPjur0F2vHjo9/GRpspo3t77CcfEbFpr5JuSYVTyv6mQgfNFtqL39+
   pt8z+Wz/3iI6xjL+eA+5MQoLojjVl11sUxqiIU8tWiihweTFkUP9J50u2
   QgE9WXBEr/QxfEtFmPaX4Ttg07Zj2Zq42loo0De+pEGkS7BxFV0l3WiB3
   w==;
X-IronPort-AV: E=Sophos;i="5.85,383,1624312800"; 
   d="scan'208";a="20119994"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 19 Oct 2021 08:52:52 +0200
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 1B827280065;
        Tue, 19 Oct 2021 08:52:52 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Robert Foss <robert.foss@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
Subject: [PATCH v3 0/4] ti-sn65dsi83 patches
Date:   Tue, 19 Oct 2021 08:52:35 +0200
Message-Id: <20211019065239.969988-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Changes in V3 of this set:
* Do not require vcc-supply in bindings, making it purely optional
* Move regulator enable/disable to sn65dsi83_atomic_pre_enable and
  sn65dsi83_atomic_disable

Changes in V2 of this set:
* Add patch from Laurent for fixing the binding regarding optional GPIO
* Reorder patches so bindings are changed beforehand
* Add small fixes from Sam's review

Alexander Stein (3):
  drm/bridge: ti-sn65dsi83: Make enable GPIO optional
  dt-bindings: drm/bridge: ti-sn65dsi83: Add vcc supply bindings
  drm/bridge: ti-sn65dsi83: Add vcc supply regulator support

Laurent Pinchart (1):
  dt-bindings: display: bridge: sn65dsi83: Make enable GPIO optional

 .../bindings/display/bridge/ti,sn65dsi83.yaml |  5 ++++-
 drivers/gpu/drm/bridge/ti-sn65dsi83.c         | 21 ++++++++++++++++++-
 2 files changed, 24 insertions(+), 2 deletions(-)

-- 
2.25.1

