Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4990B4011A2
	for <lists+devicetree@lfdr.de>; Sun,  5 Sep 2021 23:01:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230217AbhIEVCY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 5 Sep 2021 17:02:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51570 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230109AbhIEVCY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 5 Sep 2021 17:02:24 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D542C061575
        for <devicetree@vger.kernel.org>; Sun,  5 Sep 2021 14:01:20 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id mf2so9260037ejb.9
        for <devicetree@vger.kernel.org>; Sun, 05 Sep 2021 14:01:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=zBRYaZ4WviWrI53U3QNUF2wh9tOZ8ve3QtPxnjXw8QM=;
        b=VEEEmcod0SOZ/0zoPOU6A+J8AT3sAbDE+uHh1alFgNy8VQ+pcLjABemKMzP3Cr76B4
         5d0AGPaBXoQeewlefQCKfFLdwyfftfMuR8IDFC39pjq7kCO03J46J5/cX4HDrNBj5OMO
         ZMJtJ4Pz67hyZrISkn3r9ENmCcW7oycK0GNM1cnaOlk7ynkr7WYypAqwe8Xw1LoyHYy/
         OpgCvEmT6IDGGhop8OEjKJSavSK/HWEZ9S0kJluLMGnRfmAnnqeXcrWomd0BEIlh63+a
         nuQaYmGBwsnk1gc7AQ3byz5a4cWZCAf2sY0NwASkauARRZPLvBDSsk3zQ4wIgyz/uFje
         MOEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=zBRYaZ4WviWrI53U3QNUF2wh9tOZ8ve3QtPxnjXw8QM=;
        b=QEfxLbXMd0IXhLaUxcR2UiBRXUYaB9aqhw4rijQtc/rWx8cVqBQ1dVrkkMBd5WCh8J
         /+/AlxH7+qwhzDov9Sc0ed2Uh9J12XhRL/jAr150cBuyeALf9758TKRS+99nO3ztGMH0
         LnqtdjEiHYi0/dULfaRCqYbelc3IPF5Bk5kEOZ5sP7VA25cZluXowGxFDb6kxXms2cyH
         DLkHYboz+0V7PBcOqNI7qe8wJpNkOBYkphlggRjEHIbSGYZ5zdhuVbOQDY8PuWCwk+1D
         WHk3OU8hZBcgxCdVHSwyg4r7U9TZ5PKhbprKPDk0Q5/rosh64/NkqbuKAvHdrRxOdxzj
         cvaQ==
X-Gm-Message-State: AOAM533IvI/g1BKbKQCzcufE7N80YyxJho1RnTNMJqvqda9HO7JcDCGQ
        P+VqkG11ndjXylpzs5UQw+zD9kxMmuZMgg==
X-Google-Smtp-Source: ABdhPJwOj7NkIP129k8AW6fNsK3PbQCmBfXGT18ArdUMqg2RPdkrYhld1AciqLXhhIo8InsKAYzu6A==
X-Received: by 2002:a17:906:f851:: with SMTP id ks17mr10706521ejb.556.1630875679124;
        Sun, 05 Sep 2021 14:01:19 -0700 (PDT)
Received: from kista.localnet (cpe-86-58-29-253.static.triera.net. [86.58.29.253])
        by smtp.gmail.com with ESMTPSA id s18sm2859942ejh.12.2021.09.05.14.01.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Sep 2021 14:01:18 -0700 (PDT)
From:   Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime@cerno.tech>,
        Maxime Ripard <maxime@cerno.tech>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
        Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 35/52] dt-bindings: sunxi: Add Allwinner A80 PRCM Binding
Date:   Sun, 05 Sep 2021 23:01:17 +0200
Message-ID: <2285228.JHccdbRnrP@kista>
In-Reply-To: <20210901091852.479202-36-maxime@cerno.tech>
References: <20210901091852.479202-1-maxime@cerno.tech> <20210901091852.479202-36-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dne sreda, 01. september 2021 ob 11:18:35 CEST je Maxime Ripard napisal(a):
> Even though we've used the A80 PRCM driver for some time and a number of
> boards using it already, we never had a binding for it. Let's add it
> based on what the driver expects and the boards are providing.
> 
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Reviewed-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej


