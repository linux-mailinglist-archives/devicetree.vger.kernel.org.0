Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CF671472D76
	for <lists+devicetree@lfdr.de>; Mon, 13 Dec 2021 14:36:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237021AbhLMNgf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Dec 2021 08:36:35 -0500
Received: from mx1.tq-group.com ([93.104.207.81]:62170 "EHLO mx1.tq-group.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S235647AbhLMNgf (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 13 Dec 2021 08:36:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1639402595; x=1670938595;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=OC4DluTv7Ck+tGkqPC2WyfnXfKegKd/Vd10PxezlL6o=;
  b=LxCiEatdf/+4eeh/XeaUE+gm50TfhjACKKcBVMga4E/70J6Hvt0C5NVh
   GGDEnvrkEkfKLLkpvrI1QECkP2IU8v5Hjp8c7S27tusoNLLX7tf6sjeBt
   VDx+V1COi3d4gt55Ks73TL0bUHkxuDlTXwKdwQnV52t9kAmulQuAGDiU9
   I+8iFfIyivHARptsb2ikWx1ekpWS8wTLR78FBse4Sf1zS9aJOGfbtH4Ap
   I1zMlYI5w3AyKTHLBxvDsaIWm2OIqrZAD5CAKasDYVtVM9EuOtdyAgN8/
   PBmvDwEddNm0BkR/plp8IxEeCC0GEh9qAaMzQa73B6R+Ai4NZt5LrMGeT
   g==;
X-IronPort-AV: E=Sophos;i="5.88,202,1635199200"; 
   d="scan'208";a="21012620"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 13 Dec 2021 14:36:34 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Mon, 13 Dec 2021 14:36:34 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Mon, 13 Dec 2021 14:36:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1639402594; x=1670938594;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=OC4DluTv7Ck+tGkqPC2WyfnXfKegKd/Vd10PxezlL6o=;
  b=EI5og9WFsjBheOm9lfGrcNRPQ1bYC6FLrv6+mxH7hdFMu7Eu9ze4G2Jn
   dlb7cC59YYJ2I4LRFig9xuWF1rrRN1106jMnewQ2Ib2vhccd3/r5iBHoe
   NOsh21Yf+zyCEkZI1YR1iIntDb1Wyq74H9wfXVxwL+Oi6kSgn0WnFYsbW
   AhVS+L7bTZkqhr/fwhaBgvjGhdjRZuzCWVMkR4qHjf5reVISxb1EYtEZV
   Z3zTyjoXAXfByjdyNFAvPX3aSvcjq+5fa9BCzzjwoZVy1EXxH4jfP1A3M
   lBzhlEf3NooI8KLvk/MdMDgXj+HK2q6hN5si3k+wGi7bWkK5lcxTlI9xA
   Q==;
X-IronPort-AV: E=Sophos;i="5.88,202,1635199200"; 
   d="scan'208";a="21012619"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 13 Dec 2021 14:36:34 +0100
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id F0870280065;
        Mon, 13 Dec 2021 14:36:33 +0100 (CET)
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
Subject: [PATCH v5 0/4] ti-sn65dsi83 patches
Date:   Mon, 13 Dec 2021 14:36:22 +0100
Message-Id: <20211213133626.2498056-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Changes in V5 of this set:
* Rebased to next-20211208
* Fix format string in error message
* Remove superfluous error value for dev_err_probe()
* Added Reviewed-by: Jagan Teki for patch 3 & 4

Changes in V4 of this set:
* Rebased to next-20211118 (due to merge-conflict in linux-next)
* Added Rob Herring's Ack on Patch 1 & 3
* Reworked patch 4 due to other changes in linux-next
* Removed Sam Ravnborg's Reviewed-by for patch4 due to rework

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

