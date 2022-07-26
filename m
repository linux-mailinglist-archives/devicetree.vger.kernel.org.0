Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C262658145C
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 15:43:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232427AbiGZNn5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jul 2022 09:43:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55780 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229741AbiGZNn4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jul 2022 09:43:56 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B1881F2EA
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 06:43:55 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 7ADD5615A0
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 13:43:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E5D10C433C1;
        Tue, 26 Jul 2022 13:43:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1658843034;
        bh=mEDN3weHgupnH4A2/+C+Z4+HPL6fCzrzHtbPdOWWPOo=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=fDYzXd824a1BboA59GcWAdiwnp7qM0Prk7f7JoA8wAxnUVqUHnba8SxG79B+jEDXj
         9ZwxYw29hDvjmRQZaiwO1eRqHbcwaSyTRL3KYzST8ihmLjOb99Y+qsgIe1rwqFuYaQ
         AO3R9esauTdfoC9MlpeMaDv4nVgcBTiU9LzAUMPqEo68JsujwQOp0vuiOTRjwVv/l2
         kOP/sze03Su2JKFEHv0ZmPeAU0jDK8M7Qq5Ssbv5IsenL2sFYYlf3NL2EABLiu9j28
         TWFW1vm61Jun7ZiWT39pHLBiRnDH43Z0Bkofg0Z8dcR8K8nHP0vVaJWhL45IltdN7u
         7FfOvsoBzxPbg==
Date:   Tue, 26 Jul 2022 14:43:49 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Zhu Ning <zhuning0077@gmail.com>
Cc:     alsa-devel@alsa-project.org, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.com, devicetree@vger.kernel.org, robh@kernel.org,
        ckeepax@opensource.cirrus.com,
        David Yang <yangxiaohua@everest-semi.com>,
        Zhu Ning <zhuning@everest-semi.com>
Subject: Re: [PATCH v3 1/2] ASoC: codecs: add support for ES8326
Message-ID: <Yt/vlUZ+07/a1pcC@sirena.org.uk>
References: <20220726131747.127992-1-zhuning0077@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="LlQEx/YUHbT7YwWA"
Content-Disposition: inline
In-Reply-To: <20220726131747.127992-1-zhuning0077@gmail.com>
X-Cookie: All rights reserved.
X-Spam-Status: No, score=-7.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--LlQEx/YUHbT7YwWA
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jul 26, 2022 at 09:17:46PM +0800, Zhu Ning wrote:

> +static struct snd_pcm_hw_constraint_list es8326_constraints = {
> +	.count = ARRAY_SIZE(es8326_rates),
> +	.list = es8326_rates,
> +};
> +
> +static int es8326_set_dai_sysclk(struct snd_soc_dai *codec_dai,
> +				 int clk_id, unsigned int freq, int dir)
> +{
> +	struct snd_soc_component *codec = codec_dai->component;
> +	struct es8326_priv *es8326 = snd_soc_component_get_drvdata(codec);
> +
> +	es8326->sysclk = freq;
> +
> +	if (freq == 0) {
> +		es8326->sysclk_constraints->list = NULL;
> +		es8326->sysclk_constraints->count = 0;
> +		return 0;
> +	}
> +
> +	es8326->sysclk_constraints = &es8326_constraints;

Nothing ever restores the constraints if a clock is specified again, and
in general it's odd that the enable/disable don't match up - if we're
setting variable constraints I'd expect that in the freq == 0 case we
should be setting ->sysclk_constraints to NULL rather than the contents.
Indeed, we'll segfault here if the frequency is set to 0 without having
first been set to some actual value.  It's also bad to modify static
data potentially shared between multiple instances of the device in a
system.

Having said all that though I'm not clear why we're doing this
constraint stuff at all, we never reference sysclk_constraints during
startup and teardown and you'd usually do this because you want to set
constraints that depend on the sysclk but this is just a constant set of
constraints that should be set in the DAI desription.

> +	if (coeff >= 0) {
> +		regmap_write(es8326->regmap,  ES8326_CLK_DIV1_04,
> +			     coeff_div[coeff].reg4);
> +		regmap_write(es8326->regmap,  ES8326_CLK_DIV2_05,
> +			     coeff_div[coeff].reg5);
> +		regmap_write(es8326->regmap,  ES8326_CLK_DLL_06,
> +			     coeff_div[coeff].reg6);
> +		regmap_write(es8326->regmap,  ES8326_CLK_MUX_07,
> +			     coeff_div[coeff].reg7);
> +		regmap_write(es8326->regmap,  ES8326_CLK_ADC_SEL_08,
> +			     coeff_div[coeff].reg8);
> +		regmap_write(es8326->regmap,  ES8326_CLK_DAC_SEL_09,
> +			     coeff_div[coeff].reg9);
> +		regmap_write(es8326->regmap,  ES8326_CLK_ADC_OSR_0A,
> +			     coeff_div[coeff].rega);
> +		regmap_write(es8326->regmap,  ES8326_CLK_DAC_OSR_0B,
> +			     coeff_div[coeff].regb);
> +	}

This will just leave the divider setup at whatever they were last set at
if we don't get a value which given the names of the registers I suspect
won't go too well, it'd be better to print a warning just in case.

> +	regmap_write(es8326->regmap, ES8326_INT_SOURCE_58, 0x08);
> +	regmap_write(es8326->regmap, ES8326_INTOUT_IO_59, 0x45);

This really does look like board specific configuration which should
come from DT.

--LlQEx/YUHbT7YwWA
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmLf75QACgkQJNaLcl1U
h9Ca6wf9F6IsX1jykGyGTMPOx0Z7JLCC3eCFWZMe2bF7n1bm18s+BLWKRa1wubD8
kdbk9c43t1fBdDZ9egXT+LQT8vGFqXHuJAAafy1DdiGONLYpWKvoFLiko0InioFw
+h73Ip54nIgywCvajE8cqmzJ2cNLK60qYk6pbsaqMr6Xe13z3j4i6o6lIUKpYO4O
1UY9vGTbi3kibHEh8hcDNvxJPVZXYdQwl11q3jLE4V3Shiawb52l0b9Mr1Vq1q28
K826iAJseC4qTy5ZlIFanrRwCrNUUzQJndtNnHUrQvcCGE07jtoH9dtdh2If3mvo
YGCBQ5QvD6rkpzkZZlgw2utwpVLCKA==
=ZL8T
-----END PGP SIGNATURE-----

--LlQEx/YUHbT7YwWA--
