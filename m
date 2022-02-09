Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 695614AE80E
	for <lists+devicetree@lfdr.de>; Wed,  9 Feb 2022 05:07:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245743AbiBIEH3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Feb 2022 23:07:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44054 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346484AbiBID3Y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Feb 2022 22:29:24 -0500
Received: from mail-oo1-f44.google.com (mail-oo1-f44.google.com [209.85.161.44])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3EA97C061576
        for <devicetree@vger.kernel.org>; Tue,  8 Feb 2022 19:29:23 -0800 (PST)
Received: by mail-oo1-f44.google.com with SMTP id p190-20020a4a2fc7000000b0031820de484aso1017517oop.9
        for <devicetree@vger.kernel.org>; Tue, 08 Feb 2022 19:29:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=vrlWV0rjTSnyjpdLzphWMOjXtr2TKbwoXndPu2RhBe0=;
        b=54sR1MwGnB6/+3MSRpFxqPZbvTdArJU3yzoucdEH76Ju2xIRHa8YN4QXsYFGhfCRWn
         2ZHhv/G55d/kwKdkrTcvjQMDB8zppHN8vzonjBJC3oQVj0VtogOM+7pE66LfyWu7e1po
         BtnwHNuKVCedsKgN7trroseyw3hS+TGhLqmyYitB8zV8sqCkZpE4udV7iHu9XB7RvHJ3
         iuOyVYlqRtxJgX9B00mzjqbHoz7AG4po69hS7hEF67BAA3t1JaDiw/PgCs+O86d+nLji
         SX2i5Aa+u9BWy8hPbJXIxj4P8xVgrVq7WNS6vgV4LW+PpO3mg3iC3addMln5KEXwNuUi
         dC3w==
X-Gm-Message-State: AOAM530nIWlOeiS6F4Xh1zBP8P+ikboQBuscOrHsDMZb07AIEY6WjBMj
        zFWOyT/AKX8JSj+8aQjU3Q==
X-Google-Smtp-Source: ABdhPJwg7nlEH3UMRliehVkH3nRJwXn01xZwslphv83rqfb0xKxsi4EUU5JbtTxirfS7RJpHF3BCuA==
X-Received: by 2002:a05:6870:7385:: with SMTP id z5mr350695oam.228.1644377362569;
        Tue, 08 Feb 2022 19:29:22 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id h17sm6098009otn.60.2022.02.08.19.29.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Feb 2022 19:29:21 -0800 (PST)
Received: (nullmailer pid 3581079 invoked by uid 1000);
        Wed, 09 Feb 2022 03:29:20 -0000
Date:   Tue, 8 Feb 2022 21:29:20 -0600
From:   Rob Herring <robh@kernel.org>
To:     Sascha Hauer <s.hauer@pengutronix.de>
Cc:     Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>, devicetree@vger.kernel.org,
        kernel@pengutronix.de, Peter Geis <pgwipeout@gmail.com>,
        linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Andy Yan <andy.yan@rock-chips.com>,
        dri-devel@lists.freedesktop.org,
        Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH 13/27] dt-bindings: display: rockchip: dw-hdmi: Make
 unwedge pinctrl optional
Message-ID: <YgM1EGnuOdKnBFB/@robh.at.kernel.org>
References: <20220126145549.617165-1-s.hauer@pengutronix.de>
 <20220126145549.617165-14-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220126145549.617165-14-s.hauer@pengutronix.de>
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

On Wed, 26 Jan 2022 15:55:35 +0100, Sascha Hauer wrote:
> None of the upstream device tree files has a "unwedge" pinctrl
> specified. Make it optional.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  .../devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml   | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
