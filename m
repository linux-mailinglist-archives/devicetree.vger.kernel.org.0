Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 164EC315806
	for <lists+devicetree@lfdr.de>; Tue,  9 Feb 2021 21:51:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233868AbhBIUub (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Feb 2021 15:50:31 -0500
Received: from mail-oi1-f179.google.com ([209.85.167.179]:41021 "EHLO
        mail-oi1-f179.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233908AbhBIUmZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Feb 2021 15:42:25 -0500
Received: by mail-oi1-f179.google.com with SMTP id v193so15435556oie.8
        for <devicetree@vger.kernel.org>; Tue, 09 Feb 2021 12:42:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=s+u3vz6e9KCuVkOaGOVf97bYpuYJLb9GDgnFze0FbFo=;
        b=L8Pi3ROvADuN9woMaKmwyBVY1TdRouuz0VoK28q0AO9ahs0or3U8qP73elcz4n8YVn
         7oCbJRRq+XNSvm/o5Lcb1pXdNpYDIgeQQ8TkdCRlHHozOBA/kU45mfVi/FysUqZRCAnu
         hZ0c5cYaOlaDLWI1rfZ4I/vKbSPLh7s7fUGMG82hg8KzSa+FALHOEx81Ax+1oQNdb0p6
         yTW+1MgbqXDI/H4XwNfQHCs9iyMOgHavFVz12ohFhAxr+QsCMcYi7VhqQUXTB7lWGp+X
         8UTLtk2MGIwux9tDmYnERgcqZrs3jpfh3MPau5WUxOoNWJcBMI+DNE7rMpcCY6FnLm5Z
         lW2g==
X-Gm-Message-State: AOAM53307CShvOnqFZSihVAMs4pC0BRsLxf0lShS6JiyiIJuzfnWdzgq
        eQhHtYRXtyXmw0sDsb+eFQ==
X-Google-Smtp-Source: ABdhPJyAk84Z8pz9qQ8lkrDwHztnBDDvhCtnoOD99hW+BNnArmdOX0zcB04Down2wini/oEjkxgXOA==
X-Received: by 2002:aca:fdd0:: with SMTP id b199mr3634977oii.10.1612903298729;
        Tue, 09 Feb 2021 12:41:38 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id a63sm4590099otc.75.2021.02.09.12.41.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Feb 2021 12:41:37 -0800 (PST)
Received: (nullmailer pid 138393 invoked by uid 1000);
        Tue, 09 Feb 2021 20:41:36 -0000
Date:   Tue, 9 Feb 2021 14:41:36 -0600
From:   Rob Herring <robh@kernel.org>
To:     Boris Lysov <arzamas-16@mail.ee>
Cc:     devicetree@vger.kernel.org, linux@roeck-us.net,
        matthias.bgg@gmail.com, robh+dt@kernel.org,
        linux-mediatek@lists.infradead.org
Subject: Re: [PATCH 1/3] dt-bindings: watchdog: mediatek: add support for
 mt6577 SoC
Message-ID: <20210209204136.GA138342@robh.at.kernel.org>
References: <20210131234425.9773-1-arzamas-16@mail.ee>
 <20210131234425.9773-2-arzamas-16@mail.ee>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210131234425.9773-2-arzamas-16@mail.ee>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 01 Feb 2021 02:44:23 +0300, Boris Lysov wrote:
> Add support for Mediatek mt6577 SoC to device tree binding
> documentation.
> 
> Signed-off-by: Boris Lysov <arzamas-16@mail.ee>
> ---
>  Documentation/devicetree/bindings/watchdog/mtk-wdt.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
