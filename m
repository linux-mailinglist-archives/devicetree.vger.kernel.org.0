Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2EDBC30CFBE
	for <lists+devicetree@lfdr.de>; Wed,  3 Feb 2021 00:12:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236210AbhBBXME (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Feb 2021 18:12:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55586 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236183AbhBBXMD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Feb 2021 18:12:03 -0500
Received: from mout-p-102.mailbox.org (mout-p-102.mailbox.org [IPv6:2001:67c:2050::465:102])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0137DC061573
        for <devicetree@vger.kernel.org>; Tue,  2 Feb 2021 15:11:22 -0800 (PST)
Received: from smtp2.mailbox.org (smtp2.mailbox.org [IPv6:2001:67c:2050:105:465:1:2:0])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4DVgXb4GB3zQkm3;
        Wed,  3 Feb 2021 00:10:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mailbox.org; h=
        content-type:content-type:content-transfer-encoding:mime-version
        :references:in-reply-to:message-id:date:date:subject:subject
        :from:from:received; s=mail20150812; t=1612307451; bh=C9SJkyFqEs
        ER8CQT20DEacyLoTmusZfYNglvdMUK1uY=; b=Zhtxxsdoux8hWM6mvN81W7AWs8
        s+paWTmOL7Z2Ac28rl+jc7egKxFiO1uWr/zfC7NXVaizxEbQx+mNlJnEuXhjeUNJ
        aGKqzUcXAVJf6X4jk6eGufeG9ZR2Vd1GGtgYR4WIlZSZZb+rqL5xBdpIXJM0lJ8B
        AMQ7O6h5VqGFQUC/FavkBZIs4JuZlE5TLXqhsk22/a/M6WMWIBMQ0UlZyqBb1LpY
        aaAs1CYXw6WFu3AGbuCO12W2iCMTpPmc8eoy/p5htN1DOI/d7H3jVdMRUqgsKLrp
        aAziQ0yIV5EGmieMBtynwGPsxZl4FbxkCtoV1orlaB3IUviysuAX3dzTOuJQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
        t=1612307453;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=C9SJkyFqEsER8CQT20DEacyLoTmusZfYNglvdMUK1uY=;
        b=NwMnbK4oYhJuSSVaELV1Ejg9OUW5KJSbkRXsIb81Nz0Q/XsLWfe9QhBkFwa+6XcnPOCn5Y
        DDX6OhI831+TsjXl4apJpD2WhzxedvWD0HnatxQK2LhL2wKAhxjp81U13X6GrdE53+SxlH
        FyMOrIOsM+lcp0Xku+EYc7yUYTdRv2kaYgy8xKPX/qHc+eLiK32kQ1tZMv1mVW0SMuHdEy
        5BP6pGzLGWmY6Yvk5Or6VUSCAg/jhsQhgas/ll6tLnolUq2Br1WhINXp2Yf5XGQfJZYkKl
        yYOxfc89Rfn+eEPAhB8vncBCqivId2OtfY9Gn9Ujx0AGju8P3LEy32Y3qwDFCA==
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
        by hefe.heinlein-support.de (hefe.heinlein-support.de [91.198.250.172]) (amavisd-new, port 10030)
        with ESMTP id EEK49OlZuCI8; Wed,  3 Feb 2021 00:10:51 +0100 (CET)
From:   Alexander Stein <alexander.stein@mailbox.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Neil Armstrong <narmstrong@baylibre.com>
Cc:     devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/1] arm64: dts: meson: g12b: odroid-n2: Add I2C RTC device node
Date:   Wed, 03 Feb 2021 00:10:47 +0100
Message-ID: <1904272.QyYuPWqPJX@kongar>
In-Reply-To: <c63a4da5-b598-2484-24bf-d7b4697e28e1@baylibre.com>
References: <20210202170846.81685-1-alexander.stein@mailbox.org> <c63a4da5-b598-2484-24bf-d7b4697e28e1@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-MBO-SPAM-Probability: 
X-Rspamd-Score: -0.75 / 15.00 / 15.00
X-Rspamd-Queue-Id: 357F017BF
X-Rspamd-UID: 51debf
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Nevermind,

I just saw that an identical patch has already been accepted, but is not in
Linus's tree yet.
See https://patchwork.kernel.org/project/linux-amlogic/patch/20210111135831.2218-1-christianshewitt@gmail.com/

Sorry for the noise and best regards,
Alexander


