Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3AAB13F8605
	for <lists+devicetree@lfdr.de>; Thu, 26 Aug 2021 13:03:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241939AbhHZLEL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Aug 2021 07:04:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39434 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241815AbhHZLEF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Aug 2021 07:04:05 -0400
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8377C0613C1
        for <devicetree@vger.kernel.org>; Thu, 26 Aug 2021 04:03:18 -0700 (PDT)
Received: by mail-pj1-x1034.google.com with SMTP id w19-20020a17090aaf9300b00191e6d10a19so2094104pjq.1
        for <devicetree@vger.kernel.org>; Thu, 26 Aug 2021 04:03:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3GTkuPL4UPMLgrAEYs+HYFaqq9yL68gOnVhfKgDpcS0=;
        b=uE+dlzMOnHocysgzJwV038c07k5ja66wtp88Sqz7UzU1Ffz7QSEemUzSwz3RQ6gLtk
         qVFLRmMuy2lOSbiFSOR2eym0R/detKAmVD/0Q3x97SwaIZyMjzbtZL6GBaNVvnpXZTm9
         +AaZ4P3fRtfz4HXVgvFap68Y23Fuzwgq6Hbo6kB3/NVZCSyYdTgm8HrVRRcUrdXfcDRJ
         P4WEwVE31RbNo0hQfbbRBa5NlhyOfNpVR9C79BzQqvZ5fuhsjTXEQzYsVtYKAuRTTSi8
         J0ZRQaPA51LfeIKVJUwa7L3loqp5BLIRV9ak/VOgORlf3zQ7go+dLWMEyyPlmaxWSpne
         FTQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3GTkuPL4UPMLgrAEYs+HYFaqq9yL68gOnVhfKgDpcS0=;
        b=OIYZP3Kc4xHvUpYhQCc3EJyytBoM/ZV5W+EKVpLH4YYpGGRFxmDvH1OIs43+BsFjF/
         VJ5ac668Y+UZMbaFucUxSbFEDA5BEYRzwh50Vfbh9RA8UR53zTFVmGVZHnory6b0CnA7
         wP4ca2nNzGGQLjoIfISe5HUPgFd8CsIvSjCCQi2PrNMZviy3wozlR1LHWA3ky4wz5aFO
         HFe5eRnb9MNRmkH3Whf1xvmCwKSFNtwzCbhK+Tde1xKzvQZ9Y/J8g8wrUDIlIUGjp+rq
         FcD2hMnG6J/ijzaMndDrCHThTvVQVitMueqAN/FJmAsKR87EhW6cLeeuGSYKjnlHSdg7
         nT7A==
X-Gm-Message-State: AOAM532rc0ix4KtpqDt1Mk8CLTmCI0vW1zQKUZ4L+86eNpbQlTkxdzWc
        CLld3ntp+OcMuVJIGURanFt0uA==
X-Google-Smtp-Source: ABdhPJz7PjiVM/hnpM1SvmZRprpOEgYGpJHs0Z9wVbYVPP2UpuQKyIf+3eAHcmNgoNZtsCrnsCsi8A==
X-Received: by 2002:a17:90a:6a01:: with SMTP id t1mr3675857pjj.31.1629975798328;
        Thu, 26 Aug 2021 04:03:18 -0700 (PDT)
Received: from yc.huaqin.com ([101.78.151.213])
        by smtp.gmail.com with ESMTPSA id z12sm2655335pfe.79.2021.08.26.04.03.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Aug 2021 04:03:17 -0700 (PDT)
From:   yangcong <yangcong5@huaqin.corp-partner.google.com>
To:     thierry.reding@gmail.com, sam@ravnborg.org, airlied@linux.ie,
        daniel@ffwll.ch, dianders@google.com
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        yangcong <yangcong5@huaqin.corp-partner.google.com>
Subject: [v3 0/2] Add driver for BOE tv110c9m-ll3 panel
Date:   Thu, 26 Aug 2021 19:03:09 +0800
Message-Id: <20210826110311.613396-1-yangcong5@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Documentation/devicetree/bindings/display/panel/boe,tv110c9m-ll3.yaml:

Compared with v2, delete pinctrl in examples dts.

-            pinctrl-names = "default";
-            pinctrl-0 = <&vdd_reset_1800>;

yangcong (2):
  drm/panel: support for BOE tv1110c9m-ll3 wuxga dsi video mode panel
  dt-bindngs: display: panel: Add BOE tv110c9m-ll3 panel bindings

 .../display/panel/boe,tv110c9m-ll3.yaml       |   81 +
 drivers/gpu/drm/panel/Kconfig                 |   10 +
 drivers/gpu/drm/panel/Makefile                |    1 +
 drivers/gpu/drm/panel/panel-boe-tv110c9m.c    | 1303 +++++++++++++++++
 4 files changed, 1395 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/boe,tv110c9m-ll3.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-boe-tv110c9m.c

-- 
2.25.1

