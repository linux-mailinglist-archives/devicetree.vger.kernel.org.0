Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BAD922CD4F3
	for <lists+devicetree@lfdr.de>; Thu,  3 Dec 2020 12:53:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726710AbgLCLxd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Dec 2020 06:53:33 -0500
Received: from fllv0015.ext.ti.com ([198.47.19.141]:59300 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728904AbgLCLxb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Dec 2020 06:53:31 -0500
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0B3BqOUY031027;
        Thu, 3 Dec 2020 05:52:24 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1606996344;
        bh=8XN90N1YLRZSoERADzuQRzv//wULyP65M5uGzaAR8iY=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=mCuYiAv9I4KkCV7/HSoVdMUqY9o546bMdUvQv9ha6k+WL1kOmMrFKHHauQDULHaSK
         WzNk8VO8MMI7nD2c/Y1CkAxVBr1+K8tSz5NOLiT2QN2mmQ62+xGkAtWrazcOd8ScvX
         DZosJwx6zguCI/iS47d30UKr+MpYX+oN8MDlZqHI=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0B3BqOUH075901
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 3 Dec 2020 05:52:24 -0600
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 3 Dec
 2020 05:52:24 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 3 Dec 2020 05:52:24 -0600
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0B3BqLfC026599;
        Thu, 3 Dec 2020 05:52:22 -0600
Subject: Re: [PATCH v4 0/2] drm: add DisplayPort connector
To:     <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>
CC:     Nikhil Devshatwar <nikhil.nd@ti.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        <ville.syrjala@linux.intel.com>, Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Daniel Vetter <daniel@ffwll.ch>,
        Swapnil Kashinath Jakhade <sjakhade@cadence.com>,
        Sekhar Nori <nsekhar@ti.com>
References: <20201130112919.241054-1-tomi.valkeinen@ti.com>
From:   Tomi Valkeinen <tomi.valkeinen@ti.com>
Message-ID: <0110944b-f531-1a2c-2263-e5cba86730e4@ti.com>
Date:   Thu, 3 Dec 2020 13:52:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201130112919.241054-1-tomi.valkeinen@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi DRM Bridge maintainers,

On 30/11/2020 13:29, Tomi Valkeinen wrote:
> Hi,
> 
> This series adds the DT bindings and a driver for DisplayPort connector.
> 
> Minor changes since v3:
> - Added Laurent's reviewed-bys
> - Added $ref to graph schema
> - Use 'ret' instead of 'r'
> - Add the missing period
> 
>  Tomi
> 
> Tomi Valkeinen (2):
>   dt-bindings: dp-connector: add binding for DisplayPort connector
>   drm/bridge: display-connector: add DP support
> 
>  .../display/connector/dp-connector.yaml       | 56 +++++++++++++++++++
>  drivers/gpu/drm/bridge/display-connector.c    | 46 ++++++++++++++-
>  2 files changed, 100 insertions(+), 2 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/display/connector/dp-connector.yaml
> 

Is it ok for me to push this to drm-misc-next, or does one of the bridge maintainers want to handle
that?

 Tomi

-- 
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki
