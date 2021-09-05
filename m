Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E198D4011B0
	for <lists+devicetree@lfdr.de>; Sun,  5 Sep 2021 23:12:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235591AbhIEVNF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 5 Sep 2021 17:13:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54186 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231335AbhIEVNF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 5 Sep 2021 17:13:05 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E7B7C061575
        for <devicetree@vger.kernel.org>; Sun,  5 Sep 2021 14:12:01 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id t19so9311367ejr.8
        for <devicetree@vger.kernel.org>; Sun, 05 Sep 2021 14:12:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=SDn8epFHNresGqBzwW+P38eewMq83n0Rzq9RJj2Y6TM=;
        b=acKJf1DAJRo7/Bwxc9OiRTXxyCWxWNzxoG446HnmoCZfMRPbYStgvOyi5LEhmDjW1P
         sc4nC+fWDXQbLrhvXpdj4GKIxLRNfc2rMRDoO303qN0NwQVD0k3GIVMjKMArMq3MREWY
         48XA6Y11eazRbhUUxgnG5SZTQNKWeLxyOik4MiX0oSlQBRpuSlxpaBMpWd85ysLbMSzF
         wb8xg4uWadBvL7h09w/Jjs0cyNVziSQDZeK077LJKrJ7964XXYdHbPmDQ3mjEPqbCnLQ
         BIOwWiSEVkcsnmTHTNPuHAgf3rEqMpPzXNFUD87Wlw/biNQqUBxnfmcZ9ge+O/8TptAc
         ni6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=SDn8epFHNresGqBzwW+P38eewMq83n0Rzq9RJj2Y6TM=;
        b=AkFp1No2c9luAWsd/Yu//wmZWmiRWc3hjZLOi97T5SSj+vNYQ7wHVv9zJXtHTNk9yK
         UyisSAKsda61iUTSS+xE+HPr0cCUMbZQhJOgiYzs/WqP+GLayrB+pMDx2DBep5Irfu1p
         Y+IdimwulcFLLJ4tlWZd97fydGeVdjEjOI2z1xoeVK/nvehPZf1hTPT9krX/uu2fqcGs
         wm8oWzPVPVJwAN5K2fnD8+DQJWJ4iilamRUpcrrtOqwXUCu3lOJAX8E/bhVMJ7L12Ihb
         n3659e4ysIMsuSzmbqgndRH6CccIymzcaPwOsPYEYzs6fGnZq2B/9Rdv7WTt3VXC4syA
         +QGg==
X-Gm-Message-State: AOAM530DiOgRfIOC7OMUsAScoSjxO3s35zbUPER79nhqgw/xeg77/hxl
        gLGzUIQqv8gNBXPxxADScYdCJNuF3pNGSQ==
X-Google-Smtp-Source: ABdhPJz21Tg3CDZXhGdqUZ1USQcr948aRxfKRriVELcSJvOwGxEey2k91ikckNhckEq4kEMW7foPrA==
X-Received: by 2002:a17:906:a04f:: with SMTP id bg15mr10770506ejb.417.1630876320040;
        Sun, 05 Sep 2021 14:12:00 -0700 (PDT)
Received: from kista.localnet (cpe-86-58-29-253.static.triera.net. [86.58.29.253])
        by smtp.gmail.com with ESMTPSA id ca4sm2821063ejb.1.2021.09.05.14.11.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Sep 2021 14:11:59 -0700 (PDT)
From:   Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime@cerno.tech>,
        Maxime Ripard <maxime@cerno.tech>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: Re: [PATCH v2 45/52] ARM: dts: tbs711: Fix touchscreen compatible
Date:   Sun, 05 Sep 2021 23:11:58 +0200
Message-ID: <4008156.BEkMtpGRWe@kista>
In-Reply-To: <20210901091852.479202-46-maxime@cerno.tech>
References: <20210901091852.479202-1-maxime@cerno.tech> <20210901091852.479202-46-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dne sreda, 01. september 2021 ob 11:18:45 CEST je Maxime Ripard napisal(a):
> The edt,edt-ft5x06 compatible has never been a valid compatible
> according to the binding. Let's change for one that is.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej


