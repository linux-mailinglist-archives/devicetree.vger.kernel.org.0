Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7CAA198932
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2019 04:04:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729680AbfHVCEp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Aug 2019 22:04:45 -0400
Received: from out3-smtp.messagingengine.com ([66.111.4.27]:52565 "EHLO
        out3-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1729504AbfHVCEp (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 21 Aug 2019 22:04:45 -0400
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
        by mailout.nyi.internal (Postfix) with ESMTP id 652AD22006;
        Wed, 21 Aug 2019 22:04:44 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
  by compute4.internal (MEProxy); Wed, 21 Aug 2019 22:04:44 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
        mime-version:message-id:in-reply-to:references:date:from:to:cc
        :subject:content-type; s=fm3; bh=4KsJNflIPTen+FfCDNntEFNVCkG4oeQ
        LrHFU/KsYntM=; b=YmQkm0HTNrxTpyTG14K+WD6emqf4Kp8ky7+ssOPlWCjH601
        5CWog5SXZxLPopNMF+3rKM7Y1/toANEWDiU6Iw/YmZ9Ti7bOiueCrrXHbcHKi6Zq
        dIAsZ1DlqG5B7fCKLd3dz6cSYIzPO6hUgIrMtnoVNM5Whpqn3Am575meiKoa+vCR
        8hlXv+aww4sfQtT2cdEfBASaVYcdDeLbWpQYtpZeBDuAydbwh/QVLSIfQNz82OyJ
        kIQ7bLezqoaS1VIi4kXaUvnUm7ZynWdEUU6NXOLmhvuZTgDTBdtKG70tMvML8o7G
        dDJd/p/BJh/Dm2bDzsFkDyPR8LPGJS5qwnPQ5iQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=4KsJNf
        lIPTen+FfCDNntEFNVCkG4oeQLrHFU/KsYntM=; b=hAVpx+m/pVr1J5nULxorc+
        IA9HPQCRy4DpcnxFogMPiKEZtbmcRZx43waGesel4urR3CSj4YIt/tFZ5mEFk//A
        eECJ4Cpo75FxTJgILzsXP6ZiG2sLv0NI8Nk3eMPZy3RnBfmvE+o0gkdqnxTb6I8b
        pk+UALWZAKyBoN2G536NLPYAhq22JkQEXa71J+vpTeBUG4y8K5x5WMxcnLg0G4mK
        3aL8Hd/KLbxr3N36hQy+oKAUIhJhza1Hc7iU5A6/tlqgBLHmnOtnqS5r7zP6gU1G
        kkXdOMNXYENPKuhzQDSHAjvatDm0g44ii7TGH/GjBufZUANWbii2qGaCG8ELlNkQ
        ==
X-ME-Sender: <xms:OvhdXXnRoubPXv7DZCDuJMnOihv5e1-QA9Hi6MuXi2y6NYc6rQGxUQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudeggedgheeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
    rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecurfgrrh
    grmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgv
    rhfuihiivgeptd
X-ME-Proxy: <xmx:OvhdXQc27KTwScFJnwDI0_DvTuGypCqsGtnOoGLv3tIuTHe5OoG2og>
    <xmx:OvhdXc09I7IqLOloRsm-neasD3wjVM7aNASwUov0WLWN9Dj1h-qflQ>
    <xmx:OvhdXdgK1iiqEHodjAbrC44h_oND5H_VdtEnLk7c5C1Ipn8yjE3eHw>
    <xmx:PPhdXcirWs9uY6FUUVgg_nuJl_yjQFEchHS28pvDpB4M4xkPOAidyw>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
        id D79C6E00A3; Wed, 21 Aug 2019 22:04:42 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-916-g49fca03-fmstable-20190821v7
Mime-Version: 1.0
Message-Id: <0e036aee-fbd1-4c54-8d7b-fea8eca1bc05@www.fastmail.com>
In-Reply-To: <20190821055530.8720-7-joel@jms.id.au>
References: <20190821055530.8720-1-joel@jms.id.au>
 <20190821055530.8720-7-joel@jms.id.au>
Date:   Thu, 22 Aug 2019 11:34:58 +0930
From:   "Andrew Jeffery" <andrew@aj.id.au>
To:     "Joel Stanley" <joel@jms.id.au>,
        "Rob Herring" <robh+dt@kernel.org>,
        "Arnd Bergmann" <arnd@arndb.de>, "Olof Johansson" <olof@lixom.net>
Cc:     "Ryan Chen" <ryan_chen@aspeedtech.com>,
        =?UTF-8?Q?C=C3=A9dric_Le_Goater?= <clg@kaod.org>,
        "Mark Rutland" <mark.rutland@arm.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org
Subject: Re: [PATCH 6/7] ARM: configs: multi_v7: Add ASPEED G6
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On Wed, 21 Aug 2019, at 15:26, Joel Stanley wrote:
> This adds the ASPEED AST2600 system and associated ASPEED devices so we
> get build coverage.
> 
> The changes to the UART configuration to ensure the default console
> (UART5) works.
> 
> Signed-off-by: Joel Stanley <joel@jms.id.au>

Acked-by: Andrew Jeffery <andrew@aj.id.au>
