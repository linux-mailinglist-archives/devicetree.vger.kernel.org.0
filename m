Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D31C344E36E
	for <lists+devicetree@lfdr.de>; Fri, 12 Nov 2021 09:43:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233998AbhKLIqL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Nov 2021 03:46:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46806 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230464AbhKLIqK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Nov 2021 03:46:10 -0500
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com [IPv6:2607:f8b0:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8ECB5C061767
        for <devicetree@vger.kernel.org>; Fri, 12 Nov 2021 00:43:20 -0800 (PST)
Received: by mail-pf1-x432.google.com with SMTP id o4so7900965pfp.13
        for <devicetree@vger.kernel.org>; Fri, 12 Nov 2021 00:43:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=jknAOBYahlvH5F30CImxBqWmnzl1YA1ZTXVlzmviue4=;
        b=39TCUtZEzPl+BH+NQDIoyRNu/eH/yCIaDS2deHLE323oeOsDHpA+d0MFfMz3UCHgeQ
         usalpodx90YSnI/8X5HySMegKyTxjVbpZBKVDsjpGkN2OnMb3oWlfQLwKqqjAF96609/
         fUUmBJ5BHYw9YT+0paxdwWghIjLqbtIDwSxxYXcn0P4MHDR09D4SysI6HvkX8aVc05vj
         z98XNlaMhYAZL5Wg/JcyKbHWuaY/47aEXHO6ui2DtZgEqqDUdaYyB7JnMOKJiCkwVwWL
         oQ/ymmqsROXekuUEbBzbemNL3IYHB3ayl7fRlHIp+SxSv9xawemP2ZT7V13w/APaQ3uu
         Wolg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=jknAOBYahlvH5F30CImxBqWmnzl1YA1ZTXVlzmviue4=;
        b=fwxSgHsxOfRzsbReKs4gnFwzGszCEWLv91xTzZW5Zz6PQ+M98nPsWSVBzVRQmiPeAi
         0cgkQQI5T9EmVS0LnLSe+ycVDN/LRm/036IkP18LHg1yFtpMOQ9FbCmjq/JHJ8yXQoJL
         Iao8CKyzNUD7oKKSOpPeTDUaxiePgHll5TG+5w/RH3Fk8iM4h7Fiv97+lyTYZ9BTegfW
         EzwsESAF7hnnzdwxAwv8lUflZbgBJfHQv4VdQVtJ7fBlQLiu15SMElQL88oTIRffWcmg
         D5oeNKrpbfrkOcbvSa324uwkX8Fz8AJIACY0SEN7BSbUdXOeFm49lPPaSSs5SlLJGE1W
         WAUw==
X-Gm-Message-State: AOAM533VJLmx0rK8rZCprq+gQ40pJLkdOC80KNjUGJxRsMNZil6gb4P+
        qwBtld41joUScVDHY1MJENhdJQ==
X-Google-Smtp-Source: ABdhPJx29oAZeJhbHSKdo6hnBAzqjZS+mxjQyulJdf1uTPHjp92uMqvnvUI4folmGqf0i8p+ApbmYw==
X-Received: by 2002:a63:5416:: with SMTP id i22mr8978791pgb.382.1636706600097;
        Fri, 12 Nov 2021 00:43:20 -0800 (PST)
Received: from yc.huaqin.com ([101.78.151.213])
        by smtp.gmail.com with ESMTPSA id h13sm5890959pfv.130.2021.11.12.00.43.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Nov 2021 00:43:19 -0800 (PST)
From:   yangcong <yangcong5@huaqin.corp-partner.google.com>
To:     swboyd@chromium.org, robert.foss@linaro.org,
        narmstrong@baylibre.com, Laurent.pinchart@ideasonboard.com,
        jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@linux.ie,
        daniel@ffwll.ch, a.hajda@samsung.com, philipchen@chromium.org,
        dianders@google.com
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        yangcong <yangcong5@huaqin.corp-partner.google.com>
Subject: [PATCH] drm/bridge: parade-ps8640: Fix additional suspend/resume at bootup
Date:   Fri, 12 Nov 2021 16:43:02 +0800
Message-Id: <20211112084302.2447931-1-yangcong5@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Through log and waveform, we can see that there will be additional
suspend/resume when booting. This timing does not meet the ps8640 spec.
It seems that the delay of 500ms does not satisfied drm_panel_get_modes.
I increased it to 900ms and it seems that this problem can be solved.
To be safe, I'd just round up to a full 1000.

Signed-off-by: yangcong <yangcong5@huaqin.corp-partner.google.com>
---
 drivers/gpu/drm/bridge/parade-ps8640.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/bridge/parade-ps8640.c b/drivers/gpu/drm/bridge/parade-ps8640.c
index 0c7aab42b04f..0749fa628bfb 100644
--- a/drivers/gpu/drm/bridge/parade-ps8640.c
+++ b/drivers/gpu/drm/bridge/parade-ps8640.c
@@ -635,13 +635,13 @@ static int ps8640_probe(struct i2c_client *client)
 	pm_runtime_enable(dev);
 	/*
 	 * Powering on ps8640 takes ~300ms. To avoid wasting time on power
-	 * cycling ps8640 too often, set autosuspend_delay to 500ms to ensure
+	 * cycling ps8640 too often, set autosuspend_delay to 1000ms to ensure
 	 * the bridge wouldn't suspend in between each _aux_transfer_msg() call
 	 * during EDID read (~20ms in my experiment) and in between the last
 	 * _aux_transfer_msg() call during EDID read and the _pre_enable() call
 	 * (~100ms in my experiment).
 	 */
-	pm_runtime_set_autosuspend_delay(dev, 500);
+	pm_runtime_set_autosuspend_delay(dev, 1000);
 	pm_runtime_use_autosuspend(dev);
 	pm_suspend_ignore_children(dev, true);
 	ret = devm_add_action_or_reset(dev, ps8640_runtime_disable, dev);
-- 
2.25.1

