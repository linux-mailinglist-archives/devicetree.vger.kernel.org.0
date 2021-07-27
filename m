Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 22F133D6DF4
	for <lists+devicetree@lfdr.de>; Tue, 27 Jul 2021 07:24:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233553AbhG0FX7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Jul 2021 01:23:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36060 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235063AbhG0FX6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Jul 2021 01:23:58 -0400
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50275C061760
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 22:23:58 -0700 (PDT)
Received: by mail-pl1-x62e.google.com with SMTP id c11so14410696plg.11
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 22:23:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=m4PnQ7w4ZXIbpbMOd9mPAvOkoi0Otfkeze5HMzWqDSM=;
        b=o00HtKxdOf6pgzaZcv7v0RCIAoZcftZntng7XdmVuSjqtZ2b8wjG0kSMM7lu+GX68P
         2rGAKWvz/uQTh7cL6jW438A+V9TeI9mbi7wXXpHEaCUsQO3V1v4i0tPJOb0ngMv0Bs+3
         M9LJQEIBANelTQ65JuIiInXty805GkKN7ycj23u1RGZ6a/GCtZlF8xOOaDiuOcC7b8mI
         iengHNowfdX5rLoqaQAOYI41O5sesvJCvfaY/KTyhE0bpWP0nsq021X7Jjh657Cqg/eO
         0GRu4vqdaCm4aOorJ9S1mFCYSrxF5VM0sNpLMnvGF5x3CVa7NcLr3JdNlz1zonTq6BAo
         paYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=m4PnQ7w4ZXIbpbMOd9mPAvOkoi0Otfkeze5HMzWqDSM=;
        b=NnZAkB+VKIH2KM7k5OVQsT6lpGEhOjRpwX514MuiMcjMVHVZAGdk0uPBfqqu9ViHBC
         /gMOxSGehj9WN74EfSnQCHAOwLF+gCWa4F8dqS614UJGiSiE10AxdPyndMMvTaXAYmv7
         +CX48jY55SJkrvjTX7OHQPJYyUyrlf3M8eo8arzhKJ0qDagOE/lw1MVEov3D5Sdu26MZ
         CuNb0JRKzztvLYCa7JVZq0W6zNU1Q7m5i13pMGXfppjtiCdOc8Zub0civAjC2US8ho+D
         1Cx85M7D74rXWgAbIYRMwrpA78+NsFYGpJPZeeHl8XieqXxxqGClm/21TBPE4KPNBPxk
         Hfug==
X-Gm-Message-State: AOAM533tpjhN8pJfKgVT6ylE5FsTYS9XrBda8eNmaOGcKKkNacXdEnCa
        +sEaePJW2QcMgXmNTpMz58MttQ==
X-Google-Smtp-Source: ABdhPJy/IRVuyZuRXHBDpEnTOVpnPmvmUefMG1xV1ZaD3TQ9HJ4t8TjZaCD2LotwfkdOo+epC0N74Q==
X-Received: by 2002:a17:90b:1d84:: with SMTP id pf4mr20491531pjb.166.1627363437795;
        Mon, 26 Jul 2021 22:23:57 -0700 (PDT)
Received: from localhost ([122.172.201.85])
        by smtp.gmail.com with ESMTPSA id f18sm1903790pfe.25.2021.07.26.22.23.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jul 2021 22:23:57 -0700 (PDT)
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Jason Wang <jasowang@redhat.com>,
        "Michael S. Tsirkin" <mst@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Arnd Bergmann <arnd@kernel.org>,
        Jean-Philippe Brucker <jean-philippe@linaro.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Viresh Kumar <viresh.kumar@linaro.org>
Cc:     Vincent Guittot <vincent.guittot@linaro.org>,
        Bill Mills <bill.mills@linaro.org>,
        =?UTF-8?q?Alex=20Benn=C3=A9e?= <alex.bennee@linaro.org>,
        "Enrico Weigelt, metux IT consult" <info@metux.net>,
        Jie Deng <jie.deng@intel.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        virtualization@lists.linux-foundation.org,
        Arnd Bergmann <arnd@arndb.de>, linux-gpio@vger.kernel.org,
        linux-i2c@vger.kernel.org, Wolfram Sang <wsa@kernel.org>
Subject: [PATCH V4 0/5] virtio: Add virtio-device bindings
Date:   Tue, 27 Jul 2021 10:53:47 +0530
Message-Id: <cover.1627362340.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.31.1.272.g89b43f80a514
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

Currently the DT only provides support for following node types for virtio-mmio
nodes:

        virtio_mmio@a000000 {
                dma-coherent;
                interrupts = <0x00 0x10 0x01>;
                reg = <0x00 0xa000000 0x00 0x200>;
                compatible = "virtio,mmio";
        };

Here, each virtio-mmio corresponds to a virtio-device. But there is no way for
other users in the DT to show their dependency on virtio devices.

This patchset provides that support.

The first patch adds virtio-device bindings to allow for device sub-nodes to be
present and the second patch updates the virtio core to update the of_node.

Other patches add bindings for i2c and gpio devices.

Tested on x86 with qemu for arm64.

V3->V4:
- The binding is named "virtio,deviceXXXXXXXX" now.
- The virtio binding doesn't restrict the node names anymore.
- The i2c/gpio nodes are named i2c and gpio now.
- Dropped including gpio.yaml.
- Updated code to match the new binding name.
- Use "type: object" in additional-property.

V2/2.1->V3:
- Added review-tags from Arnd and Wolfram.
- Only the 5th patch changed otherwise:
  - Use of_device_is_compatible() instead of keeping a list of devices.
  - Use snprintf (with BUG_ON on return value) to create the compatible string,
    whose length is fixed using "virtio,XXXXXXXX".
  - Use dev_of_node().

V1->V2:
- The changes (both binding and code) are made at virtio level, instead of
  virtio-mmio. This allows the same to be used by all device types, irrespective
  of the transport mechanism.

- Dropped the reg property and used compatible in the form "virtio,<DID>".

- Dropped dt-bindings/virtio/virtio_ids.h.

- Add a patch to sync virtio-ids from spec, required for the last patch.

--
Viresh

Viresh Kumar (5):
  dt-bindings: virtio: Add binding for virtio devices
  dt-bindings: i2c: Add bindings for i2c-virtio
  dt-bindings: gpio: Add bindings for gpio-virtio
  uapi: virtio_ids: Sync ids with specification
  virtio: Bind virtio device to device-tree node

 .../devicetree/bindings/gpio/gpio-virtio.yaml | 59 +++++++++++++++++++
 .../devicetree/bindings/i2c/i2c-virtio.yaml   | 51 ++++++++++++++++
 .../devicetree/bindings/virtio/mmio.yaml      |  3 +-
 .../bindings/virtio/virtio-device.yaml        | 41 +++++++++++++
 drivers/virtio/virtio.c                       | 57 +++++++++++++++++-
 include/uapi/linux/virtio_ids.h               | 12 ++++
 6 files changed, 219 insertions(+), 4 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/gpio/gpio-virtio.yaml
 create mode 100644 Documentation/devicetree/bindings/i2c/i2c-virtio.yaml
 create mode 100644 Documentation/devicetree/bindings/virtio/virtio-device.yaml

-- 
2.31.1.272.g89b43f80a514

