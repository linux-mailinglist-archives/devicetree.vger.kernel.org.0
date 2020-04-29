Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C5B711BD424
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2020 07:45:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726515AbgD2Fpg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Apr 2020 01:45:36 -0400
Received: from alexa-out-blr-02.qualcomm.com ([103.229.18.198]:55575 "EHLO
        alexa-out-blr-02.qualcomm.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726508AbgD2Fpg (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 29 Apr 2020 01:45:36 -0400
Received: from ironmsg02-blr.qualcomm.com ([10.86.208.131])
  by alexa-out-blr-02.qualcomm.com with ESMTP/TLS/AES256-SHA; 29 Apr 2020 11:15:32 +0530
Received: from harigovi-linux.qualcomm.com ([10.204.66.157])
  by ironmsg02-blr.qualcomm.com with ESMTP; 29 Apr 2020 11:15:18 +0530
Received: by harigovi-linux.qualcomm.com (Postfix, from userid 2332695)
        id 8F41E29E2; Wed, 29 Apr 2020 11:15:17 +0530 (IST)
From:   Harigovindan P <harigovi@codeaurora.org>
To:     dri-devel@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org
Cc:     Harigovindan P <harigovi@codeaurora.org>, robdclark@gmail.com,
        seanpaul@chromium.org, sean@poorly.run
Subject: [PATCH v12 0/2] Add support for rm69299 Visionox panel driver and add devicetree bindings for visionox panel
Date:   Wed, 29 Apr 2020 11:15:13 +0530
Message-Id: <20200429054515.4976-1-harigovi@codeaurora.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Adding support for visionox rm69299 panel driver and adding bindings for the same panel.
https://patchwork.kernel.org/patch/11461943/ has already been added to drm-misc-next.

Harigovindan P (2):
  drm/panel: add support for rm69299 visionox panel driver
  dt-bindings: documenting compatible string vendor "visionox"

 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 drivers/gpu/drm/panel/Kconfig                 |   8 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 .../gpu/drm/panel/panel-visionox-rm69299.c    | 304 ++++++++++++++++++
 4 files changed, 315 insertions(+)
 create mode 100644 drivers/gpu/drm/panel/panel-visionox-rm69299.c

-- 
2.25.1

