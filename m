Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3C9A14C64CB
	for <lists+devicetree@lfdr.de>; Mon, 28 Feb 2022 09:22:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233450AbiB1IXb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Feb 2022 03:23:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46780 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233969AbiB1IXb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Feb 2022 03:23:31 -0500
Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com [64.147.123.19])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9495B369CA
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 00:22:52 -0800 (PST)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
        by mailout.west.internal (Postfix) with ESMTP id 1D4283200E5D;
        Mon, 28 Feb 2022 03:22:51 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute3.internal (MEProxy); Mon, 28 Feb 2022 03:22:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
        :cc:content-transfer-encoding:content-type:date:date:from:from
        :in-reply-to:in-reply-to:message-id:mime-version:references
        :reply-to:sender:subject:subject:to:to; s=fm2; bh=VPLYghddiUSX9R
        +LxV+NPLsTTvSHzyPDCnYSGQdPduc=; b=Ytkov/ctEw3ys3dT7YyF0bElkqgkDf
        Pyh5m14yzKUhS5YnXvimsSrEBN4tNeJJ+tmpntsb5joraBRVBaWs8EYHzWa2I+Qp
        RFA1LNCfO3IZ3mYlF3Lm/19nKtwgFzntNoTdYAL1zPavME7bXEkqGS56Y2g/kTwd
        VfmdCxYkTrOGl+vYZtOutOyPMo3D6ABb0ZkXMMHpbhAd4Is4P+IDflDo7hPl67wy
        SJSsc47+lrU8L7cuZ0uvIjxvYEvsBiPmjfBnFw8/01yuapAHu0KJBVoE5a0AVvTI
        IunxYK42GUMT451hmErYVNOQV//XHf5b8YdJ/QkmeZugv9eSXhYWulsw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:cc:content-transfer-encoding
        :content-type:date:date:from:from:in-reply-to:in-reply-to
        :message-id:mime-version:references:reply-to:sender:subject
        :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
        :x-sasl-enc; s=fm2; bh=VPLYghddiUSX9R+LxV+NPLsTTvSHzyPDCnYSGQdPd
        uc=; b=MkYQ3wmrrhaYW+XuY9XMcv/Rm/gIXTlugPTThbSz3g5QWqYOauTf/kPea
        Xnn0U4QPi0x2jgFEdstl7f0++TTULFszEYH2Gjmt4B12AKMqx4Z389CQN3ReG/51
        8d1lu5dc6E6lhORLaqtM3XT2hhmIf4k8sbwc8wUTegRUbbNuCJRHle8YWKVT+pTf
        JCCd+cergg5qXUIvKH405tnWSVhxLX3V9N6etrrXZt2bb9apopBISyHYHaYa9lKo
        bUyLK+jN5Pky8NQ5LLtXu88G3VbRHjc6VEdQPWyNHKkkuZwLrtXhHuhEGs7Y6wv/
        G3hVEjmFCL0ZQjWHgIaehMyAbJhHw==
X-ME-Sender: <xms:WoYcYmpqc6rrjV_rWHxc2_iAZ2D8VVg_yaqoydX34LWLpd0yaSwv1Q>
    <xme:WoYcYkqnbZIiciBRe6d0hNBgxla85GAbfRvgKsoVcZdzQDEH4C1CrS7K4OlK7YW7E
    RWq4GfUF2vtjaN413o>
X-ME-Received: <xmr:WoYcYrMOlTgFj_zad2cEwSpcF9gbiC05OpTgOIqySmvzDnJSjX3IMCWKyDjkSQKeCnrsbZ_WRL3YSWQICADFWXtgalAhV7-eMOVLzVw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrleelgdduudelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvufffkffojghfgggtgfesthekredtredtjeenucfhrhhomhepofgrgihi
    mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
    htthgvrhhnpeejuefggeekfffgueevtddvudffhfejffejjedvvdduudethefhfefhfeeg
    ieekkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:WoYcYl6Akw6Z6ZYb0i-4DcILqSwDuKwtQucEKNWkjSEHoIYBVldCvw>
    <xmx:WoYcYl7gDdHhTO_4hazeigq3oQ7PfCvip9sXbBqcDCh3Qi1zNf5Org>
    <xmx:WoYcYliYC1Y_vkYjLwDy9qMY-OrFIW0lCkoSCKG6jHXB8RePnbLtfQ>
    <xmx:WoYcYgaYF4mWvIhPXDK9or4mUHnhu7p1jBRkIsSbOfmDJBt3gFUUSQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 28 Feb 2022 03:22:49 -0500 (EST)
From:   Maxime Ripard <maxime@cerno.tech>
To:     =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
        robh+dt@kernel.org, dri-devel@lists.freedesktop.org
Cc:     Maxime Ripard <maxime@cerno.tech>, thierry.reding@gmail.com,
        devicetree@vger.kernel.org, dave.stevenson@raspberrypi.com,
        david@lechnology.com, sam@ravnborg.org
Subject: Re: (subset) [PATCH v6 4/5] drm/mipi-dbi: Add driver_private member to struct mipi_dbi_dev
Date:   Mon, 28 Feb 2022 09:22:34 +0100
Message-Id: <164603650749.9024.11268761207006013829.b4-ty@cerno.tech>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220227124713.39766-5-noralf@tronnes.org>
References: <20220227124713.39766-1-noralf@tronnes.org> <20220227124713.39766-5-noralf@tronnes.org>
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

On Sun, 27 Feb 2022 13:47:12 +0100, Noralf Trønnes wrote:
> devm_drm_dev_alloc() can't allocate structures that embed a structure
> which then again embeds drm_device. Workaround this by adding a
> driver_private pointer to struct mipi_dbi_dev which the driver can use for
> its additional state.
> 
> v3:
> - Add documentation
> 
> [...]

Applied to drm/drm-misc (drm-misc-next).

Thanks!
Maxime
