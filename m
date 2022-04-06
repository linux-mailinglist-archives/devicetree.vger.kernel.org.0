Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DFC134F6A83
	for <lists+devicetree@lfdr.de>; Wed,  6 Apr 2022 21:52:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232890AbiDFTyh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Apr 2022 15:54:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44612 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236472AbiDFTxx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Apr 2022 15:53:53 -0400
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com [209.85.210.44])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D82C4B1C4
        for <devicetree@vger.kernel.org>; Wed,  6 Apr 2022 11:06:16 -0700 (PDT)
Received: by mail-ot1-f44.google.com with SMTP id k25-20020a056830151900b005b25d8588dbso2252407otp.4
        for <devicetree@vger.kernel.org>; Wed, 06 Apr 2022 11:06:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=mapsUp2+I33ND3daVtV6AK1NgRWB9QWJP8jtKMtudVk=;
        b=zy+cTiWWgX0RncFDSujbmyVIDw2LnUXyW9BCTYvnPiJ9aZhTnY+26GNBWaHKas93Iu
         UhzWsO2PcoUJQgTUFHlV0rWb8ijMr2d9VgF6X78lxzHvsh2i7PKIPuZL12Wewi7yF1Jp
         SuzkHbZwrnyGj9Lt/4GScZzOLpsyT7jz3J3axW9S7IFUmtuK8yhSIuVWSWktymF0ZbQ2
         If3EsqRGYFsi+2P8U5URlxBUe2oiGNIUfNX2PuZfrUHc00rXiylK9BfCfUt4abiSdUtF
         MDEkwK+xlBmqqs1OjNtQ5GstJ7/O1DlHTAQCV+vuj0K7Tq1jQ6HDB+zAzl4kcUgFTx7y
         m0bw==
X-Gm-Message-State: AOAM533a8Jr1HmoNFXgdZYHzxR9PPdufBiXdHJQQhwe1Ab1nTr8raBLn
        BMNM4a45JZfuN9gYrnE+xQ==
X-Google-Smtp-Source: ABdhPJwFbqFy9etlTR1T9Kv4Ky5l4Epw9rIl+VRSuSYXXo96nvElNTmrTHljsMbPryXGnSvoX6EKOA==
X-Received: by 2002:a9d:6855:0:b0:5b2:33ba:7392 with SMTP id c21-20020a9d6855000000b005b233ba7392mr3595609oto.150.1649268375718;
        Wed, 06 Apr 2022 11:06:15 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id w133-20020acadf8b000000b002ef9fa2ba84sm6802599oig.12.2022.04.06.11.06.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Apr 2022 11:06:14 -0700 (PDT)
Received: (nullmailer pid 2511559 invoked by uid 1000);
        Wed, 06 Apr 2022 18:06:13 -0000
Date:   Wed, 6 Apr 2022 13:06:13 -0500
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     Sam Ravnborg <sam@ravnborg.org>, robert.foss@linaro.org,
        dri-devel@lists.freedesktop.org,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Daniel Vetter <daniel.vetter@ffwll.ch>,
        Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>,
        devicetree@vger.kernel.org,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Dmitry Osipenko <digetx@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Christoph Niedermaier <cniedermaier@dh-electronics.com>
Subject: Re: [PATCH] dt-bindings: display: panel: mipi-dbi-spi: Make
 width-mm/height-mm mandatory
Message-ID: <Yk3WlX11eu0HRkN7@robh.at.kernel.org>
References: <20220404192105.12547-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220404192105.12547-1-marex@denx.de>
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

On Mon, 04 Apr 2022 21:21:05 +0200, Marek Vasut wrote:
> Make the width-mm/height-mm panel properties mandatory
> to correctly report the panel dimensions to the OS.
> 
> Fixes: 2f3468b82db97 ("dt-bindings: display: add bindings for MIPI DBI compatible SPI panels")
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Christoph Niedermaier <cniedermaier@dh-electronics.com>
> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> Cc: Dmitry Osipenko <digetx@gmail.com>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Noralf Trønnes <noralf@tronnes.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Robert Foss <robert.foss@linaro.org>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: devicetree@vger.kernel.org
> To: dri-devel@lists.freedesktop.org
> ---
>  .../devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml   | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
