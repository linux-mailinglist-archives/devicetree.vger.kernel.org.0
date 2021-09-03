Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 876374004DE
	for <lists+devicetree@lfdr.de>; Fri,  3 Sep 2021 20:31:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235548AbhICScI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Sep 2021 14:32:08 -0400
Received: from mail-oo1-f43.google.com ([209.85.161.43]:43639 "EHLO
        mail-oo1-f43.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233315AbhICScH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Sep 2021 14:32:07 -0400
Received: by mail-oo1-f43.google.com with SMTP id y16-20020a4ad6500000b0290258a7ff4058so1752940oos.10
        for <devicetree@vger.kernel.org>; Fri, 03 Sep 2021 11:31:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=76jnDJCxGmr/v4jY11AieoLLZS9SNT7WUzklwo02Pbo=;
        b=sP7J6lr6QBxF9e0/Zz7OApOfexKF4+4fW73YpD57ZAdiFSdhsCHyA1Km80K6VFtqrm
         uclAxP1lP1AMhRmFZlNN77xL4dCa1qFWq1mrYI5R3/owRNTloywHFfMR4QBUow2EiQAV
         trxx5fFd8Lnmn2kmRoYwNd4NDRU0np12HFCDdY5RmA5oXMBizmdh/MAcLJwrqjE0jQyo
         +NPkYYQI9IhRAiWzGkLiWJ0fLWmsquXJ8chFZqzdUsYdQju+UbzciUR0Z9aOYw0S57Yp
         +Qjb7djxO75SDl/Dj9rAX0PziztYDs+eMICVkaJlWk0E99MhEvAJLC+muZKys3xO/j+6
         y5hw==
X-Gm-Message-State: AOAM531BpkJd/zc/wccVdFPG5N3v3F4ziIKFaZ747JQycA5e0cS8Znfi
        liXHWA8ovTD289uwUWYk8g==
X-Google-Smtp-Source: ABdhPJxzwyPGzPvnG5gtPbFSBwfKvVWD1cmhn1BQ7qM803qOGHILf/hTwFZh+P9RfPtY04ktP2a6hg==
X-Received: by 2002:a4a:d04d:: with SMTP id x13mr4106627oor.65.1630693867295;
        Fri, 03 Sep 2021 11:31:07 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id b2sm1146421ook.46.2021.09.03.11.31.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Sep 2021 11:31:06 -0700 (PDT)
Received: (nullmailer pid 3241187 invoked by uid 1000);
        Fri, 03 Sep 2021 18:31:05 -0000
Date:   Fri, 3 Sep 2021 13:31:05 -0500
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Sam Ravnborg <sam@ravnborg.org>,
        Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>,
        linux-sunxi@googlegroups.com, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        linux-arm-kernel@lists.infradead.org,
        Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH v2 14/52] dt-bindings: display: aa104xd12: Fix
 data-mapping
Message-ID: <YTJp6d7RXKsYxPKq@robh.at.kernel.org>
References: <20210901091852.479202-1-maxime@cerno.tech>
 <20210901091852.479202-15-maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210901091852.479202-15-maxime@cerno.tech>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 01 Sep 2021 11:18:14 +0200, Maxime Ripard wrote:
> The Mitsubishi AA140XD12 Device Tree Binding was requiring a
> data-mapping property value which was set to another value in the
> existing Device Trees. Fix this.
> 
> Cc: dri-devel@lists.freedesktop.org
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  .../bindings/display/panel/mitsubishi,aa104xd12.yaml          | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>
