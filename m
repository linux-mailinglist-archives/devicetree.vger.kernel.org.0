Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4814347EB8E
	for <lists+devicetree@lfdr.de>; Fri, 24 Dec 2021 06:23:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242739AbhLXFXm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Dec 2021 00:23:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45532 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242515AbhLXFXl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Dec 2021 00:23:41 -0500
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B7DAC061757
        for <devicetree@vger.kernel.org>; Thu, 23 Dec 2021 21:23:41 -0800 (PST)
Received: by mail-lf1-x135.google.com with SMTP id x7so16863640lfu.8
        for <devicetree@vger.kernel.org>; Thu, 23 Dec 2021 21:23:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cogentembedded-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3hqZ/4rm/mROQ5eziTAE/Z4BmR3YKmyI30tkx1zQHhg=;
        b=2KUMOPpdDIL7E1pp7ENF81+xjGCtKbQa4Q9uc17QZHXo2/K2UNLqbtuOz2Vd5r4L9q
         JhtZGM6fyB7UtuH7a3rugxV7y5ynPe729CltDoYASuHqfsGAnNcNxBj/ncFfj70THD2M
         nIPR1C7CZJWB8HsW1AaAZAEGtu60OS/bwvt0Zi8wrwu/ZHMbSOJVk0HsOP0H/HnkcBbg
         oyuFXK+8MzomeVOnY0nQM9QcRJcNe4Nck1S+MXGJa7qV+bL8qpOw4Lrvf6kCaDGliXn7
         g/WkltahELXil0G/hE6hTYQ18x03rpT75nbXnj1kZAA1sJjPlKjSFlLodOtTgC7bx8wC
         9icg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3hqZ/4rm/mROQ5eziTAE/Z4BmR3YKmyI30tkx1zQHhg=;
        b=GRFs3Sgs6woWAn7qMhIFqRJtz//QOxS8l6e6czjur+y8sG602C/Y6zyp17atJrWkUW
         wrm5S/H6HZdpI64C77eczrSrZEMqmxWrHsFRp3TLV5vmKALvkoLK1smHCGKXU507gw5O
         sfMrOlGub0yGlwb5KmdwXo/tlP0sSaPqUKcagxXk0Q8zKPRj7qh/Mkh4cfB83KjUdg+1
         FziRqWxV4HTcLoGyl97jxRW9hnbomPf10KckjyYDADoJKh920zyaalesAGnxPb4u4xFQ
         NpuZTzh62I3wZZ72rTJ3uOgCZpoL26SEm01x0iztuEBVpGCUuOt3dDztmD04MBPWC7sp
         C9Xw==
X-Gm-Message-State: AOAM531Yjudid73wvQzEf9MDwtc7dsmlGvuorWQxm2vbrRUaT8fTpscO
        gLqUNuOrZItIAIQ4GUzaUHHcUw==
X-Google-Smtp-Source: ABdhPJxLPn8Kg5/Hzg/ID38WBqGzyJktOBSpOmtsdh61RiMMcDifHNhHMdly1GBALg693nCfUxU0fw==
X-Received: by 2002:a05:6512:22d6:: with SMTP id g22mr4214072lfu.199.1640323419570;
        Thu, 23 Dec 2021 21:23:39 -0800 (PST)
Received: from cobook.home (nikaet.starlink.ru. [94.141.168.29])
        by smtp.gmail.com with ESMTPSA id e13sm702858lfs.306.2021.12.23.21.23.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Dec 2021 21:23:39 -0800 (PST)
From:   Nikita Yushchenko <nikita.yoush@cogentembedded.com>
To:     Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>
Cc:     dri-devel@lists.freedesktop.org, linux-renesas-soc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Nikita Yushchenko <nikita.yoush@cogentembedded.com>
Subject: [PATCH 0/3] add R-Car M3-W+ (r8a99761) LVDS encoder support
Date:   Fri, 24 Dec 2021 08:23:06 +0300
Message-Id: <20211224052309.1997096-1-nikita.yoush@cogentembedded.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patchset adds support for the LVDS encoder inside R-Car M3-W+ SoC.
Hardware is the same as on other R-Car Gen-3 chips.

Nikita Yushchenko (3):
  drm: rcar-du: lvds: Add r8a77961 support
  arm64: dts: renesas: r8a77961: Add lvds0 device node
  dt-bindings: display: bridge: renesas,lvds: Document r8a77961 bindings

 .../bindings/display/bridge/renesas,lvds.yaml |  1 +
 arch/arm64/boot/dts/renesas/r8a77961.dtsi     | 27 +++++++++++++++++++
 drivers/gpu/drm/rcar-du/rcar_lvds.c           |  1 +
 3 files changed, 29 insertions(+)

-- 
2.30.2

