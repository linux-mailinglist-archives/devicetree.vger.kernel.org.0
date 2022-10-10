Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9E6A75F9FB5
	for <lists+devicetree@lfdr.de>; Mon, 10 Oct 2022 15:57:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229461AbiJJN5Q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Oct 2022 09:57:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38790 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229741AbiJJN5I (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Oct 2022 09:57:08 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6225372EED
        for <devicetree@vger.kernel.org>; Mon, 10 Oct 2022 06:57:05 -0700 (PDT)
Received: from pendragon.ideasonboard.com (cpc89244-aztw30-2-0-cust3082.18-1.cable.virginm.net [86.31.172.11])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id A55A9BB0;
        Mon, 10 Oct 2022 15:57:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1665410222;
        bh=WXn+UMImV4eonreFaZin76Z069vNdxxYpjRTJ8scToo=;
        h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
        b=paRbQq6FDrGJxEtb6/IQm9a3OpSaBPNgtY2sgVZEtTXDBY52K9gDujeNenFHCE4eT
         aqEfarskj+KIHHPmdpaX7oPLcP/RgnzewExdTrJX/VVD0s7DnGCQFnunMFkzLnIoEy
         r5xWZM26L1FQwt5jM8W5rwQQDAsQgAbGVqjEEraQ=
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20221010133146.1430768-3-dan.scally@ideasonboard.com>
References: <20221010133146.1430768-1-dan.scally@ideasonboard.com> <20221010133146.1430768-3-dan.scally@ideasonboard.com>
Subject: Re: [PATCH v2 2/3] dt-bindings: arm: fsl: Enumerate Debix Model A Board
From:   Kieran Bingham <kieran.bingham@ideasonboard.com>
Cc:     s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
        linux-imx@nxp.com, laurent.pinchart@ideasonboard.com,
        debix-tech@polyhex.net, Daniel Scally <dan.scally@ideasonboard.com>
To:     Daniel Scally <dan.scally@ideasonboard.com>,
        devicetree@vger.kernel.org, krzysztof.kozlowski@linaro.org,
        leoyang.li@nxp.com, linux-arm-kernel@lists.infradead.org,
        marcel.ziswiler@toradex.com, robh@kernel.org, shawnguo@kernel.org
Date:   Mon, 10 Oct 2022 14:56:59 +0100
Message-ID: <166541021982.3760285.2314715216039776873@Monstersaurus>
User-Agent: alot/0.10
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Daniel Scally (2022-10-10 14:31:45)
> Add an entry to the list of imx8mp boards denoting the Debix Model A
> board from Polyhex Technology Co.
>=20
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Reviewed-by: Kieran Bingham <kieran.bingham@ideasonboard.com>
> Signed-off-by: Daniel Scally <dan.scally@ideasonboard.com>
> ---
> Changes in v2:
>=20
>     - Dropped 2gb suffix, added hyphens for readability (Laurent)
>=20
>  Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentati=
on/devicetree/bindings/arm/fsl.yaml
> index 7431579ab0e8..fc0c8eb15114 100644
> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> @@ -931,6 +931,7 @@ properties:
>                - dh,imx8mp-dhcom-pdk2      # i.MX8MP DHCOM SoM on PDK2 bo=
ard
>                - fsl,imx8mp-evk            # i.MX8MP EVK Board
>                - gateworks,imx8mp-gw74xx   # i.MX8MP Gateworks Board
> +              - polyhex,imx8mp-debix-model-a # Polyhex Debix Model A (2G=
B) Board

If we've dropped the 2gb suffix from the compatible string, does that
mean we should drop it from the description too? I presume the
implication is that we can support different sizes from the same compat
string.


>                - toradex,verdin-imx8mp     # Verdin iMX8M Plus Modules
>                - toradex,verdin-imx8mp-nonwifi  # Verdin iMX8M Plus Modul=
es without Wi-Fi / BT
>                - toradex,verdin-imx8mp-wifi  # Verdin iMX8M Plus Wi-Fi / =
BT Modules
> --=20
> 2.34.1
>
