Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D2F6F234CBC
	for <lists+devicetree@lfdr.de>; Fri, 31 Jul 2020 23:13:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728117AbgGaVNO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Jul 2020 17:13:14 -0400
Received: from mail-io1-f66.google.com ([209.85.166.66]:32801 "EHLO
        mail-io1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727053AbgGaVNM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 Jul 2020 17:13:12 -0400
Received: by mail-io1-f66.google.com with SMTP id d18so33026914ion.0
        for <devicetree@vger.kernel.org>; Fri, 31 Jul 2020 14:13:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=BC4DgRY9TG1oWX1U1WKTSv2Wn5LtvSbokQfUo59gzXU=;
        b=PNIxC99kdb/2/4ZT9m00pfvEshdbkgOp39ZJal/CE9ZbwfcYjks6YgE2DBB7gNXFzK
         P3bcz0oqB36eo1XlnCZ5TlcFuiBdAILmy8Wn46X44scwTqiE60/sfKZftIqknx48KP4M
         2b5EHQBd5Fq69QFn4K7qOqc9EURsGG1TfvjQMyFLldkpc9lmnHri4Do1IVWeHRnU9axB
         LCfSyioBF4zDJwZtCbuL4ci+A5yDfJx3ks1IvnTHmHYCYO58Mi65dzUctiC52PIZa5Ge
         lsJsz+AxBG7mRqAT0eZxNoZ35G4ToFfRfLTE7Z92MLdurQl2FuJwnI6KstbHbpwsl3ix
         fiIQ==
X-Gm-Message-State: AOAM53256ye8sqVlVlw50kpACtMDshXXbmXa0sQ4UOgfWzlMIvAYXhhW
        63XAHYc4Xtnd60mh7tUbOw==
X-Google-Smtp-Source: ABdhPJwVUm05hxCDesrq8eoGLM93f3+fIyi6L+QzneYi8BpnHy405llmvB5hxnYF+vqcdh7VYyNiMg==
X-Received: by 2002:a05:6638:2164:: with SMTP id p4mr6989520jak.57.1596229992022;
        Fri, 31 Jul 2020 14:13:12 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
        by smtp.gmail.com with ESMTPSA id f27sm5715789ill.75.2020.07.31.14.13.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2020 14:13:11 -0700 (PDT)
Received: (nullmailer pid 799601 invoked by uid 1000);
        Fri, 31 Jul 2020 21:13:10 -0000
Date:   Fri, 31 Jul 2020 15:13:10 -0600
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        dri-devel@lists.freedesktop.org
Subject: Re: [PATCH 2/3] dt-bindings: Add DT bindings for Chefree
 CH101OLHLWH-002
Message-ID: <20200731211310.GA799522@bogus>
References: <20200728201242.4336-1-marex@denx.de>
 <20200728201242.4336-2-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200728201242.4336-2-marex@denx.de>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 28 Jul 2020 22:12:41 +0200, Marek Vasut wrote:
> Add DT bindings for Chefree CH101OLHLWH-002 10.1" 1280x800 LCD.
> This panel is connected via LVDS.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> To: dri-devel@lists.freedesktop.org
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: devicetree@vger.kernel.org
> ---
>  .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
