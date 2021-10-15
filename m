Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D3F8F42EB19
	for <lists+devicetree@lfdr.de>; Fri, 15 Oct 2021 10:08:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236665AbhJOIKb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Oct 2021 04:10:31 -0400
Received: from out4-smtp.messagingengine.com ([66.111.4.28]:37561 "EHLO
        out4-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S235079AbhJOIKb (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 15 Oct 2021 04:10:31 -0400
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
        by mailout.nyi.internal (Postfix) with ESMTP id D3C125C01D3;
        Fri, 15 Oct 2021 04:08:24 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute4.internal (MEProxy); Fri, 15 Oct 2021 04:08:24 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-type:content-transfer-encoding; s=fm1; bh=
        y0+Ptfo0+27GdbHzTx42eOuJBruZDTf3dOIzQaq798c=; b=LL0uY5Bamhuuone1
        zNnHQ+9cvDRSKHWhr8MZtYVi1P5mmhBdtLeQT4leBjYpyZ8js00MrwY5JWvBLQ48
        wLKK63HVWzcJQhiYfSL5eq8TMKl9ntg8aR/oTYwm1pYdeJvFsf7Dz57jkxE874OP
        gH5yR0AgKFsVOyEyri67dfr4seCqmeRzl4L4izg5ketvSl11eP6M1O9a0tt4GV2M
        V7/ikqPBLjDy8r0wLgON4HMSLg6B431CitOfMns6IsPzsItnVDp+Iz4PHu8GbXze
        LwOg+rlAH+BcOM/VtMfPoRYjYDuRf6joBKzhR4NkDl8EPbaUiS9MufO996YpsIqB
        NzdMdQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:content-type
        :date:from:in-reply-to:message-id:mime-version:references
        :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
        :x-sasl-enc; s=fm1; bh=y0+Ptfo0+27GdbHzTx42eOuJBruZDTf3dOIzQaq79
        8c=; b=fUwPu9hItJFbLsJhlS/xjWF4nSoopdH/oGW+YqZkUgyLyx1Y04tGe2T7w
        GOKb/in9x6kp8MMEhWw/xj9KoIi2j+TS2aOcAyEHVQIcS2UKkxiTZJsQ/kvC29G+
        cTwZ7XcHAgKw3jQQ9ZtSQt5dlSrjTmea7OABVeqPmUq2+RHEGJCX3wmjNu9jOix5
        cUt38JCjSS6bhe1o/pkfioWUs7aoaNP7zq5xNRB59tXkUNB2vG+O++EN331panxP
        2ghAIZ3qoAiiDbIPsSbwIyXQvHSoryhzwzFZiCd8fJMRSPzOhIKKoPP8AT3iStlT
        HdefwtbwAAKZw3MH97ZA0MW6l+EpA==
X-ME-Sender: <xms:-DZpYRAza9isTeogb3WzB4KevL5qX17xn6QlEhR7CKFGTSqyf3worA>
    <xme:-DZpYfg5O7B1nFL2BQGt99L6YEiQZfZvv_RZNBTGINeQpNfPlCWIzw4Y3xzk1SjCH
    LaBdGp9FjSbgMkW_9Q>
X-ME-Received: <xmr:-DZpYcnWTLcB2hgJbCPG7KRmwVckmbvEiXYnANk863gnwp4xcosItrSTykcGEkeFKVKEKFTpGTUr9z1oCpxhLqb4JG5Mbri2qZU-CyV8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrvddugecutefuodetggdotefrodftvfcurf
    hrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
    hrpefhvffufffkofgjfhggtgfgsehtkeertdertdejnecuhfhrohhmpeforgigihhmvgcu
    tfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrthhtvg
    hrnhepjeeugfegkeffgfeuvedtvddufffhjeffjeejvddvudduteehhfefhfefgeeikeek
    necuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgrgi
    himhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:-DZpYbx136j9U_FANNi3E4KCQR6VEaYMlrJamFkw-ZeYsT_fa8K8TQ>
    <xmx:-DZpYWTNf3hoh9hp--izIAnNSyI3xgVV-mz4pf_1KXDtiWCFmC9BQA>
    <xmx:-DZpYebnCLLgfVTmKhw_wWrDTuewosFlZqZikwBpSa4EAlH8XXmWOw>
    <xmx:-DZpYTQyR2zormYyAwts47gfNPW-6kTyn4SWEd6NHjvKTIv9jigONQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 15 Oct 2021 04:08:23 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     =?UTF-8?q?Jernej=20=C5=A0krabec?= <jernej.skrabec@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime@cerno.tech>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org
Cc:     Rob Herring <robh@kernel.org>,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: Re: (subset) [PATCH v2 25/52] dt-bindings: interconnect: sunxi: Add R40 MBUS compatible
Date:   Fri, 15 Oct 2021 10:08:22 +0200
Message-Id: <163428528489.12562.8542930736846466237.b4-ty@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210901091852.479202-26-maxime@cerno.tech>
References: <20210901091852.479202-1-maxime@cerno.tech> <20210901091852.479202-26-maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 1 Sep 2021 11:18:25 +0200, Maxime Ripard wrote:
> The R40 MBUS compatible was introduced recently but it was never
> documented.
> 
> 

Applied to sunxi/linux.git (sunxi/dt-for-5.16).

Thanks!
Maxime
