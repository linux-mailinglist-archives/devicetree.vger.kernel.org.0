Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6D7DE2B5646
	for <lists+devicetree@lfdr.de>; Tue, 17 Nov 2020 02:34:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726365AbgKQBdv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Nov 2020 20:33:51 -0500
Received: from mail-oo1-f66.google.com ([209.85.161.66]:38957 "EHLO
        mail-oo1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726238AbgKQBdv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Nov 2020 20:33:51 -0500
Received: by mail-oo1-f66.google.com with SMTP id l10so4372962oom.6
        for <devicetree@vger.kernel.org>; Mon, 16 Nov 2020 17:33:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=PIVuRHuQpPLtHXGEDoAwUODOVnqOwSMNScZjMJ33YwE=;
        b=IKoH1UTCDPUBrqbrfjS3QNtDb/fqGOAxaNkrf50gorXIoHKIduVQJb5h44dQ7cDPW/
         8n13QRRSPNQLLWV7Bux35DTE+q9b7MH6fZqflMkZ7zaVb+OwWp60MwLsNCNoY3RhePfC
         9Hidqlr+0xz3wF2+qGwlLCT1/DEOJlM1PaQFofRpUzpHXL0CvHH47Wdic+cZHkgg1jnF
         XBFQ9fMbhjZ2e/LMWf+ovn+91joGCog2glf5IJHyRxoEFbdd2e1SwiWVdjw4eiUxt0L1
         CoebTLwdggzLKXsQ/JpRAfq7+MePPjSyzajINP8zr/7647B/taNfav+edECJGy6Zw3Gl
         0vlQ==
X-Gm-Message-State: AOAM533c8QFqH/u+bmORrbGFseldxqXRU3avJ/E6xEVVf/snOnX3hl0F
        ulFDvqU82QuotcKtJKAniNSoSQyeJg==
X-Google-Smtp-Source: ABdhPJyh7k15dAFdbxkEOsVwyoHF5mvXPEsj3sCoz0n4Vx6Avi75UW55OWe8b49iffOzcTA3D2l6nQ==
X-Received: by 2002:a4a:c018:: with SMTP id v24mr1515621oop.2.1605576830587;
        Mon, 16 Nov 2020 17:33:50 -0800 (PST)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.googlemail.com with ESMTPSA id j9sm3861325oij.44.2020.11.16.17.33.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Nov 2020 17:33:49 -0800 (PST)
From:   Rob Herring <robh@kernel.org>
To:     Mark Brown <broonie@kernel.org>
Cc:     devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
        Liam Girdwood <lgirdwood@gmail.com>,
        Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
        Lubomir Rintel <lkundrak@v3.sk>,
        Sameer Pujar <spujar@nvidia.com>
Subject: [PATCH 0/4] ASoC: graph card schema rework
Date:   Mon, 16 Nov 2020 19:33:45 -0600
Message-Id: <20201117013349.2458416-1-robh@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series updates Sameer's patch to repartition the graph card binding 
schema and incorporate the OF graph schema. The schema was also mixing 
card node and DAI node properties, so I've split the DAI part (the 
'port' node) into a separate schema.

There's another problem that 'frame-master' and 'bitclock-master' have 
inconsistent types of boolean and phandle. Having the properties just 
point to the local or remote endpoint within an endpoint node is kind of 
pointless. We should have gone with just boolean, but looks like we 
already have several users. MMP OLPC is the one platform using boolean, 
but it happens to work because the properties are effectively ignored 
and CPU DAI as the master is the default.

Rob

Rob Herring (3):
  ASoC: dt-bindings: Use OF graph schema
  ASoC: dt-bindings: marvell,mmp-sspa: Use audio-graph-port schema
  ASoC: dt-bindings: Refine 'frame-master' and 'bitclock-master' type

Sameer Pujar (1):
  ASoC: audio-graph-card: Refactor schema

 .../bindings/sound/audio-graph-card.yaml      | 106 +-----------------
 .../bindings/sound/audio-graph-port.yaml      |  72 ++++++++++++
 .../bindings/sound/audio-graph.yaml           |  45 ++++++++
 .../bindings/sound/marvell,mmp-sspa.yaml      |  25 +----
 .../bindings/sound/renesas,rsnd.yaml          |  12 +-
 .../bindings/sound/simple-card.yaml           |   6 +-
 6 files changed, 132 insertions(+), 134 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/sound/audio-graph-port.yaml
 create mode 100644 Documentation/devicetree/bindings/sound/audio-graph.yaml


base-commit: e2e99930ec006c6fe1d62af339a765ade71a0d9a
-- 
2.25.1

