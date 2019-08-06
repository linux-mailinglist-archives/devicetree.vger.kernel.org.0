Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1A5C5831A2
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2019 14:44:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731092AbfHFMoV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Aug 2019 08:44:21 -0400
Received: from mail-wr1-f67.google.com ([209.85.221.67]:43514 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726036AbfHFMoV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Aug 2019 08:44:21 -0400
Received: by mail-wr1-f67.google.com with SMTP id p13so13192544wru.10
        for <devicetree@vger.kernel.org>; Tue, 06 Aug 2019 05:44:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=KO3I9isK829bDAzoIYhMJ5BHP8qWfbUOhOqwyY1Ue8Q=;
        b=JrZ6jaH1U8FIHz6Bc8fph0FiiWO6K+omU5EUJU4jjF30+ys1KQU3SZdTkQa3jdLrn0
         E7L1bTIc93b/aDcBr4funyN2HbaOOQUAE267YVC5GaaLCnjz+RM+FVzJYaATJfGImyc4
         r6Z/odJIDA5rFceLBE0XAZqZejXuLitKd5blVAf8H3urYm7jwPHgHTODfcZ95TA+PDaC
         cMRx3zSX1Q9811UjLuu4eddHynsPD0T53VLfp1zJFwHCtjukZZVpw8UERDQBYTmkMekx
         iEKyihqFLrtNAD0AeVEQsc4DtgbJxve5flvT1gYQRYBfikrDEVDcFYH4/Ghsmm6sJuJc
         OtRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=KO3I9isK829bDAzoIYhMJ5BHP8qWfbUOhOqwyY1Ue8Q=;
        b=sNQEoPjIYSC33uVoU8yGPc/Zme0TuhYvl6Sd+NbcJGZUg8Zw/ubd7Z4G0MPfM2WNXb
         8mldhUsC+C2VGhXbHGEtkCzpkV1EgZIfzc4vY/0lD2UArrf8LSMhNajoxXR69IwkqShF
         76xRsWU8vOiQciTRIPJjnSIuRkpf4/ZrDFSAgX8sAIXi5Ae0kH7rK1Pf09dY9xpkvOaa
         w+LghqD6FSjDB4v1n5/yhl8pQXUhlhGnOoYQzxsjp3g2HuwnHWX+s8c+GSzOtdRTRO9U
         jz+BQgCsomrWq1qsmjySnneSETCznb/UOcz66FHWYIyQeJGxKitD9LrUssigeLp0vZWl
         dXWg==
X-Gm-Message-State: APjAAAVxsIT4dMRjnm7PvPYprcgQYkr9txKDXCv154UwLLwRp9VzDe7t
        Qhyx0Yx7fDH63jyRYWTwt+8Zcg==
X-Google-Smtp-Source: APXvYqxzWD1+g+8j3XMze7/L/Id/Sa6g7GtYPAKutoXeGaVKKMV2UxVERxWGXrSeGKhdH+ieqhGhpQ==
X-Received: by 2002:a5d:56cb:: with SMTP id m11mr4724737wrw.255.1565095458656;
        Tue, 06 Aug 2019 05:44:18 -0700 (PDT)
Received: from bender.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id q20sm3842135wrc.79.2019.08.06.05.44.17
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 06 Aug 2019 05:44:18 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     robh+dt@kernel.org
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/3] drm/meson: convert bindings to YAML schemas
Date:   Tue,  6 Aug 2019 14:44:13 +0200
Message-Id: <20190806124416.15561-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patchset converts the existing text bindings to YAML schemas.

Those bindings have a lot of texts, thus is interesting to convert.

All have been tested using :
$ make ARCH=arm64 dtbs_check

Issues with the amlogic arm64 DTs has already been identified thanks
to the validation scripts. The DT fixes will be pushed once these yaml
bindings are acked.

Neil Armstrong (3):
  dt-bindings: display: amlogic,meson-dw-hdmi: convert to yaml
  dt-bindings: display: amlogic,meson-vpu: convert to yaml
  MAINTAINERS: Update with Amlogic DRM bindings converted as YAML

 .../display/amlogic,meson-dw-hdmi.txt         | 119 --------------
 .../display/amlogic,meson-dw-hdmi.yaml        | 150 ++++++++++++++++++
 .../bindings/display/amlogic,meson-vpu.txt    | 121 --------------
 .../bindings/display/amlogic,meson-vpu.yaml   | 138 ++++++++++++++++
 MAINTAINERS                                   |   4 +-
 5 files changed, 290 insertions(+), 242 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/display/amlogic,meson-dw-hdmi.txt
 create mode 100644 Documentation/devicetree/bindings/display/amlogic,meson-dw-hdmi.yaml
 delete mode 100644 Documentation/devicetree/bindings/display/amlogic,meson-vpu.txt
 create mode 100644 Documentation/devicetree/bindings/display/amlogic,meson-vpu.yaml

-- 
2.22.0

