Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DBDA24B578B
	for <lists+devicetree@lfdr.de>; Mon, 14 Feb 2022 17:59:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241779AbiBNQ7L (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Feb 2022 11:59:11 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:37790 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239135AbiBNQ7L (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Feb 2022 11:59:11 -0500
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2CBD06515B
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 08:59:02 -0800 (PST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: alyssa)
        with ESMTPSA id 927161F43B06
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
        s=mail; t=1644857941;
        bh=KOMYlczqCUUgeBE8RWdUWTc/oyxfXhKnikuX3b7RqAU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=UVtWRZ/sTdMhiK7PS2PDQY0rB3/ut2g+vYHXlH1+9NBSa+UX4/aLTyKNXOPHGzuU8
         ZPIoWfF8e+/jbAwlzpsY5BTNN1TuRGOA65WTk+4VWFAkJqgH6bdpXR0OomI3s/A6w2
         xipKsTpK+Dqu7s5t2hUSnfnA4ZIWe0HQ4BXGCcLcNEwX9kJVq97LiWSGoi1k96/gro
         64Hhc/Fr+mPs449TaK1aM16xiaEYYgZoVo+FdNFeMpQAhO6ZzDTNuJu0oygwcIGSSy
         mYaBzFyC8K8kd6/I0YE6/al7hFtRUZx3UIilsXMjnWtjqVsSlyqI6VWHdSw/+LsLRq
         m7JTaf0SndAtg==
Date:   Mon, 14 Feb 2022 11:58:53 -0500
From:   Alyssa Rosenzweig <alyssa@collabora.com>
To:     Steven Price <steven.price@arm.com>
Cc:     alyssa.rosenzweig@collabora.com, dri-devel@lists.freedesktop.org,
        robh@kernel.org, tomeu.vizoso@collabora.com, airlied@linux.ie,
        daniel@ffwll.ch, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/9] dt-bindings: Add arm,mali-valhall compatible
Message-ID: <YgqKTQ0xLA1CbQW/@maud>
References: <20220211202728.6146-1-alyssa.rosenzweig@collabora.com>
 <20220211202728.6146-2-alyssa.rosenzweig@collabora.com>
 <5ca70986-d6a5-7c3e-b876-40e970805775@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5ca70986-d6a5-7c3e-b876-40e970805775@arm.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,UNPARSEABLE_RELAY autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> > diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> > index 63a08f3f321d..48aeabd2ed68 100644
> > --- a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> > +++ b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> > @@ -23,6 +23,7 @@ properties:
> >            - rockchip,px30-mali
> >            - rockchip,rk3568-mali
> >        - const: arm,mali-bifrost # Mali Bifrost GPU model/revision is fully discoverable
> > +      - const: arm,mali-valhall # Mali Valhall GPU model/revision is fully discoverable
> 
> It might be worth spelling out here that this is *pre-CSF* Valhall. I'm
> pretty sure we're going to need different bindings for CSF GPUs.

Yes, agreed, will make a note for v2.
