Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D4B4B787A5C
	for <lists+devicetree@lfdr.de>; Thu, 24 Aug 2023 23:30:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236050AbjHXVaC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Aug 2023 17:30:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44974 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243682AbjHXV3l (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Aug 2023 17:29:41 -0400
X-Greylist: delayed 2093 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Thu, 24 Aug 2023 14:29:39 PDT
Received: from smtp.domeneshop.no (smtp.domeneshop.no [IPv6:2a01:5b40:0:3006::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 528FF1BCC
        for <devicetree@vger.kernel.org>; Thu, 24 Aug 2023 14:29:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=tronnes.org
        ; s=ds202212; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
        References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
        Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
        Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
        List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=wfxs1fHWmILpiWBQJpId3QXIQEbM7IzZ2ByFhpiGuQ8=; b=Fp5+nh6xfRyvxmeAv1E5w5Rft3
        KnDVEdzwZk0eJY6321z9Og0kEycAOQbVS4mJ3zd+luv7xfR9PG7MRvdVSBiaFFD+9CVAhOX0k/V47
        y7Mt2ier0Q64vwL41fcVMj02oRfWhxuUH/pWmm0oyYYclvGe6dH3ATkf1nH5HcBkwBa94VYVmXX7/
        InN5muZR7D739A0MO65alTbE+OyLazlSTihRR+zttYgROQ0hqpzsIsoVnQP5yZ7iJutfy1sZ9BZbJ
        he0SGIZN6LKcMkb56LD/0NyZvvQivBcuQrIP1CKiG3aelzIPDh1isotHKRnyY0RPRS5KBYb5+gul7
        JmGSEuBw==;
Received: from [2a01:799:95f:2800:2fb5:c6db:11b1:a10f] (port=47942)
        by smtp.domeneshop.no with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.95)
        (envelope-from <noralf@tronnes.org>)
        id 1qZHLn-00CJ5K-Nu;
        Thu, 24 Aug 2023 22:54:43 +0200
Message-ID: <43a910b6-2d91-cd4e-dd9e-e579bb41e447@tronnes.org>
Date:   Thu, 24 Aug 2023 22:54:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH V3 2/8] dt-bindings: display: panel: mipi-dbi-spi: add
 Saef SF-TC154B
Content-Language: en-US
To:     Chris Morgan <macroalpha82@gmail.com>, linux-sunxi@lists.linux.dev
Cc:     devicetree@vger.kernel.org, mripard@kernel.org, jagan@edgeble.ai,
        heiko@sntech.de, uwu@icenowy.me, andre.przywara@arm.com,
        daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
        neil.armstrong@linaro.org, samuel@sholland.org,
        jernej.skrabec@gmail.com, wens@csie.org, conor+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        Chris Morgan <macromorgan@hotmail.com>, noralf@tronnes.org
References: <20230823212554.378403-1-macroalpha82@gmail.com>
 <20230823212554.378403-3-macroalpha82@gmail.com>
From:   =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
In-Reply-To: <20230823212554.378403-3-macroalpha82@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 8/23/23 23:25, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> The Saef SF-TC154B is a 1.54 inch 240x240 square panel with a MIPI DBI
> compatible interface. The panel is used on the Anbernic RG-Nano
> handheld gaming device.
> 
> The initialization of the panel requires a firmware binary which can
> be made with the mipi-dbi-cmd[1] tool. The command sequence needed
> can be found in both source[2] and binary form[3].
> 
> [1]: https://github.com/notro/panel-mipi-dbi
> [2]: https://github.com/macromorgan/panel-mipi-dbi-firmware/raw/main/saef%2Csftc154b.txt
> [3]: https://github.com/macromorgan/panel-mipi-dbi-firmware/raw/main/saef%2Csftc154b.bin
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---

Acked-by: Noralf Trønnes <noralf@tronnes.org>

>  .../devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml    | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml b/Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml
> index 2f0238b770eb..04cc5bfce051 100644
> --- a/Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml
> @@ -66,6 +66,7 @@ properties:
>    compatible:
>      items:
>        - enum:
> +          - saef,sftc154b
>            - sainsmart18
>            - shineworld,lh133k
>        - const: panel-mipi-dbi-spi
