Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 49412450519
	for <lists+devicetree@lfdr.de>; Mon, 15 Nov 2021 14:12:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230142AbhKONPh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Nov 2021 08:15:37 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:59658
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231701AbhKONOf (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 15 Nov 2021 08:14:35 -0500
Received: from mail-lf1-f70.google.com (mail-lf1-f70.google.com [209.85.167.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 560813F1A5
        for <devicetree@vger.kernel.org>; Mon, 15 Nov 2021 13:11:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1636981899;
        bh=Ek/Fldzw6HQOPZj1XYTC44c+sdFSqm7+VnT8VkD8Rfw=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version:Content-Type;
        b=drAtQ3p+a8aqyMf0Bb1S9H0Fxbf/UDGo7qxusuX8Iwjzmk3Aut48tOe6Aty2e2N6Z
         gYBNSJr47ZEhiS+V2cfb3sjU6Sl1Ab7CLztVkhzUkII7mP1m58WXA3wzUp/nwTmLGA
         FhfavO12MeAAfFub1PBmtGb2roJ8oa9X5tJTE3YMfOdn0zDfVxxF+Kn33CIo4JGKhn
         WvVJhaxDFJXHJ3k9ra5vZ9qCddVSi14tqBSmxBYN1/KP0/qOpLdhOus3NAaUCsgAQa
         x+qmuhaCxcl6REge/haKJhVxHcLx9y63MXvPC+XXGt0TF8Q2nADXgQ8oKjJXWh0eEn
         +vjXkRlmzCsNw==
Received: by mail-lf1-f70.google.com with SMTP id g38-20020a0565123ba600b004036147023bso6753937lfv.10
        for <devicetree@vger.kernel.org>; Mon, 15 Nov 2021 05:11:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Ek/Fldzw6HQOPZj1XYTC44c+sdFSqm7+VnT8VkD8Rfw=;
        b=PytReuq2PUO3QNFNqdHSmfN08qm+yIrsFE6/1eRPquG+MfXeA8Wpesp3iDdw6PJlcC
         xOO4RxoIroOg5Q8dCZs7NDH0MDxqvDnV6H6+7JJe0ElQ1WCQ7DEA6AaRubyYOvW79q3f
         Ro8kNpxHevftJGScpfLysxdyU1Im6/rKauve6vNoLxXE0iX8akIhoM2f5dBuI2zpRuj0
         zFUtpauaSlli4pYrlkiJTIceDlwhAZE5yyX3IBee/HYURf+rAh/NwZHJsAmMKlEST3r9
         MyvYQNiTtkNa9qN/PLUK0uuJI2kzYedNvD0iSO9EtE9eEYIHt8DfxQONpxrGKC98bMVu
         dUVg==
X-Gm-Message-State: AOAM5328B0tX338zCyppz2+QXWUCBd9IhFm9FOzt02WhpQreOZqv4vOp
        bRp0gTH0GAPgkch4S0s5UFIKRb//YJ87Km1QgykxEOs4MeHn+9PQFy27ja68o2b1LTaK0+L88Kv
        9NXjnBRz23q+kKEO4wuk/wdj81n9WGeCA4SF+14E=
X-Received: by 2002:a2e:8143:: with SMTP id t3mr38123509ljg.18.1636981898877;
        Mon, 15 Nov 2021 05:11:38 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwEgeHAM0nYXXWQdsOhrhSNd86XLgS1t7Bl6YTvfQwwvZk1C4SUKQ+X8kW2UH5L8O81hyXlNA==
X-Received: by 2002:a2e:8143:: with SMTP id t3mr38123497ljg.18.1636981898738;
        Mon, 15 Nov 2021 05:11:38 -0800 (PST)
Received: from krzk-bin.lan (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id p21sm1411254lfa.289.2021.11.15.05.11.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Nov 2021 05:11:38 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Paul Cercueil <paul@crapouillou.net>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-kernel@vger.kernel.org, stable@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH v2 1/2] ARM: dts: exynos/i9100: Fix BCM4330 Bluetooth reset polarity
Date:   Mon, 15 Nov 2021 14:11:33 +0100
Message-Id: <163698188786.128367.17376497674811914207.b4-ty@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211031234137.87070-1-paul@crapouillou.net>
References: <20211031234137.87070-1-paul@crapouillou.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 31 Oct 2021 23:41:36 +0000, Paul Cercueil wrote:
> The reset GPIO was marked active-high, which is against what's specified
> in the documentation. Mark the reset GPIO as active-low. With this
> change, Bluetooth can now be used on the i9100.
> 
> 

Applied, thanks!

[1/2] ARM: dts: exynos/i9100: Fix BCM4330 Bluetooth reset polarity
      commit: 9cb6de45a006a9799ec399bce60d64b6d4fcc4af
[2/2] ARM: dts: exynos/i9100: Use interrupt for BCM4330 host wakeup
      commit: 8e14b530f8c90346eab43c7b59b03ff9fec7d171

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
