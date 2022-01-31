Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8F9824A3EFE
	for <lists+devicetree@lfdr.de>; Mon, 31 Jan 2022 10:03:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232324AbiAaJC6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jan 2022 04:02:58 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:34046
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S233510AbiAaJC6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 31 Jan 2022 04:02:58 -0500
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com [209.85.128.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 058093F1F3
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 09:02:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1643619777;
        bh=VPxWUBO6RdX14HL+ygIvVwiE8ezYmob4dZE1Vs6HWz8=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version:Content-Type;
        b=A5KG39ZEWuuVArPFSibsN7nofxHMARkG3sAFd3TR96J+9e8lmRML7Uw5CJpOcJABM
         0cFDt/76XUQWNjmO98LnWR/En7P+E3NJqgdj+WQB3EUcW07i6o8MFJtqCOEy+Llzw3
         61m7HSMBHfjI0cASFn4wYkDsTXuve7r99Mx8EcDevpxJjQ//DmM2/uETYfx5VqoI8i
         drq3rzuvK6Odpn87oN1dt9Uh4IfxAEuCQXmG29PVARuUdhzcdG6yQ8yfmGYDPRGYK0
         Pyn3LTNAUbKjLm2/c6jS+JvfbI48FRSPUSzBQPB9deUnNQ3ExHf+vKMIKMCTn5T0wa
         wwcBVQQXAj7Rg==
Received: by mail-wm1-f69.google.com with SMTP id s1-20020a1ca901000000b0034ece94dd8cso10055357wme.5
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 01:02:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=VPxWUBO6RdX14HL+ygIvVwiE8ezYmob4dZE1Vs6HWz8=;
        b=y8WFhE0VHDtUmrQ57n8/mJUIe3XafoHqfC4MdmGnc22k9/yvP47vUSklZV/Og0lrqD
         6Q0p0QIIlyvw9j7bT4/ra+kCgxOo4579fmA+VaeAbt0vN12tSBbU3e6ZurPccwCAIAYI
         ebUzNYKQvf6RHL+BPVeao2BvYml2LHljlgqXbhy6LSk6gFcjmxf1amZz7Xm4h4e4Rvw8
         xHWGq2d+wBpmxfxriwXAVijTg7OEMnBjZfVF5WMTube5fo3LIaXrm2x2O5kOk8sSqs02
         eAqJ+rrAqn0n7Jkb2HUJ20KsdIoLMmCBwkjifDtJpDCpo2BwNJvJIgCwaAd2HpQKpg3c
         LfMw==
X-Gm-Message-State: AOAM530nqUre0RimVaQYl8CpKSdwm5Q1x6a2ntNvsRDi4Rq6AWKnd7RB
        pdqkuVzIKZukFklPzc14q+cR5llN5Den/Bs/Y4AYUKke8Yr9bgIgvaKEa01IE4Ad319Os5ap7h1
        /fFP0Tn4PMrzWcWoyijCdX69Lq0Nl7aN6fuDnYSg=
X-Received: by 2002:adf:f703:: with SMTP id r3mr16858334wrp.354.1643619776356;
        Mon, 31 Jan 2022 01:02:56 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzBrLJFSY4y+ymZIDvgLm9S/yZmXBOYfaqH+6ywjDWDjBGe7K6nX5M0jnkU0z/nyHAV8DaVrg==
X-Received: by 2002:adf:f703:: with SMTP id r3mr16858318wrp.354.1643619776211;
        Mon, 31 Jan 2022 01:02:56 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id c8sm9219866wmq.34.2022.01.31.01.02.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jan 2022 01:02:55 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Lee Jones <lee.jones@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        linux-samsung-soc@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-serial@vger.kernel.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: (subset) [PATCH 1/5] arm64: dts: exynos: align pl330 node name with dtschema
Date:   Mon, 31 Jan 2022 10:02:53 +0100
Message-Id: <164361966593.14585.5079368192105542217.b4-ty@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220129175332.298666-1-krzysztof.kozlowski@canonical.com>
References: <20220129175332.298666-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 29 Jan 2022 18:53:28 +0100, Krzysztof Kozlowski wrote:
> Fixes dtbs_check warnings like:
> 
>   pdma@15610000: $nodename:0: 'pdma@15610000' does not match '^dma-controller(@.*)?$'
> 
> 

Applied, thanks!

[1/5] arm64: dts: exynos: align pl330 node name with dtschema
      commit: 706d8df83c8ec9cbe948ff8c8bd082b7819f4196

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
