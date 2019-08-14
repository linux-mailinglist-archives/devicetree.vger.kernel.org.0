Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 86E068D5F1
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2019 16:29:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726931AbfHNO3Z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Aug 2019 10:29:25 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:43880 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725955AbfHNO3Y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Aug 2019 10:29:24 -0400
Received: by mail-wr1-f66.google.com with SMTP id y8so5354227wrn.10
        for <devicetree@vger.kernel.org>; Wed, 14 Aug 2019 07:29:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2IzMeyCw4b+7DKgb/SLhUrPAysAZa9vx3wztCpi4ATU=;
        b=VAPOmbqxGPwOnu/ahhV4JorGqlJkzO90cqNgECVmwc2YqbZP4mROMy3dXJ/1sfFI2J
         jpBnqHM3N6+eifsigJK3AM8SWvVHh4wWhSehha9PO4sAK1anbFSn/RGHNHxq7dvKwqTy
         3waODWYiIhnsP9Qs3ebrS22URajl2LL9ObAK0jz+9ntmB3EaVgVpsMlH3xLqe6dYn/ac
         C5xCtCa6nzJbuFhbESygbFQb8Q8Twmz0CT0wMj7r4ZhgGWS35T2jXiBnmdRZqpIFo5PD
         eXitIImiYDiCADlNI6CfhY4pRc5db7iQCHmxtlXUjG2D1ZCcjZt6OBQlqsBYf9Gd5FU6
         F7eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2IzMeyCw4b+7DKgb/SLhUrPAysAZa9vx3wztCpi4ATU=;
        b=Bgp8Yhbuksb1I824B7CMorq5YNryW9N54Q44GaNKG1YRmc0qCPKkNFDnH5EUO3BJAl
         YngfH8vJG8FXAyy7d0YIjEAB3wX/X/c2GxjkEacCSM2hIAgzmJm6HoflU/QiPBwTqSrj
         PK5CBKTk7/iYWvtkJajsKgmZvjoJVjdj9P6dM2+NkKf/zPD8WyidVJ0WW+7CZDkzOStN
         8eEHCi5CN6Q53QdgFtvj1SjQxiCQvsEoNtk2O1TaOaSBA4yVP969Vkqo03hm0T7wizM4
         PG6rOjslAw8fRjwN04togCygVcOzPbVZfgzNCNsZFhAy2XXgCcO5JLMKtHyfhvq0mM80
         1Vpw==
X-Gm-Message-State: APjAAAWwSPxaHbnZ7Fz0gYaNSWs8VhKlkQa/yIjZyqqxuLB2Pgb7cdZA
        3O1KXox2bhr5c9ReH8JtZk1H4g==
X-Google-Smtp-Source: APXvYqytAei+jJQfHJhChYLVNukfzd1vwskFZJVslXGn3U/8AlBoTjX7g3J6RtLDiVTl/Q6LfDLoGw==
X-Received: by 2002:adf:fa42:: with SMTP id y2mr53881666wrr.170.1565792962947;
        Wed, 14 Aug 2019 07:29:22 -0700 (PDT)
Received: from bender.baylibre.local (wal59-h01-176-150-251-154.dsl.sta.abo.bbox.fr. [176.150.251.154])
        by smtp.gmail.com with ESMTPSA id o7sm4202908wmc.36.2019.08.14.07.29.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Aug 2019 07:29:22 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     khilman@baylibre.com
Cc:     linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Neil Armstrong <narmstrong@baylibre.com>
Subject: [PATCH 00/14] arm64: dts: meson: fixes following YAML bindings schemas conversion
Date:   Wed, 14 Aug 2019 16:29:04 +0200
Message-Id: <20190814142918.11636-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is the first set of DT fixes following the first YAML bindings conversion
at [1], [2] and [3].

After this set of fixes, the remaining errors are :
meson-axg-s400.dt.yaml: sound: 'clocks' is a dependency of 'assigned-clocks'
meson-g12a-sei510.dt.yaml: sound: 'clocks' is a dependency of 'assigned-clocks'
meson-g12b-odroid-n2.dt.yaml: usb-hub: gpios:0:0: 20 is not valid under any of the given schemas
meson-g12b-odroid-n2.dt.yaml: sound: 'clocks' is a dependency of 'assigned-clocks'
meson-g12a-x96-max.dt.yaml: sound: 'clocks' is a dependency of 'assigned-clocks'

These are only cosmetic changes, and should not break drivers implementation
following the bindings.

Neil Armstrong (14):
  arm64: dts: meson: fix ethernet mac reg format
  arm64: dts: meson-gx: drop the vpu dmc memory cell
  arm64: dts: meson-gx: fix reset controller compatible
  arm64: dts: meson-gx: fix spifc compatible
  arm64: dts: meson-gx: fix watchdog compatible
  arm64: dts: meson-gx: fix mhu compatible
  arm64: dts: meson-gx: fix periphs bus node name
  arm64: dts: meson-gxl: fix internal phy compatible
  arm64: dts: meson-axg: fix MHU compatible
  arm64: dts: meson-g12a: fix reset controller compatible
  arm64: dts: meson-g12a-x96-max: fix compatible
  arm64: dts: meson-gxbb-nanopi-k2: add missing model
  arm64: dts: meson-gxbb-p201: fix snps,reset-delays-us format
  arm64: dts: meson: fix boards regulators states format

 arch/arm64/boot/dts/amlogic/meson-axg.dtsi    |  6 +++---
 .../boot/dts/amlogic/meson-g12a-x96-max.dts   |  2 +-
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi   |  7 +++----
 .../boot/dts/amlogic/meson-g12b-odroid-n2.dts |  4 ++--
 arch/arm64/boot/dts/amlogic/meson-gx.dtsi     | 19 +++++++++----------
 .../boot/dts/amlogic/meson-gxbb-nanopi-k2.dts |  1 +
 .../dts/amlogic/meson-gxbb-nexbox-a95x.dts    |  4 ++--
 .../boot/dts/amlogic/meson-gxbb-odroidc2.dts  |  4 ++--
 .../boot/dts/amlogic/meson-gxbb-p201.dts      |  2 +-
 .../boot/dts/amlogic/meson-gxbb-p20x.dtsi     |  4 ++--
 .../meson-gxl-s905x-hwacom-amazetv.dts        |  4 ++--
 .../amlogic/meson-gxl-s905x-nexbox-a95x.dts   |  4 ++--
 arch/arm64/boot/dts/amlogic/meson-gxl.dtsi    |  5 +----
 13 files changed, 31 insertions(+), 35 deletions(-)

-- 
2.22.0

