Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0E4A830E000
	for <lists+devicetree@lfdr.de>; Wed,  3 Feb 2021 17:50:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231128AbhBCQs0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Feb 2021 11:48:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57034 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229979AbhBCQsV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Feb 2021 11:48:21 -0500
Received: from mout-p-101.mailbox.org (mout-p-101.mailbox.org [IPv6:2001:67c:2050::465:101])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25739C0613D6
        for <devicetree@vger.kernel.org>; Wed,  3 Feb 2021 08:47:41 -0800 (PST)
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4DW6zs4l7FzQlNs;
        Wed,  3 Feb 2021 17:47:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mailbox.org; h=
        content-type:content-type:content-transfer-encoding:mime-version
        :references:in-reply-to:message-id:date:date:subject:subject
        :from:from:received; s=mail20150812; t=1612370854; bh=C9SJkyFqEs
        ER8CQT20DEacyLoTmusZfYNglvdMUK1uY=; b=EZoXfyww0GRcwMrJhlWBQ8h6GA
        7Xv8g8b0DGqTG89Lw3bL51or/do8Mm5hM5LilDLeSLXP/R9zunFOUHLopgmW2Ssl
        8efWhvJpSKObB2vmQFdzvQkQU05akqEXY2Fd09NJfEZKx90dRw020CkYrkbxQrv6
        dXnMusQ/AiODI4lxP8elT27vC3ldfyfEGek8bICAgo6RWwjEYsLkad7EJ8Qsp5ea
        8uQG2np5Kyj862dJeqLmeIJZchQtHzfLuRSzyDTD8Il0/OQwyJkC9rkXL34HuzMc
        rDOQU1RF06ovePeyQlb0UhRlOUrYwVfZ0gCQT1EflFnVp+gm3rjpxjT1vQWw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
        t=1612370855;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=C9SJkyFqEsER8CQT20DEacyLoTmusZfYNglvdMUK1uY=;
        b=SmG97IXy44jhBJQHPJNphFmrwu+wAGm806o4pX3Z40lMiQSrwU/LKz5Q95CBxmxJpKpcjl
        C4zrH6ZLy+UShXlCuItLOGIWFcaetG4BGZvPvdXWOaGtvVG40x5uTfEC8ObgF1CVckmfLe
        QPHyCJsNlZoP2Y/k+DUEPuzoWyYTJA9ioNtprJNtB8nM0qaRgwHTqe06BSdFArtBUQLBKQ
        5n1yKaQunUftf6QI2PBU7ysh9HtIaZoIhcazbaJYCd00CmAb8HG+vB4p98h5R+sAFl5DBD
        Lpw3DOxjKF8JMPK7DQV3T0V/rMfJQ0aj3azgTD31L2xk++g4JEma7Jk4HVYC8A==
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
        by spamfilter04.heinlein-hosting.de (spamfilter04.heinlein-hosting.de [80.241.56.122]) (amavisd-new, port 10030)
        with ESMTP id mWk_flSMrE_E; Wed,  3 Feb 2021 17:47:34 +0100 (CET)
From:   Alexander Stein <alexander.stein@mailbox.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Neil Armstrong <narmstrong@baylibre.com>
Cc:     devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/1] arm64: dts: meson: g12b: odroid-n2: Add I2C RTC device node
Date:   Wed, 03 Feb 2021 17:47:34 +0100
Message-ID: <2620452.Uv0mdyZMoP@kongar>
In-Reply-To: <c63a4da5-b598-2484-24bf-d7b4697e28e1@baylibre.com>
References: <20210202170846.81685-1-alexander.stein@mailbox.org> <c63a4da5-b598-2484-24bf-d7b4697e28e1@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-MBO-SPAM-Probability: 
X-Rspamd-Score: -0.75 / 15.00 / 15.00
X-Rspamd-Queue-Id: 6F2A717BF
X-Rspamd-UID: a08374
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Nevermind,

I just saw that an identical patch has already been accepted, but is not in
Linus's tree yet.
See https://patchwork.kernel.org/project/linux-amlogic/patch/20210111135831.2218-1-christianshewitt@gmail.com/

Sorry for the noise and best regards,
Alexander


