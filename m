Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1580546CDE7
	for <lists+devicetree@lfdr.de>; Wed,  8 Dec 2021 07:49:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234281AbhLHGwq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Dec 2021 01:52:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47764 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231206AbhLHGwp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Dec 2021 01:52:45 -0500
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com [IPv6:2607:f8b0:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9172BC061574
        for <devicetree@vger.kernel.org>; Tue,  7 Dec 2021 22:49:14 -0800 (PST)
Received: by mail-pg1-x534.google.com with SMTP id k4so1250279pgb.8
        for <devicetree@vger.kernel.org>; Tue, 07 Dec 2021 22:49:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=z1p7M/LYCK4ZSTVRRFaVS0/yRQ76HczsAM++YTNxVk0=;
        b=gH1OAMKZIbiCurLwwowWbfcMH6OFe1lcc7DRY2TXI47rbdcCKYijsRMUyJV9mN20O0
         m44aBHnbRhgYsBfQidng2wgBjSYA/a8kLEFQOv9KK99Vs7PrmwexJ41iJfnPoduNy8g9
         Ei3BNIK+8jRP4AFgYtovTr/E5+0QSKhp3LdwESCeebMgdPNBLAqtGDg5id6yi5EyiEQH
         70QPW8NvlJY+PRVYzOtioxqZwDyCnP0RPgGsFb8x1ECWXGFfRX7riZac/8bVHNAi+e+N
         XahLpYJSGOzb3cLS6GC1Dcsz0WiDqM5g+Pnk7OofoHL8r8jGmBBV7jayxzl9wqTht0t9
         QV1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding;
        bh=z1p7M/LYCK4ZSTVRRFaVS0/yRQ76HczsAM++YTNxVk0=;
        b=ucBAIlvXx0gLjFtiSXYS2gIOR2VjRm8QsL3hI5FLAjN7VaZSCGKRC1HcW5dORJ/uwL
         SUdpdg+D/ZujvWp/Zpprk/cZ7wLXYWscvMAsraNho5HH+JIFOjxl3TpPvK1ot6hymFkc
         A0/tbc3NdM608xTKy0kyDW1mayRcLsd6DRNjOjgFtvbsnqL65k6WMDh+3d+Ni4mi8fUa
         tjJAqqYoPAMiSsVoobfb4yIz6bkO/H0SjR/BPsOgMwB98zkHHR/65jz/jJrvk2D19k83
         T3FgXzmrt3ro0bkgH0q21Dsy1xhl0438iPzaNP0ZbVhkQtHA66of4AIpswO3MVHwA8Rw
         bo8Q==
X-Gm-Message-State: AOAM532KZegqxwANa7VqgbGBsxOP1N4OqBY+PUJiKbGvJDuD0CwJmu0h
        IFTKiWdWHB8n5BKcAWflX9YJ9LB7OIUl0A==
X-Google-Smtp-Source: ABdhPJwIp6pPGibbmSNn5RgsgKJtj5oMsZgc1+pRk8v12IodpeiXSoONr/LaWwn11qGGttXMOXx2kw==
X-Received: by 2002:a05:6a00:cc9:b0:49f:b439:8930 with SMTP id b9-20020a056a000cc900b0049fb4398930mr4048379pfv.86.1638946153607;
        Tue, 07 Dec 2021 22:49:13 -0800 (PST)
Received: from localhost.localdomain (fs76eeeb6c.tkyc601.ap.nuro.jp. [118.238.235.108])
        by smtp.gmail.com with ESMTPSA id h5sm2029396pfi.46.2021.12.07.22.49.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Dec 2021 22:49:13 -0800 (PST)
Sender: Kuninori Morimoto <kuninori.morimoto.gx@gmail.com>
From:   Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
To:     Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Subject: [PATCH v2] ASoC: dt-bindings: audio-graph-port: enable both flag/phandle for bitclock/frame-master
Date:   Wed,  8 Dec 2021 15:48:52 +0900
Message-Id: <20211208064852.507977-1-kuninori.morimoto.gx@renesas.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>

snd_soc_daifmt_parse_clock_provider_raw() is handling both
bitclock/frame-master, and is supporting both flag/phandle.
Current DT is assuming it is flag style.
This patch allows both case.

Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
---
 .../devicetree/bindings/sound/audio-graph-port.yaml      | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
index 43e7f86e3b23..7d0248be08c5 100644
--- a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
+++ b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
@@ -42,10 +42,15 @@ patternProperties:
         $ref: /schemas/types.yaml#/definitions/flag
       frame-master:
         description: Indicates dai-link frame master.
-        $ref: /schemas/types.yaml#/definitions/phandle
+        anyOf:
+          - $ref: /schemas/types.yaml#/definitions/flag
+          - $ref: /schemas/types.yaml#/definitions/phandle
       bitclock-master:
         description: Indicates dai-link bit clock master
-        $ref: /schemas/types.yaml#/definitions/phandle
+        anyOf:
+          - $ref: /schemas/types.yaml#/definitions/flag
+          - $ref: /schemas/types.yaml#/definitions/phandle
+
       dai-format:
         description: audio format.
         items:
-- 
2.25.1

