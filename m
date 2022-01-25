Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A9F9949BA1E
	for <lists+devicetree@lfdr.de>; Tue, 25 Jan 2022 18:22:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344899AbiAYRTL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jan 2022 12:19:11 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:55160
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1345494AbiAYRNe (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 25 Jan 2022 12:13:34 -0500
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com [209.85.128.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 2BFBD3F1D1
        for <devicetree@vger.kernel.org>; Tue, 25 Jan 2022 17:11:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1643130717;
        bh=LvBwPzZuQYg1sk1AcEyVLVG7UxYbxMueMK9OojLw1Q4=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version:Content-Type;
        b=CY7PK8+b4bB9aoCAUW0tERxpxzO0v2nWOQ0fzR7bvxf0uuXmbre7Zc06Vd/PnuyS0
         O8uBlpcNoiSNJOquriY5l5fBTFqrJhKrDQXqd/BtaNpn7lUcg3dxRYtP6ZI62MgtNR
         CkCfJuKdyLVJwA2pEo58ykbTMKNophQQJGFncYp4vV6TOd3JShy5Il1XiCbXKMueo8
         OvhTk5ChHAZ9Hx+RkjVtBR1OFBkIodANZahKQrmEjfYTpY5+lao3+BJYmcGFAZeggB
         8YX2YBKG1WBJ+I3DFeTMIVGzLGb2Dyu3qNvnkArmMgIjA90gdO9aVDwEK2l18aaWNb
         MTmNZlV+AtUcg==
Received: by mail-wm1-f70.google.com with SMTP id m3-20020a7bcb83000000b0034f75d92f27so1789489wmi.2
        for <devicetree@vger.kernel.org>; Tue, 25 Jan 2022 09:11:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=LvBwPzZuQYg1sk1AcEyVLVG7UxYbxMueMK9OojLw1Q4=;
        b=oYZDP6jYq7HyVtm9RN8SdhLLZk37GJU59612xwlPq89i1n4N0kBkX0dePAyK+NQAhu
         ulW4etogEtNaIl9aJbJ/TqTS2S4cPuuRgDwdw9CPlHp7MBEs6XnpFJkZ6dSMGDq3p/1H
         60TjnqlwKl/Kd8YNU/BHt5sVCN3lLYDOwXLyDnb+v9PrC4gk4JENvV8vEUBBqu+w6/qQ
         +yn+jfIy2VRaTJzIDtMJ+1h8bA3Eu6T/r2DxKWrkbNHX+IGTQqwMCRHFUhhmNyxe90qi
         NrRO7pkGSJMheCuI+eqjwiIZY98l7IW+ExT1UMpeBH2m6GmuCXopYHFK4zR4GTzejnMY
         7gvg==
X-Gm-Message-State: AOAM53341zyzECNLnrpkFvHd8kHWc8vOx9bX/m55yD7kMWoxTRMqvKyU
        btb0nVA/OYwvRF06vIuO6MTXqVIZJn/eDoFlqVISk0fz7gACm+HKj0TxDl01UiulEE+yMl2ONCY
        l7Wsn2SuVigj9h1f6TqZUAEATeAudhu1cQOD65o8=
X-Received: by 2002:a05:600c:4b95:: with SMTP id e21mr3819815wmp.106.1643130716927;
        Tue, 25 Jan 2022 09:11:56 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwfP17LMlnVHGMliQrz4/SA8fpjZEApa5SVjlONjtvltbKWP+dIusViDktiO3K5mmPtxTR73g==
X-Received: by 2002:a05:600c:4b95:: with SMTP id e21mr3819792wmp.106.1643130716796;
        Tue, 25 Jan 2022 09:11:56 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id f8sm1185826wmg.44.2022.01.25.09.11.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jan 2022 09:11:55 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     linux-arm-kernel@lists.infradead.org,
        Alim Akhtar <alim.akhtar@samsung.com>,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linus.walleij@linaro.org, linux-fsd@tesla.com,
        devicetree@vger.kernel.org, olof@lixom.net, soc@kernel.org,
        sboyd@kernel.org, linux-clk@vger.kernel.org, arnd@arndb.de,
        linux-samsung-soc@vger.kernel.org, catalin.marinas@arm.com,
        robh+dt@kernel.org, pankaj.dubey@samsung.com,
        s.nawrocki@samsung.com
Subject: Re: (subset) [PATCH v5 16/16] arm64: defconfig: Enable Tesla FSD SoC
Date:   Tue, 25 Jan 2022 18:11:07 +0100
Message-Id: <164313065136.81319.934364321640879263.b4-ty@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220124141644.71052-17-alim.akhtar@samsung.com>
References: <20220124141644.71052-1-alim.akhtar@samsung.com> <CGME20220124143005epcas5p103598aa358ac35fe5e1ee762faf508b0@epcas5p1.samsung.com> <20220124141644.71052-17-alim.akhtar@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 24 Jan 2022 19:46:44 +0530, Alim Akhtar wrote:
> This patch enables the Tesla FSD SoC in arm64 defconfig.
> 
> 

Applied, thanks!

[16/16] arm64: defconfig: Enable Tesla FSD SoC
        commit: aeb62e360c0fffd9cf218a314647d0c7254becbe

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
