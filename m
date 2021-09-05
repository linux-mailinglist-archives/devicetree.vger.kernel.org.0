Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A6D234011BC
	for <lists+devicetree@lfdr.de>; Sun,  5 Sep 2021 23:14:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238205AbhIEVPl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 5 Sep 2021 17:15:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54790 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231335AbhIEVPk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 5 Sep 2021 17:15:40 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1C70C061575
        for <devicetree@vger.kernel.org>; Sun,  5 Sep 2021 14:14:36 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id e21so9276373ejz.12
        for <devicetree@vger.kernel.org>; Sun, 05 Sep 2021 14:14:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=1yG2+LjVN3Ir25+Ps6yTnd92PTIajdAi+QOa+XjeNtA=;
        b=C1FI434+RN7x5Qcgh1WMpuwFguYphxDpU5iVb0om0mo/pCSuT4wQVG+X6nYsEd16+j
         S6Bfhz6iMYwWffsHUl4ctrAwjjNt6SlWbPGNmp3ACJ+ij7NNe35jsqhgtdwXYFA24gSL
         zYWHpRAVDavT3VfceLSBOfYNaopMJj6JYx/AvCfItxziOS8+Xgldl+pMgNOvimmQJNI4
         HCfXQaW52WuWclqPv9NwTtcqfa2IL+pQU/BzV89cshpThbz0JW5zy5DSd6ArRXFLnrSK
         wTkzQKTHeLiVsq+RPE+WM7T3svh5SKico8OuFUhnjlUwUi9udrS9lvYAdCekeZZfNjxS
         Gwmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=1yG2+LjVN3Ir25+Ps6yTnd92PTIajdAi+QOa+XjeNtA=;
        b=oz9l72c9ZW/+0SLn6deiFXqzojS8YN8uMbXZYFGkG3XVjRGL61w35qh0ahNdzuJJa4
         qPsFWEwzx8y5L2B1UBbph00Y0zOWYsQa0tEhS711ZzHaWvLtmr09aHoOUuiU3c1BiRfj
         KctT8w9vLmB1kshNxDeza3b8Wx50trEI+9cnGnKABV9nL8W97orPiP25ygqFQDrxsMnE
         PEWNNCiwwHjZpipUJOh33f+1woQrh1LLPrI028rctDQNNSASABSHEm3zieorU/m+L33f
         6P4srZFsqQJM0y+2u5qjJJWwZQFPc1mMnwwe/B7nLurq4F6dVP+4M5FtjXVOuAWvvysv
         eQyw==
X-Gm-Message-State: AOAM531Ac8it6jWJDH8syYYxJWfqJNaHkIMI4Cuo5rf+qFgJTwu2++Ot
        rX+sQoJyuYaN7nYrtxOex5hKT7I4QOkgEQ==
X-Google-Smtp-Source: ABdhPJxDt5VVzSABM7wOJabkUDbicuow1p74VhcRWavAwjV2kAzag1/+JpMH0HFAO41Epgbf6FimvA==
X-Received: by 2002:a17:906:7208:: with SMTP id m8mr10417113ejk.82.1630876475589;
        Sun, 05 Sep 2021 14:14:35 -0700 (PDT)
Received: from kista.localnet (cpe-86-58-29-253.static.triera.net. [86.58.29.253])
        by smtp.gmail.com with ESMTPSA id cr9sm3348649edb.17.2021.09.05.14.14.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Sep 2021 14:14:35 -0700 (PDT)
From:   Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime@cerno.tech>,
        Maxime Ripard <maxime@cerno.tech>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: Re: [PATCH v2 51/52] arm64: dts: allwinner: teres-i: Add missing reg
Date:   Sun, 05 Sep 2021 23:14:34 +0200
Message-ID: <5261980.QV9FR7U8TA@kista>
In-Reply-To: <20210901091852.479202-52-maxime@cerno.tech>
References: <20210901091852.479202-1-maxime@cerno.tech> <20210901091852.479202-52-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dne sreda, 01. september 2021 ob 11:18:51 CEST je Maxime Ripard napisal(a):
> The anx6345 bridge mandates that the input port is named port@0. Since
> we have a unit-address, this implies that we need a reg property with
> the same value, but it was found to be missing in the Teres-I device
> tree. Make sure it's there.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej


