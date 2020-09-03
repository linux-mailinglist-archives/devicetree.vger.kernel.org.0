Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9E39D25B9DC
	for <lists+devicetree@lfdr.de>; Thu,  3 Sep 2020 06:42:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725919AbgICEm6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Sep 2020 00:42:58 -0400
Received: from out2-smtp.messagingengine.com ([66.111.4.26]:33095 "EHLO
        out2-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1725851AbgICEm5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Sep 2020 00:42:57 -0400
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
        by mailout.nyi.internal (Postfix) with ESMTP id 5AF695C010D;
        Thu,  3 Sep 2020 00:42:56 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
  by compute3.internal (MEProxy); Thu, 03 Sep 2020 00:42:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
        mime-version:message-id:in-reply-to:references:date:from:to:cc
        :subject:content-type; s=fm3; bh=em2gJ9qv2xaShz9T9qAmKSzyXIMr3uD
        xP9oDgcz1OBc=; b=K3vW7dmxebVbx2mlGf9mZ9zrgvsttX/8tMwUxsC0XM9+RWN
        u8paQVDMbD+4MM/4JysPAiHOqt/2JZfuWG8qywledeeaAGQDzWjLsaTQmSZCtruR
        c0IzrG0x+p4gOoXXYATcDMmLjatoQT/fCToxMpTDyKidFmBCO/zOySHT9RTWlTqc
        GnDqGcLImDVhGmr94UyMWrHZbOJG+a7hmmHEwy+FDiLaZBet/ykRDv18UJLxaBv1
        voN3CLVijkw+xYSNxogYeNbMNYmN6aaYGG6zYOmGh8tbudHlHmnMLtr/Ar89zDzz
        hzzB48oRa17eSGOVrUXWjx1NMsHz7qo/hiKnO8g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=em2gJ9
        qv2xaShz9T9qAmKSzyXIMr3uDxP9oDgcz1OBc=; b=gD6XvDqkN9/mt8hFDcN1yR
        m6Sma7YJroztK2r/UODvU26B89CRJViHz0/krCNIZCf2l8PqOCyqfXEg5DXjVFf+
        Bnivd4sZSaWlcX516tBO8gsb89SVUOjT8e+8SlzgCAhvd8cHLUok55QJg8MPKnty
        kWrvgQsBYdoT1auRGDM5nyu8PsuTcUiEpJlSDFjJ5IL8SNL3oEWpVRYZhKkp2BcP
        xk4dWueIR9QmunZenmyb78Fp9r2LIyXGqrxZydlvzTx/hiW+r2Kr44POm81Gq/OY
        nsiDb+j4+qAt+R5/dkOSaG+c0UW6YNoHLxReSGiQkR510omFV1TV0Nu5thiiN5ig
        ==
X-ME-Sender: <xms:T3RQXyCZITgrp0Kmm3yzrWpU3jezM6yAQM1VDU-2SskDSNgQOvD20g>
    <xme:T3RQX8gOV0fecFMHqAzPKrk0bPz3swZzTGOdtNDApytVky7scfVULIAki2bO-gJR2
    QIkj_2QmVOxlq1etw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduiedrudegtddgkeeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
    rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecuggftrf
    grthhtvghrnhephefhfeekgfekudevheffheeihedujeefjeevjeefudfgfeeutdeuvdeh
    hfevueffnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
    eprghnughrvgifsegrjhdrihgurdgruh
X-ME-Proxy: <xmx:T3RQX1lTGZ84TAjB3DSnaf3agocqoQEvS4woLPvF8o17YQ7jUwWQCw>
    <xmx:T3RQXwzfmcflE5PKaVf7QYiUGu6yQlAQZaT-bN6rQsnIuQj7klnMCg>
    <xmx:T3RQX3SEPH7jvkTmx8aXIEIJQbwimI4e4DZbgIunGpE8gDvy7juI2w>
    <xmx:UHRQXxfg0FW9cvVRN4NxFIoxPpkQrxgxpc10Jgf2blmF7SuiedvRRw>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
        id 0417CE00DF; Thu,  3 Sep 2020 00:42:55 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.3.0-257-g770afc8-fm-20200903.002-g770afc8a
Mime-Version: 1.0
Message-Id: <a612a4f9-fbd8-4df1-8ce4-5adf611e87b5@www.fastmail.com>
In-Reply-To: <20200728025527.174503-2-joel@jms.id.au>
References: <20200728025527.174503-1-joel@jms.id.au>
 <20200728025527.174503-2-joel@jms.id.au>
Date:   Thu, 03 Sep 2020 14:12:34 +0930
From:   "Andrew Jeffery" <andrew@aj.id.au>
To:     "Joel Stanley" <joel@jms.id.au>, linux-fsi@lists.ozlabs.org,
        "Rob Herring" <robh+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        "Eddie James" <eajames@linux.ibm.com>
Subject: Re: [PATCH 1/5] dt-bindings: fsi: Document gpios
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On Tue, 28 Jul 2020, at 12:25, Joel Stanley wrote:
> The FSI master has some associated GPIOs that may be present on some
> hardware configurations.
> 
> Signed-off-by: Joel Stanley <joel@jms.id.au>
> ---
>  .../devicetree/bindings/fsi/fsi-master-aspeed.txt    | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git 
> a/Documentation/devicetree/bindings/fsi/fsi-master-aspeed.txt 
> b/Documentation/devicetree/bindings/fsi/fsi-master-aspeed.txt
> index b758f91914f7..a513e65ec0c9 100644
> --- a/Documentation/devicetree/bindings/fsi/fsi-master-aspeed.txt
> +++ b/Documentation/devicetree/bindings/fsi/fsi-master-aspeed.txt
> @@ -12,6 +12,13 @@ Required properties:
>   - pinctrl-0: phandle to pinctrl node
>   - pinctrl-names: pinctrl state
>  
> +Optional properties:
> + - cfam-reset-gpios: GPIO for CFAM reset
> +
> + - fsi-routing-gpios: GPIO for setting the FSI mux (internal or cabled)
> + - fsi-mux-gpios: GPIO for detecting the desired FSI mux state
> +
> +

Is the double-linebreak intentional? Anyway:

Reviewed-by: Andrew Jeffery <andrew@aj.id.au>

>  Examples:
>  
>      fsi-master {
> @@ -21,4 +28,9 @@ Examples:
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_fsi1_default>;
>  	clocks = <&syscon ASPEED_CLK_GATE_FSICLK>;
> +
> +	fsi-routing-gpios = <&gpio0 ASPEED_GPIO(Q, 7) GPIO_ACTIVE_HIGH>;
> +	fsi-mux-gpios = <&gpio0 ASPEED_GPIO(B, 0) GPIO_ACTIVE_HIGH>;
> +
> +	cfam-reset-gpios = <&gpio0 ASPEED_GPIO(Q, 0) GPIO_ACTIVE_LOW>;
>      };
> -- 
> 2.27.0
> 
>
