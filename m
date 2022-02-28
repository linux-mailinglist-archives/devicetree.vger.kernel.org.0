Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 44DCF4C64C8
	for <lists+devicetree@lfdr.de>; Mon, 28 Feb 2022 09:22:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233475AbiB1IXZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Feb 2022 03:23:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46408 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231365AbiB1IXY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Feb 2022 03:23:24 -0500
Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com [64.147.123.19])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A71C5FE0
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 00:22:44 -0800 (PST)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
        by mailout.west.internal (Postfix) with ESMTP id 394A632007BE;
        Mon, 28 Feb 2022 03:22:43 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Mon, 28 Feb 2022 03:22:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
        :cc:content-transfer-encoding:content-type:date:date:from:from
        :in-reply-to:in-reply-to:message-id:mime-version:references
        :reply-to:sender:subject:subject:to:to; s=fm2; bh=y/TZSuzspLrAiv
        fW6m7k56AnoUM8DgQdsPGEtPlGQ/U=; b=aIDCf3Gbw8uN1CbyWiUdHODHuoagg8
        xyDCkLdg4/C0BMvf5o25/DlllPOB0efNXCtzYi8G/lLT1SSI0E4Ihsh7JgB3Ok3r
        XHfO0CLQcMi/sj+9qDgxb2L+ZzbUMFPShXkUcdubZBq2QNjWG7S6mXH2eJGoofzC
        uiIu9GRyB2jP2JFg3f9KICPfmeMm2sUNLVXbrDIH1lsBjVFRLpIAx/24nTKmbkEX
        6UNpOLHAp7AdTNyxGNLtc8htOGibcrfetdKkuPbwo+tCX49sWzSBzF0QVfpdxNnW
        pLqlZWC88Fx1cyocXnB1PUGPmLrk8uW6r16WME5R+mE1v15L+VbONuzg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:cc:content-transfer-encoding
        :content-type:date:date:from:from:in-reply-to:in-reply-to
        :message-id:mime-version:references:reply-to:sender:subject
        :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
        :x-sasl-enc; s=fm2; bh=y/TZSuzspLrAivfW6m7k56AnoUM8DgQdsPGEtPlGQ
        /U=; b=m0xCVTcULG9OtjQfxdI3cPxrKiz9wJl8mjdUEsu5ZKm2gT2d55VATsXwj
        gVObDcDj6uNQY21/4JFiYZEwEeOUcCqGOxjKRLCQ7qZFZ76nMgq6JW0UlOmaiL0C
        GTwUpj9hk7oErqJp49uO/BojxCMMjyAbY0UXcp92/ycwnFQl1vman+r5QS+DCMSC
        60H9swY8yowlqi9ZOM1DRTP0anPEtopoKxWypSxD42+sdnqgKXASzPcsZ7W8jbqy
        LfC9E9lC3zryuFhU3+YQlnkDJiO0VPmSrj2NGUiWJuDSOqRGTjgHr9iuWji/HyM7
        MFPkr3zFY36gw0d5+ytiBlPNRbuiQ==
X-ME-Sender: <xms:UoYcYrgATwu3sdH_mZV-gxkU1qMZst6ylIWbUx3cZSJsB9pv92wR-w>
    <xme:UoYcYoC63kwhTHX6s08lv9V4yOtFoux9W-lm0pHh45V1jk3W5qx2Bn4W8RtcrNA2N
    jitB5ceSQhQPB3HOQA>
X-ME-Received: <xmr:UoYcYrHAxLs1kaA7IOkrhcZB3CQrIgoSizB6bWXYzrbMOG1cvfxKv8exqooypD64wsNFDE7LKyTic90GLrvMYjCXBmguUPZm9SsL_Gs>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrleelgdduudelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvufffkffojghfgggtgfesthekredtredtjeenucfhrhhomhepofgrgihi
    mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
    htthgvrhhnpeejuefggeekfffgueevtddvudffhfejffejjedvvdduudethefhfefhfeeg
    ieekkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:UoYcYoR99B129mCbEgW2YyIX0eJqyg5X-wnjNrlG1dVYCxHPcslAlw>
    <xmx:UoYcYozN0dOubKj_IOrnqaiDVhQ2X_XCz-VDuk3tziaoxL8UVJLnsQ>
    <xmx:UoYcYu7o9hSbu-ijhZSfmh0Bcyoqw_yVvTp2OhXnatHsJGWQ5Ur7Rw>
    <xmx:UoYcYrzka7aPfwYbZReOYFEug6Gx7f5oOBwYpvMM0kOMXW9jSAsjqw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 28 Feb 2022 03:22:42 -0500 (EST)
From:   Maxime Ripard <maxime@cerno.tech>
To:     =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
        robh+dt@kernel.org, dri-devel@lists.freedesktop.org
Cc:     Maxime Ripard <maxime@cerno.tech>, thierry.reding@gmail.com,
        devicetree@vger.kernel.org, dave.stevenson@raspberrypi.com,
        david@lechnology.com, sam@ravnborg.org
Subject: Re: (subset) [PATCH v6 2/5] drm/modes: Remove trailing whitespace
Date:   Mon, 28 Feb 2022 09:22:32 +0100
Message-Id: <164603650749.9024.636793535394204506.b4-ty@cerno.tech>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220227124713.39766-3-noralf@tronnes.org>
References: <20220227124713.39766-1-noralf@tronnes.org> <20220227124713.39766-3-noralf@tronnes.org>
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

On Sun, 27 Feb 2022 13:47:10 +0100, Noralf Trønnes wrote:
> Remove trailing whitespace from a comment.
> 
> 

Applied to drm/drm-misc (drm-misc-next).

Thanks!
Maxime
