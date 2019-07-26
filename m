Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B4AB576626
	for <lists+devicetree@lfdr.de>; Fri, 26 Jul 2019 14:47:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726637AbfGZMqu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Jul 2019 08:46:50 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:33987 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726143AbfGZMqu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Jul 2019 08:46:50 -0400
Received: by mail-wr1-f68.google.com with SMTP id 31so54365447wrm.1
        for <devicetree@vger.kernel.org>; Fri, 26 Jul 2019 05:46:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=HLxaMsYCZ3/jXkIVQkw/a8MrmWzCu04lpfPSyYLHWrs=;
        b=mUsF1imLERCFTkg2/Uzs7hmT38m2Kw7AJTfPDinEzNaaUZiuZV0l7wgIMCBRiIpBLB
         sA2L6wbnAkNjgyxnvt+9CUZas/y2tN3c+yW9Z/i0K7FMw8zz3ahtIQ92Uc0Cq6vWSNLW
         b9iiTR5A8Nj+kKSFXN4cp60DhKL8YPrrTBsjy2J73V2t/u15peL4eIha+TsgPDuiMVqX
         R09H5zAiMSUYAAQp+OJQo5RAcr+JIVtweRBbU5unW8uZIaYHUdvP2ANTxyy3VlJFZ94a
         VPttMRsEIV69Jbf0DBp5gHwDaBz8ET5XSc1LefOqoVZFYXZ3XRW9z1IFjgCVwUcGHSUM
         Rb6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=HLxaMsYCZ3/jXkIVQkw/a8MrmWzCu04lpfPSyYLHWrs=;
        b=k/L8LSGTwyHwx5HEKENhdNkT3lnQD+MROor4HRwCmb9Ww9FYu5PagviKqgh2nBWkqd
         8pwapM8HslesFHB3DkFXfHNwzB/09byvAdRzj2FCMmOc2C+KJ8tA0xf3jVGWRQBYNAQk
         ALioqblQf2f+diDsByCf/j9K5/zUwuUn+lM/YLR+17HS0vYfjewKU5Kfw0HjR2lAFX9K
         HRVEGcPLElM8uqu4iGQH4dSqr0+aibnyrWI+EMLus1Xvj8wYLpS7S8B8N/RQ8lQFcUAk
         b1CRPwlZ9FipdwBDkNaGJcK7xrvsvB8zI4CAQy/ZnpcYEbgUCBl1zNFUECsaFvUTGB8A
         8NIA==
X-Gm-Message-State: APjAAAWDKhs3bi5+5rT1Ju0zf9yxge+vHUoRs4zmPCZLsaEieR9dVQaC
        wJBE+/5LFeOaQq+mEud6Fnxr/w==
X-Google-Smtp-Source: APXvYqxm1YKS+4DrGIxchn3QR4y65WJgjEHqXNZSjIdrgVVETjxtNhl4GAnKHur+0BraxsIAcY0zmA==
X-Received: by 2002:adf:fb8e:: with SMTP id a14mr7232715wrr.263.1564145208209;
        Fri, 26 Jul 2019 05:46:48 -0700 (PDT)
Received: from mjourdan-pc.numericable.fr (abo-99-183-68.mtp.modulonet.fr. [85.68.183.99])
        by smtp.gmail.com with ESMTPSA id x16sm39090124wmj.4.2019.07.26.05.46.47
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Fri, 26 Jul 2019 05:46:47 -0700 (PDT)
From:   Maxime Jourdan <mjourdan@baylibre.com>
To:     Kevin Hilman <khilman@baylibre.com>
Cc:     linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH 0/3] arm64: dts: meson: add the video decoder nodes
Date:   Fri, 26 Jul 2019 14:46:36 +0200
Message-Id: <20190726124639.7713-1-mjourdan@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series adds the dts nodes for the Amlogic video decoder for the
GXBB (S905), GXL (S905X) and GXM (S912) SoCs.

It also includes two misc. fixes for the bindings documentation:
a missing generic compatible and changing the example node's type
to something more conventional.

Maxime Jourdan (3):
  dt-bindings: media: amlogic,vdec: add default compatible
  arm64: dts: meson-gx: add video decoder entry
  arm64: dts: meson: add video decoder entries

 .../devicetree/bindings/media/amlogic,vdec.txt     |  5 +++--
 arch/arm64/boot/dts/amlogic/meson-gx.dtsi          | 14 ++++++++++++++
 arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi        | 11 +++++++++++
 arch/arm64/boot/dts/amlogic/meson-gxl.dtsi         | 11 +++++++++++
 arch/arm64/boot/dts/amlogic/meson-gxm.dtsi         |  4 ++++
 5 files changed, 43 insertions(+), 2 deletions(-)

-- 
2.22.0

