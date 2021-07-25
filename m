Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 45BE13D508D
	for <lists+devicetree@lfdr.de>; Mon, 26 Jul 2021 01:06:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229808AbhGYWZu convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Sun, 25 Jul 2021 18:25:50 -0400
Received: from aposti.net ([89.234.176.197]:46286 "EHLO aposti.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229547AbhGYWZu (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 25 Jul 2021 18:25:50 -0400
Date:   Mon, 26 Jul 2021 00:06:07 +0100
From:   Paul Cercueil <paul@crapouillou.net>
Subject: Re: [PATCH v3 1/3] dt-bindings: Add QiShenglong vendor prefix
To:     Artjom Vejsel <akawolf0@gmail.com>
Cc:     thierry.reding@gmail.com, sam@ravnborg.org,
        dri-devel@lists.freedesktop.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Message-Id: <7IPTWQ.3Z1HNE2ZJG041@crapouillou.net>
In-Reply-To: <20210725221527.1771892-2-akawolf0@gmail.com>
References: <20210725221527.1771892-1-akawolf0@gmail.com>
        <20210725221527.1771892-2-akawolf0@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Transfer-Encoding: 8BIT
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Artjom,

Le lun., juil. 26 2021 at 01:15:25 +0300, Artjom Vejsel 
<akawolf0@gmail.com> a écrit :
> Add vendor prefix for Shenzhen QiShenglong Industrialist Co., Ltd.
> QiShenglong is a Chinese manufacturer of handheld gaming consoles, 
> most of
> which run (very old) versions of Linux.
> QiShenglong is known as Hamy.
> 
> Signed-off-by: Artjom Vejsel <akawolf0@gmail.com>

Reviewed-by: Paul Cercueil <paul@crapouillou.net>

Cheers,
-Paul

> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml 
> b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> index b868cefc7c55..1d45a2d7a7bb 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -926,6 +926,8 @@ patternProperties:
>      description: Chengdu Kaixuan Information Technology Co., Ltd.
>    "^qiaodian,.*":
>      description: QiaoDian XianShi Corporation
> +  "^qishenglong,.*":
> +    description: Shenzhen QiShenglong Industrialist Co., Ltd.
>    "^qnap,.*":
>      description: QNAP Systems, Inc.
>    "^radxa,.*":
> --
> 2.32.0
> 


