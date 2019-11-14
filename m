Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1ECA2FC7C3
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2019 14:34:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726251AbfKNNev (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Nov 2019 08:34:51 -0500
Received: from mail.kernel.org ([198.145.29.99]:47056 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726139AbfKNNev (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 14 Nov 2019 08:34:51 -0500
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 5086A205C9;
        Thu, 14 Nov 2019 13:34:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1573738490;
        bh=EEAEkmDoKweu4dlBhfeLxwV4julud9PO90e3uHqc6M0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Ffl006Z/xsCHagAVS+I1wxczbjfoYgCJXW4GwKvPuauKjkuWcRbG1rebWF1jEGMR9
         iipPOzqv0aghhsrBcDzaFTgbeat5xyOREu5fWWCvcHGR0VuA8PH0uKyvjaiO/v9Fst
         7Iyc55O2Akz+lU5jD6IxlRA3yLcfn0QIy/AB/COo=
Date:   Thu, 14 Nov 2019 14:34:48 +0100
From:   Maxime Ripard <mripard@kernel.org>
To:     Georgii Staroselskii <georgii.staroselskii@emlid.com>
Cc:     wens@csie.org, robh+dt@kernel.org, mark.rutland@arm.com,
        linux-sunxi@googlegroups.com, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v2 0/3] Neutis N5H3 support
Message-ID: <20191114133448.GQ4345@gilmour.lan>
References: <1573575320-29546-1-git-send-email-georgii.staroselskii@emlid.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="YzDq+9le76OY47R0"
Content-Disposition: inline
In-Reply-To: <1573575320-29546-1-git-send-email-georgii.staroselskii@emlid.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--YzDq+9le76OY47R0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Nov 12, 2019 at 07:15:17PM +0300, Georgii Staroselskii wrote:
> Emlid Neutis board has another variant with H3 instead of H5. This patchset
> adds support for this board by moving common bits to
> sunxi-h3-h5-emlid-neutis.dtsi and then including it in processor-specific DTS.
>
> Changes from V1:
>
> - moved HDMI nodes from DTSI to DTS
> - added dt-bindings for Neutis N5H3
> - made use of an array of pins in gpio-regulator node

Queued for 5.6, thanks!
Maxime

--YzDq+9le76OY47R0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXc1X+AAKCRDj7w1vZxhR
xS+XAQCL2lsF/qkt6GxF6S1LEmFaJQ9MQn0IlH9HMfVsp1eBxAEAq/C8sR5q93Cd
DILZUP/reTHOaQcMkXJMngOK+dQIvAc=
=cGLZ
-----END PGP SIGNATURE-----

--YzDq+9le76OY47R0--
