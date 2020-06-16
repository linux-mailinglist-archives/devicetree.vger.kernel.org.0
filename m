Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2B70D1FA8E9
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2020 08:42:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726025AbgFPGmQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Jun 2020 02:42:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46532 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725768AbgFPGmP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Jun 2020 02:42:15 -0400
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A44DBC05BD43
        for <devicetree@vger.kernel.org>; Mon, 15 Jun 2020 23:42:15 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: rcn)
        with ESMTPSA id 1BC9A2A2D2C
Message-ID: <21247dc7aa3de420680508b125519e54883e8bc4.camel@collabora.com>
Subject: Re: [PATCH v3 5/5] dt-bindings: display: ti,tfp410.yaml: make the
 ports node optional
From:   Ricardo =?ISO-8859-1?Q?Ca=F1uelo?= <ricardo.canuelo@collabora.com>
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     devicetree@vger.kernel.org, jason@lakedaemon.net, airlied@linux.ie,
        robh+dt@kernel.org, tomi.valkeinen@ti.com,
        dri-devel@lists.freedesktop.org, kernel@collabora.com,
        linux-arm-kernel@lists.infradead.org
Date:   Tue, 16 Jun 2020 08:42:09 +0200
In-Reply-To: <20200616015119.GI1629@pendragon.ideasonboard.com>
References: <20200611102356.31563-1-ricardo.canuelo@collabora.com>
         <20200611102356.31563-6-ricardo.canuelo@collabora.com>
         <20200611160817.GA6031@pendragon.ideasonboard.com>
         <8ad9a397a5fa6cebd2a4e0170dfa96ad73907faf.camel@collabora.com>
         <20200616015119.GI1629@pendragon.ideasonboard.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Laurent,

On Tue, 2020-06-16 at 04:51 +0300, Laurent Pinchart wrote:
> How about keeping the ports mandatory, and leaving dove-sbc-a510.dts to
> be fixed later ?

That's fine by me, I'll prepare a new version of the series.
Thanks for your input!

Cheers,
Ricardo

