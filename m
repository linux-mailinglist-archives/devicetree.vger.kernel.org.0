Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 99DFE5B2BBD
	for <lists+devicetree@lfdr.de>; Fri,  9 Sep 2022 03:38:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229598AbiIIBi3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Sep 2022 21:38:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43782 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229577AbiIIBi2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Sep 2022 21:38:28 -0400
Received: from mail-oo1-f52.google.com (mail-oo1-f52.google.com [209.85.161.52])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF05111C7D3
        for <devicetree@vger.kernel.org>; Thu,  8 Sep 2022 18:38:07 -0700 (PDT)
Received: by mail-oo1-f52.google.com with SMTP id w39-20020a4a97aa000000b0044dfa1ddc67so69530ooi.6
        for <devicetree@vger.kernel.org>; Thu, 08 Sep 2022 18:38:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=nRIFgaZTQg3GTMp42p+xtgZU3B5YCuKF0IgaGfelaL8=;
        b=PEEmDQcNt2suldQySm481qc2MwotnR5pGfZsZA+HNAD2K1Bf4DkpOt/RZt+K/1e/BO
         HBlfUFuENxJF90XEsyrIHi7gVKAf/zIfoS9JnE01O/dg3I5OHScSvdy2ttKRzFbkE4Wo
         ZF+fD/QVEpORmx7A3s1Px2tOZAYtUcJ4DvlgHX6ZHkuBGFKGzMJVPrB8DFey/dU+aWRK
         FgBwtpaAqYwvcgYHvMJKDuEwAvcSOtU4xyod2eu2dn8RQ1kuo+yVqm/mBiz6PysU426q
         gHgjyA2LBcqNGMqTK7AOkD8v6z8zcY3sx3Gb/83WkmM1r69cchAxMqT9nOIDzHy2qQK0
         zRBQ==
X-Gm-Message-State: ACgBeo0gjaigeBUiDl5+ejQgyGhkmfftpM3G3ECmFOwOEZa1MwDP5QWN
        yAMScfvGU1wCW+C64bG4uw==
X-Google-Smtp-Source: AA6agR5Ri1cpDqeioMDMRveNKAA9XWfPiesLEzehJ7tTC54BrN5u5TocdJnGNPB59gIW0p0DXxZjDw==
X-Received: by 2002:a4a:d085:0:b0:448:93e6:bb67 with SMTP id i5-20020a4ad085000000b0044893e6bb67mr3980181oor.55.1662687486989;
        Thu, 08 Sep 2022 18:38:06 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id w20-20020a056871061400b0012763819bcasm411419oan.50.2022.09.08.18.38.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Sep 2022 18:38:06 -0700 (PDT)
Received: (nullmailer pid 3737271 invoked by uid 1000);
        Fri, 09 Sep 2022 01:38:05 -0000
Date:   Thu, 8 Sep 2022 20:38:05 -0500
From:   Rob Herring <robh@kernel.org>
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     kishon@ti.com, hjc@rock-chips.com, linux-phy@lists.infradead.org,
        cl@rock-chips.com, vkoul@kernel.org, robh+dt@kernel.org,
        Chris Morgan <macromorgan@hotmail.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, pgwipeout@gmail.com,
        krzysztof.kozlowski+dt@linaro.org, s.hauer@pengutronix.de,
        airlied@linux.ie
Subject: Re: [PATCH v2 2/5] dt-bindings: phy-rockchip-inno-dsidphy: add
 compatible for rk3568
Message-ID: <20220909013805.GA3737238-robh@kernel.org>
References: <20220906174823.28561-1-macroalpha82@gmail.com>
 <20220906174823.28561-3-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220906174823.28561-3-macroalpha82@gmail.com>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 06 Sep 2022 12:48:20 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add a compatible string for the rk3568 dsi-dphy.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml          | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
