Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 957CF40859A
	for <lists+devicetree@lfdr.de>; Mon, 13 Sep 2021 09:48:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237729AbhIMHtp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Sep 2021 03:49:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37838 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237713AbhIMHto (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Sep 2021 03:49:44 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1CFBFC061760
        for <devicetree@vger.kernel.org>; Mon, 13 Sep 2021 00:48:29 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id s24so5900691wmh.4
        for <devicetree@vger.kernel.org>; Mon, 13 Sep 2021 00:48:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=H8B7xbwINRHhqxF1MMsyq3ruixWSjkWr3WYb2IwC/4w=;
        b=jQYgRv3r1b5ziq6GAtSG41IHs7Mxmx/7NzVkqF+Ma3TW+6U1wVsPjfdvcuZxTGrmKF
         4D/jjCMvaLg/xODS29m4xMkilg9/mqeMXeJeRcewjssgFJhyhaoJwQUD8NTkoKq2lqXy
         lL+s7LeJ2n8Ovc541c5u43eN3OnkxwKcBoXv0sRbWT3Nsznx/pKb6jebChR8wQMew9TS
         nEyZsuBUA4culcO22Cskdb8TWc3EWEpMYAC/eobso31kmM3x9sdgx96ZBLfZzAEgw5hG
         N68Z7foU/H7V83U9poDMgN31e2FPUCQZefZF/5tgwIlAFyAwN2Q14mEPpK1lXrBFAlet
         XhZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=H8B7xbwINRHhqxF1MMsyq3ruixWSjkWr3WYb2IwC/4w=;
        b=L9TNycP46wQi4XF2DJgLSGOBfU4nsGqk/4ocJ//77hxNWx2uXXpLCG4/6MCbU9yjin
         afyztG27PD+i3p6OT/AolUZHbgPqLRufJ+T0S3ntVFerIxc0b+fCdiJEMAdnrmwkaK7m
         AqoRcJi1MWnKCH8rbc7gdnzH5TQ4VcwPOu6YuWIoJaQ06O421u/S4zd1i+fp6NbIrOVJ
         DDLtXZgt0ojgTmUrWTex1xX4B2NbPK6nYgyRvUC1iVbCO3a40U3azp3EwNmhNxMGXj/X
         RHimrHCOPDXBLwL529C2tCxoBrkWfNRDoe4dx0Hb2iYy/yVd7D9Nb60J3bDKAtjgsKAb
         t7kQ==
X-Gm-Message-State: AOAM5309ttd3j4LH2zCa1WNbtzi0SCiE163suj6C6J84CN7jLzNTQ7ZZ
        cX9dw8tFBk7E0TwLEk376m0no/UEEJQjyJIU
X-Google-Smtp-Source: ABdhPJwUUH8bihHEeIDsCFA08JpJBGJPQWwFBqCrYLeBaXIPrOvtHZZIp0yGJFv+rYkUNEMD2wvFiQ==
X-Received: by 2002:a1c:a94a:: with SMTP id s71mr5671046wme.32.1631519307550;
        Mon, 13 Sep 2021 00:48:27 -0700 (PDT)
Received: from localhost.localdomain ([2001:861:44c0:66c0:9ebe:26f1:5acc:c894])
        by smtp.gmail.com with ESMTPSA id m8sm6541195wms.32.2021.09.13.00.48.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Sep 2021 00:48:27 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     Kevin Hilman <khilman@baylibre.com>,
        Dongjin Kim <tobetter@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH] arm64: dts: meson: sm1: add Ethernet PHY reset line for ODROID-C4/HC4
Date:   Mon, 13 Sep 2021 09:48:28 +0200
Message-Id: <163151930396.823339.15277942851578495255.b4-ty@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <YScKYFWlYymgGw3l@anyang-linuxfactory-or-kr>
References: <YScKYFWlYymgGw3l@anyang-linuxfactory-or-kr>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, 26 Aug 2021 12:28:32 +0900, Dongjin Kim wrote:
> This patch is to fix an issue that the ethernet link doesn't come up
> when using ip link set down/up:
>    [   11.428114] meson8b-dwmac ff3f0000.ethernet eth0: Link is Down
>    [   14.428595] meson8b-dwmac ff3f0000.ethernet eth0: PHY [0.0:00] driver [RTL8211F Gigabit Ethernet] (irq=31)
>    [   14.428610] meson8b-dwmac ff3f0000.ethernet: Failed to reset the dma
>    [   14.428974] meson8b-dwmac ff3f0000.ethernet eth0: stmmac_hw_setup: DMA engine initialization failed
>    [   14.711185] meson8b-dwmac ff3f0000.ethernet eth0: stmmac_open: Hw setup failed
> 
> [...]

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v5.16/dt64)

[1/1] arm64: dts: meson: sm1: add Ethernet PHY reset line for ODROID-C4/HC4
      https://git.kernel.org/amlogic/c/9d02214f8332d5dbbcce3d6c5c915e54d43a0c46

-- 
Neil
