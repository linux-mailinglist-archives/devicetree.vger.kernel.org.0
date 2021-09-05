Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C094A401198
	for <lists+devicetree@lfdr.de>; Sun,  5 Sep 2021 22:50:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232840AbhIEUvj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 5 Sep 2021 16:51:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49166 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232018AbhIEUvj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 5 Sep 2021 16:51:39 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 60449C061575
        for <devicetree@vger.kernel.org>; Sun,  5 Sep 2021 13:50:35 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id bt14so9268903ejb.3
        for <devicetree@vger.kernel.org>; Sun, 05 Sep 2021 13:50:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=8btu/hOv6dXi44EH44L7rSR1DC0C7eQ1IIFPyx5nrNA=;
        b=SeXYzSZBjASmozxSE+0oEKD6AwRp3T5vrkQlAzHJ0YuMfpn+mKuAuGxfQJ/maXIMhI
         0ke8Z8ZTOoAaxaqIZP5Er8DLGq4J6ZEF0a8tdod/o08cwnxxFLuM8lEglR28ScPCctgz
         TZ4XHBWooK4tSmAH/XrOpy7AEmBzLrNdRR9pPZx6KcU5ieMcSTMHryZO6d7jDx56IBOW
         fkRrN5HjxxViJaz7x/w0PEy9wd21IEDcEdHNGTKcNLFyd2kEEDISCedQF3rw5I7m4TCF
         0sGMxLnQQLmLAY2ZflEMI5Cu/99NuVEEZ+fMXPRGPn9vWZgICwtkBwWtK8uRcLxmwgTM
         TfaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8btu/hOv6dXi44EH44L7rSR1DC0C7eQ1IIFPyx5nrNA=;
        b=NJVIaU5UThsf/U4DBczktyNAxZYa4JAYtMnCvrE+IwRSYEqyg1IhFTzSkIxczTU1uK
         bWg0VVOUhl1IFv6xHsPSRWUcHB5nsMkM/N4ab6Ez/qEVCd2rHMKzouGNe5JrXKoParZg
         6ea9jR0JOjrie/T0jgXIX2ZStHhK9H2jgprAelobh7BVunidCrw1/ea/6kd4Qx0MFJDi
         CNjPRxLvZmaf+AoU6d2BGyfo+1jlbiHvWyBoKB7zYSNNXThW8amkVc+xzu8WTfUGdmXy
         PEckhf0fDaasuWoZ/v0yhnJs1si2PN65/NEHu9tfa2Q2Hk2t8xoD8HkvwB9WW1AlS26J
         xJ2Q==
X-Gm-Message-State: AOAM53265dKeE2vnQgLb+3kugngj85Ub28HSw62ZBOlTTD2LWn5xqnPy
        RdJyRGkMNEDc4bnpk9Asy2NbRY1+y7o=
X-Google-Smtp-Source: ABdhPJxKq6YP1D88VofNTMWgEW6wg1qj/Q9NU/2B1Bl0FUTegx/Ys0PKJ5ArevuwylV2kQKI+2U9mw==
X-Received: by 2002:a17:906:304e:: with SMTP id d14mr7730565ejd.170.1630875033775;
        Sun, 05 Sep 2021 13:50:33 -0700 (PDT)
Received: from kista.localnet (cpe-86-58-29-253.static.triera.net. [86.58.29.253])
        by smtp.gmail.com with ESMTPSA id v10sm3346430edt.25.2021.09.05.13.50.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Sep 2021 13:50:33 -0700 (PDT)
From:   Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime@cerno.tech>,
        Maxime Ripard <maxime@cerno.tech>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
        Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 09/52] dt-bindings: clocks: Fix typo in the H6 compatible
Date:   Sun, 05 Sep 2021 22:50:32 +0200
Message-ID: <1783466.nJmK62rKpU@kista>
In-Reply-To: <20210901091852.479202-10-maxime@cerno.tech>
References: <20210901091852.479202-1-maxime@cerno.tech> <20210901091852.479202-10-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dne sreda, 01. september 2021 ob 11:18:09 CEST je Maxime Ripard napisal(a):
> Even though both the driver and the device trees all use the
> allwinner,sun50i-h6-de3-clk, we documented the compatible as
> allwinner,sun50i-h6-de2-clk in the binding. Let's fix this.
> 
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Reviewed-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej


