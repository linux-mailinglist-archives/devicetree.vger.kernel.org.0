Return-Path: <devicetree+bounces-270-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A24487A0997
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 17:47:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5B8B1282060
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 15:47:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CEA92134F;
	Thu, 14 Sep 2023 15:37:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F73710A1E
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 15:37:26 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8285CCC;
	Thu, 14 Sep 2023 08:37:25 -0700 (PDT)
Received: from mercury (dyndsl-091-248-132-131.ewe-ip-backbone.de [91.248.132.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 4505F660734A;
	Thu, 14 Sep 2023 16:37:24 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1694705844;
	bh=UqG6z/8olviMZZzuNUbgG32FtONrrbBej7k30uDeaV8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MZbdEXF4K5B9Sq8Z9fCZfLNzBdqkbF4+Ku771FQAjs3A5dKRglc7Sc6GzmYrYttlG
	 F0YB6qS0MwTt5hP4vl9r4Zl3bJil2UunmPJ73XRbQ7TVObPzjZqa5AI6Q3tSLqow0j
	 v90hxe4nZYxlmjbQFtOGs34xf0UvV+1G76QwqKdirUXf0W3wWBTWna5bU1HRWsQyIK
	 oILZG9cffkR1z2V451N+yAL5FpI82iQUTT3aJqw2VCTCQ9U/v9TAuCqvL3yYU1B3ud
	 QD7ohXF/ohheh4VoB7kkQQf91C/IK5Sn7+CaR6189Kd28VMVk0b7XIJUp+8lVc5R+g
	 U60LthjaYLKLw==
Received: by mercury (Postfix, from userid 1000)
	id A3323106098B; Thu, 14 Sep 2023 17:37:22 +0200 (CEST)
Date: Thu, 14 Sep 2023 17:37:22 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v3 0/3] MM8013 fg driver
Message-ID: <20230914153722.gkk5wruzswwubazq@mercury.elektranox.org>
References: <20230621-topic-mm8013-v3-0-781da361ec60@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3c6puuxssbxshm2z"
Content-Disposition: inline
In-Reply-To: <20230621-topic-mm8013-v3-0-781da361ec60@linaro.org>


--3c6puuxssbxshm2z
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Sep 13, 2023 at 05:28:42PM +0200, Konrad Dybcio wrote:
> This series brings support for the Mitsumi MM8013 Li-Ion fuel gauge.
>=20
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
> Changes in v3:
> - Reference power-supply.yaml in bindings
> - Link to v2: https://lore.kernel.org/r/20230621-topic-mm8013-v2-0-9f1b41=
f4bc06@linaro.org

I also provided feedback to the driver in v2, since that did not
change between v2 and v3 the feedback still applies.

-- Sebastian

--3c6puuxssbxshm2z
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmUDKLIACgkQ2O7X88g7
+ppBQRAAp8H5TFgvYQxZnI7Tqen/GfI2+bS2mHXmHB9TsNaF3X1Dl50561c1AMDh
5moVY43E5bv+AQ9Kx2qNzL33HgOr0AMLsVA/0WufHpqfAq9wrUTs3KJdWedg1LmW
jU+mOLKvURZm9WDCe+mt6kS17PRWODaGo9pqZAtfsT8ZDqvoqpFEyokQfcqUNW6t
cxF//9eicwCtEAgnBiSl6ETgvQVe1eA6APApNb9RyMN0w9Xct1+EZKoTBn1mUxn7
y8PVVaNBGUdQq+KrCGe9hZG5DT1xPpdDynCxWq30CrnEF5ys/H08zoU6W/KLk7OM
S9UpjTXN8iFWEXTzEj1/GVMmHHDUhCa7xqFCMTDzlwJFrrSxEuFmfGmJaeQ7rUVq
kn/YpEL+v0njIu7yWFdJ0/YgknREZvoMoqrw2byKEx0dg7BapJO9rK2IACIf5Og8
DnXlkMsuL3gYTUNNB8b9Xks+0c3AgPvGwCZm3YGjOq0c/k+flc/IxvABNJQMwS3C
iecF66KvXbxSkoO8Qi9uznpKcksXkJLbbRPk3V6bdvizJ0+wr+FtMzBH1VuJVNV6
5eMcd1y+7/QyJyOBjdOJSlYFfEW7kNFYmS/CIiTIkQdrMs2vqVEAgztNeR3UKrlj
5rl/tfbZ6DBa2tCYHsLsXPZ9krls/AIpnPBRdFWjo7X0p0xB1+8=
=s91H
-----END PGP SIGNATURE-----

--3c6puuxssbxshm2z--

