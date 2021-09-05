Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E6E1440119D
	for <lists+devicetree@lfdr.de>; Sun,  5 Sep 2021 22:53:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238237AbhIEUyN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 5 Sep 2021 16:54:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49752 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238235AbhIEUyN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 5 Sep 2021 16:54:13 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F006C061575
        for <devicetree@vger.kernel.org>; Sun,  5 Sep 2021 13:53:09 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id n27so9257295eja.5
        for <devicetree@vger.kernel.org>; Sun, 05 Sep 2021 13:53:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=9ljZ8+RANHlld2rMHzAAZvX+VCKt9mh8YRnM8ObNNi8=;
        b=AwDiAm+MZAfN3U8/2FJ0B1XxJUmHBKwUrTCcxurS1X8dy00+a8JjkULJ1EJ+KWvAt8
         mtJQt9Fr2bxESryC0YbvxmiBVEtEIbP15KMgza+Du1HtD8X+gcd9gdKHijMkHfhXvu9s
         faeLglezYk5DJoqW+jxCUTO9z12dJy2aolrZTJh6NzqAhPpk/iU3/nibzFuhYVE2inhR
         FLaKl3ADGjLV+U/aUlFXPY/XSZzXtxPKqQe7p06HP/8pgUhHzqMgMZjin2zGcdgUPQ09
         n2AwWC2NwEpyTI3IXfiW2BikWRKxODudoyDPA8sNGFHe6DN+LkzVd93Tlr+/xwbSzxje
         cAkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9ljZ8+RANHlld2rMHzAAZvX+VCKt9mh8YRnM8ObNNi8=;
        b=YaH9Zuw2/BqLGB2ikXr0JwylfCDrZcnGnncGdLohxrxl2JMfSood5UsgbadB3hWZ/d
         hUoJVjeJoM5Kw/DagSMq+3SO7pX/i46u3qraFF8FCIBTKutnvQg8xw2neKTtfxf5zC4/
         dLvu+dOpoDm2Oga9Y2iTWotVWzW/jFFDwJBnjfk24fZyHsIAzf1RXQFu0fH7cLhvhxWt
         OTJ83K6DQpK3/PkrOVL+XeQQkREDau1up0epsMcWQutWBlejcDBDjyMDaYokNdFDB6bc
         UkyIZK07LIsI0sfw2oFcbLGHcMcu5rjm0voQFFUG+W5eOZOLlD5WDB/JmRK/iOyy5mDH
         EKhQ==
X-Gm-Message-State: AOAM533r04CK3Rxf/R3ZlxMAYn+hE772kuXdOoPzK9RmIPBmbBy4q2G/
        aTqgxRw/bfHzrJyliMIJZp3aaQVojVA=
X-Google-Smtp-Source: ABdhPJy0BPBxOoBqR7TC7aZKMWPQhYu6BxQ5PlvkipJXO0ZcRNiv0d7pn+nK4aRoxapkyD4cVqmNUA==
X-Received: by 2002:a17:906:3157:: with SMTP id e23mr10496683eje.29.1630875188053;
        Sun, 05 Sep 2021 13:53:08 -0700 (PDT)
Received: from kista.localnet (cpe-86-58-29-253.static.triera.net. [86.58.29.253])
        by smtp.gmail.com with ESMTPSA id i13sm3282309edc.48.2021.09.05.13.53.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Sep 2021 13:53:07 -0700 (PDT)
From:   Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime@cerno.tech>,
        Maxime Ripard <maxime@cerno.tech>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
        Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 25/52] dt-bindings: interconnect: sunxi: Add R40 MBUS compatible
Date:   Sun, 05 Sep 2021 22:53:06 +0200
Message-ID: <2929051.kjfr5l7sgv@kista>
In-Reply-To: <20210901091852.479202-26-maxime@cerno.tech>
References: <20210901091852.479202-1-maxime@cerno.tech> <20210901091852.479202-26-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dne sreda, 01. september 2021 ob 11:18:25 CEST je Maxime Ripard napisal(a):
> The R40 MBUS compatible was introduced recently but it was never
> documented.
> 
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Reviewed-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej


