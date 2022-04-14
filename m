Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 092A2501AC8
	for <lists+devicetree@lfdr.de>; Thu, 14 Apr 2022 20:06:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241478AbiDNSJV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Apr 2022 14:09:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60674 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234685AbiDNSJU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Apr 2022 14:09:20 -0400
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8480FA147B
        for <devicetree@vger.kernel.org>; Thu, 14 Apr 2022 11:06:55 -0700 (PDT)
Received: by mail-ot1-f49.google.com with SMTP id g16-20020a9d6b10000000b00601ded2a06fso852754otp.6
        for <devicetree@vger.kernel.org>; Thu, 14 Apr 2022 11:06:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=b3DTIioDgFyWyQnrZwEcmDcPrOg7/lr+qgW5fY+/aoc=;
        b=3AJJvVt8gXPUQfNidrJOVjvaN4QnNLLiEd6ntUWNR6pewcFLjEFy7ORiqdKFJ1L6q6
         a2ICFmo119oe5Tp5hW41m4fo2r1rgUmhLmyZcJlifBkWkm2MRKL0+J6tn72036PqbSFZ
         LE5iXVaQO8F/i+5Yek0nJ/K+FA5pJ45IUFn3GV1I3wj1Ji3gKAxaahUH5Cw6Y6jDS3J/
         Q8t2gWexQYzfm62a6/qvY5dQcMrUOQe3618ulTZMsiPY02o9wHUo8emRGX0vnpkqESMP
         7H/UX8yffT0MOkBB1YyayZJsCQYNZQchkuwzzv3ERLCE+zjvSf1pUDz0V3aR5orOho3C
         0ysQ==
X-Gm-Message-State: AOAM531+vc6e0up40/oqsRJbYK979y+wSI7wKTHv/XoJTxXNrg0nE0w+
        qeFbu+0uq5SkVf0mw/G5Vg==
X-Google-Smtp-Source: ABdhPJyluZ4IEmOA3A8HMJyUIpSciCWmK5X8IflrC6vQXDgA5F5KhkrGNErfVaVHY2CzQWCly0zZQQ==
X-Received: by 2002:a9d:be7:0:b0:5cf:bb74:6f4 with SMTP id 94-20020a9d0be7000000b005cfbb7406f4mr1401358oth.145.1649959614719;
        Thu, 14 Apr 2022 11:06:54 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id a19-20020a0568301dd300b0060131a30a1dsm269166otj.67.2022.04.14.11.06.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Apr 2022 11:06:54 -0700 (PDT)
Received: (nullmailer pid 2345150 invoked by uid 1000);
        Thu, 14 Apr 2022 18:06:53 -0000
Date:   Thu, 14 Apr 2022 13:06:53 -0500
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        NXP Linux Team <linux-imx@nxp.com>,
        Shawn Guo <shawnguo@kernel.org>, Peng Fan <peng.fan@nxp.com>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        devicetree@vger.kernel.org,
        Francesco Dolcini <francesco.dolcini@toradex.com>,
        Fabio Estevam <festevam@denx.de>,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: Add i.MX8M Mini Toradex Verdin
 based Menlo board
Message-ID: <YlhivWKTmMOq0tex@robh.at.kernel.org>
References: <20220414033132.548071-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220414033132.548071-1-marex@denx.de>
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

On Thu, 14 Apr 2022 05:31:31 +0200, Marek Vasut wrote:
> Add DT compatible string for board based on the Toradex Verdin iMX8M
> Mini SoM, the MX8Menlo. The board is a compatible replacement for
> i.MX53 M53Menlo and features USB, multiple UARTs, ethernet, LEDs,
> SD and eMMC.
> 
> Reviewed-by: Fabio Estevam <festevam@denx.de>
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Fabio Estevam <festevam@denx.de>
> Cc: Francesco Dolcini <francesco.dolcini@toradex.com>
> Cc: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> Cc: Peng Fan <peng.fan@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: devicetree@vger.kernel.org
> To: linux-arm-kernel@lists.infradead.org
> ---
> V2: - Expand comment with Verdin SoM note
> V3: - Add RB by Fabio
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
