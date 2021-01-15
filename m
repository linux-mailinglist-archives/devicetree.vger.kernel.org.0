Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DD95A2F757C
	for <lists+devicetree@lfdr.de>; Fri, 15 Jan 2021 10:33:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728120AbhAOJck (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jan 2021 04:32:40 -0500
Received: from wout1-smtp.messagingengine.com ([64.147.123.24]:35831 "EHLO
        wout1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1728119AbhAOJck (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 15 Jan 2021 04:32:40 -0500
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.west.internal (Postfix) with ESMTP id B15E4109D;
        Fri, 15 Jan 2021 04:31:33 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Fri, 15 Jan 2021 04:31:34 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm1; bh=HsVevunbqcn0WZOnrasqEtibK5+
        ofqfzXoCSROAGtew=; b=dtFK+59YZ78Od0fAwFFvA5zbWk0Q4WbT4N4ZprzKnuu
        PHdRycC3WPF+iAKFUn1oUO06znx2upX/SGsBuTChZLWY5lyRWLyFFOsi0+hm7f9S
        F7cltm8xadpvCkzot/AcT5sHFuUytPbR2TrXxbYE4NOzF/kR29Mn2f335JEwLhz+
        XIa1A+cchLxZPB8ttzWC2g9zcFixooHYp+fv8vP0AQiOCUtN3zQp8QqY4LQ9kG4g
        RD6ACkQzhYHUGlrvggcxywjbr6cLTYzkpro1Ao7mkc7kNUiBW6kdzVO/YRLO0Qzy
        xMlp4wmbF84kv49e9I8nvR4/JXy9GR3FNRk8TPataIg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=HsVevu
        nbqcn0WZOnrasqEtibK5+ofqfzXoCSROAGtew=; b=b7JDICAwu1oR8oUHNvYg7N
        qEaHY1lshOIVwSSBpfDxF2mPW5CVFUdq4EK533XrJpdeiGPU5qmpHkPxnsCxwy56
        dq0CX+nBafj93ueH/tvGLsulBprPS6U3wpdka8DvrxCs08CoMbgJ2CHO5hWSBCSU
        zLoyun2MduiLFNO59Or7xEHQ1oIv0mjfBlA1zbD3RfcL9b5Hzvaxn9FXkhH6XfZU
        J5dvA8P9s2zoUvPesNbKxcho0RYdwcKVHNJB1ohm44vrTVbl/xXPpaCxlGYfqcoC
        g7XmJ2d3sDY3xPiBB4vc6ITMnF30vgT9Lrur4sMh6wWWDroXq2WT/U7ZI7aosoDg
        ==
X-ME-Sender: <xms:9GABYDuZeGkg3F5xVKKeBENpxHh875OBEbyqHtOesoht8lvnybNoeg>
    <xme:9GABYEdcXva9stjtNAoQC6YNayad8xqU6LypXMtFFb77qLZurcQq2WOcPI2utg_Gs
    oOgjIKCNU2VebE-NK8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrtddugddufeefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepleekgeehhfdutdeljefgleejffehfffgieejhffgueefhfdtveetgeehieeh
    gedunecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
    frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:9GABYGxs6UeO1FaLtE-ULXwii_GDK0rPFjwQMRyE37q7VOpCWpb6FQ>
    <xmx:9GABYCOePzYgri3no-M52_0UCbVGSILFW8DWXFVBVts_fMn5by2Gvg>
    <xmx:9GABYD-LsZ8imi0p3cHwq5b0dxvlXzEW7LBC_XlfSeD1E6fpv3kmkg>
    <xmx:9WABYGbl9YC-H6RQohRvlj7Z6CTtTuly4VWy_Yx6JbghyQnbLiPR6w>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 78EA0108005B;
        Fri, 15 Jan 2021 04:31:32 -0500 (EST)
Date:   Fri, 15 Jan 2021 10:31:29 +0100
From:   Maxime Ripard <maxime@cerno.tech>
To:     Chen-Yu Tsai <wens@csie.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree <devicetree@vger.kernel.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH 01/19] dt-bindings: sunxi: Fix the pinecube compatible
Message-ID: <20210115093129.jfnoa34qz76qst3x@gilmour>
References: <20210114113538.1233933-1-maxime@cerno.tech>
 <CAGb2v676zeK+9xVMdYd1rZ5RRPLQO-t0s9CWzTcjtRqq82XupQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="4pp2awtrw5wfht7x"
Content-Disposition: inline
In-Reply-To: <CAGb2v676zeK+9xVMdYd1rZ5RRPLQO-t0s9CWzTcjtRqq82XupQ@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--4pp2awtrw5wfht7x
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 15, 2021 at 10:41:04AM +0800, Chen-Yu Tsai wrote:
> On Thu, Jan 14, 2021 at 7:35 PM Maxime Ripard <maxime@cerno.tech> wrote:
> >
> > Commit 6ab48105aae7 ("ARM: dts: s3: pinecube: align compatible property
> > to other S3 boards") changed the pinecube compatible to make it similar
> > to the other S3 boards we have, but failed to update the bindings
> > documentation.
> >
> > Fixes: 6ab48105aae7 ("ARM: dts: s3: pinecube: align compatible property=
 to other S3 boards")
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
>=20
> Acked-by: Chen-Yu Tsai <wens@csie.org>
>=20
> for the whole series.

Applied all the patches but the 4 and 5 that had comments

Thanks!
Maxime

--4pp2awtrw5wfht7x
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYAFg8QAKCRDj7w1vZxhR
xf4AAP4zIq0JpbYTLRyDfFqAJXrPNcXa20+EpGjTz7BejgFlNAD/WhHIep3CwD4L
+014I+eH8rQV7CBKEAzoDFeI1bTUsA4=
=Uzvz
-----END PGP SIGNATURE-----

--4pp2awtrw5wfht7x--
