Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2EE52435391
	for <lists+devicetree@lfdr.de>; Wed, 20 Oct 2021 21:13:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231443AbhJTTQH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Oct 2021 15:16:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33166 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231442AbhJTTQH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Oct 2021 15:16:07 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47D77C06161C
        for <devicetree@vger.kernel.org>; Wed, 20 Oct 2021 12:13:52 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id e3so23615wrc.11
        for <devicetree@vger.kernel.org>; Wed, 20 Oct 2021 12:13:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=AJTtdODY5XsT1WlkimPK22rBfKzbxdKR4VylNcGjTYI=;
        b=XT2i6L6NXo101KmD1VesqNx6rOK+iBPwUmMpYmGxFAJONhE12xnN6HApLNylQCgGyV
         qM5/aPiGzRY9EgjgVU7d2GugzgBVdBU72ZivoxcJa61YOkmmIS2FV6afYk9fztegrFnr
         htGdMPeswfO2wesm4yVvFr7DZdNpPQ1vdOuLO0P0k5ja9S4yt8hjJqFn4GuDiRC7WjGW
         tL3OB1uT9g27oQAJe9fZ+q94l6qhNx9i2CP/eA80p2EyUcDRQQUAfyHbZWjschewf1Zs
         S9Uf6joxKEXCVGjx/3at3ckfDQFue6oUtDaJjnxTDxWOLX/zwSlsLJIv7IxEmnCl++5c
         jg7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=AJTtdODY5XsT1WlkimPK22rBfKzbxdKR4VylNcGjTYI=;
        b=UQNQpOqMnUfOcLPGp0iR1rQfaXe/d1waFQRkhPAkYwALV9VfeLfin0G9fRYyL5FK/r
         yQOriCiyPOMYHJb7WnnsPcDwHrzTAqZCqRwhXTCVbpAhrZk2X+qP9bOtGyRK6kUdrOb9
         BKp1ZvgQB1iL96AK2kJUVNeEUVKGewP4eJ0xiqHZj7tS8Jj1bAh20z4oskh1FBwNdem8
         UpcfbrHPao6sXr9Vmcf8Npwicftm911vRCYrkK7fYgqprryywLliFONmBQJC+TkByCg5
         f+z/mWRNzxCoF5F8bwiZ4hbHXJE4qUGdGuqNr2CPxUabDf78xZYQc0j/6Bx2+nYHagFm
         hkYA==
X-Gm-Message-State: AOAM531HjbVUcpfemrXxQoOpV+pd6ZR6mPB0YkplZBf2zKe02A4YWHx+
        lzGdwsGxvpwsnV5eEF1sk7O+UA==
X-Google-Smtp-Source: ABdhPJym3jQAKD5Xd56d6VcAvqIhipKJtFKNrtzYGJYNIM+xQMkQ3kC4a5hCTE1AXwyEluUcYvkNcg==
X-Received: by 2002:adf:e80a:: with SMTP id o10mr1298709wrm.322.1634757230857;
        Wed, 20 Oct 2021 12:13:50 -0700 (PDT)
Received: from blmsp ([2a02:2454:3e6:c900:5142:5fbb:5821:5dc3])
        by smtp.gmail.com with ESMTPSA id e9sm2777665wrn.2.2021.10.20.12.13.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Oct 2021 12:13:49 -0700 (PDT)
Date:   Wed, 20 Oct 2021 21:13:48 +0200
From:   Markus Schneider-Pargmann <msp@baylibre.com>
To:     Rob Herring <robh@kernel.org>
Cc:     Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Philipp Zabel <p.zabel@pengutronix.de>,
        dri-devel@lists.freedesktop.org, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v4 1/7] dt-bindings: mediatek,dpintf: Add DP_INTF binding
Message-ID: <20211020191348.yb3eu7lp4urzx75j@blmsp>
References: <20211011094624.3416029-1-msp@baylibre.com>
 <20211011094624.3416029-2-msp@baylibre.com>
 <YWTMdewWCNCZy+UE@robh.at.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <YWTMdewWCNCZy+UE@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

On Mon, Oct 11, 2021 at 06:44:53PM -0500, Rob Herring wrote:
> On Mon, 11 Oct 2021 11:46:18 +0200, Markus Schneider-Pargmann wrote:
> > DP_INTF is a similar functional block to mediatek,dpi but is different
> > in that it serves the DisplayPort controller on mediatek SoCs and uses
> > different clocks. Therefore this patch creates a new binding file for
> > this functional block.
> > 
> > Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
> > ---
> > 
> > Notes:
> >     Changes v3 -> v4:
> >     - Fixed clock names in the example as the clock patch series is merged into
> >       next now
> >     - Add missing ports decleration to the example
> > 
> >     Changes v1 -> v2:
> >     - Move the devicetree binding from mediatek,dpi into its own binding file.
> > 
> >  .../display/mediatek/mediatek,dpintf.yaml     | 86 +++++++++++++++++++
> >  1 file changed, 86 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,dpintf.yaml
> > 
> 
> Reviewed-by: Rob Herring <robh@kernel.org>

Thanks a lot for reviewing. However I am going to recombine dpintf with
dpi as Chun-Kuang helped me realize that the fdp clock is a parent of
the pixel clock and therefore not a different clock. In the end the
clocks are the same now for both dpi and dpintf, so no need for a
separate document.

Best,
Markus
