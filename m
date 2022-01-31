Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1D8BB4A3F02
	for <lists+devicetree@lfdr.de>; Mon, 31 Jan 2022 10:03:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234489AbiAaJDE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jan 2022 04:03:04 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:34068
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S233510AbiAaJC7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 31 Jan 2022 04:02:59 -0500
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com [209.85.128.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 67E3F3F323
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 09:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1643619778;
        bh=ppUyIZk21EsCgtGpUgqpX7jhTbWdZVwa2chlS2CUxiA=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version:Content-Type;
        b=j00SFBrf8UW70lRs3Qv0PqUQIbeIp+uEs/o5ILeNhFPwSKRZDD/qCOpR5YudqX900
         B7D/i18OcG8wnWqXoNIDIOAE6jQHae3onit0u2b8m9xkwg5SWJ/eytMLxEq8FN9J0/
         sH+xRZP4fGljwvUa5/TXiymnGpZCOM80iq66ZIjko40XsDciFPFUr2bV/Fj12VaHZ6
         2NbBboxRHD7wh21WhQK3kUz4qcrrDcT0USqn1jHOgYJq+kkRfHoliiTWJNTOxhhsfn
         6s2SqKBoQAYgjoTBn1ZkMv95Yn9b2j2a+mReQIUxv0AOHM7RTbpDN509cBBzfUaJUU
         ITHunvxUecMtw==
Received: by mail-wm1-f72.google.com with SMTP id o140-20020a1ca592000000b00350aef3949aso2704770wme.5
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 01:02:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ppUyIZk21EsCgtGpUgqpX7jhTbWdZVwa2chlS2CUxiA=;
        b=icx2st0hcljwRX0VzxpUiNrNSBNjEj3llF/DsLR/qEO3INDhIbqyvVulZL/dpoaA43
         AzlJgMiWuFHRD+sIACqhskTQpiLFAh+Xl+AOmHJ9UVOdwMX3ucy6VelPm2RuX86HwX/V
         aSq054dY/jgUFsBiGe9sEpjROyy1WruCOeyJ/rxlg+bkueooZZhZTrvXrS8UslBlB4g8
         fNHdY/DukGcXwBkaWa7v7RzZeWvSpOXmJTJxQf8kZbwBUyCIvkddFkC5lX6Ea3qv2TkQ
         EMwYXrNKjs7yk3uVMDYevwmrRjjuUOY6m0nwb+T1Q3SvC1miwAUTBph0VEIWzNZXYUtA
         ZFrg==
X-Gm-Message-State: AOAM5301Wgzl8u5cwqCJhYfxFKD7GVNem8bdGoCM+PnUjphIffFdWg1Y
        HbwPrk0cERzC+8WxEMrM8X75xyQQ7XHS3gRMNtG/szrzPswYUuJVGserX//X3ykQxLtUeV/ydC/
        l/ncmUR8nahdIK+wfnVrdAAsrF5V3ndErc9r+wpI=
X-Received: by 2002:adf:f9ca:: with SMTP id w10mr16922944wrr.624.1643619777820;
        Mon, 31 Jan 2022 01:02:57 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxIXwL3SArzS0IsRbkLooNyKwIGddVuNDzfmyMXBjK4sAwNO3wv+Nkhpfa309F808WUtqkcLQ==
X-Received: by 2002:adf:f9ca:: with SMTP id w10mr16922933wrr.624.1643619777693;
        Mon, 31 Jan 2022 01:02:57 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id c8sm9219866wmq.34.2022.01.31.01.02.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jan 2022 01:02:56 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        linux-samsung-soc@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-serial@vger.kernel.org, Lee Jones <lee.jones@linaro.org>
Subject: Re: (subset) [PATCH 2/5] arm64: dts: exynos: drop unneeded syscon phandle in Exynos5433 LPASS
Date:   Mon, 31 Jan 2022 10:02:54 +0100
Message-Id: <164361966594.14585.5432470637577397205.b4-ty@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220129175332.298666-2-krzysztof.kozlowski@canonical.com>
References: <20220129175332.298666-1-krzysztof.kozlowski@canonical.com> <20220129175332.298666-2-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 29 Jan 2022 18:53:29 +0100, Krzysztof Kozlowski wrote:
> Exynos5433 LPASS audio node does not use syscon phandle since commit
> addebf1588ab ("mfd: exynos-lpass: Remove pad retention control").  It
> was also dropped from bindings.
> 
> 

Applied, thanks!

[2/5] arm64: dts: exynos: drop unneeded syscon phandle in Exynos5433 LPASS
      commit: f1afd24c3f532defa77c2d6e069b82dc7d6a9129

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
