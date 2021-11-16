Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5585A452F24
	for <lists+devicetree@lfdr.de>; Tue, 16 Nov 2021 11:31:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234194AbhKPKer (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Nov 2021 05:34:47 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:41542
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234126AbhKPKeq (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 16 Nov 2021 05:34:46 -0500
Received: from mail-lf1-f69.google.com (mail-lf1-f69.google.com [209.85.167.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id A136B3F1A5
        for <devicetree@vger.kernel.org>; Tue, 16 Nov 2021 10:31:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1637058708;
        bh=92zi+uaozVd3dQpRcG3KZ4gZNNYCSn9kCZHl66TmEQ4=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version:Content-Type;
        b=eSHrNXAaa7jcE23FJU6xMLwAh58fSEIpwvNDYd2SLdr+rc3pY/Ga8zMfWzT1cmTFK
         oHq1nZvququpBpEg3suchbo+S0I2X/CYmyiaH6SXAoUv4AbD24mEzTV6j0ZnJkfYsl
         LBXJf8oV0SHdmv4EjW8BECZkwOXuLO9jzZkUGNKkHq3bnknfqEbo5mAvaONc+qE8sx
         SkXeDwJJg3fKPFfIRPweyf6LsetSVkR3tRyzFUpY+1dwM9NjzNWurepe9T+IdRvloP
         mxbzJSmcS6jZp4Jb4dQfOl4gUTr1BsC+6yrr8bjVnQetNW0DMTjo/m4fovnUEC3mBa
         AwkkS2Z14xkNw==
Received: by mail-lf1-f69.google.com with SMTP id k5-20020a05651210c500b0040934a07fbdso2325530lfg.22
        for <devicetree@vger.kernel.org>; Tue, 16 Nov 2021 02:31:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=92zi+uaozVd3dQpRcG3KZ4gZNNYCSn9kCZHl66TmEQ4=;
        b=v3Ms7sht7IDHMOHWl2poax/UadlRFo8uyEjrnGtskqG+oLoiQjt/W7hq6tGpvoPubE
         /mOrL51AZc3VpraEhnknKvKOLolQ8mbaXI5MORnwoIfdo4sCVK8QMhWQ0xAHbHr0W5Y7
         Xv8K5bTlaDf6fxsz91Es0+KXKy4M60FgaUJslahhulVb0s/Ub+7r/3B0lJCkXmh54Btc
         NEyU5689H/5iAWfgdwgyTQO9Fq0GHVZtkaTfWg5o/Ns8MO4+cXWhrZFIkqfwjpClMkDp
         vz0RrKtqD8XFVdYoFNb+1ZUR9rVJ3h2DF2AZj8bikwkdAY6VcpMxZDH9vnp7RPLtywxa
         LFbw==
X-Gm-Message-State: AOAM530DBw6mdcG7VUxneMYWdNa+a+h32IcC3KQIO79xJoST5GD5cSW9
        xZkO0zbBpqiSrQzfYHfmCWT/7N3pHW/u3sBN/Io9dUGB+vbqdfWCKqd/TAMcctQW054qjUTGIRW
        QMj3Fw4oTkaRTl1VT05+wQDqGW+v5sTYqwSMvgcA=
X-Received: by 2002:a05:6512:1093:: with SMTP id j19mr5749220lfg.340.1637058706562;
        Tue, 16 Nov 2021 02:31:46 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwFJQ83v72RjqgTGJjKyb8RGySZcPwWRf/nb5XIMU/rZuTUXd/qfX1IRjsZ+BlY4jF7IoGErg==
X-Received: by 2002:a05:6512:1093:: with SMTP id j19mr5749196lfg.340.1637058706395;
        Tue, 16 Nov 2021 02:31:46 -0800 (PST)
Received: from localhost.localdomain (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id j5sm1114418lfe.219.2021.11.16.02.31.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Nov 2021 02:31:45 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Wolfram Sang <wsa+renesas@sang-engineering.com>,
        Richard Weinberger <richard@nod.at>,
        Mark Brown <broonie@kernel.org>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Sergei Shtylyov <sergei.shtylyov@gmail.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Biju Das <biju.das.jz@bp.renesas.com>,
        linux-mtd@lists.infradead.org, linux-spi@vger.kernel.org,
        linux-renesas-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
        Prabhakar <prabhakar.csengg@gmail.com>,
        devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH v2 6/7] memory: renesas-rpc-if: Drop usage of RPCIF_DIRMAP_SIZE macro
Date:   Tue, 16 Nov 2021 11:31:05 +0100
Message-Id: <163705866144.26823.8540217279898779126.b4-ty@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211025205631.21151-7-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20211025205631.21151-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20211025205631.21151-7-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 25 Oct 2021 21:56:30 +0100, Lad Prabhakar wrote:
> RPCIF_DIRMAP_SIZE may differ on various SoC's. Instead of using
> RPCIF_DIRMAP_SIZE macro use resource size to get dirmap size
> which is already part of struct rpcif.
> 
> 

Applied, thanks!

[6/7] memory: renesas-rpc-if: Drop usage of RPCIF_DIRMAP_SIZE macro
      commit: 5da9b59b23d8112709034a07338e03dcc65fa11f

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
