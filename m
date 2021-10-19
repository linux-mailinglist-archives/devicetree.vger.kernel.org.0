Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 552F14331A9
	for <lists+devicetree@lfdr.de>; Tue, 19 Oct 2021 10:58:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234721AbhJSJAh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Oct 2021 05:00:37 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:51268
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234364AbhJSJAg (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 19 Oct 2021 05:00:36 -0400
Received: from mail-lj1-f199.google.com (mail-lj1-f199.google.com [209.85.208.199])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 94A2840002
        for <devicetree@vger.kernel.org>; Tue, 19 Oct 2021 08:58:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1634633903;
        bh=E3RamXCXwP7jsVW/jJ6Nnag1iblPhlMlnb88dq3fIKI=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version:Content-Type;
        b=kXhhU3v5oCpvB7USzPLpfTOfL4Z6IXCXivWKFa5hR/qzSIn5uzP/T1VQVRcmGIbog
         JdOmN1RTe19J9hzXEFR6M+WN2ynVDBjydZpTytdKHbYE7CDDbWVugN7R8tCXFJkYcp
         4eYe0EHp34+731qGXTihnYDz4PGh4x1EfsCFkBeq7vieNJiSbWyRkM70ARkNl0rUef
         WlTiMUlh/JRw6D5nEa2KuoPoZ/trAcaSaAn1y8eYbFH5TUnlCQBuvpvK6AC/g8DPKl
         NXdmShb6H0Y5JT/kIzJIUDKRAl+S+7Zjd3eKnOd0ohHzaNPePlEmSL1DYxOjeyKA4s
         eNnHL5cncNgxA==
Received: by mail-lj1-f199.google.com with SMTP id y17-20020a2e95d1000000b00210c3d67c45so639931ljh.7
        for <devicetree@vger.kernel.org>; Tue, 19 Oct 2021 01:58:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=E3RamXCXwP7jsVW/jJ6Nnag1iblPhlMlnb88dq3fIKI=;
        b=xa4cnOdpjnPM3k1/c99QXVlu3qDmq0SXQBz4jQwaVouzOruhKDF/MaP6Roo+QoCiXI
         +/z+1DIj1ofI/JkG039qKvmdY0JX6JAIYo5LXz4vhLhz5njxoshNL3WF6XLFk9fUBRy5
         k0w8mrU2uUuMx6yObnATojgta4Pt9zlBqazyyuQfDz19KatFJh830Khg+f7gD05oFKUb
         dIn5bNPdYFNptHXLmz1/FahKdcO+LL4Pbga3s/6oDPMP3ORBkZsQJMwmEptcIjCCxBmu
         FuPNcg2bnLw3FGV+JbPqiAQWxD5c4frco6OdXiRrWlpeQeFc9cvH5EYudDmws+m5Qel+
         OuDg==
X-Gm-Message-State: AOAM533jxaPBCz0lQSn3dVvp0SNQ9aOGfVQo7Ob0HiOzM+5XDf23Brd4
        jSv3vVh16Et0OsnvUmRm+w2lmYzDovTGR6WcA0k1ai9tqy/SaBfK7h4grtyPE62ddsfhbG6Yc8X
        WU4TYhjS2EW0i+9vGLWJHl/SvVZAzokgUuuoCo2Y=
X-Received: by 2002:a2e:8041:: with SMTP id p1mr5465924ljg.158.1634633902910;
        Tue, 19 Oct 2021 01:58:22 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzXkL9Oa/Mq5OcoNVFI8nJnyskwDrVCPs4JuPvw1CYnDmFE4T+a5DtFLuErnaFfLL3hKEIdaw==
X-Received: by 2002:a2e:8041:: with SMTP id p1mr5465904ljg.158.1634633902777;
        Tue, 19 Oct 2021 01:58:22 -0700 (PDT)
Received: from kozik-lap.lan (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id 195sm1869142ljf.13.2021.10.19.01.58.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Oct 2021 01:58:22 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Sylwester Nawrocki <snawrocki@kernel.org>,
        Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [PATCH 1/3] arm64: dts: exynos: add 'chassis-type' property
Date:   Tue, 19 Oct 2021 10:58:20 +0200
Message-Id: <163463389698.22504.735636032751029230.b4-ty@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211017101228.19478-1-krzysztof.kozlowski@canonical.com>
References: <20211017101228.19478-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 17 Oct 2021 12:12:26 +0200, Krzysztof Kozlowski wrote:
> A new 'chassis-type' root node property has recently been approved for
> the device-tree specification.
> 
> Add this property for end-user devices (such as laptops,
> smartphones and tablets) based on Samsung Exynos ARM64 SoCs.
> 
> 
> [...]

Applied, thanks!

[1/3] arm64: dts: exynos: add 'chassis-type' property
      commit: 4b1a78330df4742aa862468911b38c36d3edba30
[2/3] ARM: dts: exynos: add 'chassis-type' property
      commit: 2b91bd8d2bce958f75c97a9bb808a1844d2f5a53
[3/3] ARM: dts: s5pv210: add 'chassis-type' property
      commit: 7b06c1ad884ee80e43604ba2a0bbc5f8ef3524e1

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
