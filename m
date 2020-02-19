Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DF5001645AC
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2020 14:37:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727402AbgBSNhK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Feb 2020 08:37:10 -0500
Received: from mail-wr1-f66.google.com ([209.85.221.66]:46854 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727677AbgBSNg6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Feb 2020 08:36:58 -0500
Received: by mail-wr1-f66.google.com with SMTP id z7so513563wrl.13
        for <devicetree@vger.kernel.org>; Wed, 19 Feb 2020 05:36:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=HwepP4vylkvrAMsKrJGWiwfWFEMFo390d/0hPnMfDnQ=;
        b=Irva5dhDO7EeC/Gq61LwcdDA8SlWmI5WtROw0M6kcYEwuY1jDLSJ+y73xIUtZPyrj+
         p3mFAKgb/uvVhkn9uCHbuA0guPmbGlioDgYymJFVf3MHc/q3A/0vEC/t9140r7ZLnUQl
         Fr0fN2VVS2grIBPMAMi0teBetl/uTUELthI98JilwqkP4Iwma6YTDSNBhDkz9hyRaPGI
         gtXMisst6zIZbntFjDhIUmkOLCM9D1xAw4ggRKOxh/IaYhkSci+8xVY+aklr6GNXDCDL
         fwNgiBHAgXgzy6SIWPRyayR9I5fmAt11PAbnTcvhohV5oGjumm6ZQN+kkM/Uas3sNgHx
         wxcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=HwepP4vylkvrAMsKrJGWiwfWFEMFo390d/0hPnMfDnQ=;
        b=GY92K5WphBSTAn+LSfLkWqTwiz51/cGcT43M9pgmSyTTFGUlzWt0p3hyh8M218jz+o
         ++bUZz2whSn+/sv6zAJ3BwLqmutAflwIBJnUxsIVHE8210FTWfk/0wm+2gjtN6gVbP69
         +CKl0L7U8MDLICA0Zigi0c1U4wPWZi2HDXmyv4MTUMnFkwE/+zZpL6fiiZEbg0fTV2s8
         0sSSMXcYrWZOmxwYSRLyrCColh1bGHyK1fwvKDIi+BKGckqz9T7dkGg9TusETycp4bkS
         4gfbmLUclZwW7DR3QJGBte7QczO5/3Tp6OsUNH6+hm4//kAMH3/PE3YqHophg/ofsHzl
         jRIA==
X-Gm-Message-State: APjAAAUDcjCFY3rfHs6NOuhZ9HOQfLrzpAkQ7VAJaUzsc/s/K4kPTfBH
        ClCoenjK71HicDWNkeZkaZto/Q==
X-Google-Smtp-Source: APXvYqzFBdf+KvQ/AaFbssZg7VHUlYCElqE3Jj98G953ZIChVvbutlzYOglzkBF0ek20O6lSxHLvQA==
X-Received: by 2002:a5d:4f0f:: with SMTP id c15mr37854818wru.251.1582119415457;
        Wed, 19 Feb 2020 05:36:55 -0800 (PST)
Received: from localhost.localdomain (cag06-3-82-243-161-21.fbx.proxad.net. [82.243.161.21])
        by smtp.googlemail.com with ESMTPSA id q124sm8856480wme.2.2020.02.19.05.36.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2020 05:36:54 -0800 (PST)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-amlogic@lists.infradead.org,
        Kevin Hilman <khilman@baylibre.com>
Subject: [PATCH 0/2] ASoC: meson: add internal DAC support
Date:   Wed, 19 Feb 2020 14:36:44 +0100
Message-Id: <20200219133646.1035506-1-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patchset adds support for the internal audio DAC provided on the
Amlogic gxl, g12a and sm1 SoC families. On each of these SoC families,
there is glue between this codec on the audio provider. The architecture
is similar to the one used for the synopsys hdmi codec on these SoCs

Jerome Brunet (2):
  ASoC: meson: add t9015 internal codec binding documentation
  ASoC: meson: add t9015 internal DAC driver

 .../bindings/sound/amlogic,t9015.yaml         |  58 ++++
 sound/soc/meson/Kconfig                       |   8 +
 sound/soc/meson/Makefile                      |   2 +
 sound/soc/meson/t9015.c                       | 320 ++++++++++++++++++
 4 files changed, 388 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/amlogic,t9015.yaml
 create mode 100644 sound/soc/meson/t9015.c

-- 
2.24.1

