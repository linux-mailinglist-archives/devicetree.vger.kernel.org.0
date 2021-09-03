Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 857584004DC
	for <lists+devicetree@lfdr.de>; Fri,  3 Sep 2021 20:30:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235805AbhICSbx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Sep 2021 14:31:53 -0400
Received: from mail-ot1-f42.google.com ([209.85.210.42]:45583 "EHLO
        mail-ot1-f42.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235548AbhICSbx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Sep 2021 14:31:53 -0400
Received: by mail-ot1-f42.google.com with SMTP id l7-20020a0568302b0700b0051c0181deebso97260otv.12
        for <devicetree@vger.kernel.org>; Fri, 03 Sep 2021 11:30:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=m6Qtq7FbAyWD8i7ZUvpyRShbytOj8jjajHVMhB/PPaw=;
        b=U2ivuLa0eJ7eD+vf9HRrrrQjFVshMEUOLxeNJD5JYBTY65/KaBvKJP9bECzQ1090I3
         sfoT7ZPmtI8bE+Lp6Q1qOe2BYwnf0X5T6+3xxK4GSK8rlXrG54MzyEazoc66Sasg9uNh
         LAmYCQbWnQpnuuwng18lXm2pOd1mBYlAjQW/xw3PhuVYl+PXXDJ0W6nVzHAkcNXFZa3s
         IpAYa3nqaeksHPoZc0JdfTHoFXDwSGUpETK6XUSEciXFbHYcoR0r5H6MXl/pTTfYYqqP
         DR4PTztEh4Ids7SvFPbPfmudUUB9lRn6HshWZ/hemX0YCf9pdqP2MUefwBndK28Imt5r
         qGNg==
X-Gm-Message-State: AOAM530fmvmeblBny7V6mtqKK8HqNYc4w6ieQcZWZc8MaeA5p4lQq4Ar
        0uQnptC8UiaHqyWrGtelWQ==
X-Google-Smtp-Source: ABdhPJwNEBYiV1vYlkQIITzde3RW+yv4MdXv2ikwsHVVbkS36p/1lzZHPkHmKL1pYekvong6N/iDPA==
X-Received: by 2002:a05:6830:4410:: with SMTP id q16mr361392otv.216.1630693853075;
        Fri, 03 Sep 2021 11:30:53 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id j4sm1166355oom.10.2021.09.03.11.30.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Sep 2021 11:30:52 -0700 (PDT)
Received: (nullmailer pid 3240761 invoked by uid 1000);
        Fri, 03 Sep 2021 18:30:51 -0000
Date:   Fri, 3 Sep 2021 13:30:51 -0500
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>, linux-sunxi@googlegroups.com,
        linux-arm-kernel@lists.infradead.org,
        Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v2 13/52] dt-bindings: display: aa104xd12: Remove unused
 vcc-supply
Message-ID: <YTJp260UC0xoWs73@robh.at.kernel.org>
References: <20210901091852.479202-1-maxime@cerno.tech>
 <20210901091852.479202-14-maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210901091852.479202-14-maxime@cerno.tech>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 01 Sep 2021 11:18:13 +0200, Maxime Ripard wrote:
> The Mitsubishi AA140XD12 Device Tree Binding was requiring a vcc-supply
> property. However, neither the existing device trees using that binding,
> nor the driver were actually using that property which is also redundant
> with power-supply. Let's just drop it.
> 
> Cc: dri-devel@lists.freedesktop.org
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  .../bindings/display/panel/mitsubishi,aa104xd12.yaml         | 5 -----
>  1 file changed, 5 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>
