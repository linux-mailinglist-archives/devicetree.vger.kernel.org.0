Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9C09435E26E
	for <lists+devicetree@lfdr.de>; Tue, 13 Apr 2021 17:13:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244281AbhDMPNz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Apr 2021 11:13:55 -0400
Received: from mail-ot1-f46.google.com ([209.85.210.46]:46691 "EHLO
        mail-ot1-f46.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229812AbhDMPNy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Apr 2021 11:13:54 -0400
Received: by mail-ot1-f46.google.com with SMTP id d3-20020a9d29030000b029027e8019067fso14481547otb.13
        for <devicetree@vger.kernel.org>; Tue, 13 Apr 2021 08:13:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=8VTg94yIfoIthkvMvtbySIlQx+UdB8ppHyDAgluhSXY=;
        b=Auvf7e0GjJo80ZlPb22x/9NfSgbHSaY0ZoGtCLIuL6F3YNqoFeD4UZXduuIXYuMj0R
         ZXA4jawwawy4gdOxtwe8uprh6LCSXKiHOHItMN5IWHhE8sAooGne/h8pNodF4+1zHOki
         Md+iafHlCQG/3vXHKfFUoa4REfv23rBmum6WCP1Ljqxa7ddOtAqQphzuecOfeJ9QlWdl
         zkTUOjyHKmt92vDV//GvQrGKO6NP8KGJFDfVzbU0E70qTy2L6RfjJNAF9sYTe5/IXgWA
         mp2HsRxvcyoEZQkInGGTWRNRaaiAK0AaxpKHiQPBwB9w03vFhSPpSTjlbOrlmgjTbu51
         ojCw==
X-Gm-Message-State: AOAM53342iT+TZZzXJXWuQudSffQxliHxKxhbS9bIMBnzYneabVQAcHi
        TFvhaSpRk2G+EJJXWcdDow==
X-Google-Smtp-Source: ABdhPJyS+3D+v5QmaG+bOc9NyXiIxS/c000wvsFkzFlRO04+UgdtFNNz35dM4m96bnrOK0msIz9hyQ==
X-Received: by 2002:a9d:550b:: with SMTP id l11mr7625096oth.369.1618326813119;
        Tue, 13 Apr 2021 08:13:33 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id t203sm2970383oig.2.2021.04.13.08.13.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 08:13:32 -0700 (PDT)
Received: (nullmailer pid 1690980 invoked by uid 1000);
        Tue, 13 Apr 2021 15:13:30 -0000
Date:   Tue, 13 Apr 2021 10:13:30 -0500
From:   Rob Herring <robh@kernel.org>
To:     conor.dooley@microchip.com
Cc:     cyril.jean@microchip.com, anup.patel@wdc.com,
        linux-riscv@lists.infradead.org, david.abdurachmanov@gmail.com,
        devicetree@vger.kernel.org, lewis.hanly@microchip.com,
        j.neuschaefer@gmx.net, robh+dt@kernel.org,
        daire.mcnamara@microchip.com, damien.lemoal@wdc.com,
        atish.patra@wdc.com, paul.walmsley@sifive.com,
        jassisinghbrar@gmail.com, palmer@dabbelt.com, aou@eecs.berkeley.edu
Subject: Re: [PATCH v5 3/5] dt-bindings: add bindings for polarfire soc
 system controller
Message-ID: <20210413151330.GA1690933@robh.at.kernel.org>
References: <20210412160407.19462-1-conor.dooley@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210412160407.19462-1-conor.dooley@microchip.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 12 Apr 2021 17:04:07 +0100, conor.dooley@microchip.com wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
> 
> Add device tree bindings for the MSS system controller on
> the Microchip PolarFire SoC.
> 
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  ...icrochip,polarfire-soc-sys-controller.yaml | 35 +++++++++++++++++++
>  1 file changed, 35 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/soc/microchip/microchip,polarfire-soc-sys-controller.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
