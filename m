Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BE3E44011AA
	for <lists+devicetree@lfdr.de>; Sun,  5 Sep 2021 23:05:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238232AbhIEVGF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 5 Sep 2021 17:06:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52650 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238210AbhIEVGF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 5 Sep 2021 17:06:05 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D051BC061575
        for <devicetree@vger.kernel.org>; Sun,  5 Sep 2021 14:05:01 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id e21so9243660ejz.12
        for <devicetree@vger.kernel.org>; Sun, 05 Sep 2021 14:05:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Ls/V7JPVqMEneHZgRSvDLKOE16VtalYnw5jEFfYhTaM=;
        b=Q7fAKkI3pW1oxb+tEBJfmCZuhevXvBOTpN9egJUMXAi35BD04fDX4We9ZpJ7dZBO4n
         wFOCJTxhLQp6cLmaqfcLWAbD94feosQz1kSdqf/evLLGOAQvsNIgVCfOid33Ab4UwWdQ
         yXDl76TVDNjtbd/bpQFUv1On00Fq59WQFHxvlkk03UNL9QdqoyJrT6GfEb12fQiK+KlH
         wvbrqshHkm25nTiqXPwrJl5VjWB6W7V67spUJ6x+O3tPjhTdcrh60dGlfB+BX6kvkNYH
         fZ8ri7z3HfxxPfZdaY4EBQ18DzeFM9IV7Jf3WsMm6/FPRaxIi4Rp6i+NLp4UAEq9zFdK
         vjHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Ls/V7JPVqMEneHZgRSvDLKOE16VtalYnw5jEFfYhTaM=;
        b=boDFamrXc/RNfS+2I6zGTn7LmvWNUFBGIzZYDszBrdSrEwziOr5bMbxVYAPfHh44GG
         tFd5jS0RjffuTCDts/Izz0sJul+2Jn2Zp/AWdfIpcRutwyTkz0tVoEgdByw3ho6mmYza
         +Mj8LM30XznIoqBsT+R6aUz0QWd1ZkoSos753i9jLi9dglM4PlnxBSvf2+gXJ6rpXuQ6
         VqV/hMVrZO4du9JvDaH6bb1yEXrY+By5vBW5aO+h4C+Q2Nmd7bM877/pdNmgLA2cwbeC
         mmHiYlsiLeFRPaEnnpgy48+5hQEf8vfiQagBK9WYwTtSu9hf8uPFlbcwTdp9jmxdNxWf
         Unsw==
X-Gm-Message-State: AOAM533fej/d3/pHAS/auIQoZQ/k3xq1QeN2oaeCPrAd7BddjMHguKNH
        SLSr8xDQ5q7heVkfp/LkBbkVKlaiR5uo5A==
X-Google-Smtp-Source: ABdhPJwZx6aNejuKsCcZ6wuJVUCMnXGRsGZRwAD32mpHju5YOp9hYIYgrMKFNRbnwOk9LcsN+tMzaw==
X-Received: by 2002:a17:906:3bc1:: with SMTP id v1mr10191157ejf.182.1630875900427;
        Sun, 05 Sep 2021 14:05:00 -0700 (PDT)
Received: from kista.localnet (cpe-86-58-29-253.static.triera.net. [86.58.29.253])
        by smtp.gmail.com with ESMTPSA id e19sm2794386eja.48.2021.09.05.14.04.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Sep 2021 14:05:00 -0700 (PDT)
From:   Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime@cerno.tech>,
        Maxime Ripard <maxime@cerno.tech>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: Re: [PATCH v2 41/52] ARM: dts: sunxi: Fix OPP arrays
Date:   Sun, 05 Sep 2021 23:04:59 +0200
Message-ID: <1707026.1T6aL4z3T8@kista>
In-Reply-To: <20210901091852.479202-42-maxime@cerno.tech>
References: <20210901091852.479202-1-maxime@cerno.tech> <20210901091852.479202-42-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dne sreda, 01. september 2021 ob 11:18:41 CEST je Maxime Ripard napisal(a):
> Even though it translates to the same thing down to the binary level, we
> should have an array of 2 number cells to describe each OPP, which in
> turns create a validation warning.
> 
> Let's fix this.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej


