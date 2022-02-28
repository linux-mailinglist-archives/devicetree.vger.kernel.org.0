Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4BD564C64C9
	for <lists+devicetree@lfdr.de>; Mon, 28 Feb 2022 09:22:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231365AbiB1IX2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Feb 2022 03:23:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233876AbiB1IX0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Feb 2022 03:23:26 -0500
Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com [64.147.123.19])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3694A26549
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 00:22:47 -0800 (PST)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
        by mailout.west.internal (Postfix) with ESMTP id 746903200A2F;
        Mon, 28 Feb 2022 03:22:46 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Mon, 28 Feb 2022 03:22:47 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
        :cc:content-transfer-encoding:content-type:date:date:from:from
        :in-reply-to:in-reply-to:message-id:mime-version:references
        :reply-to:sender:subject:subject:to:to; s=fm2; bh=yAx5tzc+tjGpKN
        QgZMmCqGWP6FIzUwdpC9XL1nAPJCI=; b=v6wo5EAXm4MeAe9sXjUUUh9TjUZcqh
        XLryhxTbDIaBhIGOL0+eeL96hNQUSw+m9/TXkCOryP5k+gPHaUPeDyrM2r5XGAb1
        uHhBrnVdHQ6Zmqi2TJF/eiwEsauGW1+U1Rr2Qb27PUqUiVUi/ghIw12CMu/Yh5EA
        9sRk2j2U49NJue7fZcZj3Cb66tFHaTRTdhaQ0JC5cHiD5dFi0Lm+K0xC6vf0xRAf
        KEISXT4lGBFiqenqxmo1E37wcJKYO1VeV0u8pvQPZ5y2KMoSVkKB2S2RlvVSrLYq
        xIRTamvS0M06LfxxyhMrRQ08TfmMiuH6k00yEb1o9rip5bb4UUO6nu6w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:cc:content-transfer-encoding
        :content-type:date:date:from:from:in-reply-to:in-reply-to
        :message-id:mime-version:references:reply-to:sender:subject
        :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
        :x-sasl-enc; s=fm2; bh=yAx5tzc+tjGpKNQgZMmCqGWP6FIzUwdpC9XL1nAPJ
        CI=; b=ZqSvePjw9O4wqMsCf8NdHUzZ+eDimAszH4ymPYebmzixv66BlMnpOiqB0
        SMfsheUPXmAzks8DJgwORHyEcoicz7mjcHmveRDxKp7KpIGTrP4C6w2naYiZ2MVs
        9vN/S5NBTcZEoD0OO7YwsvxO03c9mWsqeLX2C8fnyhnpCtc9MYmjlERNShOPl652
        syRyOznl3daIUtfQ8NiLzuWnT03gBVRYrSII6yCLQs47hCg9fpMACf+x+iOZBQ6q
        njZrNYeATBT12TWV3uBis13SBq3OH/+mJlLckC6XeqDdxrIDezwaM7enH2bb7RHQ
        r8fo3umKlyS0znxTpCkKLlZGOvvug==
X-ME-Sender: <xms:VYYcYu74R6UBs2VyShTqwPYZoAWWSntnyzgOc9aBfjM2tlT7es0RaA>
    <xme:VYYcYn7tqDArO135l3Tpv5gJ6yKyv86v-rZ4J580CZdvspcoalHzfBg1TmkFtZfud
    b5hzzIDY2h_Y8J9ZHU>
X-ME-Received: <xmr:VYYcYteq1KgWgodh7_Ivry73KYhcnNiZH0iSiAyHCMWi4_sEQLCJ8rHwberQcjzBrVhddmaB6nZ6m3McjZZMhdIc_960jKXQdBUkxcM>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrleelgdduudelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvufffkffojghfgggtgfesthekredtredtjeenucfhrhhomhepofgrgihi
    mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
    htthgvrhhnpeejuefggeekfffgueevtddvudffhfejffejjedvvdduudethefhfefhfeeg
    ieekkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:VYYcYrJTISkoV3_rdnzFyTYKh1QAlRpGJPynOkRgteGvKLNu_WEaeA>
    <xmx:VYYcYiJTvjS_gr1GU1YR3bXY5dK6JnhzEnZAcMdcxjdt7UCd8JKRSw>
    <xmx:VYYcYsyN-BOLusDu90uTWZHrcKbxuP6PWCiUU6p5pydCXwpFkS8pNA>
    <xmx:VoYcYjrTQHyL7gRwrzhCGCPpZdy2yfZdLsJ9kcIc0_udEnI1o0gF4Q>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 28 Feb 2022 03:22:45 -0500 (EST)
From:   Maxime Ripard <maxime@cerno.tech>
To:     =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
        robh+dt@kernel.org, dri-devel@lists.freedesktop.org
Cc:     Maxime Ripard <maxime@cerno.tech>, thierry.reding@gmail.com,
        devicetree@vger.kernel.org, dave.stevenson@raspberrypi.com,
        david@lechnology.com, sam@ravnborg.org
Subject: Re: (subset) [PATCH v6 3/5] drm/modes: Add of_get_drm_panel_display_mode()
Date:   Mon, 28 Feb 2022 09:22:33 +0100
Message-Id: <164603650749.9024.17189490257748263930.b4-ty@cerno.tech>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220227124713.39766-4-noralf@tronnes.org>
References: <20220227124713.39766-1-noralf@tronnes.org> <20220227124713.39766-4-noralf@tronnes.org>
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

On Sun, 27 Feb 2022 13:47:11 +0100, Noralf Trønnes wrote:
> Add a function to get a drm_display_mode from a panel-timing
> device tree subnode.
> 
> 

Applied to drm/drm-misc (drm-misc-next).

Thanks!
Maxime
