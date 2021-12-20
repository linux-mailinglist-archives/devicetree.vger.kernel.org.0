Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E00E047A733
	for <lists+devicetree@lfdr.de>; Mon, 20 Dec 2021 10:37:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229735AbhLTJhZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Dec 2021 04:37:25 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:55382
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229459AbhLTJhZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 20 Dec 2021 04:37:25 -0500
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com [209.85.167.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 1141940265
        for <devicetree@vger.kernel.org>; Mon, 20 Dec 2021 09:37:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1639993044;
        bh=PPX3YdWz8XBg5nWlMkeTeSMy8Yji1L5ai8yIPtL4/z0=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version:Content-Type;
        b=Zoo9NAf6Fi7jlZycBJzn+eshGHjNSYQvY5+ZQOb/UQPB3UosXgOWNJQYAL3DgmbQV
         aMaEinaxi98QfaLndcoP3XwYLuJsVs9aR2Nyqdf5qk9Tk/228+ToRdYTxcfyNuiH6a
         Wect5rO2ZktMzIbSHrhn1ICakSNXJrZMVaN3TpDzEV0FKad5ck0Tf1bJvEB5R4yoRW
         9f6K+f21h8jnSs9OSZFwuP45SUIjtNEYwfk+d665Ie0Gc5lUF7qnC1CGsu65ZRAFPI
         Qhu1Q7pNwRcnL/R9t7WioPgl/qC3uKLSahadHrP/oRDy9AsNqgsg9Gn/xobyNAKaVO
         fllwWuNbMfvUA==
Received: by mail-lf1-f71.google.com with SMTP id o2-20020a198c02000000b00425d146a32bso865153lfd.15
        for <devicetree@vger.kernel.org>; Mon, 20 Dec 2021 01:37:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PPX3YdWz8XBg5nWlMkeTeSMy8Yji1L5ai8yIPtL4/z0=;
        b=b3tadS7FKMnlo5Sr9ZMxlRQm6Q/Rk4+1DK7XuIy5OJxMTF7HwkO8yyEgd1m0Y0q3fa
         tsjtIrbJj3Swek7tkUx5DVRBwM7iCJ+6yb53CMM6/c7qJA6VALrFxiTVlx/mHOJG1NTm
         tswp8iMzH8Un2lBoKCumfghXkp1Ef/OZoeTvL2kIJzscJO+XEHKrwlhnFkNqijhfVMoB
         PlNkF8usMk+F4kJToeJxgiAUqrsLYxvXEJLso1bhYT5Pgwz40qDu2ASIyU0vSuu/nGud
         JkukGiICSC0PfVKMCCwOR6qtj/G91yj8T+X2iJ00NyOVsisLGf5tWpPAk4Mq4GKTEINz
         Shfw==
X-Gm-Message-State: AOAM533R4A+4SI2qeEyr4K12tbvLk88kU9SiP71ImWOLcYlRpVFivjkC
        tzPtXDy06F48QwlqgTfowMbaiFRjbn+d3b8DReYGXs8CJgExKygnE2N2RaN+zGjTFS6eGqukNVX
        b60oGGUHc0dvOSa3CW9oUUcMFqLSn5AtmXQDsbCM=
X-Received: by 2002:a05:6512:12c6:: with SMTP id p6mr15260008lfg.221.1639993043404;
        Mon, 20 Dec 2021 01:37:23 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzXWObGuH1RsfftCnDZ0YbdrstEcS/ujGb1X7PLGAE+NoR7CrapjYRIfTWYCa3Ag4odsIBlJQ==
X-Received: by 2002:a05:6512:12c6:: with SMTP id p6mr15259989lfg.221.1639993043245;
        Mon, 20 Dec 2021 01:37:23 -0800 (PST)
Received: from krzk-bin.lan (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id h15sm93443lfu.103.2021.12.20.01.37.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Dec 2021 01:37:22 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Sam Protsenko <semen.protsenko@linaro.org>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-clk@vger.kernel.org, Chanho Park <chanho61.park@samsung.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Stephen Boyd <sboyd@kernel.org>, devicetree@vger.kernel.org,
        David Virag <virag.david003@gmail.com>,
        Daniel Palmer <daniel@0x0f.com>,
        Jaewon Kim <jaewon02.kim@samsung.com>,
        linux-kernel@vger.kernel.org,
        Michael Turquette <mturquette@baylibre.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, Hao Fang <fanghao11@huawei.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Youngmin Nam <youngmin.nam@samsung.com>
Subject: Re: (subset) [PATCH v4 3/7] dt-bindings: Add vendor prefix for WinLink
Date:   Mon, 20 Dec 2021 10:37:18 +0100
Message-Id: <163999303689.14127.4038578698475142044.b4-ty@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211217161549.24836-4-semen.protsenko@linaro.org>
References: <20211217161549.24836-1-semen.protsenko@linaro.org> <20211217161549.24836-4-semen.protsenko@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 17 Dec 2021 18:15:45 +0200, Sam Protsenko wrote:
> WinLink Co., Ltd is a hardware design and manufacturing company based in
> South Korea. Official web-site: [1].
> 
> [1] http://win-link.net/
> 
> 

Applied, thanks!

[3/7] dt-bindings: Add vendor prefix for WinLink
      commit: 2d6a1c7d57723efcb23a345d0ea5a10d76350390

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
