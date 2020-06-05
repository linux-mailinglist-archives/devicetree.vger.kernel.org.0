Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2A7DC1EFCFF
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2020 17:48:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726914AbgFEPs3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Jun 2020 11:48:29 -0400
Received: from asavdk3.altibox.net ([109.247.116.14]:39794 "EHLO
        asavdk3.altibox.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726802AbgFEPs3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Jun 2020 11:48:29 -0400
Received: from ravnborg.org (unknown [158.248.194.18])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by asavdk3.altibox.net (Postfix) with ESMTPS id B341320033;
        Fri,  5 Jun 2020 17:48:27 +0200 (CEST)
Date:   Fri, 5 Jun 2020 17:48:26 +0200
From:   Sam Ravnborg <sam@ravnborg.org>
To:     Emil Velikov <emil.l.velikov@gmail.com>
Cc:     Liu Ying <victor.liu@nxp.com>,
        ML dri-devel <dri-devel@lists.freedesktop.org>,
        devicetree <devicetree@vger.kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>
Subject: Re: [PATCH 2/2] drm/panel: simple: Add support for KOE
 TX26D202VM0BWA panel
Message-ID: <20200605154826.GB207594@ravnborg.org>
References: <1590991880-24273-1-git-send-email-victor.liu@nxp.com>
 <CACvgo50UOby-xV_OYmM55VUXUbwLxK-q6bs2FoS_FuwB9ChYJg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CACvgo50UOby-xV_OYmM55VUXUbwLxK-q6bs2FoS_FuwB9ChYJg@mail.gmail.com>
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=edQTgYMH c=1 sm=1 tr=0
        a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
        a=kj9zAlcOel0A:10 a=pGLkceISAAAA:8 a=S1NEfQAhQLroaEqAo4oA:9
        a=CjuIK1q_8ugA:10
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Emil.

> > +               .width = 217,
> > +               .height = 136,
> > +       },
> > +       .delay = {
> > +               .prepare = 1000,
> > +               .enable = 1000,
> > +               .unprepare = 1000,
> > +               .disable = 1000,
> Ouch 1s for each delay is huge. Nevertheless it matches the specs so,
> the series is:
> Reviewed-by: Emil Velikov <emil.l.velikov@gmail.com>
> 
> Sam, Thierry I assume you'll merge the series. Let me know if I should
> pick it up.

I went ahead and applied both patches to drm-misc-next.
They are now pushed out.

	Sam

> 
> -Emil
