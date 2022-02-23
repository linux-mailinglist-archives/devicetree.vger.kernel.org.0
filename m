Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 138304C17D1
	for <lists+devicetree@lfdr.de>; Wed, 23 Feb 2022 16:55:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237473AbiBWPzj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Feb 2022 10:55:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44060 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236231AbiBWPzj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Feb 2022 10:55:39 -0500
Received: from mail-oo1-f48.google.com (mail-oo1-f48.google.com [209.85.161.48])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A269C1CBE
        for <devicetree@vger.kernel.org>; Wed, 23 Feb 2022 07:55:11 -0800 (PST)
Received: by mail-oo1-f48.google.com with SMTP id r15-20020a4ae5cf000000b002edba1d3349so22850446oov.3
        for <devicetree@vger.kernel.org>; Wed, 23 Feb 2022 07:55:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=AY9Rst+R0XJdUuRWhEYpgduaPwSTvm033nlzuhQ6N64=;
        b=c7zZZYom3fXjJbl9WWM1CofGgYxG6oHuxjkZ7LEQg4yt3f9NIoXAf7K7ru7PLgOJ2g
         xQ70R9IUvTukVfZ+FvFXVNRfDiAGT+eXv4bHKtxm53KYf1LfqKe7V7nqWXLBkjNT7n+2
         xPLmG3g+maBPOj2Kew9ZKnGIKD85DaWbnPsKtdHQSW/ja0pRAvOzvsprS3N+eRT3Ybvw
         NHTnFR/LSefAiEQSTW0gM04LKxF3XPvTJfKKOQEdr2+Asf/lI4teE60C8kdT3K0vOuch
         FWbUdiT1s50zhFgw7/qUzTtJ6+0ufjs9cBVc24ijictlVcQ1hVW5kIo3f/LSNwMHR1UX
         cWsA==
X-Gm-Message-State: AOAM533Rjihw6ZI66IKCK+xbkSIhqLXhPgwjvlDW6acGP0AFIihIIcHF
        KrI7o6xjeicbYcyY6SMdcQ==
X-Google-Smtp-Source: ABdhPJx3cqGQBNB+wBd73wt4IykRtWY7bNDjTg6vOPJPvXlyPhl5eAy07J3mvRkLnak1pIURW1OOWQ==
X-Received: by 2002:a05:6870:2b16:b0:c2:8be1:8b0f with SMTP id ld22-20020a0568702b1600b000c28be18b0fmr129502oab.2.1645631710861;
        Wed, 23 Feb 2022 07:55:10 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id f40sm37321oaq.34.2022.02.23.07.55.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Feb 2022 07:55:09 -0800 (PST)
Received: (nullmailer pid 1001324 invoked by uid 1000);
        Wed, 23 Feb 2022 15:55:08 -0000
Date:   Wed, 23 Feb 2022 09:55:08 -0600
From:   Rob Herring <robh@kernel.org>
To:     Sascha Hauer <s.hauer@pengutronix.de>
Cc:     Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Peter Geis <pgwipeout@gmail.com>,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Sandy Huang <hjc@rock-chips.com>,
        Andy Yan <andy.yan@rock-chips.com>,
        Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
        linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
        Michael Riesch <michael.riesch@wolfvision.net>,
        dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v6 23/23] dt-bindings: display: rockchip: dw-hdmi: fix
 ports description
Message-ID: <YhZY3BV6WE2+XgnT@robh.at.kernel.org>
References: <20220217082954.2967889-1-s.hauer@pengutronix.de>
 <20220217082954.2967889-24-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220217082954.2967889-24-s.hauer@pengutronix.de>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 17 Feb 2022 09:29:54 +0100, Sascha Hauer wrote:
> Current port description doesn't cover all possible cases. It currently
> expects one single port with two endpoints.
> 
> When the HDMI connector is described in the device tree there can be two
> ports, first one going to the VOP and the second one going to the connector.
> 
> Also on SoCs which only have a single VOP there will be only one
> endpoint instead of two.
> 
> This patch addresses both issues. With this there can either be a single
> port ("port") , or two of them ("port@0", "port@1") when the connector
> is also in the device tree. Also the first or only port can either have
> one endpoint ("endpoint") for single VOP SoCs or two ("endpoint@0",
> "endpoint@1") for dual VOP SoCs.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> 
> Notes:
>     Changes since v5:
>     - new patch
> 
>  .../display/rockchip/rockchip,dw-hdmi.yaml    | 24 +++++++------------
>  1 file changed, 9 insertions(+), 15 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
