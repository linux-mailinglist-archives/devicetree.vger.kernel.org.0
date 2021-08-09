Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 75BF23E4400
	for <lists+devicetree@lfdr.de>; Mon,  9 Aug 2021 12:40:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233496AbhHIKk3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Aug 2021 06:40:29 -0400
Received: from smtp-relay-canonical-0.canonical.com ([185.125.188.120]:39774
        "EHLO smtp-relay-canonical-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234025AbhHIKk2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Aug 2021 06:40:28 -0400
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com [209.85.218.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-canonical-0.canonical.com (Postfix) with ESMTPS id C0A9C3F0AC
        for <devicetree@vger.kernel.org>; Mon,  9 Aug 2021 10:40:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1628505606;
        bh=A7M2AilJW/lVZdtGV4sHBiigy49SQd+8vPDsg10Wywg=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version:Content-Type;
        b=k/7c+xZYb+pCLrxegcApY7ek2ySOXse7xTjlYou9FCyCJyqVvp2A34qRNMFPbOaLL
         69pOk3ybnCb/2iUiBxLQnCA6Dc0fPGywh19T4kZQ9teE8x2UzvtogMz+TRrJrxV6Pd
         9+JZ/IgsqSTx/WvnivQYjMHeWeqFnfPaP8AVQHIQZ3DW7tGmQwUltb/LpErGRUWO4I
         ikITfmGmot1a1ytNZdM9y2RcE6XQ3u4Q+tOwn8U5vlQlqbJpR6sWtK6soRZLrF5MMM
         l1DLAW2zghN/lflq6n8iUXxNtgznlPpMsS2BpxFOgCa9qEvM5dCRJD8ciAzP8k8tNE
         OQsONNZWLWN/Q==
Received: by mail-ej1-f69.google.com with SMTP id k22-20020a1709061596b02905a370b2f477so4373559ejd.17
        for <devicetree@vger.kernel.org>; Mon, 09 Aug 2021 03:40:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=A7M2AilJW/lVZdtGV4sHBiigy49SQd+8vPDsg10Wywg=;
        b=LLJqCeJYYn2bIBm+wkLYG6W6LCkXsdpPh6IXSJQBCtCPAnA/c1VrY8HdHUmnZbXc3Y
         oWzGnjRz3JakJnAP6PlxXRYXb4+3R0ibvjD6jTF+t27S5WFKHz49PXvLEPczZm0nVOq0
         /pdzcafLgWcTtVT4toDW0OrpZ9LcEGDwdTUOzudGFk9o+zlyPTYsICWCi9G4Lu9apA8n
         EG91sH0d9s90ddPHL0KmSSPiJplioWgbgW1jsb1VsGLrt5XdvLkQrd4WQNHCoJwyfhzV
         BwFmpBoETOAdwOOCHthKKjNRssQjjm4HQ4VmlhKhMgFhcSHNPspAJ0M9kVhfvORqvCG5
         LiWg==
X-Gm-Message-State: AOAM5334tAJ79fF8PniuEs+qvNP2NB7GnhaQwKNmRT8uCRNHaRQcIXUp
        p0IB35kgVKBHBe7np8sDqF7tchKDOrTXQES/JS62hSzcm7WGctRZ+8oDPbmZm0F/UuL2E2VKLAQ
        +sX/SFIX+LFEUUiNNpFUuJn+SnzcohB4E+b8U7Dw=
X-Received: by 2002:a17:906:58d1:: with SMTP id e17mr19211168ejs.383.1628505606566;
        Mon, 09 Aug 2021 03:40:06 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxwNBxDVyqZJE/20HBUWBb/vMu6ZRyYBzmBGhNHn0UTFRQjlV7SS2wC1vaJWHqvsUUWRYmyTg==
X-Received: by 2002:a17:906:58d1:: with SMTP id e17mr19211154ejs.383.1628505606444;
        Mon, 09 Aug 2021 03:40:06 -0700 (PDT)
Received: from localhost.localdomain ([86.32.42.198])
        by smtp.gmail.com with ESMTPSA id dg24sm1314968edb.6.2021.08.09.03.40.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Aug 2021 03:40:05 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Cc:     Alim Akhtar <alim.akhtar@samsung.com>,
        Pankaj Dubey <pankaj.dubey@samsung.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Sam Protsenko <semen.protsenko@linaro.org>,
        Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH] arm64: dts: exynos: correct GIC CPU interfaces address range on Exynos7
Date:   Mon,  9 Aug 2021 12:38:13 +0200
Message-Id: <162850548977.33781.16424242900051733609.b4-ty@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210805072110.4730-1-krzysztof.kozlowski@canonical.com>
References: <20210805072110.4730-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 5 Aug 2021 09:21:10 +0200, Krzysztof Kozlowski wrote:
> The GIC-400 CPU interfaces address range is defined as 0x2000-0x3FFF (by
> ARM).

Applied, thanks!

[1/1] arm64: dts: exynos: correct GIC CPU interfaces address range on Exynos7
      commit: 01c72cad790cb6cd3ccbe4c1402b6cb6c6bbffd0

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
