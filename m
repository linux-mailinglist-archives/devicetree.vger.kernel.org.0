Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2C744DA40E
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2019 04:57:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2392045AbfJQC5i (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Oct 2019 22:57:38 -0400
Received: from mail-pl1-f194.google.com ([209.85.214.194]:44774 "EHLO
        mail-pl1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387605AbfJQC5i (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Oct 2019 22:57:38 -0400
Received: by mail-pl1-f194.google.com with SMTP id q15so370944pll.11
        for <devicetree@vger.kernel.org>; Wed, 16 Oct 2019 19:57:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Tjt+/Axl1IvzmW6XlYzMidII91vtDmoK3IJ5fHSxSac=;
        b=WMRenqWVPH9trLQV/ukChylmkEL6sEVWt/wpu4djbs1RFI9rMDXfXhkQHqebF1HssD
         DsSIcQuOSMkHrOP9fxhavvl6iXkstjFzLWqakpqKbWGCPX0dP3oWoDhm3RGa1QFtPn2b
         1i+/iC1vY+AtLr7HIEsWJHXHYvjMEd+UBv6xCsVgsk6PFWygxd2SdMVRTchFNLvVtkRV
         04fA9LaZluM1TR/ORT2dPqKMIc7iS1zeS7tP9K6235PCJXBTLFfokcQPtnlELmH2VXC6
         IEdx55uuuP7CrnFtNXs5t4P9R8fJKY0zYZlS/bjuSQu0eFa4b+Vv6BXKtkaLknP/8e5g
         JVOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Tjt+/Axl1IvzmW6XlYzMidII91vtDmoK3IJ5fHSxSac=;
        b=cXsOdB+FElsWdE7XH4v1aTAbXv5E3sJW5qnJ0fWugN3U7nlaUHBhPwo90U4EIHD/1Q
         jiQG3LbTCjB/imC7aoAtCX8HhTyIvWMdqZrdVmTy3m5QXnfZ8NAH6rMlCWSf+Hdk22XI
         1KR2mFw59wWImUUf+l4jz5lQPs5cXtWZu4M/1uysJin1hRIkoMJxzU/wkHfUnsA9fq0X
         8CB/2ca0aNofelT3X93auB7DXpuOY/81eLMaUIenIiC290LfK+PZ40Mxf6y1JM2FwEMN
         rzxM9gcC7fhwjUEiXkZvODFSdl0gRWvpYn+5VWpe32TQSbrjbLdjKgfAmF+DcI/1zoZl
         rHrQ==
X-Gm-Message-State: APjAAAUe2BdnVi0EIeP/0pQirV8AtpAURBHb4SAtBNIT4TIdMioT1AEC
        toOr6y8dVY51LBOvK6dOW9pRtw==
X-Google-Smtp-Source: APXvYqyNVlHmSHerT2rt4/QTzCuqidNjeUINeWLNCF+2g/z2fzvCBM7ZnwvFrje+hC3v54LyeVwTaA==
X-Received: by 2002:a17:902:a610:: with SMTP id u16mr1569536plq.200.1571281054569;
        Wed, 16 Oct 2019 19:57:34 -0700 (PDT)
Received: from google.com ([2620:15c:202:201:bc61:d85d:eb16:9036])
        by smtp.gmail.com with ESMTPSA id y2sm532925pfe.126.2019.10.16.19.57.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Oct 2019 19:57:33 -0700 (PDT)
Date:   Wed, 16 Oct 2019 19:57:29 -0700
From:   Benson Leung <bleung@google.com>
To:     Tzung-Bi Shih <tzungbi@google.com>
Cc:     broonie@kernel.org, alsa-devel@alsa-project.org,
        robh+dt@kernel.org, devicetree@vger.kernel.org,
        enric.balletbo@collabora.com, gwendal@google.com,
        drinkcat@google.com, cychiang@google.com, dgreid@google.com
Subject: Re: [PATCH v3 04/10] platform/chrome: cros_ec: add common commands
 for EC codec
Message-ID: <20191017025728.GB72195@google.com>
References: <20191014102022.236013-1-tzungbi@google.com>
 <20191014180059.04.Idc3c6e1cd94b70bf010249928d4a93c6c90495b7@changeid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="hHWLQfXTYDoKhP50"
Content-Disposition: inline
In-Reply-To: <20191014180059.04.Idc3c6e1cd94b70bf010249928d4a93c6c90495b7@changeid>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--hHWLQfXTYDoKhP50
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Tzung-Bi,

On Mon, Oct 14, 2019 at 06:20:16PM +0800, Tzung-Bi Shih wrote:
> Add the following common commands:
> - GET_CAPABILITIES
> - GET_SHM_ADDR
> - SET_SHM_ADDR
>=20
> Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>

Acked-By: Benson Leung <bleung@chromium.org>

Thanks,
Benson

> ---
>  drivers/platform/chrome/cros_ec_trace.c       |  1 +
>  .../linux/platform_data/cros_ec_commands.h    | 64 ++++++++++++++++++-
>  2 files changed, 63 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/platform/chrome/cros_ec_trace.c b/drivers/platform/c=
hrome/cros_ec_trace.c
> index e73bb6a8b00e..2ea0d4e0d54d 100644
> --- a/drivers/platform/chrome/cros_ec_trace.c
> +++ b/drivers/platform/chrome/cros_ec_trace.c
> @@ -98,6 +98,7 @@
>  	TRACE_SYMBOL(EC_CMD_SB_READ_BLOCK), \
>  	TRACE_SYMBOL(EC_CMD_SB_WRITE_BLOCK), \
>  	TRACE_SYMBOL(EC_CMD_BATTERY_VENDOR_PARAM), \
> +	TRACE_SYMBOL(EC_CMD_EC_CODEC), \
>  	TRACE_SYMBOL(EC_CMD_EC_CODEC_DMIC), \
>  	TRACE_SYMBOL(EC_CMD_EC_CODEC_I2S_RX), \
>  	TRACE_SYMBOL(EC_CMD_REBOOT_EC), \
> diff --git a/include/linux/platform_data/cros_ec_commands.h b/include/lin=
ux/platform_data/cros_ec_commands.h
> index 58e460c015ef..3ca0fa9e92a7 100644
> --- a/include/linux/platform_data/cros_ec_commands.h
> +++ b/include/linux/platform_data/cros_ec_commands.h
> @@ -4466,8 +4466,68 @@ enum mkbp_cec_event {
> =20
>  /***********************************************************************=
******/
> =20
> +/* Commands for audio codec. */
> +#define EC_CMD_EC_CODEC 0x00BC
> +
> +enum ec_codec_subcmd {
> +	EC_CODEC_GET_CAPABILITIES =3D 0x0,
> +	EC_CODEC_GET_SHM_ADDR =3D 0x1,
> +	EC_CODEC_SET_SHM_ADDR =3D 0x2,
> +	EC_CODEC_SUBCMD_COUNT,
> +};
> +
> +enum ec_codec_cap {
> +	EC_CODEC_CAP_LAST =3D 32,
> +};
> +
> +enum ec_codec_shm_id {
> +	EC_CODEC_SHM_ID_LAST,
> +};
> +
> +enum ec_codec_shm_type {
> +	EC_CODEC_SHM_TYPE_EC_RAM =3D 0x0,
> +	EC_CODEC_SHM_TYPE_SYSTEM_RAM =3D 0x1,
> +};
> +
> +struct __ec_align1 ec_param_ec_codec_get_shm_addr {
> +	uint8_t shm_id;
> +	uint8_t reserved[3];
> +};
> +
> +struct __ec_align4 ec_param_ec_codec_set_shm_addr {
> +	uint64_t phys_addr;
> +	uint32_t len;
> +	uint8_t shm_id;
> +	uint8_t reserved[3];
> +};
> +
> +struct __ec_align4 ec_param_ec_codec {
> +	uint8_t cmd; /* enum ec_codec_subcmd */
> +	uint8_t reserved[3];
> +
> +	union {
> +		struct ec_param_ec_codec_get_shm_addr
> +				get_shm_addr_param;
> +		struct ec_param_ec_codec_set_shm_addr
> +				set_shm_addr_param;
> +	};
> +};
> +
> +struct __ec_align4 ec_response_ec_codec_get_capabilities {
> +	uint32_t capabilities;
> +};
> +
> +struct __ec_align4 ec_response_ec_codec_get_shm_addr {
> +	uint64_t phys_addr;
> +	uint32_t len;
> +	uint8_t type;
> +	uint8_t reserved[3];
> +};
> +
> +/***********************************************************************=
******/
> +
>  /* Commands for DMIC on audio codec. */
> -#define EC_CMD_EC_CODEC_DMIC 0x00BC
> +#define EC_CMD_EC_CODEC_DMIC 0x00BD
> =20
>  enum ec_codec_dmic_subcmd {
>  	EC_CODEC_DMIC_SET_GAIN =3D 0x0,
> @@ -4500,7 +4560,7 @@ struct __ec_align1 ec_response_ec_codec_dmic_get_ga=
in {
> =20
>  /* Commands for I2S RX on audio codec. */
> =20
> -#define EC_CMD_EC_CODEC_I2S_RX 0x00BD
> +#define EC_CMD_EC_CODEC_I2S_RX 0x00BE
> =20
>  enum ec_codec_i2s_rx_subcmd {
>  	EC_CODEC_I2S_RX_ENABLE =3D 0x0,
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

--hHWLQfXTYDoKhP50
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQQCtZK6p/AktxXfkOlzbaomhzOwwgUCXafYmAAKCRBzbaomhzOw
whpZAPwMfZmGpA/4VyA899pci6XbRvn07QP9yN9NJJ3JXZFjUAEA6fzzW+VhtEpU
k30TwffsdHMZ3vF3qjcGC/9vG+p7LgM=
=WcX7
-----END PGP SIGNATURE-----

--hHWLQfXTYDoKhP50--
