Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E9D0015A508
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2020 10:40:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728748AbgBLJkA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Feb 2020 04:40:00 -0500
Received: from Galois.linutronix.de ([193.142.43.55]:47918 "EHLO
        Galois.linutronix.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728637AbgBLJj7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Feb 2020 04:39:59 -0500
Received: from [5.158.153.52] (helo=mitra)
        by Galois.linutronix.de with esmtpsa (TLS1.2:RSA_AES_256_CBC_SHA1:256)
        (Exim 4.80)
        (envelope-from <b.spranger@linutronix.de>)
        id 1j1oUv-0000gP-6C; Wed, 12 Feb 2020 10:39:57 +0100
Date:   Wed, 12 Feb 2020 10:39:42 +0100
From:   Benedikt Spranger <b.spranger@linutronix.de>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     bage@linutronix.de, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH 1/5] dt-bindings: Add vendor prefix lx for Linutronix
Message-ID: <20200212103942.6f2dc5ec@mitra>
In-Reply-To: <20200210074310.c6adwjegqouzs6uc@gilmour.lan>
References: <20200206113328.7296-1-bage@linutronix.de>
        <20200206113328.7296-2-bage@linutronix.de>
        <20200210074310.c6adwjegqouzs6uc@gilmour.lan>
Organization: Linutronix GmbH
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/rH2XN2ouJdGnJj+DKJVKASJ";
 protocol="application/pgp-signature"; micalg=pgp-sha512
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

--Sig_/rH2XN2ouJdGnJj+DKJVKASJ
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Mon, 10 Feb 2020 08:43:10 +0100
Maxime Ripard <maxime@cerno.tech> wrote:

> Vendor names are usually either the vendor name itself or the stock
> name, so you should really use linutronix here
May you kindly enlighten me why?

"lx" is used internaly and externaly in projects, publications,
contracts, etc. as common abbreviation by the Linutronix GmbH.
Therefore it was self-evident to use this abbreviation in the device
tree.

As I did not found any documented rule in the kernel documentation,
which denote a restriction for the vendor abbreviation in the device
tree bindings the decision for "lx" was clear.

A quick look into
"Documentation/devicetree/bindings/vendor-prefixes.yaml"
assured me in the decision to use "lx".
Here some example not fitting your rule:
"^ad,.*":
"^adi,.*":
"^al,.*":
"^anvo,.*":
...

In summary I would be encouraged if "lx" gets in, as it is *our*
abbreviation.

Regards=20
    Benedikt Spranger

--Sig_/rH2XN2ouJdGnJj+DKJVKASJ
Content-Type: application/pgp-signature
Content-Description: Digitale Signatur von OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEAqI1USXos6PVrEqYjSQ2tYFsrE4FAl5Dx98ACgkQjSQ2tYFs
rE6AXw/+Ijj/G0UljQ8kJ4smTDZlgviaDCd+dV3By+8r7HjFTPBnJBBzuKoUagm6
5i3/keSw1nqsfGDgelfbEwHvJWB7wO6dMG4J0TadOXMxYCvKJRTNwrmXdYFyfs2G
K/7kL9OVxVzl0V8eWCayAFTRLoqMd/HSjsIk9M84JezwCHRC6S68r2ro8GD0wOxm
vniHtzmHfMLoFbR/Qyni+XIUfcyPc0hgap7QkqZe5yAZjYQCO0t36lERHziLt/bC
2wtL698KYs+4YCJmh6620HkpTTynwhOi7+uCiZYfd7vPOOHrLafhgACu55cKsble
dY5VVjR08vcy+HDg6mq2I/Mtznd6pLzj4NhS6VKNTLJ80QVIoHkanzsJmYb/JpcQ
QoPkDJlw5RM6bE/D5OQD1YHbYMsa/5VsdJqFqbOeahM8vFV46kkNExsWB32P0XZ4
VMVTJbJZouDRGdUcR8pWBzpj1TEfRWslBPD5iIL/N69Shth3cMrZjspIB/KHjA0o
3xHX7MUkg4sTH2X+vhVAs+S3iSuXKFx63EmdJ9RdoB7Edc7oFMRp0CvIheXMSGnS
IzKyioDsjUV7o2yMzgQcbZZYZ87eqqEkkex65a31qcj0VR99myL0prboDM2coZq0
/vcTCZPtz/tN1lzKHTpGvDczFj3fiB8bnoacxbOzPUs88N5t/T8=
=DKZO
-----END PGP SIGNATURE-----

--Sig_/rH2XN2ouJdGnJj+DKJVKASJ--
