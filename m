Return-Path: <devicetree+bounces-838-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 45F5B7A3507
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 11:56:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 48A431C208B5
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 09:56:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CEABA2112;
	Sun, 17 Sep 2023 09:56:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C74451FB3
	for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 09:56:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 52F15C433C8;
	Sun, 17 Sep 2023 09:56:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694944610;
	bh=DAC1H3KvKv7dosmMjJ0okFGWy8h13pmJ7Ab1K9lbfww=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=oxYBt+0yB/btwURJoXCL0LahIJc0p+XKQWZjwecvjUgjO9+auUznoDwVwI9FX3ofY
	 4XxsWJUGuftJOLcJvsLPxQJGMplFMkWQtrtuFMQ6WTs2ZYRZUM4um50ghwAdaq9B9l
	 ITefJP8QUh2TsVYgjBo3ldv8XT7Bp+sjjdBB1XVfgCWJYYrnUfUH4Fq74JjnqEaZjq
	 DJVNyanq9v3XfyQCwGp+wNawONU+GicLOKpu12KCRMDrEFjRhXcMgIBb5J56CQp/aK
	 /6BZm7usXpx1mTFhgk1HxwCMhUFZej47Kpf02vP4OD1vlxcGn/nP+K/07MEgdetUMN
	 qvKdV8MnrcVJQ==
Date: Sun, 17 Sep 2023 10:56:40 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Cc: mazziesaccount@gmail.com, ak@it-klinger.de,
 andriy.shevchenko@linux.intel.com, ang.iglesiasg@gmail.com,
 bbara93@gmail.com, conor+dt@kernel.org, devicetree@vger.kernel.org,
 krzysztof.kozlowski+dt@linaro.org, lars@metafoo.de,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 matti.vaittinen@fi.rohmeurope.com, robh+dt@kernel.org
Subject: Re: [PATCH v2 2/3] iio: pressure: Support ROHM BU1390
Message-ID: <20230917105640.6b3fe6b4@jic23-huawei>
In-Reply-To: <cdc9a8f8-fbd5-1eb3-7bac-1e6e5893bc9b@wanadoo.fr>
References: <cover.1694760170.git.mazziesaccount@gmail.com>
	<f378a401cec4fb0b9287b52ab159f00dd77569a6.1694760170.git.mazziesaccount@gmail.com>
	<cdc9a8f8-fbd5-1eb3-7bac-1e6e5893bc9b@wanadoo.fr>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sat, 16 Sep 2023 10:01:06 +0200
Christophe JAILLET <christophe.jaillet@wanadoo.fr> wrote:

> Le 15/09/2023 =C3=A0 08:56, Matti Vaittinen a =C3=A9crit=C2=A0:
> > Support for the ROHM BM1390 pressure sensor. The BM1390GLV-Z can measure
> > pressures ranging from 300 hPa to 1300 hPa with configurable measurement
> > averaging and internal FIFO. The sensor does also provide temperature
> > measurements.
> >=20
> > Sensor does also contain IIR filter implemented in HW. The data-sheet
> > says the IIR filter can be configured to be "weak", "middle" or
> > "strong". Some RMS noise figures are provided in data sheet but no
> > accurate maths for the filter configurations is provided. Hence, the IIR
> > filter configuration is not supported by this driver and the filter is
> > configured to the "middle" setting (at least not for now).
> >=20
> > The FIFO measurement mode is only measuring the pressure and not the
> > temperature. The driver measures temperature when FIFO is flushed and
> > simply uses the same measured temperature value to all reported
> > temperatures. This should not be a problem when temperature is not
> > changing very rapidly (several degrees C / second) but allows users to
> > get the temperature measurements from sensor without any additional log=
ic.
> >=20
> > This driver allows the sensor to be used in two muitually exclusive way=
s,
> >=20
> > 1. With trigger (data-ready IRQ).
> > In this case the FIFO is not used as we get data ready for each collect=
ed
> > sample. Instead, for each data-ready IRQ we read the sample from sensor
> > and push it to the IIO buffer.
> >=20
> > 2. With hardware FIFO and watermark IRQ.
> > In this case the data-ready is not used but we enable watermark IRQ. At
> > each watermark IRQ we go and read all samples in FIFO and push them to =
the
> > IIO buffer.
> >=20
> > Signed-off-by: Matti Vaittinen <mazziesaccount-Re5JQEeQqe8AvxtiuMwx3w@p=
ublic.gmane.org>
> >  =20
>=20
> ...
>=20
> > +struct bm1390_data_buf {
> > +	u32 pressure;
> > +	__be16 temp; =20
>=20
> I've not looked in details so I'm not sure if related, but=20
> bm1390_read_temp() seems to use int.
>=20

I'll comment on this one below..

> > +	s64 ts __aligned(8);
> > +};
> > +
> > +/* Pressure data is in 3 8-bit registers */
> > +#define BM1390_PRESSURE_SIZE	3 =20
>=20
> Unused? (see other comment below)
>=20
> > +
> > +/* BM1390 has FIFO for 4 pressure samples */
> > +#define BM1390_FIFO_LENGTH	4
> > +
> > +/* Temperature data is in 2 8-bit registers */
> > +#define BM1390_TEMP_SIZE	2 =20
>=20
> Unused? (see other comment below)
>=20
> ...
>=20
> > +static int bm1390_read_temp(struct bm1390_data *data, int *temp)
> > +{
> > +	__be16 temp_raw; =20
>=20
> Something to do with BM1390_TEMP_SIZE?

Yeah, better to drop that define as doesn't add anything.
Possibly the one for the 24bit (ish) field does given we can't just
use a type for that.

>=20
> > +	int ret;
> > +
> > +	ret =3D regmap_bulk_read(data->regmap, BM1390_REG_TEMP_HI, &temp_raw,
> > +			       sizeof(temp_raw));
> > +	if (ret)
> > +		return ret;
> > +
> > +	*temp =3D be16_to_cpu(temp_raw); =20
>=20
> See potential link with the comment above related to=20
> bm1390_data_buf.temp being a __be16 an temp being a int.

That is fine. They two are used in very different paths.
The hardware definition is indeed a __be16 and when pushed via the IIO
buffered interface we leave it like that.  See the fifo draining code.

This function is for read_raw() which is ultimately just used to provide
the sysfs reads.  As such, we just want he value to 'fit' and be in a form
that is printable (needs to match cpu endianness) as such this function
does the conversions - whereas for the buffered interface fed by the
fifo we make that a userspace problem.

>=20
> > +
> > +	return 0;
> > +}
> > +
> > +static int bm1390_pressure_read(struct bm1390_data *data, u32 *pressur=
e)
> > +{
> > +	int ret;
> > +	u8 raw[3]; =20
>=20
> BM1390_PRESSURE_SIZE?
>=20
> (not sure if it make sense because we still have [0..2] below, so having=
=20
> 3 here looks useful)
>=20
> > +
> > +	ret =3D regmap_bulk_read(data->regmap, BM1390_REG_PRESSURE_BASE,
> > +			       raw, sizeof(raw));
> > +	if (ret < 0)
> > +		return ret;
> > +
> > +	*pressure =3D (u32)(raw[2] >> 2 | raw[1] << 6 | raw[0] << 14);
> > +
> > +	return 0;
> > +} =20
>=20
> ...
>=20
> > +static int bm1390_read_data(struct bm1390_data *data,
> > +			struct iio_chan_spec const *chan, int *val, int *val2)
> > +{
> > +	int ret;
> > +
> > +	mutex_lock(&data->mutex);
> > +	/*
> > +	 * We use 'continuous mode' even for raw read because according to the
> > +	 * data-sheet an one-shot mode can't be used with IIR filter.
> > +	 */
> > +	ret =3D bm1390_meas_set(data, BM1390_MEAS_MODE_CONTINUOUS);
> > +	if (ret)
> > +		goto unlock_out;
> > +
> > +	switch (chan->type) {
> > +	case IIO_PRESSURE:
> > +		msleep(BM1390_MAX_MEAS_TIME_MS);
> > +		ret =3D bm1390_pressure_read(data, val);
> > +		break;
> > +	case IIO_TEMP:
> > +		msleep(BM1390_MAX_MEAS_TIME_MS);
> > +		ret =3D bm1390_read_temp(data, val);
> > +		break;
> > +	default:
> > +		ret =3D -EINVAL;
> > +	}
> > +	bm1390_meas_set(data, BM1390_MEAS_MODE_STOP); =20
>=20
> "ret =3D" missing, or done on purpose?
>=20
> > +unlock_out:
> > +	mutex_unlock(&data->mutex);
> > +
> > +	return ret;
> > +}
> > +
> > +static int bm1390_read_raw(struct iio_dev *idev,
> > +			   struct iio_chan_spec const *chan,
> > +			   int *val, int *val2, long mask)
> > +{
> > +	struct bm1390_data *data =3D iio_priv(idev);
> > +	int ret;
> > +
> > +	switch (mask) {
> > +	case IIO_CHAN_INFO_SCALE:
> > +		if (chan->type =3D=3D IIO_TEMP) {
> > +			*val =3D 31;
> > +			*val2 =3D 250000;
> > +
> > +			return IIO_VAL_INT_PLUS_MICRO;
> > +		} else if (chan->type =3D=3D IIO_PRESSURE) {
> > +			*val =3D 0;
> > +			/*
> > +			 * pressure in hPa is register value divided by 2048.
> > +			 * This means kPa is 1/20480 times the register value,
> > +			 * which equals to 48828.125 * 10 ^ -9
> > +			 * This is 48828.125 nano kPa.
> > +			 *
> > +			 * When we scale this using IIO_VAL_INT_PLUS_NANO we
> > +			 * get 48828 - which means we lose some accuracy. Well,
> > +			 * let's try to live with that.
> > +			 */
> > +			*val2 =3D 48828;
> > +
> > +			return IIO_VAL_INT_PLUS_NANO;
> > +		}
> > +
> > +		return -EINVAL;
> > +	case IIO_CHAN_INFO_RAW:
> > +		ret =3D iio_device_claim_direct_mode(idev);
> > +		if (ret)
> > +			return ret;
> > +
> > +		ret =3D bm1390_read_data(data, chan, val, val2);
> > +		iio_device_release_direct_mode(idev);
> > +		if (ret)
> > +			return ret;
> > +
> > +		return IIO_VAL_INT;
> > +	default:
> > +		return -EINVAL; =20
>=20
> Certainly useless, but should we break and return -EINVAL after the=20
> switch, so that it is more explicit that bm1390_read_raw() always=20
> returns a value?

I prefer this as it stands..  Compiler will catch a failure to return a val=
ue,
and this way it is clearer what we are basing decision for it being invalid=
 on.

Jonathan



