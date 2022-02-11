Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3D96B4B2AD4
	for <lists+devicetree@lfdr.de>; Fri, 11 Feb 2022 17:46:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351658AbiBKQox (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Feb 2022 11:44:53 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:45916 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351678AbiBKQow (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Feb 2022 11:44:52 -0500
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E7D06D4B
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 08:44:50 -0800 (PST)
Received: by mail-oi1-f173.google.com with SMTP id x193so10227317oix.0
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 08:44:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=lMm1bAbz+COVhDSVy9Wvhqlh2ASS8XvMIEBCtJLhc28=;
        b=JJZOZhEGQiWPdlM8Z85TBaZZwEoAS7fWvmdqQd6uESMlP054qCBLbCuVEH6xz6KzfE
         ec6fNW8Fw88MhBo6r5Lmdsf4iD69aczd1KB3M6+4KZNfSt75PJ0fMGAHU5p1t1ulvkdg
         uvpOIm1UWld24NaUG1rAad8V1cVhSPO13c4bggaKb7zERwb+KRnknOCkhDbxjyW38zG6
         S7+bKxMq+Zzb5iS9xVvMlm9gMjHIFz2noLBUmb8iei+Xftr/MdvDPCLFKw0Y+SQcelfa
         emGQvQ+xM9zvyTjKlGWvMj7lzIdohobnNZNrJBgcBU3jssrNzFYnHITx+8q8wv+9LwIL
         AobQ==
X-Gm-Message-State: AOAM532Ldyg3JuCxfcDoIZ5rqzZKnHN6gryrVqXos1m4K2EqUHCTEQJz
        eZD+Iey6u6mKvm+w5DHtUQ==
X-Google-Smtp-Source: ABdhPJwk/UIygCZAlnh2iVwerHeIKZ4y+X/cHl1o1YZAfd2W4sy5pP7lm31pPPiD7XN83hKzI1eVIQ==
X-Received: by 2002:a05:6808:148c:: with SMTP id e12mr585806oiw.24.1644597890219;
        Fri, 11 Feb 2022 08:44:50 -0800 (PST)
Received: from robh.at.kernel.org ([2607:fb90:5fee:dfce:b6df:c3e1:b1e5:d6d8])
        by smtp.gmail.com with ESMTPSA id q14sm9466082ooi.40.2022.02.11.08.44.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Feb 2022 08:44:49 -0800 (PST)
Received: (nullmailer pid 496381 invoked by uid 1000);
        Fri, 11 Feb 2022 16:44:45 -0000
Date:   Fri, 11 Feb 2022 10:44:45 -0600
From:   Rob Herring <robh@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Fabio Estevam <festevam@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Schiffer <matthias.schiffer@tq-group.com>,
        devicetree@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        linux-arm-kernel@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: Re: [PATCH 1/5] dt-bindings: arm: fsl: add TQ Systems boards based
 on i.MX6UL(L)
Message-ID: <YgaSfW1fkfkzBgxQ@robh.at.kernel.org>
References: <20220208134223.908757-1-alexander.stein@ew.tq-group.com>
 <20220208134223.908757-2-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220208134223.908757-2-alexander.stein@ew.tq-group.com>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 08 Feb 2022 14:42:19 +0100, Alexander Stein wrote:
> From: Matthias Schiffer <matthias.schiffer@tq-group.com>
> 
> TQMa6ULx is a SOM family using NXP i.MX6UL CPU family.
> TQMa6ULLx is a SOM family using NXP i.MX6ULL CPU family.
> Both are available as a socket type as well as an LGA type.
> For both variants there are the mainboards MBa6ULx and MBa6ULxL, trailing
> 'L' is LGA version.
> Finally there is the possibility to use the socket module with an LGA
> adapter on the MBa6ULxL.
> 
> The SOM needs a mainboard, therefore we provide compatibles using this
> naming schema:
> 
> "tq,imx6ul-<SOM>" for the module and
> "tq,imx6ul-<SOM>-<SBC>" for when mounted on the mainboard.
> The i.MX6ULL version is done similar.
> 
> Signed-off-by: Matthias Schiffer <matthias.schiffer@tq-group.com>
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
>  .../devicetree/bindings/arm/fsl.yaml          | 37 +++++++++++++++++++
>  1 file changed, 37 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
