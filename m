Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7904926B1A9
	for <lists+devicetree@lfdr.de>; Wed, 16 Sep 2020 00:34:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727572AbgIOWeZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Sep 2020 18:34:25 -0400
Received: from mail-il1-f195.google.com ([209.85.166.195]:33182 "EHLO
        mail-il1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727609AbgIOQPp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Sep 2020 12:15:45 -0400
Received: by mail-il1-f195.google.com with SMTP id x2so3566877ilm.0;
        Tue, 15 Sep 2020 09:11:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=KSOAyNVWeqUE1eNb5fjGsEEoMGtp4LbwBVr7j3WH4jQ=;
        b=Lbd6pRUEM90zyPS4h8bio8rONVq3O7bLTnbF3og4p1rR0ZUKzrBp+ldc8djFyDQTHR
         wdh/jBOePPCbnhmscywDigWLYsAUF85TRJs1v6/r1m5e5nIBJUeG8bpd//wTXXxxRjKI
         bzii89A3fs7U6MOaPbpYkI93QkWpSBgcOB68yW4mTyUKBcSwn/io0N9JrYMIDXe3atoj
         WpG7YSAvSWGlYsEm6dWv9Ooe5BTGLhp/+iHpV34ViRBDlKcTPLybfQd1IZ0MeMbj8JcH
         AluOQPI7t9g3dc5p8erSoiTRuawV95u31IhNsAmMuQZR37xkZ9HerdG8N+xBGON8s5h8
         pzKg==
X-Gm-Message-State: AOAM53022aOFoeCx65ir4ycb5h20eTu1OzFGRcFNcARr+XdHTLhTLPYK
        rs0j8QNsSOsv9jBAVTHup01n10KTiZfT9eU=
X-Google-Smtp-Source: ABdhPJyk0bNPAGNZuwTrEU4SGslz9cnXoPY9yjb2itUeNoFTxzwNacOA+ryWWOc0EJ4QK9zJ7ZuqfA==
X-Received: by 2002:a92:bad9:: with SMTP id t86mr16275837ill.308.1600185674993;
        Tue, 15 Sep 2020 09:01:14 -0700 (PDT)
Received: from xps15 ([64.188.179.253])
        by smtp.gmail.com with ESMTPSA id j62sm7842074iof.53.2020.09.15.09.01.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2020 09:01:14 -0700 (PDT)
Received: (nullmailer pid 2029905 invoked by uid 1000);
        Tue, 15 Sep 2020 16:01:12 -0000
Date:   Tue, 15 Sep 2020 10:01:12 -0600
From:   Rob Herring <robh@kernel.org>
To:     Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Cc:     linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-renesas-soc@vger.kernel.org,
        Biju Das <biju.das.jz@bp.renesas.com>,
        Magnus Damm <magnus.damm@gmail.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Prabhakar <prabhakar.csengg@gmail.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        devicetree@vger.kernel.org,
        Niklas =?iso-8859-1?Q?S=F6derlund?= 
        <niklas.soderlund@ragnatech.se>, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: media: renesas,vin: Add device tree
 support for r8a7742
Message-ID: <20200915160112.GA2029821@bogus>
References: <20200907144509.8861-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200907144509.8861-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200907144509.8861-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 07 Sep 2020 15:45:08 +0100, Lad Prabhakar wrote:
> Add compatible string for r8a7742. No driver change is needed as
> "renesas,rcar-gen2-vin" will activate the right code.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> Reviewed-by: Biju Das <biju.das.jz@bp.renesas.com>
> ---
>  Documentation/devicetree/bindings/media/renesas,vin.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
