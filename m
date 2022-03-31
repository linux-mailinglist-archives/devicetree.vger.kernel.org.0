Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 12B514EE4D6
	for <lists+devicetree@lfdr.de>; Fri,  1 Apr 2022 01:38:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241208AbiCaXko (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 31 Mar 2022 19:40:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38896 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240168AbiCaXkn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 31 Mar 2022 19:40:43 -0400
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A020195DBD
        for <devicetree@vger.kernel.org>; Thu, 31 Mar 2022 16:38:54 -0700 (PDT)
Received: by mail-oi1-f180.google.com with SMTP id w127so1139405oig.10
        for <devicetree@vger.kernel.org>; Thu, 31 Mar 2022 16:38:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=zoRz1HVke9mwT5kDlfSSITmf1xPCuX+NIAz8DDaQA3w=;
        b=WnieN0JIyR5QPrfCulJfBMKFH2JFOo8x+W4IN7p0MMCHGdj8fcSsVmImq8NRUANImf
         PTRge1bZqGAcuY1AYkIEBF/lHONaevKX4m3vhYdFSgps5UxB3/ZsXhi77spY294l4uAb
         vDCsTEwbDjh6r7gueB5ETqfQV9G3totkOzq5ENe55HGkcX2x/EwtxfGyWq2XBm6Va8d4
         NdRcA4hDKR6IZAqQTcn0AHGb2jdtwsJSqr55zzVAW0alk21zozJBUuCVhl/Tf880a62C
         50Kk8FTmDqnfWBXg8PSDF+ZGU+T43qakDr8s83A9crlIMNcDJstmJwjSqY0ZvEWCSj5Y
         92cg==
X-Gm-Message-State: AOAM5330co4YHssFl4d+e4mDD+qRxMq3uYM83F0ydp2NvFKRENcYgyzT
        Ho96GVbI41hukqg/4Bq5cg==
X-Google-Smtp-Source: ABdhPJzYoU/79g5Z0Xl2bAurI7Js9F9ApK07KktrWz1hwBsBbI9p0777PkeE+BruyGLA8L3YndMvCg==
X-Received: by 2002:a05:6808:1394:b0:2ec:ddb3:c82b with SMTP id c20-20020a056808139400b002ecddb3c82bmr3707458oiw.274.1648769933719;
        Thu, 31 Mar 2022 16:38:53 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id m13-20020a9d7acd000000b005cda59325e6sm422216otn.60.2022.03.31.16.38.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Mar 2022 16:38:53 -0700 (PDT)
Received: (nullmailer pid 1709936 invoked by uid 1000);
        Thu, 31 Mar 2022 23:38:52 -0000
Date:   Thu, 31 Mar 2022 18:38:52 -0500
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     Peng Fan <peng.fan@nxp.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Sam Ravnborg <sam@ravnborg.org>, Robby Cai <robby.cai@nxp.com>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Stefan Agner <stefan@agner.ch>, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        dri-devel@lists.freedesktop.org,
        Lucas Stach <l.stach@pengutronix.de>
Subject: Re: [PATCH 1/2] dt-bindings: lcdif: Add compatible for i.MX8MP
Message-ID: <YkY7jFS5JvgYK7IP@robh.at.kernel.org>
References: <20220322142853.125880-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220322142853.125880-1-marex@denx.de>
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

On Tue, 22 Mar 2022 15:28:52 +0100, Marek Vasut wrote:
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
>  Documentation/devicetree/bindings/display/fsl,lcdif.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
