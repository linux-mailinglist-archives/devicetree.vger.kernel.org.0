Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 971D5899C2
	for <lists+devicetree@lfdr.de>; Mon, 12 Aug 2019 11:22:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727259AbfHLJWn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Aug 2019 05:22:43 -0400
Received: from mail-wm1-f66.google.com ([209.85.128.66]:35189 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727054AbfHLJWn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Aug 2019 05:22:43 -0400
Received: by mail-wm1-f66.google.com with SMTP id l2so11123104wmg.0
        for <devicetree@vger.kernel.org>; Mon, 12 Aug 2019 02:22:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to;
        bh=K5BX9+YZUEu8MatNrYVdTkATjUfiYN9YLEkfaO6lueQ=;
        b=vMeJUZJWI6l4JG2AA5MoEdcETS0TIforwD6Zlyim9PSfGwbasymc+RWjcbkaP/00S7
         +th/cMK38BGDY5LQ4EsoF2q6uja/7NVhQIoZVNbyJtbf4naQwib/ihb0TqrBsM28Z3LU
         Hb9wy3maNHAVrfMkDGMxOn/rWsLDAJns2iBAYtc4b9XbHdV9Q5asJsflg8mpGwJkNljz
         ARcpJJiZoxDHklsltz48o8DjIeCsXiVeXWRvwPBFsEIwoTqRScc58XM7lZ+JofS9kM70
         ud4Hy1wS7qWS0YNlMFTqhEwsWTzJRdZvWyykIJtQBxkwF7UYDntm0NEkTTnWwvN9Fo5A
         171w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to;
        bh=K5BX9+YZUEu8MatNrYVdTkATjUfiYN9YLEkfaO6lueQ=;
        b=KxgA8s9BPfryR3cqAEkh0uZu4cVJ6thGkqv/Gi93CILstaWwZUw5wEiqs4ODPvk9Rg
         N6G/FU2u8IPFDjDRA7kYtTQOu5jmMhGdqfgLirMQpK4tylBZQt4supbYMc3xfTfsDimm
         yNl+jC+bsm22Irf+zSO0E8+bxb2QTljpkpQRNv4hdU9gfrR3QXfyQCfQ/qF/DVl3zRzT
         ytdcj3/HXcAJhXslUgbBAXQJTVKhUSiIEr6RmepLOXQT9i0aTFuQJeQStuLseLnTR3eQ
         H9Sg1Kjstpgn1l6wp9c1Gm0DwcgoyqYtu40R5eDLVD0lkulOkq9JnTbRaeNGIy4+54Ou
         hR7w==
X-Gm-Message-State: APjAAAWMO0JIFfCmw4tC1VlU5ppGZb4XnxAy39dXBp5dbZNTeMSECGC1
        0Lh6gee/TiwmjdcPTgvN405keA==
X-Google-Smtp-Source: APXvYqwAhkgPLd7grTOboLFQcTS62XkcvHngVWe3e/r7OM7vJvrDzi1mqkQqQIk5PC7cyQW4dO0oPQ==
X-Received: by 2002:a7b:cf0b:: with SMTP id l11mr28094548wmg.143.1565601759930;
        Mon, 12 Aug 2019 02:22:39 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:48cc:ae99:b746:39d8? ([2a01:e34:ed2f:f020:48cc:ae99:b746:39d8])
        by smtp.googlemail.com with ESMTPSA id s2sm11538299wmj.33.2019.08.12.02.22.38
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Aug 2019 02:22:39 -0700 (PDT)
Subject: Re: [PATCH 03/11] clocksource: sun4i: Add missing compatibles
To:     Maxime Ripard <maxime.ripard@bootlin.com>
Cc:     Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>, tglx@linutronix.de,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20190722081229.22422-1-maxime.ripard@bootlin.com>
 <20190722081229.22422-3-maxime.ripard@bootlin.com>
 <9df53981-d1b2-433c-e61f-7c000c71bc55@linaro.org>
 <20190812091631.j2pr7i2zeput3hrc@flea>
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
Openpgp: preference=signencrypt
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <42ee55ee-258c-7588-fea3-db3c661a0156@linaro.org>
Date:   Mon, 12 Aug 2019 11:21:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190812091631.j2pr7i2zeput3hrc@flea>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="J5t4Xuso7hExK4OnyELpFiIVNIijAUrC9"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--J5t4Xuso7hExK4OnyELpFiIVNIijAUrC9
Content-Type: multipart/mixed; boundary="D0kDJw0PVFwc6SAbaWFoLZpXkyX6gGyBK";
 protected-headers="v1"
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 tglx@linutronix.de, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Message-ID: <42ee55ee-258c-7588-fea3-db3c661a0156@linaro.org>
Subject: Re: [PATCH 03/11] clocksource: sun4i: Add missing compatibles
References: <20190722081229.22422-1-maxime.ripard@bootlin.com>
 <20190722081229.22422-3-maxime.ripard@bootlin.com>
 <9df53981-d1b2-433c-e61f-7c000c71bc55@linaro.org>
 <20190812091631.j2pr7i2zeput3hrc@flea>
In-Reply-To: <20190812091631.j2pr7i2zeput3hrc@flea>

--D0kDJw0PVFwc6SAbaWFoLZpXkyX6gGyBK
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 12/08/2019 11:16, Maxime Ripard wrote:
> Hi,
>=20
> On Mon, Aug 12, 2019 at 10:59:51AM +0200, Daniel Lezcano wrote:
>> On 22/07/2019 10:12, Maxime Ripard wrote:
>>> Newer Allwinner SoCs have different number of interrupts, let's add
>>> different compatibles for all of them to deal with this properly.
>>>
>>> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
>>
>> Acked-by: Daniel Lezcano <daniel.lezcano@linaro.org>
>=20
> Thanks!
>=20
> Can you merge this through your tree (along with the bindings)? I'll
> merge the DT patches

patches 1-4 then ?



--=20
 <http://www.linaro.org/> Linaro.org =E2=94=82 Open source software for A=
RM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog



--D0kDJw0PVFwc6SAbaWFoLZpXkyX6gGyBK--

--J5t4Xuso7hExK4OnyELpFiIVNIijAUrC9
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEGn3N4YVz0WNVyHskqDIjiipP6E8FAl1RL94ACgkQqDIjiipP
6E8lXQgAn9iSp6L2MmsxYQMmKt1ELiCKSXQq5gaZcoQDq9ayxAkCU+k6OPaeisKm
RnDR8ntTmlKOF5Ht4BQroHEKOC/WElmB3/35X4gkF1IHtUxk0OLdkPTjmGKPiE0f
mHKe1FrKiceWxXCDWav5sOCbVWINWsb0Dqf8YBXqFoiTU30njvdb5WMlZZfBEq9w
G6k6/dRkj8nMEIPL4hxSnqzeprsZDxZrw9Jdux6hH+8Ea0cO+pWeWBeXV5LB6JFa
xeUaSU4sPDjSOVeqRLVPvcwTb//m7zTHoM56POFAnfVM30JfjZylCkPTnmr9oPdV
c5LWor4UhP8jMV7r8Uely/ZoBv1Nmg==
=R5Td
-----END PGP SIGNATURE-----

--J5t4Xuso7hExK4OnyELpFiIVNIijAUrC9--
