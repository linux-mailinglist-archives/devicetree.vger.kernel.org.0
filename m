Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 99B352D46CA
	for <lists+devicetree@lfdr.de>; Wed,  9 Dec 2020 17:33:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728121AbgLIQdY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Dec 2020 11:33:24 -0500
Received: from mail-ot1-f68.google.com ([209.85.210.68]:40506 "EHLO
        mail-ot1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727024AbgLIQdY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Dec 2020 11:33:24 -0500
Received: by mail-ot1-f68.google.com with SMTP id j12so1931641ota.7
        for <devicetree@vger.kernel.org>; Wed, 09 Dec 2020 08:33:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=dCuMs4GSdwg3rvAHN9LxlH1LO/M24Tt6rfO3ld6+4c8=;
        b=OGCTbzjs7H64Jvrf7PxSS9wsLPNTRqwDTiEyhWVmfI+2wk6zYlwI279zsISlB1MoqJ
         zwAXIS/ro0V7jf9/DXwSCB7PuQrhYCXOdsoB7hlLP5MXLS11HaZfcyE+uJYQZTBrImaL
         hRWwXpAp9CFt3uzxeeV7RPYum4D9GIcO8LN02Ntkp+VNwuXFF498e0oPpDVimxqa392V
         FelTfyRMszNyv2zidsFz/aYya4EhCZsOKhV+125+XN/E9IrcZr/iOfw1oeaQAGbDZZ4m
         ErI3MkhXdFgi3/XDNL2uM5Rg4XfbgyAkUnEDWSkjr1sAOSiGwB3P2pgM7a+dj+QBbv2w
         ilCQ==
X-Gm-Message-State: AOAM533KnWJnf+cF264kjotfTTPJZeRFnVU9xb60xOHFg8ogPnuppm5f
        epnUU+UoI2xyNL+P0ZwYqg==
X-Google-Smtp-Source: ABdhPJz0sGQupY3l4nBeRGwudmV+CVNHqh7oLdIK5VeM+7vSRXo8s/xl4mFlcUkdMH/XBw2CdWQAkg==
X-Received: by 2002:a9d:6b99:: with SMTP id b25mr2509695otq.49.1607531563308;
        Wed, 09 Dec 2020 08:32:43 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id s139sm392160oih.10.2020.12.09.08.32.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Dec 2020 08:32:42 -0800 (PST)
Received: (nullmailer pid 565478 invoked by uid 1000);
        Wed, 09 Dec 2020 16:32:40 -0000
Date:   Wed, 9 Dec 2020 10:32:40 -0600
From:   Rob Herring <robh@kernel.org>
To:     conor.dooley@microchip.com
Cc:     cyril.jean@microchip.com, daire.mcnamara@microchip.com,
        robh+dt@kernel.org, damien.lemoal@wdc.com, anup.patel@wdc.com,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        paul.walmsley@sifive.com, aou@eecs.berkeley.edu,
        david.abdurachmanov@gmail.com, lewis.hanly@microchip.com,
        atish.patra@wdc.com, jassisinghbrar@gmail.com, palmer@dabbelt.com
Subject: Re: [PATCH v2 2/5] dt-bindings: add bindings for polarfire soc
 mailbox
Message-ID: <20201209163240.GA565400@robh.at.kernel.org>
References: <20201201110250.28437-1-conor.dooley@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201201110250.28437-1-conor.dooley@microchip.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 01 Dec 2020 11:02:50 +0000, conor.dooley@microchip.com wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
> 
> Add device tree bindings for the MSS system controller mailbox on
> the Microchip PolarFire SoC.
> 
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  .../mailbox/microchip,mpfs-mailbox.yaml       | 47 +++++++++++++++++++
>  1 file changed, 47 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mailbox/microchip,mpfs-mailbox.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
