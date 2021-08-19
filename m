Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EA5533F152C
	for <lists+devicetree@lfdr.de>; Thu, 19 Aug 2021 10:28:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237034AbhHSI3a (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Aug 2021 04:29:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43454 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232545AbhHSI3a (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Aug 2021 04:29:30 -0400
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3AF98C061756
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 01:28:54 -0700 (PDT)
Received: by mail-pj1-x1034.google.com with SMTP id m24-20020a17090a7f98b0290178b1a81700so4213354pjl.4
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 01:28:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=mlxsOtjk3EQe8tY0Dl2bnQT6hDTIci57yhrirNK4WM4=;
        b=DcTYaUhCIADfef5Gy3rock98MnXIqSctEqt74Z19ydTwBKKAObgfXU+VqkbJWSexUj
         UTyvK+IMz8cRzzM3uwazbz16bvKD7n32ApUrudfD1RSJgDl2D1mZqTXO3DkgrelKOQpi
         Q7p7fo0Gocr6RMjIRWBGHxH7n5X3GGD/oRgnQokQLV5vdeElSZOAXAwAejS+yZV1Wuu6
         jzuXl2nNACEW3vAvEv3zPucoMA7RbOAXm8H3Q6h6T/TZr7h19yaQYXiq2EdS3X2KbKDe
         T6OB6Aamb3+KKsCylj0MKNVNxv56AeVRr7bu0Gtm8ztGNmBdiX3lPUfzVZE0qSm2jDhK
         kd0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=mlxsOtjk3EQe8tY0Dl2bnQT6hDTIci57yhrirNK4WM4=;
        b=gFDHL1+GdP+DknVnovb04JH/8lY45bg+6AaDtRpXbO1ExPZxYoH2LzT8hNwplbfMRh
         eBZoTuPU1CHkDCfZImHI9qoYxfB8wVFPHUneDm7um2Pk/QjPhCgap3cCCbalEHl907L0
         Jd2mVHJg3XogrrirD35SNcy1rXwoO3Ji3BAmrIATqoD/aK8chSLQPc4+Qh9PaJ09O089
         ZEA8+cFzDzKbB/doAFadw4g63XghfOGm4xoqf9VbDdEIn/e3Hup7M7lVXpvKlYZWb0uU
         6nJqsQMpW7aWmFut++3v5avw91O16nTvP7K2MURXSZMCMyHGa46zYXlThGqOGw+UK+wx
         mh1Q==
X-Gm-Message-State: AOAM533zhl3g6GNv8wISCqWqTH6zwvc5JdmPIWoo5sES8WGOSHs0LGW7
        KA+K/pKI8gkdBIDpXjpehXDfaQ==
X-Google-Smtp-Source: ABdhPJywwufy1GedVPd73KbtcOOg8bcUAjKXTcyH+M8kmTO5+afM/R29vL3jzxw22vHrFl14nf8SLQ==
X-Received: by 2002:a17:902:9008:b0:12d:8258:e07c with SMTP id a8-20020a170902900800b0012d8258e07cmr11128687plp.42.1629361733810;
        Thu, 19 Aug 2021 01:28:53 -0700 (PDT)
Received: from yc.huaqin.com ([101.78.151.214])
        by smtp.gmail.com with ESMTPSA id i11sm2347220pfo.29.2021.08.19.01.28.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Aug 2021 01:28:53 -0700 (PDT)
From:   yangcong <yangcong5@huaqin.corp-partner.google.com>
To:     thierry.reding@gmail.com, sam@ravnborg.org, airlied@linux.ie,
        daniel@ffwll.ch, robh+dt@kernel.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dianders@google.com
Cc:     yangcong <yangcong5@huaqin.corp-partner.google.com>
Subject: [v1 0/2] drm/panel: boe-tv101wum-nl6: Support enabling a 3.3V rail
Date:   Thu, 19 Aug 2021 16:28:41 +0800
Message-Id: <20210819082843.716986-1-yangcong5@huaqin.corp-partner.google.com>
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

