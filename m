Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5FABB4011C8
	for <lists+devicetree@lfdr.de>; Sun,  5 Sep 2021 23:25:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238393AbhIEV0F (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 5 Sep 2021 17:26:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57022 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238314AbhIEVZz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 5 Sep 2021 17:25:55 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2FE0BC061757
        for <devicetree@vger.kernel.org>; Sun,  5 Sep 2021 14:24:51 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id g8so5414780edt.7
        for <devicetree@vger.kernel.org>; Sun, 05 Sep 2021 14:24:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=3+IkeFkLquiPGHbwEHxlbTFYuH+7T3Tvl8HBpeiPyhY=;
        b=KwZcI9AKJw7a08b4tASK9tTHZ58h5so3HLb6HaNDE3chV3InOxHRTA+7OvKHTmJrZH
         VMZC57sEkxC3AXVIF0IfJeoNZvwRUqbboFRAI83lqO/QakroawlsujxLW22HmLiaZnaP
         A+d5ZMN9DoEv4wxacGMjrk1XYEzVNVuzUefj0MldDSSpE4cs+bE2xFSQS3nZhmjRR0tE
         b+0SEmlRLNo381qyQQg2QlhuEkAjZRbD28p/E4cCcK7s1caJEfuTkBrRr71bl2H0DlHz
         OFhYsSEyTCx8jQdfDsvg9co95IyaGhn9NumQNJdCa8evBzYBEHO2NMElPtDj2RnubV4c
         7ZCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=3+IkeFkLquiPGHbwEHxlbTFYuH+7T3Tvl8HBpeiPyhY=;
        b=qnmKEx2GwuMQgI/UAlDKZGdoO1ewMBrbxDfH6GCf6ruC6PNZXKdb05o1gMZZV81+4B
         WVA5j1fvqG1qQUFX4U7+rmvNs+ptBr6GSO/VxhSiSZqNNzD+QcR3E+sn0UsFk0rGnxFa
         sSLa4gWzjA1vNwWgXjPbBWIb+R0WRH3gfoW1jm5E6svqwAaLePp27nuMeXxRkFuX/cMG
         ndyFeu7FqC4YqIoy2YbTtV77ZcvrNZBtbkrgLXP8veTg2crD9DTnmY2/dic03G2vYpOG
         GMao9DINQAEc374fAtpp19iqIKdV9ZTQerue4sRSJCCt4RqxpN2fZCMl6V9ZoCGm4lkT
         EMXg==
X-Gm-Message-State: AOAM530FQEYdi6BcpFXIIvYgXbztzV4yHGhmaKfldjxU41eNTmXwfInH
        Fc47t2mrQTO++Q4SjU8rPjRx5tfEt/d7AA==
X-Google-Smtp-Source: ABdhPJybhZbphXu8/dONu6cylUJtia0rWSp5PJN1ypQBWHjO4ynpEQJpolPOY+lcnAU7oLDuBYaBbQ==
X-Received: by 2002:a50:ec0d:: with SMTP id g13mr10201928edr.233.1630877089832;
        Sun, 05 Sep 2021 14:24:49 -0700 (PDT)
Received: from kista.localnet (cpe-86-58-29-253.static.triera.net. [86.58.29.253])
        by smtp.gmail.com with ESMTPSA id o23sm3397574eds.75.2021.09.05.14.24.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Sep 2021 14:24:49 -0700 (PDT)
From:   Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime@cerno.tech>,
        Maxime Ripard <maxime@cerno.tech>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: Re: [PATCH v2 52/52] arm64: dts: allwinner: teres-i: Remove wakekup-source from the PMIC
Date:   Sun, 05 Sep 2021 23:24:48 +0200
Message-ID: <3434514.rl2y26N2pE@kista>
In-Reply-To: <20210901091852.479202-53-maxime@cerno.tech>
References: <20210901091852.479202-1-maxime@cerno.tech> <20210901091852.479202-53-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dne sreda, 01. september 2021 ob 11:18:52 CEST je Maxime Ripard napisal(a):
> Neither the binding nor the driver make any use of the wakeup-source
> property for the AXP803. Remove it.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej


