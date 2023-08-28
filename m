Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E4F0878BA58
	for <lists+devicetree@lfdr.de>; Mon, 28 Aug 2023 23:34:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232426AbjH1VeU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Aug 2023 17:34:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53432 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233743AbjH1Vd6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Aug 2023 17:33:58 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5FA82FC
        for <devicetree@vger.kernel.org>; Mon, 28 Aug 2023 14:33:56 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id E76E361807
        for <devicetree@vger.kernel.org>; Mon, 28 Aug 2023 21:33:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8E6DCC433C7;
        Mon, 28 Aug 2023 21:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1693258435;
        bh=Kgj4e6BvIoMg93LXTgWhbqy2qG9a8kIMjrGl4MJ+DaI=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=ibwabgxbRWCqgAFw6rxnrf+vSTGwWeVDQGNqWsSkbySSQ0WiEhSCQMZbChyfx74On
         KoTBBOetydAVrU3g+0GistC5Gae2OUzM3b9pHpilTX+4P91TqAJR4ZLGHq/FQ85Duq
         l9zIW7DVLMfesVPOZvngtpZ0bQ0zeXPzIK5g967P2FfdFJcqo8OUyqlX2H16kV5j4A
         1a5D1xeXETJe/LOx50GMXlPEmcl/fMXo3CO813/hvyy7zRW9oIcws9+EkRsT5rf/1y
         aJ/w1tLMrT04N9J1WW9ah0jR313ZhQ3LRBDbk8pJY/z4e6GWlXTCd40yX1Naqzb5o8
         m4DE9kAp/2nfA==
Received: (nullmailer pid 383467 invoked by uid 1000);
        Mon, 28 Aug 2023 21:33:52 -0000
Date:   Mon, 28 Aug 2023 16:33:52 -0500
From:   Rob Herring <robh@kernel.org>
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     linux-sunxi@lists.linux.dev, noralf@tronnes.org, sam@ravnborg.org,
        airlied@gmail.com, mripard@kernel.org, jernej.skrabec@gmail.com,
        robh+dt@kernel.org, devicetree@vger.kernel.org, daniel@ffwll.ch,
        uwu@icenowy.me, andre.przywara@arm.com, neil.armstrong@linaro.org,
        krzysztof.kozlowski+dt@linaro.org, wens@csie.org,
        Conor Dooley <conor.dooley@microchip.com>,
        Chris Morgan <macromorgan@hotmail.com>, samuel@sholland.org,
        heiko@sntech.de, jagan@edgeble.ai, conor+dt@kernel.org
Subject: Re: [PATCH V4 1/8] dt-bindings: vendor-prefixes: document Saef
 Technology
Message-ID: <169325842961.383369.7249070463075833308.robh@kernel.org>
References: <20230828181941.1609894-1-macroalpha82@gmail.com>
 <20230828181941.1609894-2-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230828181941.1609894-2-macroalpha82@gmail.com>
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Mon, 28 Aug 2023 13:19:34 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Document Saef Technology (https://www.saefdisplay.com/).
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Applied, thanks!

