Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 104014557E7
	for <lists+devicetree@lfdr.de>; Thu, 18 Nov 2021 10:20:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245163AbhKRJXd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Nov 2021 04:23:33 -0500
Received: from mx1.tq-group.com ([93.104.207.81]:5493 "EHLO mx1.tq-group.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S245109AbhKRJXG (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 18 Nov 2021 04:23:06 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1637227207; x=1668763207;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=GrTbX6NnVrq3CIDGxkQfcmgwIMWNlS4xnPEnZovsPEA=;
  b=hvTtCUfO47RIReEvjRztkE+mNTlsTvnppckasVRvqZemHwNz6V8aFIfl
   HgKMCUWzGBgWqdP7T5qVrl5b3hARTy6I8pCSqOA0LIEPjkj7/qC9RIQPw
   CK5BUBGp78/kMROVQFFSA3wsor4b8gtRqV3vgOSDEHe8ieqhkEd8vdHsI
   zYUOU8ZbylOQ3EfrBpTepAgU7ZMwmvZMKfP5qSda8LnWZIbuD5rdm3VIG
   AveOGQFauQ703fzTfLk1+1Os2x0tEMk3eyeZEMfOGquWFl+D2NfyRHzyr
   0SJK7nHTXQn/PzgY1aFylkbH8oU/YpMfCDAzEIwA8PnfxqPLEs803YWKi
   A==;
X-IronPort-AV: E=Sophos;i="5.87,244,1631570400"; 
   d="scan'208";a="20534720"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 18 Nov 2021 10:20:03 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Thu, 18 Nov 2021 10:20:04 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Thu, 18 Nov 2021 10:20:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1637227204; x=1668763204;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=GrTbX6NnVrq3CIDGxkQfcmgwIMWNlS4xnPEnZovsPEA=;
  b=LPPENEIMNoqtVnXoEEheMI5FeUFsKbSnibWP0hmqaJ8KypvjtQWgBppK
   e7EJH2JDj+vDEaDhqcmPbti6iOOm30zwdq5fao5CjXp3I+7FBJUIsbzNO
   vhbr92R2d4M+UmLTPtPYmwA+fVXPIV0LF/N0/Ut6/V07TwrXRR8bDA7VN
   R/GsBF7kgzXFypYQEV7EIyx1GRe0sg4H4FLf+tPBM5s8VIMDSGCw6aKM3
   L7Kib04KM7SSciyJmTaANelwKwP1/Ffeyh0tYZAF/7ZXteWwTGRoCOjkV
   8GFNEGPXYQn0q1kS6fusbLB4TGRD7v/3752X7+VN5XCA3Hik6TM+s0d8f
   w==;
X-IronPort-AV: E=Sophos;i="5.87,244,1631570400"; 
   d="scan'208";a="20534710"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 18 Nov 2021 10:20:02 +0100
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id A2A7E280065;
        Thu, 18 Nov 2021 10:20:01 +0100 (CET)
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
Subject: [PATCH v4 0/4] ti-sn65dsi83 patches
Date:   Thu, 18 Nov 2021 10:19:51 +0100
Message-Id: <20211118091955.3009900-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

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
 drivers/gpu/drm/bridge/ti-sn65dsi83.c         | 22 ++++++++++++++++++-
 2 files changed, 25 insertions(+), 2 deletions(-)

-- 
2.25.1

