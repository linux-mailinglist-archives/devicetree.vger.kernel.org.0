Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 190EA5AB9B9
	for <lists+devicetree@lfdr.de>; Fri,  2 Sep 2022 23:01:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230403AbiIBVBo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Sep 2022 17:01:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34704 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230360AbiIBVBn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Sep 2022 17:01:43 -0400
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F0F77266F
        for <devicetree@vger.kernel.org>; Fri,  2 Sep 2022 14:01:42 -0700 (PDT)
Received: by mail-ot1-f50.google.com with SMTP id m21-20020a9d6ad5000000b00638df677850so2267030otq.5
        for <devicetree@vger.kernel.org>; Fri, 02 Sep 2022 14:01:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=OGkDg/VjR48tAk5om9uQJ7Lgtui5uVMNRlDGhMzoVmI=;
        b=FaKixhR1dLh4+dXxrjfC413DI7nkPxAORKAZ5xz4yGALGvGjtt/CviEYFYXP1KDgan
         qxrcH3T7bM0lr4S7DAVWUotWm3CPYl978DC4eIouYZx1XPACPaSwKaUOaIzUErKodpXD
         Wjtfms9IHe9aky0jnJEgY0ln7o9IZUgTUHEj17qUfwj4eS3A5AnQM+6XXJvzoK6Wei53
         hS72OjoNe+1moJLLlQ19MnyiwzoDaj7KU0JAZSf5i7z9T62jrY2JqMJ7WRNvtaT17Ttd
         XxoDvUclzr2H5W9qDTMG5nTdENq5/jE6OitgTYQ1tphWRYX69LZF2+yHhT0GTTWRoOb0
         oG3A==
X-Gm-Message-State: ACgBeo3NqNouV9VT/2x89qPrQlZ4O/kX6soDHPYzlP0ULzR0MPHi3Mbn
        GMbaWb7Zwt8PXmGcM/eFIA==
X-Google-Smtp-Source: AA6agR634/jEbKvGPpREUDmA3WX8iiT37ciemM1uKtlSVKrbmJDtW46cb9LnSa4GEuA48ZT9DFTCyw==
X-Received: by 2002:a05:6830:6081:b0:61d:13e9:fabd with SMTP id by1-20020a056830608100b0061d13e9fabdmr14858133otb.286.1662152502228;
        Fri, 02 Sep 2022 14:01:42 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id m16-20020a056808025000b00344851ea0ddsm1351337oie.56.2022.09.02.14.01.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Sep 2022 14:01:41 -0700 (PDT)
Received: (nullmailer pid 408215 invoked by uid 1000);
        Fri, 02 Sep 2022 21:01:41 -0000
Date:   Fri, 2 Sep 2022 16:01:41 -0500
From:   Rob Herring <robh@kernel.org>
To:     Sebastian Reichel <sebastian.reichel@collabora.com>
Cc:     Heiko Stuebner <heiko@sntech.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Finley Xiao <finley.xiao@rock-chips.com>, kernel@collabora.com
Subject: Re: [PATCH 2/6] dt-bindings: add power-domain header for rk3588
Message-ID: <20220902210141.GA403234-robh@kernel.org>
References: <20220831182629.79255-1-sebastian.reichel@collabora.com>
 <20220831182629.79255-3-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220831182629.79255-3-sebastian.reichel@collabora.com>
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

On Wed, Aug 31, 2022 at 08:26:25PM +0200, Sebastian Reichel wrote:
> From: Finley Xiao <finley.xiao@rock-chips.com>
> 
> Add all the power domains listed in the RK3588 TRM.
> 
> Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
> As mentioned in the cover letter I did not update this into dual
> license, since there was no feedback from Rockchip :(

Well then, I guess we'll stop taking Rockchip patches. Sorry, but what 
other leverage do I have?

Rob
