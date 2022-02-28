Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 66EE64C64C7
	for <lists+devicetree@lfdr.de>; Mon, 28 Feb 2022 09:22:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233407AbiB1IXY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Feb 2022 03:23:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46406 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233450AbiB1IXY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Feb 2022 03:23:24 -0500
Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com [64.147.123.19])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A25E237CC
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 00:22:43 -0800 (PST)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
        by mailout.west.internal (Postfix) with ESMTP id ABEF73200A2A;
        Mon, 28 Feb 2022 03:22:39 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute1.internal (MEProxy); Mon, 28 Feb 2022 03:22:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
        :cc:content-transfer-encoding:content-type:date:date:from:from
        :in-reply-to:in-reply-to:message-id:mime-version:references
        :reply-to:sender:subject:subject:to:to; s=fm2; bh=l3WtzBvKJIKLtX
        76/reVcaasQQCdci7fUR5vXVMpsYw=; b=BgWHERd0DoA+69t4ea6INdIoxjCE6B
        JrZRu0bOMJyQ05PEeN3K7rKJ3dZJiw1+VER1tnNQB+Cxlk0kxv5OwBuv5LfwOEqG
        CKGaAsX6iCTsP6GH4PmWlYHuYMySrcF4+m5Hy/m9PCYmGd6yAAIdGZ3I7UZEaM6R
        GkmqbwFYsYLlB80AS+9oznv8zm2DYkAnBUVVBP26wv0n2URGZVhY33//1SrcxQuN
        hOpfnSR3NuxHR/0zg+tlMyEnErXqFhjMGao5yzn1ic1W+aRRZbIG8HxsuVDUDyq+
        ledrcwNP3nv+3W6TtP7mmojdBC8LiYfYr7E134uyUEILkfF3ixXIKJ5g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:cc:content-transfer-encoding
        :content-type:date:date:from:from:in-reply-to:in-reply-to
        :message-id:mime-version:references:reply-to:sender:subject
        :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
        :x-sasl-enc; s=fm2; bh=l3WtzBvKJIKLtX76/reVcaasQQCdci7fUR5vXVMps
        Yw=; b=Jal2iZYBQjoqMRvgCkGZQpkdCLIKssnztek0MdmsQZML2TwqefwIrvvj4
        kak1mLHAzirpRmkDtCydRJKmtfLWS082Y4odvNxPws0dek2d9xYlwE3kYDR2jSXK
        kU7QnXMyd4RYvOY6DEmShdBM6buyK/fd1HpCsB7rL9FDgNqLMKTMeW/br4jW6rRc
        MnquLvkjVii2cmC29qnAqhnAWOvhHDkCS8h+9SlXxEmy8JfcVV+qlaVdMhEXYQSi
        xZFxFlEUBKddDCnUdh/Kn8qa6pwX5vMC2gWPuyeQpDJo3xGDOLB5heIz2Y5vuD2I
        BTR15wR/u/nyITGpdjAA1FlYzy/Pg==
X-ME-Sender: <xms:ToYcYteh7si4ld4_wDbFyJ20dv3xG_XAeYx_K3OwiTBd-xFXoT9t8g>
    <xme:ToYcYrMuLN90xPduef5EWYc_hoQ0Z64s8-MlW-8AfyX3sBFLr1md6FGRlqX4N3dEf
    D5m0_E2H7OI2_Oud2k>
X-ME-Received: <xmr:ToYcYmgMKfbTA_S6wqy2hBHOLwltTYTp2bdUhFob823-O0-Mt76hOmLLUeUvu9_3FSvEDCpXyWtR9zvu_86DfZZK282EIpM6OUv6ZFk>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrleelgdduudelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvufffkffojghfgggtgfesthekredtredtjeenucfhrhhomhepofgrgihi
    mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
    htthgvrhhnpeejuefggeekfffgueevtddvudffhfejffejjedvvdduudethefhfefhfeeg
    ieekkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:ToYcYm8kY5Vvo6fQ0YsDVevBK1m6tVN8FZqqNTj2HGMPW5Kw3IvxNg>
    <xmx:ToYcYpsBisJd7WVP2gnSFhviUt_E9kTPo9rppK5KvzXXhegwov1IQw>
    <xmx:ToYcYlGN_jfd5skjxy-bvAJ1n10GqGFnQpfapTeW5aYuoJlRIt3O6w>
    <xmx:T4YcYvDeU6mLwqilPH5pmQZdgmd2lhMzFDnGi4qu3XY0GPBqcv70YA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 28 Feb 2022 03:22:38 -0500 (EST)
From:   Maxime Ripard <maxime@cerno.tech>
To:     =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
        robh+dt@kernel.org, dri-devel@lists.freedesktop.org
Cc:     Maxime Ripard <maxime@cerno.tech>, thierry.reding@gmail.com,
        devicetree@vger.kernel.org, dave.stevenson@raspberrypi.com,
        Rob Herring <robh@kernel.org>, david@lechnology.com,
        sam@ravnborg.org
Subject: Re: (subset) [PATCH v6 1/5] dt-bindings: display: add bindings for MIPI DBI compatible SPI panels
Date:   Mon, 28 Feb 2022 09:22:31 +0100
Message-Id: <164603650749.9024.1488147802498728817.b4-ty@cerno.tech>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220227124713.39766-2-noralf@tronnes.org>
References: <20220227124713.39766-1-noralf@tronnes.org> <20220227124713.39766-2-noralf@tronnes.org>
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

On Sun, 27 Feb 2022 13:47:09 +0100, Noralf Trønnes wrote:
> Add binding for MIPI DBI compatible SPI panels.
> 
> v6:
> - Fix indentation (Rob)
> 
> v5:
> - Add sainsmart18 to compatible items (Rob)
> - Expand write-only description (Sam)
> 
> [...]

Applied to drm/drm-misc (drm-misc-next).

Thanks!
Maxime
