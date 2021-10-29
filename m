Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 42FE143F467
	for <lists+devicetree@lfdr.de>; Fri, 29 Oct 2021 03:36:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231349AbhJ2BjL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Oct 2021 21:39:11 -0400
Received: from mail-oi1-f174.google.com ([209.85.167.174]:44021 "EHLO
        mail-oi1-f174.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229950AbhJ2BjL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Oct 2021 21:39:11 -0400
Received: by mail-oi1-f174.google.com with SMTP id o4so11061012oia.10
        for <devicetree@vger.kernel.org>; Thu, 28 Oct 2021 18:36:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=rEUKq4H/q1YXode0QYSe29a/fljPe3IY3S8bjoBxkQE=;
        b=8RWOihggDEI/MW9UU9Tns+iL2hOENF+zbEvxN1cN3QR4/Y/l7lYI6HkhKFlyeULGik
         yiItAgl4IoXKoMT7KkoF1+h6Lo5PX4KXzJ6fCWk4OTr8fCcynjBA1EKEPWA6gtaUiYkK
         BiqyRFjUvv9kJsjOZgCc2Zz4mIKJv37Wqcn6EVdcbID2HwbSBE8nLt8PmjikQ4CJlp3f
         PHiMK12VYXBlHV+pLCgIVeT4fZsmIKFrRoC5AyJfrkD8iip2zvuLCoNAg7PgqRKfpVMy
         8YDl7hr4TJwaRNxJEvTMaY95Dcqd260qe3O1YG7cT5UCbKwWggrstATjSXCFTa0iw7Ib
         048g==
X-Gm-Message-State: AOAM532eSSHAc8CWKUTE3GpKV6MmfESu20PQFOSySFfvd+K+v1vPMUvx
        5l2Vzu9roFoyPhVBgWf++g==
X-Google-Smtp-Source: ABdhPJwIHn1nKBNsS1QmZwcUTe9OKaLhM9UXWPtSWb6HLBiBiKMpoaGB+U4NF8qqP3AazX8vaBHFdA==
X-Received: by 2002:a05:6808:243:: with SMTP id m3mr6022576oie.14.1635471403392;
        Thu, 28 Oct 2021 18:36:43 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id y10sm1573730oti.40.2021.10.28.18.36.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Oct 2021 18:36:42 -0700 (PDT)
Received: (nullmailer pid 966805 invoked by uid 1000);
        Fri, 29 Oct 2021 01:36:42 -0000
Date:   Thu, 28 Oct 2021 20:36:42 -0500
From:   Rob Herring <robh@kernel.org>
To:     Geert Uytterhoeven <geert+renesas@glider.be>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Tomi Valkeinen <tomba@kernel.org>,
        dri-devel@lists.freedesktop.org, Jyri Sarha <jyri.sarha@iki.fi>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: display: tilcd: Fix endpoint adressing in
 example
Message-ID: <YXtQKoZvqH9/X/uK@robh.at.kernel.org>
References: <c58b9cdcd09cf669bb63cd9465d0f75dd66e742c.1634822358.git.geert+renesas@glider.be>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c58b9cdcd09cf669bb63cd9465d0f75dd66e742c.1634822358.git.geert+renesas@glider.be>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 21 Oct 2021 15:19:49 +0200, Geert Uytterhoeven wrote:
> Remove the bogus unit addresses from the endpoints in the example.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
>  Documentation/devicetree/bindings/display/tilcdc/tilcdc.txt | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Applied, thanks!
