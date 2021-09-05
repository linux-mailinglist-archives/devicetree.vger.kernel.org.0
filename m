Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F2BD24011A1
	for <lists+devicetree@lfdr.de>; Sun,  5 Sep 2021 23:00:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231812AbhIEVBc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 5 Sep 2021 17:01:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51362 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230217AbhIEVBb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 5 Sep 2021 17:01:31 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B8F4C061575
        for <devicetree@vger.kernel.org>; Sun,  5 Sep 2021 14:00:28 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id h9so9302590ejs.4
        for <devicetree@vger.kernel.org>; Sun, 05 Sep 2021 14:00:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=q9+AkbsY9NnEKpIWX3yAjSUI4hEr21RRKFljVXH/lYE=;
        b=HhqB8bIuUIV7LSbPmIS19HoCrDiiJo2GJU+F8Xbxx+ao/cDjTerOMBO0W+GfY+xiap
         Z6kDe2RTkCEzNzd5HrVetqYX3wqHQDMciCFT/gZ/lgHC13qeQWToB6J9NejRB2+/3HPx
         O5ZtJAgXFWVI5yn/bu8SxeJ4RaX6hIyiXkAFVv6E3rBqdnMzOezH98oi4isyB6+GFP5N
         myLVLF1E/XRRnHYdl8t7mMNZrAQFNRXNYzFzhlnoms6XMBY5eAc4bVSrRNstmVwXJOci
         qnNAMKOqJlyBwaXTJ/A2vgE9ea0bXP/0w53DIs1Dgvqo2OY444fYk7yLMQveyPlPCgpq
         bMiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=q9+AkbsY9NnEKpIWX3yAjSUI4hEr21RRKFljVXH/lYE=;
        b=K03SZYK/zoMpzgsh/qpM1MUVNfAtJ3eXZIJofbzf0rlVdyTo/i+kbZY5tkwmqgWdwU
         dwGl3SXe6+TAIBSCOkZ243a8tUgey9ulAXbtHTLedm0jkhM8fFvHquwg4m41WUVUxWhZ
         LgM1DdLQL/zAX9Eui8LrTdUckYAEBmju7z+tuL4jW6WLttaW+jlWHQ7p96vZelO3/9Fn
         +UZnlCTB41peGc4X6/l198t+cQv3xUh7idOLC58Gy/lD4eqROGWHgSTFl00CKbnOR38O
         9d1oECn0C5+ApPmi2o2zrV8NspZiB03gndQncOKQdAjrVnMV1aEDIdHBGRLSYg+I5Nk/
         +Gsg==
X-Gm-Message-State: AOAM530Yawmc0/63bZKjKo7pyJ21QDYJLUNPYAQshY9ghtODjlZJAN5e
        28ezZMQurMhWggq0antLoCt+3Z/mwfYSlA==
X-Google-Smtp-Source: ABdhPJxbAhuFJIY5k4zjH8Fzn1WDryKBuKKJhZfiyf6FgnIyO3HWEaEp4/h8MBk+ICZ4Z6UI1V3kmQ==
X-Received: by 2002:a17:906:3a4d:: with SMTP id a13mr10272325ejf.220.1630875626680;
        Sun, 05 Sep 2021 14:00:26 -0700 (PDT)
Received: from kista.localnet (cpe-86-58-29-253.static.triera.net. [86.58.29.253])
        by smtp.gmail.com with ESMTPSA id z15sm3334960edr.80.2021.09.05.14.00.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Sep 2021 14:00:26 -0700 (PDT)
From:   Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime@cerno.tech>,
        Maxime Ripard <maxime@cerno.tech>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
        Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 34/52] dt-bindings: sunxi: Add CPU Configuration Controller Binding
Date:   Sun, 05 Sep 2021 23:00:25 +0200
Message-ID: <6297906.XQY1XBem9x@kista>
In-Reply-To: <20210901091852.479202-35-maxime@cerno.tech>
References: <20210901091852.479202-1-maxime@cerno.tech> <20210901091852.479202-35-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dne sreda, 01. september 2021 ob 11:18:34 CEST je Maxime Ripard napisal(a):
> Even though we've used the CPU configuration driver for some time and a
> number of boards using it already, we never had a binding for it. Let's
> add it based on what the driver expects and the boards are providing.
> 
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Reviewed-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej


