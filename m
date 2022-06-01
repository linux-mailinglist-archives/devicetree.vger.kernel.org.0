Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 692ED53AF47
	for <lists+devicetree@lfdr.de>; Thu,  2 Jun 2022 00:50:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231187AbiFAVH2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Jun 2022 17:07:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47514 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231267AbiFAVHY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Jun 2022 17:07:24 -0400
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4AE736BFFF
        for <devicetree@vger.kernel.org>; Wed,  1 Jun 2022 14:07:23 -0700 (PDT)
Received: by mail-oi1-f177.google.com with SMTP id r65so4219521oia.9
        for <devicetree@vger.kernel.org>; Wed, 01 Jun 2022 14:07:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=EgAWTkUmqGAnkiE2aLxnJMzWI8jM/VYbLhJYY+UzZ80=;
        b=fjIsdwcCEAPfqrG7o0DCnGxm0G2cBneM97yU6lnNAxjD8emR68JmpCM5cy7OrhYRYi
         xopfNz3oisH3D4ue1CC/pqq1BJB4GNAYEOJeCFbEWVEU8rbEqS6Tr88+cY+8iKC/xmBb
         VS2OQuMA8wYtmMIgur9jt/5iijQOULLRBd90DsmbqUTfGX9x0T4XMw6FKIX5CeAByV32
         PF8hGaiBUdIBYp1/0SNZiYTs3/oEWblqLvonZl62a8nhz3kljAXnLCJftVofPbnAzV8O
         knISv3Y3sdko0srmaPYrCrxqeJfMXyNxXAZNzY7mpcdTYOPbqBUWaelIti0E0igU7BW3
         61bA==
X-Gm-Message-State: AOAM531lqzyjkNs+ksIiuTk2pATPgTsT+MgHyJhryvX2eUGxqTX7sB4n
        KM+48FSYS/Y/Q9W8tn++eA==
X-Google-Smtp-Source: ABdhPJy9a/TpoRFRLjro4OOH95o5CU7UkJeH8c+s7epUnV5gpT30Wh3CCrHSPrZmipZHjFqJazrHrg==
X-Received: by 2002:a05:6808:2129:b0:32b:f7fa:be51 with SMTP id r41-20020a056808212900b0032bf7fabe51mr830004oiw.42.1654117640238;
        Wed, 01 Jun 2022 14:07:20 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id kw38-20020a056870ac2600b000f32c6b6871sm1224550oab.10.2022.06.01.14.07.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Jun 2022 14:07:19 -0700 (PDT)
Received: (nullmailer pid 453614 invoked by uid 1000);
        Wed, 01 Jun 2022 21:07:19 -0000
Date:   Wed, 1 Jun 2022 16:07:19 -0500
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     Sam Ravnborg <sam@ravnborg.org>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        robert.foss@linaro.org, Robby Cai <robby.cai@nxp.com>,
        Rob Herring <robh+dt@kernel.org>, Peng Fan <peng.fan@nxp.com>,
        Stefan Agner <stefan@agner.ch>, martyn.welch@collabora.com,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Lucas Stach <l.stach@pengutronix.de>
Subject: Re: [PATCH v4 1/2] dt-bindings: lcdif: Add compatible for i.MX8MP
Message-ID: <20220601210719.GA453556-robh@kernel.org>
References: <20220519114849.69918-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220519114849.69918-1-marex@denx.de>
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

On Thu, 19 May 2022 13:48:48 +0200, Marek Vasut wrote:
> Add compatible string for i.MX8MP LCDIF variant. This is called LCDIFv3
> and is completely different from the LCDIFv3 found in i.MX23 in that it
> has a completely scrambled register layout compared to all previous LCDIF
> variants. The new LCDIFv3 also supports 36bit address space. However,
> except for the complete bit reshuffling, this is still LCDIF and it still
> works like one.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Alexander Stein <alexander.stein@ew.tq-group.com>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: Peng Fan <peng.fan@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Robby Cai <robby.cai@nxp.com>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Stefan Agner <stefan@agner.ch>
> Cc: devicetree@vger.kernel.org
> ---
> V2: No change
> V3: No change
> V4: No change
> ---
>  Documentation/devicetree/bindings/display/fsl,lcdif.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
