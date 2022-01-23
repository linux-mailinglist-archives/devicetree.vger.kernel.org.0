Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 56008497368
	for <lists+devicetree@lfdr.de>; Sun, 23 Jan 2022 18:09:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239131AbiAWRJq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 23 Jan 2022 12:09:46 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:59156
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S239120AbiAWRJo (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sun, 23 Jan 2022 12:09:44 -0500
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 8DD373F1CA
        for <devicetree@vger.kernel.org>; Sun, 23 Jan 2022 17:09:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1642957783;
        bh=bAB2fSeFXr1iDyEioRuZfgxzqfQwxPJErMMQv+8KHJM=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version:Content-Type;
        b=ao+WLHt+s0YLzobdySvBBk4AxnzPF336fUg+UgDojEs+rO6HRNXWGUHv3Az5F3b3f
         JUByNSCDLVyRb2Yz8pYGaQEUs861WTTayzkAWVq0wmKIq8YAcVIMd40PSPVGpqptjH
         A45ChSQZUoKT6ZSUFECHLu5xfIzCxysvlS2/0lTeNzQmajSraT8o2PW5edBK+boQfU
         e7V4DU3EQ669K3DhCVQ8r0NbOrmwo7neluPXTNHOrsHSbV+8ahwLNjS4kIEPfcLzj1
         2A1ECep0OvMuLiAZ/SKLkB71wZhPI7KTWmp2PToip8A4hW5Qaecl/kvajbiIUzScZI
         JptZ77xnokWfg==
Received: by mail-ed1-f71.google.com with SMTP id h11-20020a05640250cb00b003fa024f87c2so11607998edb.4
        for <devicetree@vger.kernel.org>; Sun, 23 Jan 2022 09:09:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=bAB2fSeFXr1iDyEioRuZfgxzqfQwxPJErMMQv+8KHJM=;
        b=Na2NlugRmpZ6H1GZlowl3ZHD4PCXi9+AR1SUoz1ln9GAehhtncsI7CZhRTlNKr3kb5
         8Qa8QOszs+p4Gn1r7WIY5KrwQlOD5hGt/RlLvGTGSP/U+ZzXwKD07BNnG8Ga2Kn08eSB
         k2vAoeOukQn10zXJ1PL88c+RU4E1hHtutYWWzJmHBVvfrQ5er5syyOa+U8WLsnEnZjWA
         qd2XgvK45UfHCpG7lCbW/K66J4GNfZzHG9hGvSU1AzpP0Z2mfcbW2I/xsbi3Ii6hlImQ
         C/loeOBfmPXKg57nXkUTu7QK3zbFj6lYkcVWHqF39WBRxkyTwRUKQbh7310ANDB49Q1H
         gtzA==
X-Gm-Message-State: AOAM531z/iioURjhow8EdPqeWcqHT4DeD+0EW0xtxy4LvWOoJmedp0eY
        3UTFHZ1Mj1nSw0VbkRIbEHG2HNuck8a9rAZIe3vhm65s4V74MFUvHIFCL6z2gyYmXSxF455eZP3
        lvxzyEoBWuW3XLYTIEa1xjBj7PDhJThsuWmGhKkY=
X-Received: by 2002:aa7:db82:: with SMTP id u2mr12000650edt.49.1642957782254;
        Sun, 23 Jan 2022 09:09:42 -0800 (PST)
X-Google-Smtp-Source: ABdhPJym4mMqq/tFhaDkWmk/qI/ha0u380SHusDsVSKwDK+WyJY+R2Os4Cbut38vPBr5J6Sm+KuHRg==
X-Received: by 2002:aa7:db82:: with SMTP id u2mr12000636edt.49.1642957782086;
        Sun, 23 Jan 2022 09:09:42 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id o11sm5268176edh.75.2022.01.23.09.09.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jan 2022 09:09:41 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Stephen Boyd <sboyd@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-samsung-soc@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        linux-clk@vger.kernel.org,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Michael Turquette <mturquette@baylibre.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH 1/8] arm64: dts: exynos: add necessary clock inputs in Exynos7
Date:   Sun, 23 Jan 2022 18:09:31 +0100
Message-Id: <164295777264.25838.3443202173947810601.b4-ty@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220102115356.75796-1-krzysztof.kozlowski@canonical.com>
References: <20220102115356.75796-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 2 Jan 2022 12:53:49 +0100, Krzysztof Kozlowski wrote:
> Exynos7 devicetree bindings require more input clocks for TOP0 and
> PERIC1 clock controllers, than already provided.  Existing DTS was not
> matching the bindings, so let's update the DTS, even though the error
> could be in the bindings.
> 
> 

Applied, thanks!

[1/8] arm64: dts: exynos: add necessary clock inputs in Exynos7
      commit: 372d171cd9b472cff7852211195f211150bc27d2

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
