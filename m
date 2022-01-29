Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7F9FB4A2E36
	for <lists+devicetree@lfdr.de>; Sat, 29 Jan 2022 12:29:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235148AbiA2L32 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 29 Jan 2022 06:29:28 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:53152
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234738AbiA2L31 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sat, 29 Jan 2022 06:29:27 -0500
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id A64603F32C
        for <devicetree@vger.kernel.org>; Sat, 29 Jan 2022 11:29:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1643455765;
        bh=mQWIhzfALzmhNvVwAVuvuNXj69s9Y0aV8nVP8i/ovfg=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version:Content-Type;
        b=W3b4Ht/4cyHvn6oQOBk+eEI9msPrFZI9VYd+hfm+ilmrQrV6oRgRPC1Sds+/pLImu
         M6aRk/MmGFw2c7jOAUreBP10a3xp0g0pO51mRwEU1Cso3fuVei3d1Y3Y3UV+1fW+Kb
         YtgXfa2jLdPDDbrlGj9Ro3el43AeeoHUCIYMhgL9HTe/KtvKutVXPtOisdj6Ito0Ph
         ogItWaCXcCqeyztXAvI75s6sWVkGVoQfWed1woqgrodenMVTxHCExspscz/M0O1rrv
         EVPwMc8ScaRPBdtXKwwKEbFeokQSnYhddv1SVIknuav0lh4OMiMYnUll5luJHvvFZF
         lpH6swsDN91QQ==
Received: by mail-ed1-f69.google.com with SMTP id h11-20020a05640250cb00b003fa024f87c2so4389612edb.4
        for <devicetree@vger.kernel.org>; Sat, 29 Jan 2022 03:29:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=mQWIhzfALzmhNvVwAVuvuNXj69s9Y0aV8nVP8i/ovfg=;
        b=yrhsOaGLKkeV8+f111i7wh5arjLjHB11QmcTqKJgwb9GSXhQV3cRSojEnKvA+KjVX2
         TdsydcupzKsxRp7yazOvqT2A9UvDOTur+byzP4TZHRY5sHgPJuRGs/PVGsF62q793L4h
         v8WGfSGYsS+srTEfslityMyvmKqkYQ39y2f7TKC3xFDtEylhE1ZTbcg4VI7MjPEpRMa1
         +bvJOjEFUcf2EspOOnoSIpQ/9QweAaiRaWjsWuDN3YAHhqL8wCkGgog1jhLrL+WU+h7n
         s/p4r6Bfv3OEwbpND092LaNThbw8/0bvjwyfYLNXsvsTITtzdaCTU3HpjZvqtDg+LcGb
         FzeA==
X-Gm-Message-State: AOAM5308dwwi52X470dxLhqsJFqGR1t3GAbbyZVj0OzQBXEHCD8pXvr+
        i0wAqTvspMGoxI1T40WTjLDqXqp4xRthZiAWOhcnYA+J4En6oC4yhbDUdbWiISmY1e3HWiPK1AI
        6TrpBz7dshGLFLxqashmF/PVs3XgyWr8OUenDSHs=
X-Received: by 2002:a17:907:3f99:: with SMTP id hr25mr10190856ejc.588.1643455765343;
        Sat, 29 Jan 2022 03:29:25 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzUWK6qByvVxIBS+9uu2vdLsOAJFd0ApGv7Ogy0hcRemfHrZnMyIWyq6RHHSeL54zf6jeCBQw==
X-Received: by 2002:a17:907:3f99:: with SMTP id hr25mr10190835ejc.588.1643455765142;
        Sat, 29 Jan 2022 03:29:25 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id jt17sm10943147ejb.161.2022.01.29.03.29.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Jan 2022 03:29:24 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     linux-kernel@vger.kernel.org,
        Alim Akhtar <alim.akhtar@samsung.com>,
        linux-arm-kernel@lists.infradead.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linus.walleij@linaro.org, Aswani Reddy <aswani.reddy@samsung.com>,
        linux-fsd@tesla.com, robh+dt@kernel.org, linux-spi@vger.kernel.org,
        pankaj.dubey@samsung.com, devicetree@vger.kernel.org,
        andi@etezian.org, linux-samsung-soc@vger.kernel.org,
        broonie@kernel.org
Subject: Re: (subset) [PATCH v3 3/3] arm64: dts: fsd: Add SPI device nodes
Date:   Sat, 29 Jan 2022 12:29:22 +0100
Message-Id: <164345575829.11115.173136141798893555.b4-ty@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220125031604.76009-4-alim.akhtar@samsung.com>
References: <20220125031604.76009-1-alim.akhtar@samsung.com> <CGME20220125032828epcas5p22fbacf42ebfb1b78c1f74f48d37aa381@epcas5p2.samsung.com> <20220125031604.76009-4-alim.akhtar@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 25 Jan 2022 08:46:04 +0530, Alim Akhtar wrote:
> From: Aswani Reddy <aswani.reddy@samsung.com>
> 
> Adds device tree node for SPI IPs
> 
> 

Applied, thanks!

[3/3] arm64: dts: fsd: Add SPI device nodes
      commit: bd1e3696a052b9b2bd3c1c72ef4bf800a3a1e286

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
