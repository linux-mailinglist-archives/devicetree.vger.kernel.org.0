Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3170C4011BA
	for <lists+devicetree@lfdr.de>; Sun,  5 Sep 2021 23:13:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238139AbhIEVOx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 5 Sep 2021 17:14:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54604 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231335AbhIEVOx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 5 Sep 2021 17:14:53 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 791D4C061575
        for <devicetree@vger.kernel.org>; Sun,  5 Sep 2021 14:13:49 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id a25so9335378ejv.6
        for <devicetree@vger.kernel.org>; Sun, 05 Sep 2021 14:13:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=XJ6X2mFcJ/OS7YqRMx5ImrU+EbU/tDDlwLk+w7yd5y4=;
        b=ZINaih8x0vAzTe01iKJVdYkyz5WJ47O1OjoGcs6GLzlReof4+VETtqtVG49sxTu/6G
         JY9yfhI2MGFN26knJB5Nk+ZEBDvmnRdP9PQnVvysMU+JvDAzajjMm51vJZtU/w7PsDm9
         D25pP9fhnfsNTmDu41vNcP6hm+Z08yZAfHQuyt7myncEViSnpgRX5RFk/PAEH0aYfYtC
         XjT7/cciNXgNiaeKSezFoXy+5Hn5VJ3YBhgnTcVq9YUwDrUP829avVm8NViW8PUJM/ib
         osfrcyE/v88C4yD+iNbsP823DiTQEqZUjCD7CKjL/KbQCaw2sbQcCNfhGeiEmd2KudVD
         p0Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XJ6X2mFcJ/OS7YqRMx5ImrU+EbU/tDDlwLk+w7yd5y4=;
        b=EWprPIBMzJPxhnL65tkFARPWxmldy7CPX/rCsEQgVLuoDAksZ5FRcBwm2h+8zqRb9p
         vnOTYsIyhKTxNMYVKxC8PIpcLRqzWgWaZNRlyOfqu0lVRK8ATPKY42Wq1VIah9wUGLYI
         wkgHtHPUADd8zxqFGAcd7p4Sr7annuWhqhweexgus6eoIbqvr218VQesCpoMRvEODF/2
         DldQLI4MNZBzwMXqcC/9Lfe1cXywVmUFstc8gxltZ5m75yBvgDl1vf48LGJbiY80bWBG
         I2fXGHdnQnsrLbgklcoi2CeWwSgPiHzzsOJNTBjE34pnR2QdfcbJO88U0kBKrOVE42Tw
         ZZUA==
X-Gm-Message-State: AOAM533ktnhpsBe7qd7P9BNH6DYKhmP7G+Ddekc2Hj3dfC1qmyZkWa6c
        Jlnu65O6sMkuktf4ugPafLDyG8WEqeYS8A==
X-Google-Smtp-Source: ABdhPJx4FK7nkcJdknNew21GNhMKt+VcNTLMoac5fs6/GZaiY6ROV1VFB3t7dXc1yHuCBBYU9gYZLg==
X-Received: by 2002:a17:906:d94:: with SMTP id m20mr10336363eji.445.1630876428167;
        Sun, 05 Sep 2021 14:13:48 -0700 (PDT)
Received: from kista.localnet (cpe-86-58-29-253.static.triera.net. [86.58.29.253])
        by smtp.gmail.com with ESMTPSA id j6sm3359612edp.33.2021.09.05.14.13.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Sep 2021 14:13:47 -0700 (PDT)
From:   Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime@cerno.tech>,
        Maxime Ripard <maxime@cerno.tech>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: Re: [PATCH v2 49/52] arm64: dts: allwinner: a100: Fix thermal zone node name
Date:   Sun, 05 Sep 2021 23:13:46 +0200
Message-ID: <1864947.3He5opK4du@kista>
In-Reply-To: <20210901091852.479202-50-maxime@cerno.tech>
References: <20210901091852.479202-1-maxime@cerno.tech> <20210901091852.479202-50-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dne sreda, 01. september 2021 ob 11:18:49 CEST je Maxime Ripard napisal(a):
> The thermal zones one the A100 are called $device-thermal-zone.
> 
> However, the thermal zone binding explicitly requires that zones are
> called *-thermal. Let's fix it.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>


Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej


