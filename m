Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 92BEEDA3AC
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2019 04:25:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2404271AbfJQCZY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Oct 2019 22:25:24 -0400
Received: from mail-pg1-f195.google.com ([209.85.215.195]:37972 "EHLO
        mail-pg1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727328AbfJQCZY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Oct 2019 22:25:24 -0400
Received: by mail-pg1-f195.google.com with SMTP id w3so383103pgt.5
        for <devicetree@vger.kernel.org>; Wed, 16 Oct 2019 19:25:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=STJjBhLE/m01ejeTMTB4LbJYMiaVitAPLxfsmldrX+w=;
        b=T2rGOkQ+VUFpK/WVOfmLr8Mh2huxuf6moXfqKu86NtPV3dpGQTIlm4yCPBUE5PwYWD
         hca+W7gYNsvl8M/ZeU98q0+B3yFGS/L7EUF/9KsomtmSaX+GhaR1D4dtSDmcIf8KQfzi
         ybkoXQ+K5AbRTJu2equUDWhzY7qXgW27w+fOTMTS15zCXSOFe5WUH42pPZf7v3WgFeFj
         VOsy6Z3ngBlx15Ao9qAmGYuXDaKVGlDwlcurS3+PvQcJ7KYAaqbXqk6rfoXuyjQ94ULG
         OqZRPXfKeyvGVrJJQ9DgmDFWUXZaY7TlfiPlpQlrRm38dRhBgBTzznMPFsJyeXSzTYRu
         aVaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=STJjBhLE/m01ejeTMTB4LbJYMiaVitAPLxfsmldrX+w=;
        b=XWRlmD2xJfHLtrLkHCmn/F7jcAkek9BMWNVwwYJh6IZLllrPTeE6bkWsGPhBHOLhTJ
         2b9cz7W1pJQeMw274w1WYKG8OdYAno6Gfc9mgwElKoPoO6EPTzMThnAwH67yVVs1FL/I
         of6HulXqNYyia1wsKzajkwDHX2xHi79XuE1zEhmkglZzkhOriYXYqDCEfEYc/7/eRFU+
         Az3Vy9DYyZWBguaYB2RgTlWSLULShgqK5/BMTMy2VyQefeR0SJCel9y2a0pf8p10iSaX
         TE5eGVHfjEVc5Fhmoz/ZP2TYgbqQVjcDtOTiKvi8yu934wdxvmY2MrR1auyuZxs0SywU
         uItA==
X-Gm-Message-State: APjAAAVTGz1KWkZVUPANbYlCqMo4Vc7FDYLNzPXniKjV868ssvesXnLA
        K8BCA49PcRSOgc/w8npOlf8r9w==
X-Google-Smtp-Source: APXvYqyvS2ZY7GaiHnRo9+9V5MBhCVFCjVMj2z2fV6My8g6R8J1Y2WkKdysTUlHk8e2d4Zd6ofBpRA==
X-Received: by 2002:a62:1953:: with SMTP id 80mr954802pfz.173.1571279122230;
        Wed, 16 Oct 2019 19:25:22 -0700 (PDT)
Received: from google.com ([2620:15c:202:201:bc61:d85d:eb16:9036])
        by smtp.gmail.com with ESMTPSA id y10sm435680pfe.148.2019.10.16.19.25.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Oct 2019 19:25:21 -0700 (PDT)
Date:   Wed, 16 Oct 2019 19:25:16 -0700
From:   Benson Leung <bleung@google.com>
To:     Tzung-Bi Shih <tzungbi@google.com>
Cc:     broonie@kernel.org, alsa-devel@alsa-project.org,
        robh+dt@kernel.org, devicetree@vger.kernel.org,
        enric.balletbo@collabora.com, gwendal@google.com,
        drinkcat@google.com, cychiang@google.com, dgreid@google.com
Subject: Re: [PATCH v3 01/10] platform/chrome: cros_ec: remove unused EC
 feature
Message-ID: <20191017022516.GA60797@google.com>
References: <20191014102022.236013-1-tzungbi@google.com>
 <20191014180059.01.I374c311eaca0d47944a37b07acbe48fdb74f734d@changeid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="G4iJoqBmSsgzjUCe"
Content-Disposition: inline
In-Reply-To: <20191014180059.01.I374c311eaca0d47944a37b07acbe48fdb74f734d@changeid>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--G4iJoqBmSsgzjUCe
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Tzung-Bi,

On Mon, Oct 14, 2019 at 06:20:13PM +0800, Tzung-Bi Shih wrote:
> Remove unused EC_FEATURE_AUDIO_CODEC.
>=20
> Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>

Acked-By: Benson Leung <bleung@chromium.org>

Thanks,
Benson

> ---
>  include/linux/platform_data/cros_ec_commands.h | 2 --
>  1 file changed, 2 deletions(-)
>=20
> diff --git a/include/linux/platform_data/cros_ec_commands.h b/include/lin=
ux/platform_data/cros_ec_commands.h
> index 98415686cbfa..43b8f7dae4cc 100644
> --- a/include/linux/platform_data/cros_ec_commands.h
> +++ b/include/linux/platform_data/cros_ec_commands.h
> @@ -1277,8 +1277,6 @@ enum ec_feature_code {
>  	 * MOTIONSENSE_CMD_TABLET_MODE_LID_ANGLE.
>  	 */
>  	EC_FEATURE_REFINED_TABLET_MODE_HYSTERESIS =3D 37,
> -	/* EC supports audio codec. */
> -	EC_FEATURE_AUDIO_CODEC =3D 38,
>  	/* The MCU is a System Companion Processor (SCP). */
>  	EC_FEATURE_SCP =3D 39,
>  	/* The MCU is an Integrated Sensor Hub */
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

--G4iJoqBmSsgzjUCe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQQCtZK6p/AktxXfkOlzbaomhzOwwgUCXafRDAAKCRBzbaomhzOw
woOiAQCH3Gf3aTm2PrJBGeHQ5DpoqTKLs7JbIZM9UJV32p34mAD/eZrQnbHqDjDb
Z8tl7YvqZ3afE1nuEWCuA1W3gxUipAg=
=f/vt
-----END PGP SIGNATURE-----

--G4iJoqBmSsgzjUCe--
