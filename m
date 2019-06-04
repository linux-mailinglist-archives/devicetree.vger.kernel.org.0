Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3C44A34F69
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2019 19:57:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726572AbfFDR5i (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Jun 2019 13:57:38 -0400
Received: from mail-pg1-f196.google.com ([209.85.215.196]:39347 "EHLO
        mail-pg1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726568AbfFDR5i (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Jun 2019 13:57:38 -0400
Received: by mail-pg1-f196.google.com with SMTP id 196so10797527pgc.6
        for <devicetree@vger.kernel.org>; Tue, 04 Jun 2019 10:57:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=t6nRtxNUPqh5Z/Zd2Lm8XPgS1hMkd1CYB8UujWfxC7Q=;
        b=nTlQhMCisSBubZWMXjKPelLpr6RksrP9pS90I2cSz/kMGif7H/Ap0kQIJjfBB7UU4I
         bv9izx7ED5AXrnJYKQ1rJ3FdTF+8vt/yZX8lug9eUORLfiX/mFm4c4mO+NJM1ldkZW72
         /qW3UB6mhbwyNrhv8p2WMGwcW7DPxANMsNAf3mtJopHxFeR9uX03hpfAOruT1EYZ36rG
         DDLq9oj06019IG18jQX9AB14Q3AMUMJzXM6N/JkG7XZZQ5gVydt5fRrcNbto9HH6QlTK
         fKZ9lbvvBQIlPV+5iZ2sphmAI5o6/vxB7/88gheuaehkNVynnHApunjAdZ9AqABRc47O
         XMsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=t6nRtxNUPqh5Z/Zd2Lm8XPgS1hMkd1CYB8UujWfxC7Q=;
        b=p2STUpByN70MB7JcFTokkYmRTGDDxam/yLxBjxzE8cGbPozQVvIoTMlQvtAoO7KqS3
         z3bneoLaPT+FDT/npOSz6rYlFWgMWygCPAARhbfMKaWW/imtvhIrlBA9Bv8VK951Ka5A
         1sSARjg8E+Sou7cPyOJHgLO370vMJ1eEP1nVulWgTJu4L9hiDXT2Ncmu2ccXjKi51jxZ
         iWfJzJYaf9J89sbLuZxZhofi+81BGfofAo3eS2LfOUbBqdbn+6T4IZtsM9R/5fkneD1d
         6BBTWiBnnAA3GKAKKi2ubBma7f0Rx1Z2rfeMOBqqMpg5HB137XLXiVdIgfxoKVOmG5CI
         33Qw==
X-Gm-Message-State: APjAAAVwoXj004q8EfdgsW957lbHIyJndzK3nHObRXkDs+ZZWkQqTUOa
        m/YRkozJQS2tdNkhhW7HyNWE1A==
X-Google-Smtp-Source: APXvYqyAw+GAG8yrWBrkEDa5ptODblm5FBQl6/nW1vzjq2uaDnlK4j4zrZ6AweVC8FNn2wO2DwuCqA==
X-Received: by 2002:aa7:940c:: with SMTP id x12mr10683953pfo.80.1559671056609;
        Tue, 04 Jun 2019 10:57:36 -0700 (PDT)
Received: from google.com ([2620:15c:202:201:bc61:d85d:eb16:9036])
        by smtp.gmail.com with ESMTPSA id n1sm19474297pgv.15.2019.06.04.10.57.35
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 04 Jun 2019 10:57:35 -0700 (PDT)
Date:   Tue, 4 Jun 2019 10:57:31 -0700
From:   Benson Leung <bleung@google.com>
To:     Pi-Hsun Shih <pihsun@chromium.org>
Cc:     Rob Herring <robh@kernel.org>, Lee Jones <lee.jones@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Benson Leung <bleung@chromium.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Guenter Roeck <groeck@chromium.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v9 5/7] dt-bindings: Add binding for cros-ec-rpmsg.
Message-ID: <20190604175731.GB241153@google.com>
References: <20190531073848.155444-1-pihsun@chromium.org>
 <20190531073848.155444-6-pihsun@chromium.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="H+4ONPRPur6+Ovig"
Content-Disposition: inline
In-Reply-To: <20190531073848.155444-6-pihsun@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--H+4ONPRPur6+Ovig
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, May 31, 2019 at 03:38:46PM +0800, Pi-Hsun Shih wrote:
> Add a DT binding documentation for ChromeOS EC driver over rpmsg.
>=20
> Signed-off-by: Pi-Hsun Shih <pihsun@chromium.org>
> Acked-by: Rob Herring <robh@kernel.org>

Reviewed-by: Benson Leung <bleung@chromium.org>

>=20
> ---
> Changes from v8, v7, v6:
>  - No change.
>=20
> Changes from v5:
>  - New patch.
> ---
>  Documentation/devicetree/bindings/mfd/cros-ec.txt | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>=20
> diff --git a/Documentation/devicetree/bindings/mfd/cros-ec.txt b/Document=
ation/devicetree/bindings/mfd/cros-ec.txt
> index 6245c9b1a68b..4860eabd0f72 100644
> --- a/Documentation/devicetree/bindings/mfd/cros-ec.txt
> +++ b/Documentation/devicetree/bindings/mfd/cros-ec.txt
> @@ -3,7 +3,7 @@ ChromeOS Embedded Controller
>  Google's ChromeOS EC is a Cortex-M device which talks to the AP and
>  implements various function such as keyboard and battery charging.
> =20
> -The EC can be connect through various means (I2C, SPI, LPC) and the
> +The EC can be connect through various means (I2C, SPI, LPC, RPMSG) and t=
he
>  compatible string used depends on the interface. Each connection method =
has
>  its own driver which connects to the top level interface-agnostic EC dri=
ver.
>  Other Linux driver (such as cros-ec-keyb for the matrix keyboard) connec=
t to
> @@ -17,6 +17,9 @@ Required properties (SPI):
>  - compatible: "google,cros-ec-spi"
>  - reg: SPI chip select
> =20
> +Required properties (RPMSG):
> +- compatible: "google,cros-ec-rpmsg"
> +
>  Optional properties (SPI):
>  - google,cros-ec-spi-pre-delay: Some implementations of the EC need a li=
ttle
>    time to wake up from sleep before they can receive SPI transfers at a =
high
> --=20
> 2.22.0.rc1.257.g3120a18244-goog
>=20

--=20
Benson Leung
Staff Software Engineer
Chrome OS Kernel
Google Inc.
bleung@google.com
Chromium OS Project
bleung@chromium.org

--H+4ONPRPur6+Ovig
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQQCtZK6p/AktxXfkOlzbaomhzOwwgUCXPaxCwAKCRBzbaomhzOw
wrfuAP9QcQ2v/pDWTXePJ8PoBlW9S+7RIpMiCvQTzUnjpZ+iKwD/bQPNeneMkrd5
fBrGE9T80lwQ9Bjy29YcKEPBBfGIRQI=
=SqoY
-----END PGP SIGNATURE-----

--H+4ONPRPur6+Ovig--
