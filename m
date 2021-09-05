Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 16ABC4011AC
	for <lists+devicetree@lfdr.de>; Sun,  5 Sep 2021 23:06:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238240AbhIEVHw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 5 Sep 2021 17:07:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53060 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238210AbhIEVHw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 5 Sep 2021 17:07:52 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5DBEAC061575
        for <devicetree@vger.kernel.org>; Sun,  5 Sep 2021 14:06:48 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id mf2so9281045ejb.9
        for <devicetree@vger.kernel.org>; Sun, 05 Sep 2021 14:06:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ipBZ+WenqrE/EOLksXQTZyhcf0AWEFSjVG/8wRrCLCc=;
        b=WH+ij2FeiAGSvrJex47y/gbn0HuAYxtqEoh6lxz4AULgNV5A7KO7JZgknGTz/bPqLY
         x6zDM3Mu/LwNmpvjAjsT0HDYFfii2XZu+SQcRGxq4dB0IRoUdoU5z8q1yCj3Jg/6Nxeo
         NzKYMA/lMeH+rG87r5O2OpziMZlU6BX9/K/AiyEg+siuhSEZ+sLXUcPgsfwNZwnGqvw/
         kuB4nD7f/n1LliCyy/SJXucOvV1K5odS9UwtybepvwVHFtvvAE/G97ew0zwEqt0MUYvM
         mP0zcSNi1MhuPiP/OhZBl2W9d1w58ykrETvmcuP6Qe8LUzb6HD0dGdss/IQjp/oHbd1M
         rttA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ipBZ+WenqrE/EOLksXQTZyhcf0AWEFSjVG/8wRrCLCc=;
        b=aY/M71nrM+YMiV3y+6T1CbeTL3rcRTg2S5Z+ohJyQ3pF33/DK/Nv6mhlnhWr2P+9Eg
         MP2q0UdfH6HNvdoWhuSmmOadeu31pA7MuRnCeaoyWLb42FR1YE1bqzJDeB0As60NqrfL
         yTV0jqpkSeNjZGm7uO/+BneXJ8cbfHcfzLnPnOaQMR+Nr4hArfQWewaE9pVGTBu+1VwY
         8sDDQ3gEQAS6QAyVxrrTKcy+ntf81g8eMRWCf6InzRKbpr4+D+088tVWhnLj3h+Tb0rk
         d5CyjPsD+g5bPDbhWXcYK1LB/z+RpMRpbdiNxE0MTWn9VN0IXPrA+EJfcHWvAEZ/132m
         pKew==
X-Gm-Message-State: AOAM533atZfev7aldbVcmBvAbvS/Q1WdinCbC9Xi/YbI0K1Bjh0z9IqQ
        vJGynCGP3gTWx3O+3uETsm2deNRezM4mbw==
X-Google-Smtp-Source: ABdhPJzeQWe22YAgYYdagjxgjqsxtPGWAW44nUqi4HDjIP6ENYzhrbKIxZAdtcdJBX5IfGWRbf3msA==
X-Received: by 2002:a17:906:2c07:: with SMTP id e7mr10580736ejh.87.1630876006990;
        Sun, 05 Sep 2021 14:06:46 -0700 (PDT)
Received: from kista.localnet (cpe-86-58-29-253.static.triera.net. [86.58.29.253])
        by smtp.gmail.com with ESMTPSA id b2sm3396934edt.74.2021.09.05.14.06.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Sep 2021 14:06:46 -0700 (PDT)
From:   Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime@cerno.tech>,
        Maxime Ripard <maxime@cerno.tech>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: Re: [PATCH v2 43/52] ARM: dts: sunxi: Fix the SPI NOR node names
Date:   Sun, 05 Sep 2021 23:06:45 +0200
Message-ID: <6132201.v4zFc0b8HB@kista>
In-Reply-To: <20210901091852.479202-44-maxime@cerno.tech>
References: <20210901091852.479202-1-maxime@cerno.tech> <20210901091852.479202-44-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dne sreda, 01. september 2021 ob 11:18:43 CEST je Maxime Ripard napisal(a):
> According to the SPI NOR bindings, the flash node names are supposed to
> be flash@<address>. Let's fix our users to use that new scheme.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej


