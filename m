Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F36F34C64CD
	for <lists+devicetree@lfdr.de>; Mon, 28 Feb 2022 09:22:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233876AbiB1IXf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Feb 2022 03:23:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46944 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233969AbiB1IXe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Feb 2022 03:23:34 -0500
Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com [64.147.123.19])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB9802E0A5
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 00:22:55 -0800 (PST)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
        by mailout.west.internal (Postfix) with ESMTP id 5D0A9320046F;
        Mon, 28 Feb 2022 03:22:54 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute1.internal (MEProxy); Mon, 28 Feb 2022 03:22:55 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
        :cc:content-transfer-encoding:content-type:date:date:from:from
        :in-reply-to:in-reply-to:message-id:mime-version:references
        :reply-to:sender:subject:subject:to:to; s=fm2; bh=oWWzwBEMp2oR8q
        lim2q+INm+//ADY2+am6NUMPQ6hE0=; b=nVQMofvCwv6nlsDoqoDeRNFyviG/hZ
        awZXunsX6BWXNQPB3mBg7a6kQ5pA0cb5YagOO1AHNY+7RhOFsURZ+UQ+0raZtrHT
        HpFLxfVNv6LTT3XW1bnxieu8bQvdKztnBP/3UN/uIK7kUxd3GorJ08KpnrIHbav4
        otrLE1usWvDWNqTfjucaWyIXTjjIFWqNAeYEal1XGT7Y0/J8Rk7xQSchXDRxKLPX
        wboovNMDawM1a1DQ3hG6+XUxMAHuh3yWFo0Id/hubdqgBJ/FbDYgbDUjlaaOFtQD
        zQv8ThuDb2rdhUkyBEYDeLR3clZuvSqsfrL1CFC6zxISWiJmGJjJBYLA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:cc:content-transfer-encoding
        :content-type:date:date:from:from:in-reply-to:in-reply-to
        :message-id:mime-version:references:reply-to:sender:subject
        :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
        :x-sasl-enc; s=fm2; bh=oWWzwBEMp2oR8qlim2q+INm+//ADY2+am6NUMPQ6h
        E0=; b=QUVtw+Kb4+gJw7pZLH8jrNEloKRMel9GiGLa3/jIayDsEUk3PQ+rvHJWf
        DKQCU1aCmdG5o4GqlJtc9riLUe/z7dkPhAzl0Agshr5D90fmEFEXcX8AhtVchT2d
        SPMlzIeYXZNHhJ0Yw1b3sHvjoIQ4d93bePbomm8WG5GLf9lS0ZQ1W1oGtUsFkxEv
        r7Kmd8Mal06Iq200HknQG3uqgeua5X9UQqVAMWN9EnTwvaQdTRFuPfApRVFYxjIl
        jrcCSGE3JOjawvNu6F5IcAX2A1Vsfpt/DF/7tSaAztwec/RaxxfvPawQD48a8DfC
        49yHgUz5k4hMb6FnhhfWAeJk1MmvA==
X-ME-Sender: <xms:XYYcYoIgtJwd4s3bNQ1gTiMMIEhk9dtYRcm6F_cK_8zb63MMSHElwA>
    <xme:XYYcYoK_tInMeP56EsOPmrSQfeZLMQ_Qt4kWhzOboqu0j63ova96lnXOoFM00r0ou
    d1HUsLUlrjfIndkX8E>
X-ME-Received: <xmr:XYYcYouuPEXauLv20yu4xp-MPREe4qbdOmTlQcMhlp2o3mtAohBU13TLyzOskg6AKKxD8_cU11fwis5BQrY9kPJAFPlorDm-I5JkurA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrleelgdduudelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvufffkffojghfgggtgfesthekredtredtjeenucfhrhhomhepofgrgihi
    mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
    htthgvrhhnpeejuefggeekfffgueevtddvudffhfejffejjedvvdduudethefhfefhfeeg
    ieekkeenucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:XYYcYlafrraQ2SIb_u1NVzS9CI-qpUokT1ld5j61a3DFxFj-n4whTg>
    <xmx:XYYcYvbfDF9aIUemx3Fqe_--PCOpNS3CvUOaBb192mbCo312uqSoZw>
    <xmx:XYYcYhD8YFVxhpMqWB-yaMRmlC6Jx4BmlTeUzZd41A9M4Aw5XuOyuw>
    <xmx:XYYcYj4utdn4qrJ6U43yaa8xbun2RPzZHNyuw0V2PpHYjcK2Knd6tA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 28 Feb 2022 03:22:53 -0500 (EST)
From:   Maxime Ripard <maxime@cerno.tech>
To:     =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
        robh+dt@kernel.org, dri-devel@lists.freedesktop.org
Cc:     Maxime Ripard <maxime@cerno.tech>, thierry.reding@gmail.com,
        devicetree@vger.kernel.org, dave.stevenson@raspberrypi.com,
        david@lechnology.com, sam@ravnborg.org
Subject: Re: (subset) [PATCH v6 5/5] drm/tiny: Add MIPI DBI compatible SPI driver
Date:   Mon, 28 Feb 2022 09:22:35 +0100
Message-Id: <164603650749.9024.13469000708169367461.b4-ty@cerno.tech>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220227124713.39766-6-noralf@tronnes.org>
References: <20220227124713.39766-1-noralf@tronnes.org> <20220227124713.39766-6-noralf@tronnes.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 27 Feb 2022 13:47:13 +0100, Noralf Trønnes wrote:
> Add a driver that will work with most MIPI DBI compatible SPI panels.
> This avoids adding a driver for every new MIPI DBI compatible controller
> that is to be used by Linux. The 'compatible' Device Tree property with
> a '.bin' suffix will be used to load a firmware file that contains the
> controller configuration.
> 
> Example (driver will load sainsmart18.bin):
> 
> [...]

Applied to drm/drm-misc (drm-misc-next).

Thanks!
Maxime
