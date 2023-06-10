Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 00D6972AE95
	for <lists+devicetree@lfdr.de>; Sat, 10 Jun 2023 22:15:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230049AbjFJUPu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 10 Jun 2023 16:15:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39192 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229483AbjFJUPt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 10 Jun 2023 16:15:49 -0400
Received: from mailrelay1-1.pub.mailoutpod2-cph3.one.com (mailrelay1-1.pub.mailoutpod2-cph3.one.com [IPv6:2a02:2350:5:400::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37D63359D
        for <devicetree@vger.kernel.org>; Sat, 10 Jun 2023 13:15:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ravnborg.org; s=rsa1;
        h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
         from:date:from;
        bh=+DT+Wc90MY12xiEhuRDRQ2FBK2aaW3fatjFNEqz+o5s=;
        b=HeemEyEUBezcMBEq0B24nvtGEVyQkSQFePtwwdqyoDsoq7n7Q6OgDCKHoNP+PEtUhvSXZtCTB+PZQ
         WA9SGl15IPoNALvIuAqd0KPrdXYa1Gn6a9A5BjbuNYrL8WFBlitjbSlyHICcdjhw/Lv0+O5qmwQEia
         oWEK7lKXCbnNAEPwANeI6ctjzq4cO/nklE8ie2SzwbQohf3jGWBrcLXvNoC8nfOScbx9muoNx8vPYf
         Dd5OhdEJnbGlCpvhIsO+JXSHjacQwolG6wvk5uAIhuYtZzFAPSeq8iqvgZCiyj1ooKBXfTOp2jDdAY
         F2trBjhOPTJwoWwo6YEczUSbHt+Rv7g==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
        d=ravnborg.org; s=ed1;
        h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
         from:date:from;
        bh=+DT+Wc90MY12xiEhuRDRQ2FBK2aaW3fatjFNEqz+o5s=;
        b=CfM9yZuP2Jv+XFmMrLN6/bx0ufDNT2e/oHUKjXKc9V3Fhx66rh0ARnsuZoKLEJQnOz7ln/v3hRM71
         6QD0fo9DQ==
X-HalOne-ID: 942507fb-07cb-11ee-b3ba-99461c6a3fe8
Received: from ravnborg.org (2-105-2-98-cable.dk.customer.tdc.net [2.105.2.98])
        by mailrelay1 (Halon) with ESMTPSA
        id 942507fb-07cb-11ee-b3ba-99461c6a3fe8;
        Sat, 10 Jun 2023 20:15:46 +0000 (UTC)
Date:   Sat, 10 Jun 2023 22:15:45 +0200
From:   Sam Ravnborg <sam@ravnborg.org>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Maxime Ripard <mripard@kernel.org>,
        dri-devel@lists.freedesktop.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        devicetree@vger.kernel.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH 4/7] drm/panel: sitronix-st7789v: Use platform data
Message-ID: <20230610201545.GE1041001@ravnborg.org>
References: <20230609145951.853533-1-miquel.raynal@bootlin.com>
 <20230609145951.853533-5-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230609145951.853533-5-miquel.raynal@bootlin.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_PASS,SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jun 09, 2023 at 04:59:48PM +0200, Miquel Raynal wrote:
> The Sitronix ST7789V LCD controller is actually packaged in a number of
> different panels with slightly different properties. Before introducing
> the support for another pannel using this same LCD controller, let's
> move all the panel-specific information into a dedicated structure that
> is available as platform data.
> 
> There is no functional change.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
