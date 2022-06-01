Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 88F8353B024
	for <lists+devicetree@lfdr.de>; Thu,  2 Jun 2022 00:51:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231329AbiFAVLq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Jun 2022 17:11:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34002 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231383AbiFAVLk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Jun 2022 17:11:40 -0400
Received: from mail-oo1-f52.google.com (mail-oo1-f52.google.com [209.85.161.52])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C7145B89D
        for <devicetree@vger.kernel.org>; Wed,  1 Jun 2022 14:11:16 -0700 (PDT)
Received: by mail-oo1-f52.google.com with SMTP id 1-20020a4a1701000000b0040e90b56d03so569362ooe.12
        for <devicetree@vger.kernel.org>; Wed, 01 Jun 2022 14:11:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=MZLHOX4bmimahp0SDeHpXF9tGrFqsKasgM8yt8qeVgo=;
        b=e3NDy9ghtnfZUv6987azBv+dnP2LfIStrKrsmaU/6sB+MItsh8s1/86A4eokgP3U/6
         egKrcbHUCWY1y/Ux/PHf6KaPy3Qq+BJ5klqB6rNW1zYS9NeIZSMoV8pklMBTLpnAOLsA
         Y2bfy/IxiPmhWPWOjyjqcbqmNn3fhkgdSdtauDBVwF1b8ryPSfXO7D8VRDYZ0gtOvYFd
         gJpQDhsFLt8+5lW98jcmda/gbYHK6Qz4pCToVrw48pWYDAGGjCaDuaXggZXzP/Mn0eJI
         xl0EkKEs/gQ355B7hWkVe8Bz23VTniGUlRcTCPShkCbfiRSSQC+L7DFEDL1i0gzx7t7v
         NUOg==
X-Gm-Message-State: AOAM530shRr1dVYyxF75Y27hki8XFcUDC9KsYqEXihd61RYsgnqSFP1L
        Q2M6gH/hldhDvavkDCb+Gg==
X-Google-Smtp-Source: ABdhPJz2LPu4gMLK693bAspnXDF9c38YPHEwnsvvFTNQY5+HaBoFcmfSXGmb12imELa+bBPNr6nhlw==
X-Received: by 2002:a4a:b307:0:b0:324:c7f2:386 with SMTP id m7-20020a4ab307000000b00324c7f20386mr772216ooo.18.1654117875593;
        Wed, 01 Jun 2022 14:11:15 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id ec29-20020a0568708c1d00b000f1c2847f8csm1163384oab.32.2022.06.01.14.11.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Jun 2022 14:11:15 -0700 (PDT)
Received: (nullmailer pid 460531 invoked by uid 1000);
        Wed, 01 Jun 2022 21:11:14 -0000
Date:   Wed, 1 Jun 2022 16:11:14 -0500
From:   Rob Herring <robh@kernel.org>
To:     Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= 
        <u.kleine-koenig@pengutronix.de>
Cc:     Lee Jones <lee.jones@linaro.org>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Rob Herring <robh+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        linux-arm-kernel@lists.infradead.org,
        Fabrice Gasnier <fabrice.gasnier@foss.st.com>,
        devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com, kernel@pengutronix.de
Subject: Re: [PATCH v4 1/2] dt-bindings: mfd: stm32-timers: Document how to
 specify interrupts
Message-ID: <20220601211114.GA460497-robh@kernel.org>
References: <20220519162838.695404-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220519162838.695404-1-u.kleine-koenig@pengutronix.de>
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

On Thu, 19 May 2022 18:28:37 +0200, Uwe Kleine-König wrote:
> The timer units in the stm32mp1 CPUs have interrupts, depending on the
> timer flavour either one "global" or four dedicated ones. Document how
> to formalize these in a device tree.
> 
> Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
> ---
> Changes since v3:
>   - Do the things Rob suggested in reqly to v1 which I didn't notice
>     until Fabrice told me in reply to v3.
> 
>  .../devicetree/bindings/mfd/st,stm32-timers.yaml  | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
