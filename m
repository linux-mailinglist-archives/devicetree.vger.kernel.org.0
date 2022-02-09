Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 106AA4AE81B
	for <lists+devicetree@lfdr.de>; Wed,  9 Feb 2022 05:07:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344347AbiBIEHi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Feb 2022 23:07:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46490 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347125AbiBIDjI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Feb 2022 22:39:08 -0500
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D207C0613CA
        for <devicetree@vger.kernel.org>; Tue,  8 Feb 2022 19:30:06 -0800 (PST)
Received: by mail-ot1-f53.google.com with SMTP id p3-20020a0568301d4300b005a7a702f921so650991oth.9
        for <devicetree@vger.kernel.org>; Tue, 08 Feb 2022 19:30:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=zEVQ7Rw/tzHyjS5OXKqbzOVt0A9B00mYmLifv1I8/aY=;
        b=YBEU6T5kQ8Hj1T6iZnQ8qcxDk9QBdK9BUvvXkE+0vTSWcCmo2DfYquzkA9PKSqQkRs
         SNdBJypBGg6twhEIUwEty4xDR56DoyydU4qTQX3CV/MqcGzTue0mtGRYfJQGk+EWqrei
         5+KI65E6iyguP5THrW0HKVLH50WfAHbvv+hbqchZkS1Q9d89BwdywqPSAWyHjSur7ryV
         e+b0wh1UuNlJYH+oOfkMQoSBDMSWw+ctp//6DEWlw+awHN30+FvJFl1E7/mEWLINiIaq
         ELZRm91TO19wX1mb7WxIqV7w8sn7RU1XqUW/2Yyks+6ts1u3pk5lh6yQXvCJ7cSR41Ba
         GAUQ==
X-Gm-Message-State: AOAM5334vUhB3PIUsxvc8IVjZGh3qw9Kxn4R65XyTEpBZ+iXMctjXBh3
        /12+ztTHvNOpnspDyQ33lPne3SYBqA==
X-Google-Smtp-Source: ABdhPJz66Nmvy9lEMz85Tl+OIfWEdYgsLXBYEqdh227dri4jtALkvNMeZsjk0ExxLb3Wwdb8nzKfEQ==
X-Received: by 2002:a9d:73d8:: with SMTP id m24mr188295otk.52.1644377405869;
        Tue, 08 Feb 2022 19:30:05 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id b20sm6021320otq.20.2022.02.08.19.30.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Feb 2022 19:30:05 -0800 (PST)
Received: (nullmailer pid 3582173 invoked by uid 1000);
        Wed, 09 Feb 2022 03:30:04 -0000
Date:   Tue, 8 Feb 2022 21:30:04 -0600
From:   Rob Herring <robh@kernel.org>
To:     Sascha Hauer <s.hauer@pengutronix.de>
Cc:     linux-rockchip@lists.infradead.org, kernel@pengutronix.de,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Andy Yan <andy.yan@rock-chips.com>, devicetree@vger.kernel.org,
        Sandy Huang <hjc@rock-chips.com>,
        Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
        dri-devel@lists.freedesktop.org, Peter Geis <pgwipeout@gmail.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 14/27] dt-bindings: display: rockchip: dw-hdmi: use "ref"
 as clock name
Message-ID: <YgM1PBsETHleuSNt@robh.at.kernel.org>
References: <20220126145549.617165-1-s.hauer@pengutronix.de>
 <20220126145549.617165-15-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220126145549.617165-15-s.hauer@pengutronix.de>
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

On Wed, 26 Jan 2022 15:55:36 +0100, Sascha Hauer wrote:
> "vpll" is a misnomer. A clock input to a device should be named after
> the usage in the device, not after the clock that drives it. On the
> rk3568 the same clock is driven by the HPLL.
> This patch adds "ref" as a new alternative clock name for "vpll"
> 
> Changes since v3:
> - Keep old clock name for compatibility reasons
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  .../bindings/display/rockchip/rockchip,dw-hdmi.yaml      | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>
