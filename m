Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 388F229A69
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2019 16:56:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2403927AbfEXO4O (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 May 2019 10:56:14 -0400
Received: from heliosphere.sirena.org.uk ([172.104.155.198]:35166 "EHLO
        heliosphere.sirena.org.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2403917AbfEXO4O (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 May 2019 10:56:14 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
        MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
        Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
         bh=TENqr1fMngoHvuyhpRomsD2bSlLjY/XMfSJp2osjYp4=; b=nqnVJhFe3MUNXc4AumiWPnjSO
        bvNExmoqNN8PJzl8sPu3oCpyBl/Bj1f2pomFOTYiGLrnlmEeWMkuF8DSv7AGMe0UtBey3w4B1XBW0
        oZyBL5BpYtpCMEZtUU9EBhv0i3yMPW+s5pid0dDXhS+5npNI1CKvS+5eRmdaAUTD4FzPM=;
Received: from [2a00:23c4:5d92:2c00:517d:dd40:f2e4:f01a] (helo=finisterre.sirena.org.uk)
        by heliosphere.sirena.org.uk with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.89)
        (envelope-from <broonie@sirena.org.uk>)
        id 1hUBc4-0003WC-HA; Fri, 24 May 2019 14:56:04 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
        id 13CB5440046; Fri, 24 May 2019 15:56:03 +0100 (BST)
Date:   Fri, 24 May 2019 15:56:03 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Charles Keepax <ckeepax@opensource.cirrus.com>
Cc:     lgirdwood@gmail.com, robh+dt@kernel.org, mark.rutland@arm.com,
        lee.jones@linaro.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, patches@opensource.cirrus.com
Subject: Re: [PATCH 2/5] ASoC: madera: Add common support for Cirrus Logic
 Madera codecs
Message-ID: <20190524145603.GE2456@sirena.org.uk>
References: <20190524104158.30731-1-ckeepax@opensource.cirrus.com>
 <20190524104158.30731-2-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="WBsA/oQW3eTA3LlM"
Content-Disposition: inline
In-Reply-To: <20190524104158.30731-2-ckeepax@opensource.cirrus.com>
X-Cookie: The other line moves faster.
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--WBsA/oQW3eTA3LlM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, May 24, 2019 at 11:41:55AM +0100, Charles Keepax wrote:

> +	/*
> +	 * Just read a register a few times to ensure the internal
> +	 * oscillator sends out a few clocks.
> +	 */
> +	for (i = 0; i < 4; i++) {
> +		ret = regmap_read(madera->regmap, MADERA_SOFTWARE_RESET, &val);
> +		if (ret)
> +			dev_err(madera->dev,
> +				"%s Failed to read register: %d (%d)\n",
> +				__func__, ret, i);

Why use %s to format the __func__ rather than just concatenate?

> +	}
> +
> +	udelay(300);

So we read the register a few times then add a few hundred us of delay
after?  Surely that delay is going to be negligable compared to the time
spent on I/O?

> +int madera_sysclk_ev(struct snd_soc_dapm_widget *w,
> +		     struct snd_kcontrol *kcontrol, int event)
> +{
> +	struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
> +	struct madera_priv *priv = snd_soc_component_get_drvdata(component);
> +
> +	madera_spin_sysclk(priv);
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL_GPL(madera_sysclk_ev);

This will delay both before and after every power up and power down.
Are you sure that makes sense?

> +
> +	ret = madera_check_speaker_overheat(madera, &warn, &shutdown);
> +	if (ret)
> +		shutdown = true; /* for safety attempt to shutdown on error */
> +
> +	if (shutdown) {
> +		dev_crit(madera->dev, "Thermal shutdown\n");
> +		ret = regmap_update_bits(madera->regmap,
> +					 MADERA_OUTPUT_ENABLES_1,
> +					 MADERA_OUT4L_ENA |
> +					 MADERA_OUT4R_ENA, 0);
> +		if (ret != 0)
> +			dev_crit(madera->dev,
> +				 "Failed to disable speaker outputs: %d\n",
> +				 ret);
> +	} else if (warn) {
> +		dev_crit(madera->dev, "Thermal warning\n");
> +	}
> +
> +	return IRQ_HANDLED;

We will flag the interrupt as handled if there was neither a warning nor
a critical overheat?  I'd expect some warning about a spurious interrupt
at least.

> +static int madera_get_variable_u32_array(struct madera_priv *priv,
> +					 const char *propname,
> +					 u32 *dest,
> +					 int n_max,
> +					 int multiple)
> +{
> +	struct madera *madera = priv->madera;
> +	int n, ret;
> +
> +	n = device_property_read_u32_array(madera->dev, propname, NULL, 0);
> +	if (n == -EINVAL) {
> +		return 0;	/* missing, ignore */
> +	} else if (n < 0) {
> +		dev_warn(madera->dev, "%s malformed (%d)\n",
> +			 propname, n);
> +		return n;
> +	} else if ((n % multiple) != 0) {
> +		dev_warn(madera->dev, "%s not a multiple of %d entries\n",
> +			 propname, multiple);
> +		return -EINVAL;
> +	}
> +
> +	if (n > n_max)
> +		n = n_max;
> +
> +	ret = device_property_read_u32_array(madera->dev, propname, dest, n);
> +
> +	if (ret < 0)
> +		return ret;
> +	else
> +		return n;
> +}

This feels like it should perhaps be a generic OF helper function -
there's nothing driver specific I'm seeing here and arrays that need to
be a multiple of N entries aren't that uncommon I think.

> +	mutex_lock(&priv->rate_lock);
> +	cached_rate = priv->adsp_rate_cache[adsp_num];
> +	mutex_unlock(&priv->rate_lock);

What's this lock protecting?  The value can we read can change as soon
as the lock is released and we're just reading a single word here rather
than traversing a data structure that might change under us or
something.

> +void madera_destroy_bus_error_irq(struct madera_priv *priv, int dsp_num)
> +{
> +	struct madera *madera = priv->madera;
> +
> +	madera_free_irq(madera,
> +			madera_dsp_bus_error_irqs[dsp_num],
> +			&priv->adsp[dsp_num]);
> +}
> +EXPORT_SYMBOL_GPL(madera_destroy_bus_error_irq);

We use free rather than destroy normally?

> +static const char * const madera_dfc_width_text[MADERA_DFC_WIDTH_ENUM_SIZE] = {
> +	"8bit", "16bit", "20bit", "24bit", "32bit",
> +};

Spaces might make these more readable.

> +static void madera_sleep(unsigned int delay)
> +{
> +	if (delay < 20) {
> +		delay *= 1000;
> +		usleep_range(delay, delay + 500);
> +	} else {
> +		msleep(delay);
> +	}
> +}

This feels like it might make sense as a helper function as well - I
could've sworn there was one already but I can't immediately find it.

--WBsA/oQW3eTA3LlM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlzoBgIACgkQJNaLcl1U
h9Ax4Qf7BL5pxFNTieQDiYL+ovKvGa4NiGlYXApjC/oMBn2LF5Q716fLD9bkY/Uh
fdEqSS4nbBZ/apJrPEM4ADrqkQh2ep9Bjmlz6mhjnVEL6owyZQJfcTqKENW3UbZ8
sTjcxDGIIcom9d18lMpUvZwLrQx8SFNubom4sPcTWIIu+1mYDbDGFyc+woksHCQ+
mtPOvAHCYGFOxNZrz6euuUXe3g83QhdkTp9VFpPI8BDomTnBgrE/8jF25Dd7vJya
NmLSDJIxSEFqPb2v3YGVylCvxfQRyzHHHMsxaPB3iz4Lem1MdiLPbyzIq15vJJ1k
yWGVeeeSGUEcEBtVntTDKLG+C8ZfwA==
=FHnb
-----END PGP SIGNATURE-----

--WBsA/oQW3eTA3LlM--
