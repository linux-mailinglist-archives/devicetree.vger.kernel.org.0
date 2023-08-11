Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AED9F779680
	for <lists+devicetree@lfdr.de>; Fri, 11 Aug 2023 19:52:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236359AbjHKRwj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Aug 2023 13:52:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42768 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229568AbjHKRwi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Aug 2023 13:52:38 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79F07273E
        for <devicetree@vger.kernel.org>; Fri, 11 Aug 2023 10:52:36 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 10D9C67802
        for <devicetree@vger.kernel.org>; Fri, 11 Aug 2023 17:52:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8F678C433C8;
        Fri, 11 Aug 2023 17:52:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691776355;
        bh=7JRTXIP4S+sP+hJ75tQ16jaUKuVATdw8PZiWsNSSlpE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=GWBxcordk3DeA0ezIAa6i+T8RhdO8dHwbhguxb1ZbTnT0mi+wwAU6fKaAIGZlgjsV
         wuw5LKveAS4VGaDVQaHVpW83BnqMmODK34DvQmIdxowRyB6mfNA0JPufqx4trl0/n8
         eiVi2wh5XehWat0R9pasC+/nNQum7P81EtkgRRBEy9B7TZhCh9k/5UUDsq87aHCG+m
         FW7Gmy+URj2rAnBnTXiuz1UO6jDxzmuyRJxfdaw0jZxtudJ/y68mKnZ3OBMfPOf6ii
         1SaJwcUySZRQOAXOop1Ya1fzX5u/WD8oVIYzuREfjUk5lF8NpKxIr9ILXbhqz2Snvi
         4OrfoI5NrHxsQ==
Received: (nullmailer pid 3669611 invoked by uid 1000);
        Fri, 11 Aug 2023 17:52:33 -0000
Date:   Fri, 11 Aug 2023 11:52:33 -0600
From:   Rob Herring <robh@kernel.org>
To:     Jagan Teki <jagan@edgeble.ai>
Cc:     Vinod Koul <vkoul@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-phy@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 03/14] dt-bindings: phy: rockchip-inno-dsidphy: Document
 rv1126
Message-ID: <169177635297.3669556.3862665719264768972.robh@kernel.org>
References: <20230731110012.2913742-1-jagan@edgeble.ai>
 <20230731110012.2913742-4-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230731110012.2913742-4-jagan@edgeble.ai>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Mon, 31 Jul 2023 16:30:01 +0530, Jagan Teki wrote:
> Document a compatible string for the rv1126 dsi-dphy.
> 
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> ---
> Cc: linux-phy@lists.infradead.org
> Cc: devicetree@vger.kernel.org
> Cc: Vinod Koul <vkoul@kernel.org>
> Cc: Kishon Vijay Abraham I <kishon@kernel.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Conor Dooley <conor+dt@kernel.org>
> 
>  .../devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml          | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

