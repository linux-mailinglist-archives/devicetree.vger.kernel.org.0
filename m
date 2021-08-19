Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 40E3E3F162E
	for <lists+devicetree@lfdr.de>; Thu, 19 Aug 2021 11:30:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234974AbhHSJbI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Aug 2021 05:31:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57692 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234341AbhHSJbI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Aug 2021 05:31:08 -0400
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com [IPv6:2607:f8b0:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2DF5FC061575
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 02:30:32 -0700 (PDT)
Received: by mail-pg1-x532.google.com with SMTP id c17so5339735pgc.0
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 02:30:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=mlxsOtjk3EQe8tY0Dl2bnQT6hDTIci57yhrirNK4WM4=;
        b=QA9i8ROIYsA+zU2UaEHUmLlB078lcj9BDoGzFBe62urhEJAkBKMHIsgkyuWt3EjbSA
         18fydOVz/bSrSOW5eNg7eCYof53xhRp1dDbtd1q+1HVnSnMN/2G4HmIyROq5VUwHhoR7
         GFUoD64A4bRte4u7zimuz6u77yho2bxkaTSSgSGpklBV1EiVGcuWWAzIKbVDHZVsjwVP
         e2fv8GLwmpibjVz3yyc/SloVvvxnOfRWi6TOlIWZG3QcYPHS9+/U67HAZswWRJLY6+0x
         ud91n9fJ7CpdYR025yqJ8j3K3oOmWtCQLTeDL52UKjIeCTQCsS+VL7JI9UPgV44GZgad
         GALg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=mlxsOtjk3EQe8tY0Dl2bnQT6hDTIci57yhrirNK4WM4=;
        b=PqDp3vnmxnJMck0RsyaRwwXPlWKamImTMaBeZtJq+S1/sbjVso1q5xiuDgWeS+qAsq
         Tq49cLTd6X1xPE0Lv3P1cfaW68xLsqgrrkZatysR7x4F7dGON1fqVguqGbDukeQaI/Oq
         cyVeL3LrS0lVL0WVu/hADrDsrfNRLOpsxi39RmJvUOA23ttoaeonhjNOjv8k7DMS6kWD
         VVvuHdyezCaZNTtTsDdNQywtZ9de5/7zzFcro6ImswGYuitmlfOuxUXgLmWlnVCvp1RL
         ISV1wuvTwJ3fiPAOCCBlbHHm6mfD4jhQZHFCMhIAhgz+b3aP7agGk0xK1X2DpmbLb1iG
         PSYQ==
X-Gm-Message-State: AOAM531Z7EHsjCih6R2UB8OCYkk5I8ZHVt8Kl4V6G2u3ernqEl73u+jX
        aoOn1oGKWb0FJczml6znbCN0Cw==
X-Google-Smtp-Source: ABdhPJyeugUXXFlUORsDl924iC5IC5L8o7JXyzE+GdxjfiwTaktTT09hgqxXFgSOPSEzNYFMdhEnrw==
X-Received: by 2002:a05:6a00:791:b0:3e1:3316:2e8 with SMTP id g17-20020a056a00079100b003e1331602e8mr13888896pfu.10.1629365431721;
        Thu, 19 Aug 2021 02:30:31 -0700 (PDT)
Received: from yc.huaqin.com ([101.78.151.213])
        by smtp.gmail.com with ESMTPSA id 11sm2601031pfl.41.2021.08.19.02.30.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Aug 2021 02:30:31 -0700 (PDT)
From:   yangcong <yangcong5@huaqin.corp-partner.google.com>
To:     thierry.reding@gmail.com, sam@ravnborg.org, airlied@linux.ie,
        daniel@ffwll.ch, dianders@google.com
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        yangcong <yangcong5@huaqin.corp-partner.google.com>
Subject: [v1 0/2] drm/panel: boe-tv101wum-nl6: Support enabling a 3.3V rail
Date:   Thu, 19 Aug 2021 17:29:41 +0800
Message-Id: <20210819092943.719433-1-yangcong5@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The auo,b101uan08.3 panel (already supported by this driver) has
a 3.3V rail that needs to be turned on. For previous users of
this panel this voltage was directly output by pmic. On a new 
user (the not-yet-upstream sc7180-trogdor-mrbland board) we need
to turn the 3.3V rail on. Add support in the driver for this.

yangcong (2):
  drm/panel: boe-tv101wum-nl6: Support enabling a 3.3V rail
  dt-bindings: drm/panel: boe-tv101wum-nl6: Support enabling a 3.3V rail

 .../bindings/display/panel/boe,tv101wum-nl6.yaml      |  4 ++++
 drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c        | 11 +++++++++++
 2 files changed, 15 insertions(+)

-- 
2.25.1

