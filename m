Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EB3024A9506
	for <lists+devicetree@lfdr.de>; Fri,  4 Feb 2022 09:23:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350834AbiBDIX2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Feb 2022 03:23:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47074 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353572AbiBDIX1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Feb 2022 03:23:27 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63A8FC061744
        for <devicetree@vger.kernel.org>; Fri,  4 Feb 2022 00:23:27 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id j25so9135026wrb.2
        for <devicetree@vger.kernel.org>; Fri, 04 Feb 2022 00:23:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=zf8akufeGhb+PPmP1SAbnaUbaBMJcqn9Z0xu1czGwCg=;
        b=AXj9j3dMMLt36X8aezSoIjs4fCy31D4QAFyxiNWb1N5hGx5LZtrttD5fHlnh46XWvA
         lJOYTG6wlZ63LK6qZTpj0EBTkYM70azohqkXi2CcAytWWV534Nv019b5tVc2qUbWRE7Z
         ulJPFz82hCyLdYUvh3lgGJT1fnxEKf7jC7IdV0yxBypM0AwYeExkbdDIM4QiRajYGsOD
         wr873VB9clThGIThv0Js/0h6PgQ9U2WZwhmZuoLLlPmw7+a8IT9qeReHKkviiEIb6whf
         iNHYBoAaVJx39cGlvM/VuHKvjOFqsliSRUkThbeqtGdkTmTO7dEyqlB/J4br/e5wx703
         WEqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=zf8akufeGhb+PPmP1SAbnaUbaBMJcqn9Z0xu1czGwCg=;
        b=QKNLuKiwJTHPCuaNXXBeM/+n1KwFI4ByPHK8WozLXWvcJRyDPxttLI13xoZJypgi6Q
         84OrGCd8wuww2t+10Hfkxz8nJtUaOCFQHwwl0Fx7RotH7MrFtPcedMnbVL6Kr5D4DUg4
         c2mFDDGUAwydxMsMvo2IQjGO/i2vfKauXRxY0ONa5AZyIm6Z8hxCovfklL+tbi4HCF5Y
         PkjgvdZJJOBaJW/LUlLc5FApJm62loecZCYznhGl7HUZvRrsiHBp0UKrygymrTHinuf9
         uN/6kWikqSfIAlmO1Qv7vKwwGC4l3trHYJjhNAzluNY0HKjLaUoLgi3b+YhRbh3fKZ3W
         Agxw==
X-Gm-Message-State: AOAM531Iyx83K9DVME8LJvERJfbqfpwjXdEdbyr9EE50MJMq7bGSF2Zc
        9A5BAV6Q8BtCwZlZP/YHXAsdFw==
X-Google-Smtp-Source: ABdhPJwgyM90qtmbsuXHi4DPp4XSzDTrhOZrcaVGWGmQn2thSj0asC/9RiSxtEgsaB+nyDIeoU1Rpg==
X-Received: by 2002:a05:6000:178d:: with SMTP id e13mr1491699wrg.199.1643963005941;
        Fri, 04 Feb 2022 00:23:25 -0800 (PST)
Received: from localhost.localdomain ([2001:861:44c0:66c0:3fbe:ff10:110:739])
        by smtp.gmail.com with ESMTPSA id s22sm8914078wmj.38.2022.02.04.00.23.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Feb 2022 00:23:25 -0800 (PST)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     Kevin Hilman <khilman@baylibre.com>,
        Dongjin Kim <tobetter@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
        Jerome Brunet <jbrunet@baylibre.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        linux-amlogic@lists.infradead.org
Cc:     Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH] arm64: dts: meson-g12b-odroid-n2: fix typo 'dio2133'
Date:   Fri,  4 Feb 2022 09:23:17 +0100
Message-Id: <164396299209.31118.14013385169843675577.b4-ty@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <YfKQJejh0bfGYvof@anyang>
References: <YfKQJejh0bfGYvof@anyang>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, 27 Jan 2022 21:29:25 +0900, Dongjin Kim wrote:
> Typo in audio amplifier node, dioo2133 -> dio2133
> 
> 

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v5.17/fixes)

[1/1] arm64: dts: meson-g12b-odroid-n2: fix typo 'dio2133'
      https://git.kernel.org/amlogic/c/bc41099f060ea74ac8d02c51bd0f5f46d969bedf

-- 
Neil
