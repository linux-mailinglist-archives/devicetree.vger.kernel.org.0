Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 085CD4F26AB
	for <lists+devicetree@lfdr.de>; Tue,  5 Apr 2022 10:05:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232839AbiDEIED (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Apr 2022 04:04:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48140 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234547AbiDEH6i (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Apr 2022 03:58:38 -0400
Received: from wout2-smtp.messagingengine.com (wout2-smtp.messagingengine.com [64.147.123.25])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8140A27DD
        for <devicetree@vger.kernel.org>; Tue,  5 Apr 2022 00:52:44 -0700 (PDT)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
        by mailout.west.internal (Postfix) with ESMTP id 565BD32019B4;
        Tue,  5 Apr 2022 03:52:41 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute5.internal (MEProxy); Tue, 05 Apr 2022 03:52:42 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
        :cc:content-transfer-encoding:content-type:date:date:from:from
        :in-reply-to:in-reply-to:message-id:mime-version:references
        :reply-to:sender:subject:subject:to:to; s=fm3; bh=NB2LbP1FrwX2aE
        jxzBIBvIHerPLRI4UZ+k3FQ1DQ++U=; b=r08fQ8GDXhzr6sE38pxAGjA1wV+sf6
        n88Q0if4MkGsq1iLipwxU7v2OCzUDVJI1MThBpJPZ4BqUZs7zhbhAu/Dkvuu4zF7
        e9U5WIyaUwJWei6u2exFN9fhLt0LtCmt96/TBjkZqJ89wymlhZff6eoW4m+8hH/9
        KUPVH97KIjRXE43MfP1O8KyHdIsCzmKJQX8prNiFd2Aj8EI4l3PIdCubmjaf+ygZ
        SAi6hAeF62f71OXh9OCvivnt33oylreWzlb2GCZqg4eaCLihdyJ16Fw8Gi9zJztw
        uFvT5rhXwy+xxrN0cOVJrul3y3nj6k74e0QoK+ejUaPWoc/kkueO2KhQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:cc:content-transfer-encoding
        :content-type:date:date:from:from:in-reply-to:in-reply-to
        :message-id:mime-version:references:reply-to:sender:subject
        :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
        :x-sasl-enc; s=fm3; bh=NB2LbP1FrwX2aEjxzBIBvIHerPLRI4UZ+k3FQ1DQ+
        +U=; b=FvSD30clfwDk0JltxUd/u4IM1HazJIBlkDx2eE7JFn6nwAxUYZqSPPj82
        Hc6qIJ8TYxoNSm5jH0glOkJ0NfKr+cmRt+brK2e/NgBhQk1W4ryeoVbiFMQtyhzQ
        RlIXOf9FlOVyGI+o5Ng0hnCRsdGuQqlbfwu5/CrU3b+ID+bcNn2nUObwzQ5HJotz
        HzVPMnCqeOXnuYW8+8BhPKkPK4BPmsjYG4DzH+zlFbx1LMU/DJSiSuT1CTrEAuJL
        Dfyzd6FLCjTlF4J2tGsDgP6PxYlxQJbKijTKKfMR12ZmW59QsS60t2BtQ6Z3KKwE
        5jihPM41rPdz7+safiiTGf7ZMofUg==
X-ME-Sender: <xms:R_VLYjJ6epsgLoYYNqqslJpyaT-r2AxKxsVS-CJlWxT7rJRQ1CB0Dg>
    <xme:R_VLYnIP_YadvZ-x6Z8oyzrjt_gohClc-FjlFmuC932p5YgEZnXti7wqUSKuYuzDY
    oHuM-moL_19tRBF3CU>
X-ME-Received: <xmr:R_VLYrtXGObNlp_ccokaaisDcoVctjyxbW6yyYnBkuaiGGILqLOLDniOsKcjHCvp-HvuqV32BSxbwHtqFYuiBCssPalq-SHekmYs8BA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudejfedguddvhecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpefhvffufffkofgjfhggtgfgsehtkeertdertdejnecuhfhrohhmpeforgig
    ihhmvgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrf
    grthhtvghrnhepjeeugfegkeffgfeuvedtvddufffhjeffjeejvddvudduteehhfefhfef
    geeikeeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
    epmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:R_VLYsbIdibEyGX-AzYNoLmNSFIxDxCzcty1tUovNOaLtCtNrGWQ4A>
    <xmx:R_VLYqYkwR_XRmlKYkc10Tl1LNMdgICLQa8bwpJT6J0aoUGISN5JOg>
    <xmx:R_VLYgBbGEpewcOtJfCTT0OkugIfEBuMLTxGFXlKWZzpngwJer437w>
    <xmx:SPVLYiokYKuYHuhN6v9AQYsGfzrtHy29NV0iLHsWFeNstGvbU7wgFg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 5 Apr 2022 03:52:39 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Maxime Ripard <maxime@cerno.tech>,
        Frank Rowand <frowand.list@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Robert Foss <robert.foss@linaro.org>, Marek Vasut <marex@denx.de>,
        devicetree@vger.kernel.org,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@linux.ie>,
        Jagan Teki <jagan@amarulasolutions.com>,
        Daniel Vetter <daniel.vetter@intel.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        dri-devel@lists.freedesktop.org
Subject: Re: (subset) [PATCH] dt-bindings: display: bridge: Drop requirement on input port for DSI devices
Date:   Tue,  5 Apr 2022 09:52:35 +0200
Message-Id: <164914514524.239878.12110659661404307221.b4-ty@cerno.tech>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220323154823.839469-1-maxime@cerno.tech>
References: <20220323154823.839469-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 23 Mar 2022 16:48:23 +0100, Maxime Ripard wrote:
> MIPI-DSI devices, if they are controlled through the bus itself, have to
> be described as a child node of the controller they are attached to.
> 
> Thus, there's no requirement on the controller having an OF-Graph output
> port to model the data stream: it's assumed that it would go from the
> parent to the child.
> 
> [...]

Applied to drm/drm-misc (drm-misc-fixes).

Thanks!
Maxime
