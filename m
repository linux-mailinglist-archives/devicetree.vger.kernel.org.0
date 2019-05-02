Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D0832118A9
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2019 14:11:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726320AbfEBMKz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 May 2019 08:10:55 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:36326 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726310AbfEBMKy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 May 2019 08:10:54 -0400
Received: by mail-wm1-f67.google.com with SMTP id p16so2308432wma.1
        for <devicetree@vger.kernel.org>; Thu, 02 May 2019 05:10:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+VXnkCeQD9CSagUVthpKhe513V9cyFde6oB8Eo2RI2s=;
        b=Zsm0Hc1NNbj1/+fIZ/BsybgMhuG/oOzaKqUFCEk8LgEfDc9hJT7dxy7GpIFI4JNnhr
         PGXOVN0dZ2kiiDCJr85WYiICSRRDNKkpe9/jAqTZ0mlOf4j9RPB5r8PVl56U8lkocgJt
         KVdNAV3h/Q4NNidtPUvEOB5GFV63HNMfuVMbxEYXAw8YMLy6Bo9teYIc13Np49yXKlwq
         LQCqrOMBFHnxdcMlWFEn+Qdo9/UEjBCRLz1uBbVaYkoOK6RT4sZIoQrWpp47OZmXVBAM
         gMtQ6gLO+p739fPYzxm6NGDSulCjzNZ3MzKZcsUl38RoxfjTeBjxesm9h78AeVzhytaX
         ID/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+VXnkCeQD9CSagUVthpKhe513V9cyFde6oB8Eo2RI2s=;
        b=P+fPe13VgLyxWpzHbx36Nspgu4Ku+brOcgvz6ZqRjE6zHMdECBg8h8ZL4QThePcSCN
         GJxu2ngwFSVzqSeOyXSM9X87gxwPVWOvCaXVaTshLp+Qzgf+XZ8kENS67GnRrcnRE47w
         Ocd/SgkZ4qlR/XAGcGJPtSWvxbO02ojNQTpeB8sz18rkDLWTDERqhpL9AV5qJMN4DcyJ
         Uzcpb3DMn3s2BfFurSDcBXdPNSk17TOiq9o9d5r2+mjKg1dnEpHBAXNxJswJSkdWECHo
         MsjLSikiHU3lSH5+2nBg7I8PfUyOA/43AQ26lAANtBjmcsxOssh6kqUF/THgy7Yb0rEb
         ebJA==
X-Gm-Message-State: APjAAAX37IMRIpdL7ww1qvIstMUR+AuwTjzJHtoSAQQ4LUxK0dKoz9pg
        qzS5NM4ZRae7O0at2lMxU5mEhA==
X-Google-Smtp-Source: APXvYqzRKOlOevXDDSWksfUTYabZbVoMJ/6J96gC1hBjVY9RvSugrai1mEmZuwx2m1GH4e4XuKgfFw==
X-Received: by 2002:a1c:eb18:: with SMTP id j24mr2265512wmh.32.1556799052888;
        Thu, 02 May 2019 05:10:52 -0700 (PDT)
Received: from localhost.localdomain (aputeaux-684-1-8-187.w90-86.abo.wanadoo.fr. [90.86.125.187])
        by smtp.gmail.com with ESMTPSA id u9sm3648348wmd.14.2019.05.02.05.10.51
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 May 2019 05:10:51 -0700 (PDT)
From:   Fabien Parent <fparent@baylibre.com>
To:     lgirdwood@gmail.com, broonie@kernel.org, robh+dt@kernel.org,
        mark.rutland@arm.com, matthias.bgg@gmail.com, perex@perex.cz,
        tiwai@suse.com, kaichieh.chuang@mediatek.com,
        shunli.wang@mediatek.com
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        Fabien Parent <fparent@baylibre.com>
Subject: [PATCH 0/5] ASoC: mediatek: Add basic PCM driver for MT8516
Date:   Thu,  2 May 2019 14:10:36 +0200
Message-Id: <20190502121041.8045-1-fparent@baylibre.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch series add a basic PCM driver for MediaTek MT8516 with only
support for ADDA Playback & Recording for now.

Fabien Parent (5):
  ASoC: mediatek: make agent_disable, msb & hd fields optional
  dt-bindings: sound: Add MT8516 AFE PCM bindings
  ASoC: mediatek: Add MT8516 PCM driver
  ASoC: mediatek: mt8516: Add ADDA DAI driver
  ASoC: mediatek: mt8516: register ADDA DAI

 .../bindings/sound/mt8516-afe-pcm.txt         |  28 +
 sound/soc/mediatek/Kconfig                    |  10 +
 sound/soc/mediatek/Makefile                   |   1 +
 sound/soc/mediatek/common/mtk-afe-fe-dai.c    |  23 +-
 sound/soc/mediatek/mt8516/Makefile            |   7 +
 sound/soc/mediatek/mt8516/mt8516-afe-common.h |  18 +
 sound/soc/mediatek/mt8516/mt8516-afe-pcm.c    | 794 ++++++++++++++++++
 sound/soc/mediatek/mt8516/mt8516-afe-regs.h   | 218 +++++
 sound/soc/mediatek/mt8516/mt8516-dai-adda.c   | 316 +++++++
 9 files changed, 1406 insertions(+), 9 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/sound/mt8516-afe-pcm.txt
 create mode 100644 sound/soc/mediatek/mt8516/Makefile
 create mode 100644 sound/soc/mediatek/mt8516/mt8516-afe-common.h
 create mode 100644 sound/soc/mediatek/mt8516/mt8516-afe-pcm.c
 create mode 100644 sound/soc/mediatek/mt8516/mt8516-afe-regs.h
 create mode 100644 sound/soc/mediatek/mt8516/mt8516-dai-adda.c

-- 
2.20.1

