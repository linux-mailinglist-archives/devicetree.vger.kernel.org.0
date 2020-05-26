Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9E5BE1DA84C
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2020 04:57:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728648AbgETC5j (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 May 2020 22:57:39 -0400
Received: from mail.kernel.org ([198.145.29.99]:51524 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726318AbgETC5j (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 19 May 2020 22:57:39 -0400
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 1D0F220842;
        Wed, 20 May 2020 02:57:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1589943459;
        bh=wpjWTi9IWHiTI6IlVkaz+MdgzSdiyTPoZEbvWwHe4QE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=nmKDjrM7rL860w0rI/ucgoamwlQ5v/haCm9TTD2QdDZNsVxlkDcHKGC8mWJMC+gS+
         xS4zFCX0quziyme6rerUCa3g/slNg9X2yGkG9mTQj37fjbZGjQNmLS4Rxea0NTPJ+y
         ltzFm0le4W8lvxu4NG6dgoBTuQfWsVU9k8EbXtc4=
Date:   Wed, 20 May 2020 10:57:33 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Ricardo =?iso-8859-1?Q?Ca=F1uelo?= <ricardo.canuelo@collabora.com>
Cc:     Laurent.pinchart@ideasonboard.com, kernel@collabora.com,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, jason@lakedaemon.net,
        tomi.valkeinen@ti.com, robh+dt@kernel.org, airlied@linux.ie
Subject: Re: [PATCH v2 2/4] ARM: dts: ims53: Group port definitions for the
 dvi-converter
Message-ID: <20200520025732.GX11739@dragon>
References: <20200514143612.2094-1-ricardo.canuelo@collabora.com>
 <20200514143612.2094-3-ricardo.canuelo@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20200514143612.2094-3-ricardo.canuelo@collabora.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 14, 2020 at 04:36:10PM +0200, Ricardo Ca�uelo wrote:
> Group the port definitions of the dvi-converter in a 'ports' node to
> make it compliant with the ti,tfp410 binding.
> 
> Signed-off-by: Ricardo Ca�uelo <ricardo.canuelo@collabora.com>

s/ims53/imx53-cx9020 in subject.

I fixed it up and applied the patch.

Shawn
