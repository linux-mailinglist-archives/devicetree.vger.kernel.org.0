Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 730794011BB
	for <lists+devicetree@lfdr.de>; Sun,  5 Sep 2021 23:14:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238143AbhIEVPP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 5 Sep 2021 17:15:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54686 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231335AbhIEVPO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 5 Sep 2021 17:15:14 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E0E98C061575
        for <devicetree@vger.kernel.org>; Sun,  5 Sep 2021 14:14:10 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id me10so9302756ejb.11
        for <devicetree@vger.kernel.org>; Sun, 05 Sep 2021 14:14:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=A6OT/1VPOqW7HnlI8aAXXpsyrDDODPfmEqrIYUncbx4=;
        b=QfV1tRXoKHizFk49ffqN+pMRKcll0S87XRsStiUJwragxQIBtpXkA5rY9pEfxeLgBP
         kXQFofTZvpI+3tTIu0N7ICt96AI5KDRcrYgiRvcfol7tkkNF0xzelA9hqyipgxwOdUhQ
         cIz1Jpja7buZO/yogo1IpnHB0sFVYWZ+VwsWu9nqRt2Af1gX4w1RkXMb2l6auE5M0nlS
         dLbBIL1F73SvQey1wk6ot4ViWQmkVpvMJWSRLKB/J1bmxV9nGxAbv7VYkOjVjuy37lQN
         okL7Om5VpswQB6WrdPbMGZpm49lQXTX4J2ge+KiG1oaPKFJtPmbLoy1Ec6L1QBGn4F2s
         tEgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=A6OT/1VPOqW7HnlI8aAXXpsyrDDODPfmEqrIYUncbx4=;
        b=uG0hiZcKWH5kv3s6anf6RcuQddUNQf+/m+wSehH9Hr/7J9dnegwVc6jRKL1K5BvTDL
         XwrFtqZo4nlWXzRnDO5nGoAAth6gAfVJNpuz8+IWVltGgoqJZ++hYJrr2oREwG+AEzhm
         MnZcDNSrjcZhqgaJ5+dTwEJ5lfLBb1Nb4YeEA6IBOzTvolLKsH0nXqFyC1aR4VRwTuJn
         jSCI0YD8EfjWIg0WsrQU3m8kZBA8LArXIOydBi1TEjbaq9rmvWs5zeZhN9+Rd52zPXqy
         KA1uprjKApDL3v72z9HW2k+laTGR4YRBIJwEGSi29pHL75dwBSjcQHLe0kpiPIVEDFtj
         dHWw==
X-Gm-Message-State: AOAM531PbBaUDf+J3cp2eGmU+iFZoIvoeZoCdu+9jbjacQiNfYAtreZe
        S8jM+FSKdAbUXYp4sk3TxirlofH6I+84eA==
X-Google-Smtp-Source: ABdhPJxgl54tKtb+bmJua+YBmv6dLhbG0laa7f0z0GI0dC5kcRX1KIvxKYL9myU0ZYDiwX8gpaJ+mQ==
X-Received: by 2002:a17:906:2bcf:: with SMTP id n15mr10474578ejg.414.1630876449575;
        Sun, 05 Sep 2021 14:14:09 -0700 (PDT)
Received: from kista.localnet (cpe-86-58-29-253.static.triera.net. [86.58.29.253])
        by smtp.gmail.com with ESMTPSA id q5sm3381574edt.50.2021.09.05.14.14.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Sep 2021 14:14:09 -0700 (PDT)
From:   Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime@cerno.tech>,
        Maxime Ripard <maxime@cerno.tech>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: Re: [PATCH v2 50/52] arm64: dts: allwinner: pinetab: Change regulator node name to avoid warning
Date:   Sun, 05 Sep 2021 23:14:08 +0200
Message-ID: <2097331.FtbFhWGVOK@kista>
In-Reply-To: <20210901091852.479202-51-maxime@cerno.tech>
References: <20210901091852.479202-1-maxime@cerno.tech> <20210901091852.479202-51-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dne sreda, 01. september 2021 ob 11:18:50 CEST je Maxime Ripard napisal(a):
> The fixed regulator clock name has a unit address, but no reg property,
> which generates a warning in DTC. Change its name to remove its useless
> unit address.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej


