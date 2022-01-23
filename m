Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CE9D0497379
	for <lists+devicetree@lfdr.de>; Sun, 23 Jan 2022 18:10:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239167AbiAWRKv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 23 Jan 2022 12:10:51 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:59226
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S239151AbiAWRKq (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sun, 23 Jan 2022 12:10:46 -0500
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com [209.85.208.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 6F6383F1D0
        for <devicetree@vger.kernel.org>; Sun, 23 Jan 2022 17:10:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1642957845;
        bh=CZnbftvymvuP1q3lGZEsnRQ2BDlI+Mk2wJMOXZ8zt6U=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version:Content-Type;
        b=lyKZdwptPYE7q5Op/YXYF+V27WqLBqmW3JuHb0nr7NR862teLhHoo22GG3LJb/AZn
         1La6rYTPoD7FW7pTAxT/zviIx2vgdlKsYZPrfNWVn/zKO284qkfMes6ynU9FPWzObM
         BZvkNRngqFKRrHIQtgShl+MbwBnFuU+7zOuUOPmzs49ijft0wesEFTCvosVoz8DOYI
         Lq7JkRLqoJd61SEBEIEU/lcGsazXRNCPQI5Y9zH9TdzICnBqseBDuFa+Vyg2qGpYoJ
         vTC7NBst2zBlQsDSBI9vskt+Dmo0z9/L31uy+3kouXMQzMi8zI9n2QSiJEGZJ4bwW/
         /S8xwQuRATMsg==
Received: by mail-ed1-f70.google.com with SMTP id w23-20020a50d797000000b00406d33c039dso4091064edi.11
        for <devicetree@vger.kernel.org>; Sun, 23 Jan 2022 09:10:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CZnbftvymvuP1q3lGZEsnRQ2BDlI+Mk2wJMOXZ8zt6U=;
        b=NLwjcNFrXiLO9sccLNyy2gl6P+u90fXT+tLR6gHi4Feo6ZVpCrFV7GXaARL3c6Wwv/
         S3qQkODwc9A0R3HjZAZ8ZWoRZ1RNRiL0KeaSUfminuuLsUJXiVN7xm/oHboGSYXkFRY1
         Cle9kfu0+GpqC39IOuuSKzyw0q3voRAXqKPx+FS8jH8Jnv51g9id0RmuYaJTNPNfeD9g
         nPqA9D+25i7junecDJDKlBvmnQDHwCeH94gHDf4pIQaUcknvYtp7TlD//t8zVCMXnGjm
         OP076bsMsnBkrbI/7r3uxPDOrotOxku8/Nq1uDDa20uuaLEECnOLz4iR1QeXWp9DvC0e
         IeKw==
X-Gm-Message-State: AOAM530w+J5UGlYW6BhcNOUBE9FP262lyqBxnfus+zN056rfnLgP/aNN
        j8ae8NLtPJkFJmkxCD+4MtJnBSmKkVu7WoyiQOVorpZSoE/0D+V/u87WPkFQePhstUFfiPafylO
        3IRTBxQLb6bmTFmrJ4N5JfbP4hTFu8QaFvtH/HsI=
X-Received: by 2002:a17:906:6a81:: with SMTP id p1mr9514634ejr.379.1642957844826;
        Sun, 23 Jan 2022 09:10:44 -0800 (PST)
X-Google-Smtp-Source: ABdhPJw+nJ5WREK9LKclmPPHtd3xIWumFe6W3mBEhOYrTUeoyk6BgVmPqiVeHq2VMH9reyQgkB13CA==
X-Received: by 2002:a17:906:6a81:: with SMTP id p1mr9514624ejr.379.1642957844691;
        Sun, 23 Jan 2022 09:10:44 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id l2sm5208665eds.28.2022.01.23.09.10.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jan 2022 09:10:44 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-samsung-soc@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Mark Brown <broonie@kernel.org>,
        MyungJoo Ham <myungjoo.ham@samsung.com>,
        Lee Jones <lee.jones@linaro.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH v2 1/5] arm64: dts: exynos: Align MAX77843 nodes with dtschema on TM2
Date:   Sun, 23 Jan 2022 18:10:37 +0100
Message-Id: <164295777264.25838.6451252879069426520.b4-ty@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220111174805.223732-2-krzysztof.kozlowski@canonical.com>
References: <20220111174805.223732-1-krzysztof.kozlowski@canonical.com> <20220111174805.223732-2-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 11 Jan 2022 18:48:01 +0100, Krzysztof Kozlowski wrote:
> The newly introduced dtschema for MAX77843 MUIC require the children to
> have proper naming and a port@0 property.
> 
> This should not have actual impact on MFD children driver binding,
> because the max77843 MFD driver uses compatibles.  The port@0 is
> disabled to avoid any impact.
> 
> [...]

Applied, thanks!

[1/5] arm64: dts: exynos: Align MAX77843 nodes with dtschema on TM2
      commit: 7638d3c945beb6c781acf5dd0a78e04c76f1c32f

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
