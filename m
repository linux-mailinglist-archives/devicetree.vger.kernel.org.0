Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 066E13A05AE
	for <lists+devicetree@lfdr.de>; Tue,  8 Jun 2021 23:24:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234101AbhFHVZz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Jun 2021 17:25:55 -0400
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124]:32711 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234110AbhFHVZz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Jun 2021 17:25:55 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1623187441;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=9WOcYtG36rVjuPEj8K6lgDL7dCdoY9WpL7jwDyU54B8=;
        b=XWrqVZ0x0LZkzaqp7/seGeZafHO9TkqTkOhPjbUwWSSwDSfmiaCX6qGD5XNPdCgeNaigmB
        YvuPnBRW6d/L0YutFXUPZS3xImAZYh7HSFzDt8+l0fgfCEmo+xcPnYQlPZJQRLLy/DakQw
        JP9qNFRotN11KTQCnWSZYJn5n93KcE4=
Received: from mail-oi1-f197.google.com (mail-oi1-f197.google.com
 [209.85.167.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-506-5bMOmW9wM6CS4y-Ma9-KMA-1; Tue, 08 Jun 2021 17:24:00 -0400
X-MC-Unique: 5bMOmW9wM6CS4y-Ma9-KMA-1
Received: by mail-oi1-f197.google.com with SMTP id 82-20020aca04550000b02901f40670cf75so3521157oie.19
        for <devicetree@vger.kernel.org>; Tue, 08 Jun 2021 14:24:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9WOcYtG36rVjuPEj8K6lgDL7dCdoY9WpL7jwDyU54B8=;
        b=HZyZvyheClrHBiQ8njWc4z5WoAiS89y5m0zJ2pp72V9MJ4DiAAxNowSIuq8GIwLKEf
         4TrLG/UBjzQB5XvijwT8P9/D0x0ft/Xkuhm54J5pX3jl2ohsFdbuJBzsyo+Yxbj/D1lr
         xNknXi2gvt2hMFU18nlTbzu87KCke9ti5iygRkPlQFKIZ1qp/OMIjbTuhEzNQrDonIvM
         HWHpE+4sxMZDf5GTwwshATc9G+8opC/CtbLAQ3O0TLUdBWifBz4mB+NixOT20b6aYGra
         xeUlVz2/dU9SZXWbFvB34S6HZGJ0zegAADDWO+5p3HJcyJ0NWMaussvVe42B0vG/NLGd
         6FgQ==
X-Gm-Message-State: AOAM531U7HBOpMn6v8SdZm4F9y5WO9+3s+rPXvCeqhs6ELUWeWd1qsDo
        ZS5sQEHlpnrdet6w04jiZRDhifdpAqS+59064TCyk+k6Hk/UqeSyp9xLZPSsQbWjP0kynuhq4n1
        2oJp4lsaSQy30Ic89yrSWLA==
X-Received: by 2002:a54:4091:: with SMTP id i17mr4211790oii.96.1623187439563;
        Tue, 08 Jun 2021 14:23:59 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw/slvYeAdnbZ/SPI7BCq6DWlaOdgzks9roBFKWnERshaA7TkLI+lr32K9zzB6m1V9KMz0o0A==
X-Received: by 2002:a54:4091:: with SMTP id i17mr4211765oii.96.1623187439400;
        Tue, 08 Jun 2021 14:23:59 -0700 (PDT)
Received: from localhost.localdomain.com (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id x199sm1954310oif.5.2021.06.08.14.23.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Jun 2021 14:23:59 -0700 (PDT)
From:   trix@redhat.com
To:     mdf@kernel.org, robh+dt@kernel.org, hao.wu@intel.com,
        corbet@lwn.net, fbarrat@linux.ibm.com, ajd@linux.ibm.com,
        bbrezillon@kernel.org, arno@natisbad.org, schalla@marvell.com,
        herbert@gondor.apana.org.au, davem@davemloft.net,
        gregkh@linuxfoundation.org, Sven.Auhagen@voleatech.de,
        grandmaster@al2klimov.de
Cc:     linux-fpga@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org,
        linuxppc-dev@lists.ozlabs.org, linux-crypto@vger.kernel.org,
        linux-staging@lists.linux.dev, Tom Rix <trix@redhat.com>
Subject: [PATCH 00/11] fpga: change FPGA indirect article to an
Date:   Tue,  8 Jun 2021 14:23:38 -0700
Message-Id: <20210608212350.3029742-1-trix@redhat.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Tom Rix <trix@redhat.com>

A treewide followup of
https://lore.kernel.org/linux-fpga/2faf6ccb-005b-063a-a2a3-e177082c4b3c@silicom.dk/

Change the use of 'a fpga' to 'an fpga'
Ref usage in wiki
https://en.wikipedia.org/wiki/Field-programmable_gate_array
and Intel's 'FPGAs For Dummies'
https://plan.seek.intel.com/PSG_WW_NC_LPCD_FR_2018_FPGAforDummiesbook

Change was mechanical
 !/bin/sh                                                        
 for f in `find . -type f`; do
   sed -i.bak 's/ a fpga/ an fpga/g' $f
   sed -i.bak 's/ A fpga/ An fpga/g' $f
   sed -i.bak 's/ a FPGA/ an FPGA/g' $f
   sed -i.bak 's/ A FPGA/ An FPGA/g' $f
 done


Tom Rix (11):
  dt-bindings: fpga: fpga-region: change FPGA indirect article to an
  Documentation: fpga: dfl: change FPGA indirect article to an
  Documentation: ocxl.rst: change FPGA indirect article to an
  crypto: marvell: cesa: change FPGA indirect article to an
  fpga: change FPGA indirect article to an
  fpga: bridge: change FPGA indirect article to an
  fpga-mgr: change FPGA indirect article to an
  fpga: region: change FPGA indirect article to an
  fpga: of-fpga-region: change FPGA indirect article to an
  fpga: stratix10-soc: change FPGA indirect article to an
  staging: fpgaboot: change FPGA indirect article to an

 .../devicetree/bindings/fpga/fpga-region.txt  | 22 +++++++++----------
 Documentation/fpga/dfl.rst                    |  4 ++--
 .../userspace-api/accelerators/ocxl.rst       |  2 +-
 drivers/crypto/marvell/cesa/cesa.h            |  2 +-
 drivers/fpga/Kconfig                          |  4 ++--
 drivers/fpga/fpga-bridge.c                    | 22 +++++++++----------
 drivers/fpga/fpga-mgr.c                       | 22 +++++++++----------
 drivers/fpga/fpga-region.c                    | 14 ++++++------
 drivers/fpga/of-fpga-region.c                 |  8 +++----
 drivers/fpga/stratix10-soc.c                  |  2 +-
 drivers/staging/gs_fpgaboot/README            |  2 +-
 include/linux/fpga/fpga-bridge.h              |  2 +-
 include/linux/fpga/fpga-mgr.h                 |  2 +-
 13 files changed, 54 insertions(+), 54 deletions(-)

-- 
2.26.3

