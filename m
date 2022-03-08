Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 27DA84D1CD1
	for <lists+devicetree@lfdr.de>; Tue,  8 Mar 2022 17:09:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235623AbiCHQKu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Mar 2022 11:10:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56092 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233693AbiCHQKu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Mar 2022 11:10:50 -0500
Received: from mail-oo1-f46.google.com (mail-oo1-f46.google.com [209.85.161.46])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 700625046F
        for <devicetree@vger.kernel.org>; Tue,  8 Mar 2022 08:09:53 -0800 (PST)
Received: by mail-oo1-f46.google.com with SMTP id x26-20020a4a9b9a000000b003211029e80fso6115803ooj.5
        for <devicetree@vger.kernel.org>; Tue, 08 Mar 2022 08:09:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=gksQ+ySfVzX/BzWqaFxCpK+7H0a13SWGbxXt2Z5JHuI=;
        b=n7PDlT2OijW/eC8AvEgws5RitqKbC58Bydr8ErcpR2gb5r2SSdb//vsSqKWfmPJ7+m
         2PROdea4Vjj/XuCvQUQ0AEjlYbFr3iY9BKu+Av4UY/YAdeHkvs0IKD792McWQMx9zPfv
         lgZv4Fmt5LK/9T3vueCIQESV6lmwcCq8VKWICmL7lubKrITso5fBxoGSmuMcbsikHsAo
         i/IdLIktTbUO88SQEwkfOBXKQumtLrtTrSj9dLItXHrI0lQ1GmlsFNjOOO++ACRvbNxd
         jQMA/GQF97oR0OVvSy2fvQ4C5AbQC/nJaY/pFWVdanXupB4uKr7npLOyXgzxQJFLm42t
         v6MQ==
X-Gm-Message-State: AOAM531LwoEWNVEmCuCStMGRQo/JZ3yESrt/aqtOxa9Z/l1M0JLtF4CI
        AyY74q6VqaOIcEMAQhEGuw==
X-Google-Smtp-Source: ABdhPJzLHug0HYSICR5UmoCceM/A96yu7TBizOs7JaMiLXdJSNLB8LT3kVLLyPOnkEYOaS36hCMFTg==
X-Received: by 2002:a05:6870:c588:b0:da:3d88:de58 with SMTP id ba8-20020a056870c58800b000da3d88de58mr2890938oab.32.1646755792766;
        Tue, 08 Mar 2022 08:09:52 -0800 (PST)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id 60-20020a9d0642000000b005b22a82458csm4268370otn.55.2022.03.08.08.09.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Mar 2022 08:09:51 -0800 (PST)
Received: (nullmailer pid 849717 invoked by uid 1000);
        Tue, 08 Mar 2022 16:09:50 -0000
Date:   Tue, 8 Mar 2022 10:09:50 -0600
From:   Rob Herring <robh@kernel.org>
To:     Andre Przywara <andre.przywara@arm.com>
Cc:     Chen-Yu Tsai <wens@csie.org>, Samuel Holland <samuel@sholland.org>,
        linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Maxime Ripard <mripard@kernel.org>,
        George Hilliard <thirtythreeforty@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Jesse Taube <mr.bossman075@gmail.com>,
        Icenowy Zheng <icenowy@aosc.io>,
        Mesih Kilinc <mesihkilinc@gmail.com>,
        Giulio Benetti <giulio.benetti@benettiengineering.com>,
        Jernej Skrabec <jernej.skrabec@gmail.com>
Subject: Re: [PATCH 03/14] dt-bindings: arm: sunxi: document LicheePi Nano
 name
Message-ID: <Yid/zlFb2fqNsKEQ@robh.at.kernel.org>
References: <20220307143421.1106209-1-andre.przywara@arm.com>
 <20220307143421.1106209-4-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220307143421.1106209-4-andre.przywara@arm.com>
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

On Mon, 07 Mar 2022 14:34:10 +0000, Andre Przywara wrote:
> The top level LicheePi Nano compatible name was never documented in the
> bindings, so add the currently used string.
> 
> It looks like the manufacturer might be "sipeed" as well, but I will go
> with the "licheepi" string that is in the actual .dts for years now.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  Documentation/devicetree/bindings/arm/sunxi.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
