Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id F3EA75D124
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2019 16:03:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727091AbfGBODA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Jul 2019 10:03:00 -0400
Received: from heliosphere.sirena.org.uk ([172.104.155.198]:53280 "EHLO
        heliosphere.sirena.org.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726341AbfGBODA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Jul 2019 10:03:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
        MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
        Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
         bh=1bt7onZdaroroVUiwTYzttShEdXUqbhPACv/uGvlimk=; b=J1cjn6zw+x8u130+ivpBIdMsU
        gHnMf2Yut6Wng5AJauTWawWOprCaKFQPdMLNEnefZk7CowD5dc5xv/uzyUY+yIM54wdTPKZhhnQoR
        4O2izs820HtlfShqkvOBI+JaZ1XDq6yU+K6SzhTzfIJoqKTiBLwZu9VtIA2CVS6z2kNVY=;
Received: from [2001:470:1f1d:6b5:7e7a:91ff:fede:4a45] (helo=finisterre.sirena.org.uk)
        by heliosphere.sirena.org.uk with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.89)
        (envelope-from <broonie@sirena.org.uk>)
        id 1hiJMz-0002TP-4I; Tue, 02 Jul 2019 14:02:53 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
        id 57749440046; Tue,  2 Jul 2019 15:02:52 +0100 (BST)
Date:   Tue, 2 Jul 2019 15:02:52 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc:     robh+dt@kernel.org, bgoswami@codeaurora.org, vkoul@kernel.org,
        devicetree@vger.kernel.org, lgirdwood@gmail.com,
        mark.rutland@arm.com, alsa-devel@alsa-project.org, srini@kernel.org
Subject: Re: [PATCH 1/6] ASoC: dt-bindings: add dt bindings for
 WCD9340/WCD9341 audio codec
Message-ID: <20190702140252.GO2793@sirena.org.uk>
References: <20190702080920.22623-1-srinivas.kandagatla@linaro.org>
 <20190702080920.22623-2-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="ABYnUdqoGSokwVM+"
Content-Disposition: inline
In-Reply-To: <20190702080920.22623-2-srinivas.kandagatla@linaro.org>
X-Cookie: This sentence no verb.
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--ABYnUdqoGSokwVM+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jul 02, 2019 at 09:09:15AM +0100, Srinivas Kandagatla wrote:

> +- qcom,micbias1-lvl:
> +	Usage: required
> +	Value type: <u32>
> +	Definition: Should be voltage in milli Volts for micbias1 output

milivolts

> +	Supported values are in inbetween 1800mV-2850mV

in between

--ABYnUdqoGSokwVM+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl0bZAsACgkQJNaLcl1U
h9BVIwf/ZrtpTqroAjSIn8T3sZSlepCMggF2K9upRobeq7jZHedZ6kcBQpAj1Btx
8RAy15YOLrH16f8ANuYCU9lVEzXn+iwx7yURRlBlt2WJdJah2JjQfLHsIEtPQv8a
wTpKdzieubMK0F0goPA8LYKoX+biHEwZlj2Ud/nUGtW8Ay/n5ZcGFE0ACI2JREXb
N0AT32HtYpUmO1AJq93jo1J11nzezCvc9v0IxVWDHtGoD3iCuao/9n59JNzcLTBb
q+DvYVXqlYWTf2SZTln8e7DLS6Phl4Spte94fxn/d5YVQN2qXGHWNmEAlRPm8VCs
/vR7rdWcd5g2ZBJRa+ak8cJJndmW3Q==
=bP+8
-----END PGP SIGNATURE-----

--ABYnUdqoGSokwVM+--
