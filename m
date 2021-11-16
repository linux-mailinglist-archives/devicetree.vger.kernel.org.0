Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 68081452FFE
	for <lists+devicetree@lfdr.de>; Tue, 16 Nov 2021 12:12:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234717AbhKPLPR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Nov 2021 06:15:17 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:57854
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234766AbhKPLO6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 16 Nov 2021 06:14:58 -0500
Received: from mail-lf1-f69.google.com (mail-lf1-f69.google.com [209.85.167.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 3482D3F4B3
        for <devicetree@vger.kernel.org>; Tue, 16 Nov 2021 11:12:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1637061120;
        bh=nrGxaoqv3fyhOTJzGXUVPLJO6wTEQyr0HU27b7o02x0=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version:Content-Type;
        b=ufVAelJYG7E810iPm6P435eBmZN0rza24mATQ358lxzp8DY7+ATBGrul+dSHAplxs
         YAUkHmHdNkukz9dwm7MCOGXzEZmf7ex9+BaKmCGmCg8AqZhIiy2Ix9pwK31Y5v0zBI
         WhHvl+KLZOYSKW7vnjigX2hosE0DBhA74/ZS4htQixX2fLccyfV8QxgelMpppqo1FL
         3O1b1mjLREvcvucCaj8Qmps+hbRyAN6sjokMDgT5PVUCqzvhJCZBVrQo6LWmgMLDSX
         TdBryY+RYPoOl0uQIM6NqoVYatyfn7oicvM3Ikl84atrRR7oy12DsA7g1PemgYf+yw
         9Hg8UFT4cd4Dw==
Received: by mail-lf1-f69.google.com with SMTP id f15-20020a056512228f00b004037c0ab223so8069380lfu.16
        for <devicetree@vger.kernel.org>; Tue, 16 Nov 2021 03:12:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=nrGxaoqv3fyhOTJzGXUVPLJO6wTEQyr0HU27b7o02x0=;
        b=20RAOi6/revrLqrrSIc+7INSa9oR2dp0q9tAio5cgeB1777f7JtFGPE9EeRX2i3E+s
         IePGEJ9u34tnTg9UoVwlBQXAvi4KoSF5jq0bdZ4uhUgwmOVF/xQlBUVtJHlRAz1eH6PB
         utwxZ2M0zeBHodqtmtFMIF/CSx9IKlltWLF7vpuXErRRSzXFZr/cWpbh7HYVv4Ntk6FZ
         tJrzRWI82LUm0cM/hsF2NzYSIOywfvBu9BKHEu6+zOIxD58kGep7ttluelHwZwbZGMdU
         KniUQTyv3YG5/yRf30IauI0CCP6YBXuufnwrJsxQfoj1gGDy6uSpjJVmL48+3M+1lhPI
         Lj+Q==
X-Gm-Message-State: AOAM531yEn4Nh2atgioPpuaS23AYqB6WTkSaW5+3snz7dyNyX24GJ0oU
        X/JYKkwUuIWGWXQklMGt/P4lF3KwBoR8cijEai4252p+Omjxdat/teOi9hlSZDy3Y3p9fbds0t0
        DJH854LNfDCyhaMElyYN6fbcvaR8h3Mx+sIDAlvQ=
X-Received: by 2002:ac2:55a5:: with SMTP id y5mr5719669lfg.468.1637061118565;
        Tue, 16 Nov 2021 03:11:58 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwFB8CGB99pv7Z7UsgUdq1tSHOm4adL/MVMH5OYqBZECJqMcRYQf5zZBqfhkDpckCfM0VsW7A==
X-Received: by 2002:ac2:55a5:: with SMTP id y5mr5719653lfg.468.1637061118424;
        Tue, 16 Nov 2021 03:11:58 -0800 (PST)
Received: from localhost.localdomain (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id m8sm1724540lfq.27.2021.11.16.03.11.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Nov 2021 03:11:57 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Richard Weinberger <richard@nod.at>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Sergei Shtylyov <sergei.shtylyov@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Wolfram Sang <wsa+renesas@sang-engineering.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-renesas-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-spi@vger.kernel.org, linux-mtd@lists.infradead.org,
        Biju Das <biju.das.jz@bp.renesas.com>,
        Prabhakar <prabhakar.csengg@gmail.com>,
        devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH v2 7/7] memory: renesas-rpc-if: Add support for RZ/G2L
Date:   Tue, 16 Nov 2021 12:11:21 +0100
Message-Id: <163706107706.69862.835899154165201477.b4-ty@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211025205631.21151-8-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20211025205631.21151-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20211025205631.21151-8-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 25 Oct 2021 21:56:31 +0100, Lad Prabhakar wrote:
> SPI Multi I/O Bus Controller on RZ/G2L SoC is almost identical to
> the RPC-IF interface found on R-Car Gen3 SoC's.
> 
> This patch adds a new compatible string for the RZ/G2L family so
> that the timing values on RZ/G2L can be adjusted.
> 
> 
> [...]

Applied, thanks!

[7/7] memory: renesas-rpc-if: Add support for RZ/G2L
      commit: b04cc0d912eb80d3c438b11d96ca847c3e77e8ab

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
