Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7E04F377042
	for <lists+devicetree@lfdr.de>; Sat,  8 May 2021 09:09:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229713AbhEHHKf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 8 May 2021 03:10:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49356 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229481AbhEHHKf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 8 May 2021 03:10:35 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37787C061574
        for <devicetree@vger.kernel.org>; Sat,  8 May 2021 00:09:34 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id o26-20020a1c4d1a0000b0290146e1feccdaso7472981wmh.0
        for <devicetree@vger.kernel.org>; Sat, 08 May 2021 00:09:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rwlueIf+IiWxCtwv+6qLaPVr/+smx6r8bhHJRc9exnY=;
        b=ENb6xEsPmyfZduBiQewKtFgHGyP5rtaZO2Gygmi6Kj4oyNT6gS8j3zr72KsBZlD2DS
         6Wj/0VfJkPD+drLf0f6myXgv8qK0lHTavPgubMjbhnt40cu/9FMQXW8cQTYYxZjYqzbK
         PU/4/E6x1FSFZQYrlQt43sOWy3KLDYzE+4J3EGbzXDClbvA7bue/0cFfjuZGFD4dh3uO
         pob56iQDVCtKuydCjYKNvUCOk0pCZ1hBjH/+vElaZARB6oD8kK55pezL9MpdUdHyiqjh
         6D1lunXzAGEdawIsY/cVNc6dPSSLrn+NFqVj3fliTGDatQr3NWNVanXSoNLkddnYFyJd
         xOzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rwlueIf+IiWxCtwv+6qLaPVr/+smx6r8bhHJRc9exnY=;
        b=p5jY9ytav830B4K6FVF8FB33ObgH88vDJI0th3rIs1rkjPXSitiMjCmwQqAPtp7zsS
         WrJG0BaOhzf+iunLnheyHA3kjPjAgxc3Wtw6/yTHFS9CoaC9nGp9z2DaBLRFWwbUTIBz
         I4VMx21O0pS5CmOxhFPCFEyOY4CTrbuPFrV6qyE98XW19vGkFm2Faj6PcvF+b0pNCAzk
         4MpuLmv1OiO6JHrSxRI+TBXF/pZOqCGqEhH/i4OXoLaEmYPq+ZVGcYfkL/8Nb6TbEHgQ
         gsftVr6XcwFd5GxJ2mdO7NVM+vmtG2yK3ErZIFdeRpf7HsXimfWv4309jyBytOQZVx6Z
         /VcQ==
X-Gm-Message-State: AOAM531j7tBeEMKMWRyvD5Fy2t67AH+JZy59DpaqV3ZTHnCaBGnYzybD
        EcvH8yWR4kTLEzCMZMvRcC4=
X-Google-Smtp-Source: ABdhPJw3+CpKub1oGw45gE5B6si8v9+9YFBdVKGtSfiv17DJ3EObZYQDlQHyt8/XZRyMa0OF98DjVg==
X-Received: by 2002:a1c:9d43:: with SMTP id g64mr14242588wme.140.1620457772842;
        Sat, 08 May 2021 00:09:32 -0700 (PDT)
Received: from localhost.localdomain (231.red-83-51-243.dynamicip.rima-tde.net. [83.51.243.231])
        by smtp.gmail.com with ESMTPSA id s18sm11740345wro.95.2021.05.08.00.09.31
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 May 2021 00:09:32 -0700 (PDT)
From:   Sergio Paracuellos <sergio.paracuellos@gmail.com>
To:     vkoul@kernel.org
Cc:     kishon@ti.com, devicetree@vger.kernel.org,
        linux-phy@lists.infradead.org, robh+dt@kernel.org,
        linux-staging@lists.linux.dev, gregkh@linuxfoundation.org,
        neil@brown.name, ilya.lipnitskiy@gmail.com
Subject: [PATCH RESEND v2 0/6] phy: ralink: mt7621-pci-phy: some improvements
Date:   Sat,  8 May 2021 09:09:24 +0200
Message-Id: <20210508070930.5290-1-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi all,

This series contains some improvements in the pci phy driver
for MT7621 SoCs.

MT7621 SoC clock driver has already mainlined in
'commit 48df7a26f470 ("clk: ralink: add clock driver for mt7621 SoC")'

Because of this we can update schema documentation and device tree
to add related clock entries and avoid custom architecture code
in favour of using the clock kernel framework to retrieve clock
frequency needed to properly configure the PCIe related Phys.

After this changes there is no problem to properly enable this
driver for COMPILE_TEST.

Configuration has also modified from 'tristate' to 'bool' depending
on PCI_MT7621 which seems to have more sense.

Thanks in advance for your time.

Changes in v2 resed:
    - Forgot to send the series to devicetree list. Sorry for inconvenience.

Changes in v2:
    - Drop 'clock-names' property from device tree and binding
      doc sice only one clock is needed.
    - Update driver code to don't get clock name as identifier 
      for the clock but just use NULL.
    - Add patch to fix a COMPILE_TEST reported issue because
      of the way printing of a pointer was being done. This
      patch was already send by its own[0] but to have all of this
      applied together I prefer to include it here.

Best regards,
    Sergio Paracuellos

[0]: http://lists.infradead.org/pipermail/linux-phy/2021-May/000395.html

Sergio Paracuellos (6):
  staging: mt7621-dts: use clock in pci phy nodes
  dt-bindings: phy: mediatek,mt7621-pci-phy: add clock entries
  phy: ralink: phy-mt7621-pci: use kernel clock APIS
  phy: ralink: Kconfig: enable COMPILE_TEST on mt7621-pci-phy driver
  phy: ralink: Kconfig: convert mt7621-pci-phy into 'bool'
  phy: ralink: phy-mt7621-pci: properly print pointer address

 .../bindings/phy/mediatek,mt7621-pci-phy.yaml |  5 +++
 drivers/phy/ralink/Kconfig                    |  4 +-
 drivers/phy/ralink/phy-mt7621-pci.c           | 37 +++++++++++--------
 drivers/staging/mt7621-dts/mt7621.dtsi        |  2 +
 4 files changed, 31 insertions(+), 17 deletions(-)

-- 
2.25.1

