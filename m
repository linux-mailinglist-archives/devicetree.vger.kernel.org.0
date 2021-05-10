Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 20EE2379390
	for <lists+devicetree@lfdr.de>; Mon, 10 May 2021 18:17:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231462AbhEJQSM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 May 2021 12:18:12 -0400
Received: from mail-oo1-f48.google.com ([209.85.161.48]:36626 "EHLO
        mail-oo1-f48.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231383AbhEJQSI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 May 2021 12:18:08 -0400
Received: by mail-oo1-f48.google.com with SMTP id v13-20020a4aa40d0000b02902052145a469so1956014ool.3
        for <devicetree@vger.kernel.org>; Mon, 10 May 2021 09:17:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Uam9btn5tZOj5tkn77Er0osenh0IBm6f94dzcquByW8=;
        b=TQPe6ClLIXagrx7WCVk/t9aO1WYRuZvaazwOZJ7H4E+yNx4Jsa9E/PmMS6QqSeg6t3
         3foTy5zuyIEckHH34dUdqhr2k91KBzvkyxopiYD5s/1Xj0/eyCUdBWvAFey364E55auN
         2L8jspKq+bE2+TTH/oCDDhdxrXqYnKTLXVf53T7NU31GnIhYC+dFHJ5bg28g89WIk3aS
         ZgUyPpfrLocoRuP//ad43m6SUdUogUd0nPsQkGGXQ4CCaTwzFr6yfQyrDQkuOLfge+Vd
         qFkXj9fXq+s4PEEwS5oZ19oTJ+KY4W8gb+2jC+LCepsVrPVl6DauvMHCKnPKusJV5rrq
         0Tug==
X-Gm-Message-State: AOAM531WsYoM31JFBMrPaKJsxAMHx0BWtc0vd+2lEuo48QUC7xk4dSwm
        FOhbWW/v7BbZ6iUs5RRQPQ==
X-Google-Smtp-Source: ABdhPJxXrT5PnQP2mZCxqxZLE0tuvtYnZa05Pj3zWMIWHA/2/47vNZm3stXQMdBMFrQnRQy4XgxuZQ==
X-Received: by 2002:a4a:4304:: with SMTP id k4mr19686135ooj.42.1620663423170;
        Mon, 10 May 2021 09:17:03 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id 34sm3179363otf.38.2021.05.10.09.17.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 09:17:02 -0700 (PDT)
Received: (nullmailer pid 223097 invoked by uid 1000);
        Mon, 10 May 2021 16:17:01 -0000
Date:   Mon, 10 May 2021 11:17:01 -0500
From:   Rob Herring <robh@kernel.org>
To:     Boris Lysov <arzamas-16@mail.ee>
Cc:     linux@roeck-us.net, robh+dt@kernel.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        matthias.bgg@gmail.com
Subject: Re: [PATCH v2 2/3] dt-bindings: watchdog: mediatek: add support for
 mt6577 SoC
Message-ID: <20210510161701.GA223042@robh.at.kernel.org>
References: <20210131234425.9773-1-arzamas-16@mail.ee>
 <20210509211702.549-1-arzamas-16@mail.ee>
 <20210509211702.549-3-arzamas-16@mail.ee>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210509211702.549-3-arzamas-16@mail.ee>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 10 May 2021 00:17:01 +0300, Boris Lysov wrote:
> Add support for Mediatek mt6577 SoC to device tree binding
> documentation.
> 
> Signed-off-by: Boris Lysov <arzamas-16@mail.ee>
> ---
>  Documentation/devicetree/bindings/watchdog/mtk-wdt.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
