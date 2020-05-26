Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 379BE1A8A45
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2020 20:53:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2504478AbgDNSxD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Apr 2020 14:53:03 -0400
Received: from mail-ot1-f68.google.com ([209.85.210.68]:34866 "EHLO
        mail-ot1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2504414AbgDNSw7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Apr 2020 14:52:59 -0400
Received: by mail-ot1-f68.google.com with SMTP id e20so795600otl.2
        for <devicetree@vger.kernel.org>; Tue, 14 Apr 2020 11:52:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=vBZW4t/QR6QOLzl/ULJ1MHgp2jUs56TsnBvH3b8AW/Y=;
        b=WsOliT2+esty9AAVZ2gIx4a+fBQ9DZe3lL8C1w806WXc1PBy2FwgqU26uq3sje1Q6W
         kylh2uI9q07HPy9QHQ2Sr+4DEHtYoIpsYBYI57N4YCkfOGjKhc3CqxhwpH9XE4XHlX99
         Q5gAzomsKiZbZgYr6OmyEfangXRF+s1b9tc+M9HVjoKu0+xkjnNCqfPBVI0Sb5XvmU3s
         H+dEEY1Lev0xwYOwZcbp6EGIlHADPlb4MeGpIQVyXYVMSICfX2Egp82vCTSP584nRrUU
         c9R2TB8P29wM2rTZhLcSYj7L3OywnuwzJ3IqDg6A7gdm6xFJy7aI7DfRovZ7eIF5SXJr
         +vAw==
X-Gm-Message-State: AGi0Pub/i7QfjUTKfPgnFE2Ojq7N5HPOIrc2bIk0Gis5C3zZIArLeQhf
        3mObntg780d+ZMAuTWKO4g==
X-Google-Smtp-Source: APiQypIvDthHOU9FMjetA2A+LsuxKXj3r8h27pVbxCJLM5178ny/A/1RuyJx24uUsw812iIqgdpnSw==
X-Received: by 2002:a9d:907:: with SMTP id 7mr19508096otp.312.1586890378740;
        Tue, 14 Apr 2020 11:52:58 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id c81sm5537585oib.35.2020.04.14.11.52.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Apr 2020 11:52:58 -0700 (PDT)
Received: (nullmailer pid 7412 invoked by uid 1000);
        Tue, 14 Apr 2020 18:52:57 -0000
Date:   Tue, 14 Apr 2020 13:52:57 -0500
From:   Rob Herring <robh@kernel.org>
To:     Sam Ravnborg <sam@ravnborg.org>
Cc:     dri-devel@lists.freedesktop.org,
        Thierry Reding <thierry.reding@gmail.com>,
        devicetree@vger.kernel.org, Sam Ravnborg <sam@ravnborg.org>,
        Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH v2 27/36] dt-bindings: display: convert sitronix,st7789v
 to DT Schema
Message-ID: <20200414185257.GA7358@bogus>
References: <20200408195109.32692-1-sam@ravnborg.org>
 <20200408195109.32692-28-sam@ravnborg.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200408195109.32692-28-sam@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed,  8 Apr 2020 21:51:00 +0200, Sam Ravnborg wrote:
> v2:
>     - dropped use of spi-slave.yaml (Maxime)
>     - added unevaluatedProperties (Maxime)
> 
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> ---
>  .../display/panel/sitronix,st7789v.txt        | 37 -----------
>  .../display/panel/sitronix,st7789v.yaml       | 63 +++++++++++++++++++
>  2 files changed, 63 insertions(+), 37 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/display/panel/sitronix,st7789v.txt
>  create mode 100644 Documentation/devicetree/bindings/display/panel/sitronix,st7789v.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
