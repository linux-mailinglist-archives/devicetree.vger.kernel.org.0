Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3F75B49DE2D
	for <lists+devicetree@lfdr.de>; Thu, 27 Jan 2022 10:37:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232134AbiA0JhY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Jan 2022 04:37:24 -0500
Received: from out4-smtp.messagingengine.com ([66.111.4.28]:47539 "EHLO
        out4-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231719AbiA0JhY (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 27 Jan 2022 04:37:24 -0500
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
        by mailout.nyi.internal (Postfix) with ESMTP id 1AE3C5C019E;
        Thu, 27 Jan 2022 04:37:24 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute2.internal (MEProxy); Thu, 27 Jan 2022 04:37:24 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
        :cc:content-type:date:date:from:from:in-reply-to:in-reply-to
        :message-id:mime-version:references:reply-to:sender:subject
        :subject:to:to; s=fm2; bh=KkuaK/tejeRfwI7BI7yqMSQmyUeCZfVDG+rLNP
        cBp4o=; b=u1pM7cVzOepAh1nAoQP6Dtf6dBNXKkvOOe6Y2qbNdpbgsoFXMv5qPA
        0PziYHWTO6Hs2WjEm0Dfu3q+Ag5km3R7QC7T7WIxpUMZ/osKbtrwHYADXqjcvp4f
        eE7A09eIiEwzKBjN4CF1ucAYTor0AZ9xYrSjRcnCOmSfw5gS0R172qEgHMjy9KZY
        NfCXeD1zIgvLoitIHl5vA4Wj4A7KEk8BMzGaZPCuHlE6L9uHH8EUKOTWOsbQAzaO
        Oik9zX7AS1keppwW19fcPYKIQo2yxXU79nIjES2Nn4jrGZBmG4oD+PO7ZEAQtCd0
        7tmZ9exaN8XW6fZ80vEIkrksUqwGVZEg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:cc:content-type:date:date:from:from
        :in-reply-to:in-reply-to:message-id:mime-version:references
        :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
        :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=KkuaK/tejeRfwI7BI
        7yqMSQmyUeCZfVDG+rLNPcBp4o=; b=Eb8yvHccrqotwVSowOYpZDuzGk/1BBrIH
        awnPihww4sj3kPDnyw4qyTzFWUtU6RleJVoZWRfgay3OnIq+PR2lb6Xk4dWHsehW
        J4a3YnvRUSvRy83O3OdkshrLB34//+K2j6eShDpmcyfoNsxH4bvVQ5/ggIHBd9YU
        kmSJ3ZN6qPf7PCiIh2OuhnjbSkq/6q4Nc4M8okj3QaLLkI6wl0QhdPS0ms6SMLiA
        c37FQhXvp09dqlbRnEM5wlI4OkiSV037ZwCI2UONOtINC8ZAyRHgjXNtQHGghDkw
        TLIc1xNEOTPIB6uu1o+mxrjix4A+D/tcPG65H7n8Lz5FdEzr4x1xg==
X-ME-Sender: <xms:02fyYXv-ZCLlCji9ZynYjyBvOtk4L5cffjqjWQR1JVrJNMSovyElpQ>
    <xme:02fyYYf4_Owaa3z2fYcfisigLcQ4rBk7W8zN6tIV2xcpXZqxzzDRPiEy-lOgS_OWj
    MM6eXRNg8UAfBQUD24>
X-ME-Received: <xmr:02fyYaxz01QKr3HqeLJQQ_aszrFEHqFXNVVZXJq6hOS0yCnPNmFV1bbN1gfbDISEbDoJHmRxl5mY3VnCIpm0Gsg8Z-YtCyiqyXzqy6Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrfeefgddtiecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvuffkfhggtggujgesghdtreertddtudenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpeehieefudethfevkeeigedvgfetjeeghfdvveekvdffueffteejtdejudffgfdu
    keenucffohhmrghinhepuggvvhhitggvthhrvggvrdhorhhgnecuvehluhhsthgvrhfuih
    iivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordht
    vggthh
X-ME-Proxy: <xmx:02fyYWM0aCdyvlRhhVenpsIpAmzxsWeIndVzIrjIhH-hPb6wxWtkeA>
    <xmx:02fyYX8E98do9VRmBgEvL7JrsUAvjfgxtC9A-Bpkfmbhde8D-REuNw>
    <xmx:02fyYWWgMdqsRK7QGS_JmDDtcnftEOyNjsQUjV04YqzUaHEpmjjYBQ>
    <xmx:1GfyYXz4yqC-6fSZYdsiSlHCsP7akSSKOnnFihz8Blc-Wg09T-xnBQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 27 Jan 2022 04:37:23 -0500 (EST)
Date:   Thu, 27 Jan 2022 10:37:22 +0100
From:   Maxime Ripard <maxime@cerno.tech>
To:     Noralf =?utf-8?Q?Tr=C3=B8nnes?= <noralf@tronnes.org>
Cc:     robh+dt@kernel.org, thierry.reding@gmail.com, sam@ravnborg.org,
        dave.stevenson@raspberrypi.com, david@lechnology.com,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v2 1/3] dt-bindings: display: add bindings for MIPI DBI
 compatible SPI panels
Message-ID: <20220127093722.hsed3ny3gzk55o7w@houat>
References: <20220125175700.37408-1-noralf@tronnes.org>
 <20220125175700.37408-2-noralf@tronnes.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="vfflqgcm6sslsmqe"
Content-Disposition: inline
In-Reply-To: <20220125175700.37408-2-noralf@tronnes.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--vfflqgcm6sslsmqe
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Jan 25, 2022 at 06:56:58PM +0100, Noralf Tr=F8nnes wrote:
> Add binding for MIPI DBI compatible SPI panels.
>=20
> v2:
> - Fix path for panel-common.yaml
> - Use unevaluatedProperties
> - Drop properties which are in the allOf section
> - Drop model property (Rob)
>=20
> Signed-off-by: Noralf Tr=F8nnes <noralf@tronnes.org>
> ---
>  .../display/panel/panel-mipi-dbi-spi.yaml     | 59 +++++++++++++++++++
>  1 file changed, 59 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/panel=
-mipi-dbi-spi.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/display/panel/panel-mipi-d=
bi-spi.yaml b/Documentation/devicetree/bindings/display/panel/panel-mipi-db=
i-spi.yaml
> new file mode 100644
> index 000000000000..b7cbeea0f8aa
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.=
yaml
> @@ -0,0 +1,59 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/panel/panel-mipi-dbi-spi.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: MIPI DBI SPI Panels Device Tree Bindings
> +
> +maintainers:
> +  - Noralf Tr=F8nnes <noralf@tronnes.org>
> +
> +description:
> +  This binding is for display panels using a MIPI DBI controller
> +  in SPI mode.
> +
> +allOf:
> +  - $ref: panel-common.yaml#
> +  - $ref: /schemas/spi/spi-peripheral-props.yaml#
> +
> +properties:
> +  compatible:
> +    const: panel-mipi-dbi-spi

You need contains here, otherwise it will error out if you have two compati=
bles.

> +  write-only:
> +    type: boolean
> +    description:
> +      Controller is not readable (ie. MISO is not wired up).
> +
> +  dc-gpios:
> +    maxItems: 1
> +    description: |
> +      Controller data/command selection (D/CX) in 4-line SPI mode.
> +      If not set, the controller is in 3-line SPI mode.
> +
> +required:
> +  - compatible
> +  - reg
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +
> +    spi {
> +            #address-cells =3D <1>;
> +            #size-cells =3D <0>;
> +
> +            display@0{
> +                    compatible =3D "panel-mipi-dbi-spi";

We should have two compatibles in the example too

Maxime

--vfflqgcm6sslsmqe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYfJn0gAKCRDj7w1vZxhR
xbBgAQDyyx3Eig4JWiUK+QssT3L9pLD1/CdaDpOQkFzeGXbu0gEAq5xNgpF6DSAg
dItmNUivebYlTbbpccU4Lnlq8ViVmAE=
=lJrq
-----END PGP SIGNATURE-----

--vfflqgcm6sslsmqe--
