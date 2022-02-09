Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 62ADE4AE824
	for <lists+devicetree@lfdr.de>; Wed,  9 Feb 2022 05:07:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345076AbiBIEHm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Feb 2022 23:07:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46412 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346869AbiBIDiy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Feb 2022 22:38:54 -0500
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98430C07E5C0
        for <devicetree@vger.kernel.org>; Tue,  8 Feb 2022 19:31:43 -0800 (PST)
Received: by mail-ot1-f50.google.com with SMTP id n6-20020a9d6f06000000b005a0750019a7so664204otq.5
        for <devicetree@vger.kernel.org>; Tue, 08 Feb 2022 19:31:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=2EUDRGuxtVXdjJqKcqAEgC1qrVlM0soEHjVQnLyJLs0=;
        b=kDssFiDOkWex0wYkI3rTjYjPgoMrYwZuvnIsQHAr6CHaWmViR85+eyZbmSZHttsQ5u
         myqfFiupjmtUrFtNSCsBQsELkWsZXK6Yc09oOI9IrNfYVMemcd9in73lNhFtV6mfi5P5
         KeJR9GYEI/IIgctP4ZUUqGhy2JT9py/MRnGg3qFMsjWV+DgWFh2bnI/1dkah9BXjg0sl
         lrpA5KGhLH2mkbCTXnoXSOEqbL7CnZCxI2MI/Cvr1fyNV432ZwafnXChh85brZm/OowU
         Bl/VILEdrUHssX2I3uPVsHCmg6BsUSkw1+yReokBGC+M1RW+jHYMZg9voKKML3jfjQ7W
         kv9w==
X-Gm-Message-State: AOAM530dbB3XMc4WIM2Dj0rpGWrF/eBS9H+JVFLhE9+X0sMoI477eM/1
        aINk7ruo6P8uO3kQCO8GIA==
X-Google-Smtp-Source: ABdhPJzZSGGfllJlipqtnKsyZA9CXiQ7dw6mFa1JxouW5CgG7GlwB3WtIzOv3/iC9X6LEldT18lNyg==
X-Received: by 2002:a05:6830:1084:: with SMTP id y4mr184049oto.42.1644377502928;
        Tue, 08 Feb 2022 19:31:42 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id q8sm6374550oiw.12.2022.02.08.19.31.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Feb 2022 19:31:42 -0800 (PST)
Received: (nullmailer pid 3585232 invoked by uid 1000);
        Wed, 09 Feb 2022 03:31:41 -0000
Date:   Tue, 8 Feb 2022 21:31:41 -0600
From:   Rob Herring <robh@kernel.org>
To:     Sascha Hauer <s.hauer@pengutronix.de>
Cc:     dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, kernel@pengutronix.de,
        Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org,
        Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
        Sandy Huang <hjc@rock-chips.com>
Subject: Re: [PATCH 16/27] dt-bindings: display: rockchip: dw-hdmi: Add
 additional clock
Message-ID: <YgM1nQ4BiJJdM6Ax@robh.at.kernel.org>
References: <20220126145549.617165-1-s.hauer@pengutronix.de>
 <20220126145549.617165-17-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220126145549.617165-17-s.hauer@pengutronix.de>
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

On Wed, 26 Jan 2022 15:55:38 +0100, Sascha Hauer wrote:
> The rk3568 HDMI has an additional clock that needs to be enabled for the
> HDMI controller to work. The purpose of that clock is not clear. It is
> named "hclk" in the downstream driver, so use the same name.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  .../bindings/display/rockchip/rockchip,dw-hdmi.yaml        | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>
