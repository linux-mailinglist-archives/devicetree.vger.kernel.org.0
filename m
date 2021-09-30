Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F154141D90B
	for <lists+devicetree@lfdr.de>; Thu, 30 Sep 2021 13:47:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350566AbhI3Ltj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Sep 2021 07:49:39 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:41650
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1350512AbhI3Lti (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 30 Sep 2021 07:49:38 -0400
Received: from mail-lf1-f69.google.com (mail-lf1-f69.google.com [209.85.167.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 354B5402E0
        for <devicetree@vger.kernel.org>; Thu, 30 Sep 2021 11:47:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1633002475;
        bh=2I691nvxU/lO8++QbjVQLPuSPw++eMWKgLS4yAxN8zc=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version:Content-Type;
        b=MQMJtlxuUSexb6eLopj9TGoKs0f/cEuYxvS3XOuM4JXgTh4rRK5SVmjEbJJ6beaiy
         mMFtvixKxRJKXo1IccAr8Rl+lV5kKrvgpRk2VFsF26BgiI9XSdHx8PCXGMpOLDM6bp
         U38AzUPtWx6nurq5MmE0Pq9VZvfxCkOLgW/stgaCnU+r3b3Je1W5EmMUK6zaZLINw8
         +lMGhr1gBBZufDNhDvM6QZmyDPKpFmJphC06bdYC7r7iFTmF90ZT/0zbCpzcDXUvQ+
         91kzHOglVOQxfMqGRGbO74tteO6mbCBVpjeekpESkdbbXCJ28gcJgDonk+H7r1YTRj
         pbMFbfQ5fJtbQ==
Received: by mail-lf1-f69.google.com with SMTP id r14-20020ac25c0e000000b003fc149ed50eso5358791lfp.11
        for <devicetree@vger.kernel.org>; Thu, 30 Sep 2021 04:47:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2I691nvxU/lO8++QbjVQLPuSPw++eMWKgLS4yAxN8zc=;
        b=otMdhxVbDwwtI126iAi+trqinpXrtFUXfDyaEYI3u4p/rHZJ5KyzdAXHm3+8cgWkqa
         OR5YM4AKcVMG4gZiKy9TSWa8Gofi7qVv4Bp4qjKIx6lLERD/ykdkJH2wuXu7AvASsnA9
         rNHCjjSkjJ9h5TJkjIBvR2W85Ad5x9DMYTJ4XgQjVeO2zAClyD8oG2baPuinAp6jgPQj
         rU+YDCOJbf5dM5RBI6c2S+aE1uZvW78x9LjgFWdBkGNKfYtveU9SwB/UZr2QoMO4hFQz
         S+iuRpRvfh8rULhD919Wkx880fILu3SAMpDdeYHsZK11mpClEes2f7NA16cZUTnlvbrA
         trPw==
X-Gm-Message-State: AOAM530GMNMDEn6FOmgW4BHG8z/+wpho78V6hoUAMtkjLuF2OePFTiza
        MVimomXM8Ln7ue0WHl39QAu7+sHzauENY1KDH5vCtirGN6GsOZ4y+7/GwQqaVEMQmj9PUAgbiQb
        LAryUjNasVReY8b2CnWnhpGhixHz7LxIYN84br0E=
X-Received: by 2002:a05:6512:3a96:: with SMTP id q22mr5172729lfu.228.1633002474480;
        Thu, 30 Sep 2021 04:47:54 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxxxYXwhD32IdBAqEB2fAWGTXTprOHL2G3T691kTIriVXTz9p4loVv7RSJMT2Gvh5L2Ki1NSA==
X-Received: by 2002:a05:6512:3a96:: with SMTP id q22mr5172709lfu.228.1633002474326;
        Thu, 30 Sep 2021 04:47:54 -0700 (PDT)
Received: from localhost.localdomain ([193.178.187.25])
        by smtp.gmail.com with ESMTPSA id w19sm311349ljd.110.2021.09.30.04.47.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Sep 2021 04:47:53 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Liam Girdwood <lgirdwood@gmail.com>,
        Stephen Boyd <sboyd@kernel.org>, linux-clk@vger.kernel.org,
        Tomasz Figa <tomasz.figa@gmail.com>,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org,
        Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-samsung-soc@vger.kernel.org,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Lee Jones <lee.jones@linaro.org>,
        Mark Brown <broonie@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Chanwoo Choi <cw00.choi@samsung.com>
Cc:     Marek Szyprowski <m.szyprowski@samsung.com>,
        Sylwester Nawrocki <snawrocki@kernel.org>
Subject: Re: (subset) [PATCH 12/12] ARM: dts: exynos: use spaces instead of tabs around '='
Date:   Thu, 30 Sep 2021 13:47:16 +0200
Message-Id: <163300242600.178519.4513175036717923621.b4-ty@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210928084949.27939-13-krzysztof.kozlowski@canonical.com>
References: <20210928084949.27939-1-krzysztof.kozlowski@canonical.com> <20210928084949.27939-13-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 28 Sep 2021 10:49:49 +0200, Krzysztof Kozlowski wrote:
> Use spaces in Origen boards instead of tabs around '=' for simple
> property assignments, to match coding style.
> 
> 

Applied, thanks!

[12/12] ARM: dts: exynos: use spaces instead of tabs around '='
        commit: 7ec804d6025c952e3122ad7fe768178efca3300e

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
