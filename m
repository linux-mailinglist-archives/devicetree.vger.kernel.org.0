Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1CF8A43B078
	for <lists+devicetree@lfdr.de>; Tue, 26 Oct 2021 12:48:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232900AbhJZKuW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Oct 2021 06:50:22 -0400
Received: from mail.kernel.org ([198.145.29.99]:57778 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231345AbhJZKuU (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 26 Oct 2021 06:50:20 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id DC731604DC;
        Tue, 26 Oct 2021 10:47:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1635245275;
        bh=Ic6dUgfs77UQFujys67aZD+FamcmUe9wKid/CCmWnFs=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=iJAECZYPFmY08gC10MfILAEzSoyD+IOjq+i6BmZZ3l8ijhwU3Mkt194rY3anuYXAz
         yGaktsW3uLtXNpk9jfcJqpjXFGUtEih7jiOOD6rgABICTfuCvf7C7CynuUXH4bTEgp
         ZO9bYvIi0tgCBs4NkE46aZ7v0/QLN2arww52xJKhGGT9z++wc9TWPxkhmNdske4IiK
         iT6HyAmAh+Zk4N/6uiyLKsSvpUzp1zEFgrQ38zYnb1S1dkkV5kPVdHgaWgF/+XQdog
         1192KU3XzIIfCnDKT6hvJKudFzwekQjEqIQGZLj9aCSnhdRl/jW95tTB0w5N0QBPT/
         CxfnvnB0hqzRg==
Date:   Tue, 26 Oct 2021 11:47:51 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc:     bjorn.andersson@linaro.org, robh@kernel.org, plai@codeaurora.org,
        pierre-louis.bossart@linux.intel.com, tiwai@suse.de,
        devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org
Subject: Re: [RESEND PATCH v10 00/17] ASoC: qcom: Add AudioReach support
Message-ID: <YXfc18+fqBNajHX8@sirena.org.uk>
References: <20211026103815.19468-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="yx21aV/ZEADWQrmo"
Content-Disposition: inline
In-Reply-To: <20211026103815.19468-1-srinivas.kandagatla@linaro.org>
X-Cookie: Times approximate.
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--yx21aV/ZEADWQrmo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Oct 26, 2021 at 11:37:58AM +0100, Srinivas Kandagatla wrote:

> Am resending this series as I ended up sending incorrect patches for v10.

If you're sending something different it's not just a new version!

--yx21aV/ZEADWQrmo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmF33NYACgkQJNaLcl1U
h9AHEQf/SJpIgAEmq1U3oU4QdVnlfu499UQq+GdEkAUL8rviRrtPfeOa1Fqu8js7
2fzctA16gimV3skxccNKUYhkHWm8NJuvgVlT9G3txT69CzLwL8qxnWzMavdM1/uD
21/wpSY8ZBvFtka91farXSJm8CUUAYkNk9Hl/2fjr17bKndPs+Ra7Kjn+5k4VNKT
26KwfqHHgLuENAn8Mds/En9qLRg8d0DQuDGF/rOtN00yz5ReAXHSTvOZp/zK1Bl/
fq+OBztFjYSgDsmwl22wY/hoFAaXeaRuP01/eRCgq9JsKVy/XqBj530nmVOKLIc1
ch43I6ikSZuLQLHBlivKpuyPzdDHxQ==
=nQpH
-----END PGP SIGNATURE-----

--yx21aV/ZEADWQrmo--
