Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2E6AD15D84C
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2020 14:21:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727822AbgBNNVz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Feb 2020 08:21:55 -0500
Received: from out5-smtp.messagingengine.com ([66.111.4.29]:37627 "EHLO
        out5-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726191AbgBNNVz (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 14 Feb 2020 08:21:55 -0500
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
        by mailout.nyi.internal (Postfix) with ESMTP id 2EAD821F82;
        Fri, 14 Feb 2020 08:21:54 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute3.internal (MEProxy); Fri, 14 Feb 2020 08:21:54 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm2; bh=SHi3ObvEfQV3V2POWN7Z55LHyBU
        LAz1xQn5/bTDd+CY=; b=gFEUPD/UXJnixpEhxyMemyb5mHHbCVVBq0/MToXrX2Q
        nDCT6X3GnIHWJ5JDErSyQZxjqg6cdvTTG5xw99eiIUnqbQQVeweiM+EKHafweGV7
        8kfheZqO5KU4M+1ZcL77CHVUSKqKhuJxq89545aJ5sJf/+eInMnosKlxcMDq9wvC
        1oDsE8xMOk+hq5xTZqjhcQPYQlJlngXrFUWSHsR661sT2E1QShnI7Rwx2gbGOeMq
        tRY4pvgyUZvMRsC2I567ZWIzN7IRzowfN90VzNsJ2Z/yA1bIQ8cVAEyLc5nGnrm2
        AFqyJBcYltIYSnBDUphQ6T2Yc6UoqAv/lKAV8Qmn5kA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=SHi3Ob
        vEfQV3V2POWN7Z55LHyBULAz1xQn5/bTDd+CY=; b=yvyZ2jo4Em2mPksP5RzfOD
        dAgBLwo2dmyTCscd/h6+rccfeIt3GEPwEdmaemDk/pdx6EVlS/vLgL+P0cE9nEhF
        TAbnr376xgU3FSr4Mjl/ENjq3LEuhIgHCQPe5jH26/c24Z8NaNH54jJfVFEYVD1W
        POtTgHLmeyMntrlaTqYNo0aGi0ZCI8Dwl74Rcx5ghz7R8YXdo8UfHBEXI+5NJGnh
        qXwSGI2c9VfcU9LY1K4fJR+Ry9UbZhzOSr79OrAPSmYlCf+HZsJ0TfyoZITjTTfk
        0aYjzbyytnccs8leE5HP3SYzA9BAadfciUZf5MPnXB3DiDJTsotz2Dp+y1YqYQ6Q
        ==
X-ME-Sender: <xms:8Z5GXoBdQ69-PuR9Jq3NjxYmPFeQVQhRvmYr197Tu9ozIrYLzK_Fyg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjedtgdehvdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucffohhmrghinh
    eplhhinhhuthhrohhnihigrdguvgenucfkphepledtrdekledrieekrdejieenucevlhhu
    shhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestg
    gvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:8Z5GXmVXAWzZZT8T3XeXRDCMJOl8kz54xGUTLZHm52fsRNo__rvIjQ>
    <xmx:8Z5GXhEyuTfYYD7OEEmjmN4-btSpiCacSeMn3pz4XJ079nc9o5wycA>
    <xmx:8Z5GXhOzfXgtEuTO2hHY--KHWkUp1k7u9VlNNwaPTMhPBEx7HT3kbA>
    <xmx:8p5GXvCZKgsTM-bmGeJ_eYQc4p9zrd_WC15dh-0lzqX8OOpjvtOawQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 868253280064;
        Fri, 14 Feb 2020 08:21:53 -0500 (EST)
Date:   Fri, 14 Feb 2020 14:21:52 +0100
From:   Maxime Ripard <maxime@cerno.tech>
To:     bage@linutronix.de
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Benedikt Spranger <b.spranger@linutronix.de>
Subject: Re: [PATCH v2 1/3] dt-bindings: Add vendor prefix for Linutronix
Message-ID: <20200214132152.3dweh52xjbuunbn2@gilmour.lan>
References: <20200206113328.7296-1-bage@linutronix.de>
 <20200214111003.11115-1-bage@linutronix.de>
 <20200214111003.11115-2-bage@linutronix.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="n35qd4cxsjrvbn7o"
Content-Disposition: inline
In-Reply-To: <20200214111003.11115-2-bage@linutronix.de>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--n35qd4cxsjrvbn7o
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Feb 14, 2020 at 12:10:01PM +0100, bage@linutronix.de wrote:
> From: Bastian Germann <bage@linutronix.de>
>
> Add a vendor prefix for Linutronix GmbH.
> Website: https://linutronix.de/
>
> Co-developed-by: Benedikt Spranger <b.spranger@linutronix.de>
> Signed-off-by: Benedikt Spranger <b.spranger@linutronix.de>
> Signed-off-by: Bastian Germann <bage@linutronix.de>

Acked-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

--n35qd4cxsjrvbn7o
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXkae8AAKCRDj7w1vZxhR
xeBrAP9gLq/dTXFwNYfbL6bB2iptT0baf0PgmZQ/MKf/hdSewgD+NpINgx9fQUAo
4IrLpgOLR6pNLwyqzX/JHGK+1oNESgc=
=3oyj
-----END PGP SIGNATURE-----

--n35qd4cxsjrvbn7o--
