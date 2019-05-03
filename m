Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 31A0513532
	for <lists+devicetree@lfdr.de>; Sat,  4 May 2019 00:04:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726958AbfECWE3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 May 2019 18:04:29 -0400
Received: from mail-pg1-f194.google.com ([209.85.215.194]:32864 "EHLO
        mail-pg1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726531AbfECWE3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 May 2019 18:04:29 -0400
Received: by mail-pg1-f194.google.com with SMTP id k19so3355969pgh.0
        for <devicetree@vger.kernel.org>; Fri, 03 May 2019 15:04:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=RHqjWmIkEHkJIYN5J/tVVIuTNo00OY/OtIEp+UgaBMs=;
        b=vs1Wwtdj12+4iyb5/FTiwoquXxOvfotLHiVZQBM0eVs35LqbzeLBSZ21Cbuv9Jzj6k
         +l3Gkzfrp5skcy8xbupOg1WR2hrh8rTeKUrNindpPWulnAX23kBMZX7/1FioAqXcRahi
         jKQ30nPtK6HRUtUC7TJ1oWfG3OiVR/GAwuGK/W8wsHt4SlcLPDnc5dHM4SNZuNWoQDg5
         CBIdoOGjfFOOGHPJPR9Rs1LVS0zwX5TIpnFpIPEEaOMlvmL0s/FrrD9jlnnUwomNHh6t
         xcl6m991Fwkj4cDdGMdWNtTKS66pd5YBnLACLiBRdj1M5xru8xXNs8OPgSdTUA0pDFhU
         antQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=RHqjWmIkEHkJIYN5J/tVVIuTNo00OY/OtIEp+UgaBMs=;
        b=SDbkngHzfLr3XLqYXZ1b3CCr+BVheigfgio1FcFr31/qjuC3lePtgQ7F0ohN29JTMX
         7a/4oQz9dJ/2BWagg2cyPgHCmilIPyOFUepzEwAM/ZwQZD3ADxyL2TQndJfq2h6IAplg
         eLn2tAYE+5jC67lYc/BD9gPEZPGufkdPTVWtxrdR7a6j1ifzNKoyyJIVKH8arYCPSKwu
         sT89xbLZRVHpozniPqspzUBIn8KGcvuJA/o8jEqmcfQ/91AdObPTBwNbHtkBdZ2RRZvW
         0Dgui0rUz5v8hNrXLbpmaPawZiU0nd0dXIuNn5Jjf71mgw2foOoF9AeS+7dYsJBQxhFj
         nYNA==
X-Gm-Message-State: APjAAAVPVY2KyLO6uGmzEhtnwFoeapRyO8TqTS6qWO1pE8bQkLQr2pSi
        h2y9SKEJyTwThD86UtfXAuyKMw==
X-Google-Smtp-Source: APXvYqzyU+wMWrFoRA1gvmfadd4aYpSMdzHEAgB0uTziUcb1/nwfYiSc4SEq8pdkNU7ww0+yBusrfQ==
X-Received: by 2002:a63:3746:: with SMTP id g6mr13796813pgn.422.1556921068758;
        Fri, 03 May 2019 15:04:28 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:84dd:d87f:858b:45f])
        by smtp.googlemail.com with ESMTPSA id s32sm4512668pgm.19.2019.05.03.15.04.27
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 03 May 2019 15:04:27 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Jerome Brunet <jbrunet@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        patchwork-bot+notify@kernel.org
Subject: Re: [PATCH 0/6] arm64: dts: meson: mmc clean-up
In-Reply-To: <20190418122714.30805-1-jbrunet@baylibre.com>
References: <20190418122714.30805-1-jbrunet@baylibre.com>
Date:   Fri, 03 May 2019 15:04:27 -0700
Message-ID: <7hh8abkxec.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Jerome Brunet <jbrunet@baylibre.com> writes:

> The patchset is bunch of clean-up found while debugging meson mmc.
>
> * The first 2 patches address the libretech-cc which actually uses 1.8v
>   eMMC modules.
> * Patch 3 is a pin bias fixup depending on mmc pins.
> * Patch 4 lower the mmc max frequencies on gx chips. It was not easy
>   to spot but, according to the datasheet, the maximum UHS rate
>   supported by these chips is 100MHz (SDR50). This explains why we
>   never really managed to get a stable SDR104. SDIO is limited to HS.
> * Patch 5 adds missing pinctrl definition on the vim2
> * Patch 6 remove hs400 from the supported modes of the vim2. This mode is
>   mode reliable enough with HW/SW ATM.

Queued for v5.3 (branch: v5.3/dt64)

Kevin
