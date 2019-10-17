Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D0293DA43B
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2019 05:12:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390685AbfJQDMW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Oct 2019 23:12:22 -0400
Received: from mail-pg1-f196.google.com ([209.85.215.196]:44108 "EHLO
        mail-pg1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388274AbfJQDMW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Oct 2019 23:12:22 -0400
Received: by mail-pg1-f196.google.com with SMTP id e10so429374pgd.11
        for <devicetree@vger.kernel.org>; Wed, 16 Oct 2019 20:12:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=YxR7QauPFIpwu18IaJ9ziXnYejBxNJ9VobKL+Ge/XjA=;
        b=kud9+88JoM80HNaxVPp9bA8aFysc53m1u/lEZf1JMDZiN9XECzPAaakFzGRQ+K/6Mf
         hoPI0HqzDInnIBXW7V8vxBo62kioTgEtvchOr2k39qUzo76bHg5tCwIxS2kbSyrMIOnq
         snJ457KW5y2WJFx+1/o/nKYrXyDKC4zPfjvT9Aje2DxQVCR6i3cdCfwtpgKrhG97UUew
         7cqLLEB7wsyRsI0oWCcwiWq9IpAhy6Og+TcT7qDUmidiPsuHvh2aj/YUry+hVMTr4YKb
         OdDknLg146HhsBJOP/ZLJGXXy5/R/2PbglRgeUYC7JmwxwQsD2MiY9gV6wEB8DgWvbXu
         jQAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=YxR7QauPFIpwu18IaJ9ziXnYejBxNJ9VobKL+Ge/XjA=;
        b=N87bmrpf4njE9eNDDoVm4jBn1RfOOvET4hfwM7DUt/3XoGoTn3a0VDixbjZrABVFmS
         8x42nvHfpa79wguiPn0snUqqvgHHf2xYMPkp0Otry/G5xLUS5ra2I2iSXDXQEmjp26nF
         ZcFjFoP4bDu5iZgeEj4wSB6kJqDKbh4UQXDic4qUl5AMfvuceuFrs8MkjocWE+yuf57Y
         EQKqsuliTZ0jlPuVNsQG3bNncwsAm0ooypmfPI5DEQKZiuqRPeq+OgfFRMh4rlAjJDtz
         Ul7E27l5cc9BGbWDXOGS3vdwsXTpl8+T2Jhxs6dSsKyEdEVUlqSd56mRgYsKUhQndpQp
         NOwA==
X-Gm-Message-State: APjAAAXoPGe9fHJO3Vl3gM9i9Z8LXn7TvnHgcuqR8L1OXnbBiNgbBBK6
        MJ6qF4whC3UCkHsSUZcHHXrDig==
X-Google-Smtp-Source: APXvYqz33U+X+A3OXDiRRBXsBWjDrHmBMXo3JmS2uzTGkzCx5K9nErCtmSPEZRFpECSSomyuV4Q2pA==
X-Received: by 2002:a62:7a8c:: with SMTP id v134mr1162146pfc.134.1571281940447;
        Wed, 16 Oct 2019 20:12:20 -0700 (PDT)
Received: from google.com ([2620:15c:202:201:bc61:d85d:eb16:9036])
        by smtp.gmail.com with ESMTPSA id i16sm546637pfa.184.2019.10.16.20.12.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Oct 2019 20:12:19 -0700 (PDT)
Date:   Wed, 16 Oct 2019 20:12:14 -0700
From:   Benson Leung <bleung@google.com>
To:     Tzung-Bi Shih <tzungbi@google.com>
Cc:     broonie@kernel.org, alsa-devel@alsa-project.org,
        robh+dt@kernel.org, devicetree@vger.kernel.org,
        enric.balletbo@collabora.com, gwendal@google.com,
        drinkcat@google.com, cychiang@google.com, dgreid@google.com
Subject: Re: [PATCH v3 06/10] ASoC: dt-bindings: cros_ec_codec: add SHM
 bindings
Message-ID: <20191017031214.GA78044@google.com>
References: <20191014102022.236013-1-tzungbi@google.com>
 <20191014180059.06.I0df85fe54162426e31f60a589d9b461c65df2faa@changeid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="4Ckj6UjgE2iN1+kY"
Content-Disposition: inline
In-Reply-To: <20191014180059.06.I0df85fe54162426e31f60a589d9b461c65df2faa@changeid>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--4Ckj6UjgE2iN1+kY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 14, 2019 at 06:20:18PM +0800, Tzung-Bi Shih wrote:
> - Add "reg" for binding to shared memory exposed by EC.
> - Add "memory-region" for binding to memory region shared by AP.
>=20
> Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>

Acked-By: Benson Leung <bleung@chromium.org>


> ---
>  .../bindings/sound/google,cros-ec-codec.txt   | 20 +++++++++++++++++++
>  1 file changed, 20 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/sound/google,cros-ec-codec=
=2Etxt b/Documentation/devicetree/bindings/sound/google,cros-ec-codec.txt
> index 0ce9fafc78e2..8ca52dcc5572 100644
> --- a/Documentation/devicetree/bindings/sound/google,cros-ec-codec.txt
> +++ b/Documentation/devicetree/bindings/sound/google,cros-ec-codec.txt
> @@ -10,8 +10,26 @@ Required properties:
>  - compatible: Must contain "google,cros-ec-codec"
>  - #sound-dai-cells: Should be 1. The cell specifies number of DAIs.
> =20
> +Optional properties:
> +- reg: Pysical base address and length of shared memory region from EC.
> +       It contains 3 unsigned 32-bit integer.  The first 2 integers
> +       combine to become an unsigned 64-bit physical address.  The last
> +       one integer is length of the shared memory.
> +- memory-region: Shared memory region to EC.  A "shared-dma-pool".  See
> +                 ../reserved-memory/reserved-memory.txt for details.
> +
>  Example:
> =20
> +{
> +	...
> +
> +	reserved_mem: reserved_mem {
> +		compatible =3D "shared-dma-pool";
> +		reg =3D <0 0x52800000 0 0x100000>;
> +		no-map;
> +	};
> +}
> +
>  cros-ec@0 {
>  	compatible =3D "google,cros-ec-spi";
> =20
> @@ -20,5 +38,7 @@ cros-ec@0 {
>  	cros_ec_codec: ec-codec {
>  		compatible =3D "google,cros-ec-codec";
>  		#sound-dai-cells =3D <1>;
> +		reg =3D <0x0 0x10500000 0x80000>;
> +		memory-region =3D <&reserved_mem>;
>  	};
>  };
> --=20
> 2.23.0.700.g56cf767bdb-goog
>=20

--=20
Benson Leung
Staff Software Engineer
Chrome OS Kernel
Google Inc.
bleung@google.com
Chromium OS Project
bleung@chromium.org

--4Ckj6UjgE2iN1+kY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQQCtZK6p/AktxXfkOlzbaomhzOwwgUCXafcDgAKCRBzbaomhzOw
wiE+AQDn54dzQxcEyRftrbS/aZzrkxXRGTsnsPmW/XHWbSppWAD9EZ2ZFfd4P/Jh
6gRW/3o1LSOPemVd4DvkSc5TJH2n+gI=
=3vz8
-----END PGP SIGNATURE-----

--4Ckj6UjgE2iN1+kY--
