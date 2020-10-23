Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A30A329732D
	for <lists+devicetree@lfdr.de>; Fri, 23 Oct 2020 18:06:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S465051AbgJWQGV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Oct 2020 12:06:21 -0400
Received: from mail-ot1-f66.google.com ([209.85.210.66]:44382 "EHLO
        mail-ot1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S465058AbgJWQGV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Oct 2020 12:06:21 -0400
Received: by mail-ot1-f66.google.com with SMTP id e20so1801223otj.11
        for <devicetree@vger.kernel.org>; Fri, 23 Oct 2020 09:06:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=X8IBdl4HpWRyoqCDl398qjaa9I/DDIbUBEJ/psCdV+k=;
        b=UypDwpAizdGGMw812ymVu+G1231qGDlIOWdc+4Iur/G19+TPQvwueT0GwEWH2bPMYS
         6qeHHG5GgxSsPtlqjygsGoYHPUOWShXMbhuL6tLY4QjRei4lPAG9lzVlT90xIWVB0dcz
         i9UKc/KetlyqK3QXcFCrGZm2EQ3ivU10hzK+LolnAAMvbzFHc8uMZaTqXUaDkejxYF3B
         mK4eStxRUHxJu5oz8FGC8sem8qrZrFzQd7X+78X0+8YFKoX9NLukseEAre4lXf6h6S/M
         eF8fA55MSImZegXES2CJmanvq8YEGuc5oicobNPGTLSC4Ax4PmeActHRrOQK8k3U5bMq
         w+Qg==
X-Gm-Message-State: AOAM5331yn/Gn+oXC34GwV6xFw3eyPDWiFVtGW26iJr4BgyEeuOlQdtB
        UF8QpH+XxeKmDSWg+f8fQw==
X-Google-Smtp-Source: ABdhPJxgp+fqgYJIOoRdYSwh8gYFkLSwHlaCjUajGcOQFwYPWrbx3MebN1I++Pj+IWGuxwR2UdkTSw==
X-Received: by 2002:a9d:2389:: with SMTP id t9mr1972940otb.329.1603469180512;
        Fri, 23 Oct 2020 09:06:20 -0700 (PDT)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id 33sm470562otr.25.2020.10.23.09.06.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2020 09:06:19 -0700 (PDT)
Received: (nullmailer pid 2789709 invoked by uid 1000);
        Fri, 23 Oct 2020 16:06:19 -0000
Date:   Fri, 23 Oct 2020 11:06:19 -0500
From:   Rob Herring <robh@kernel.org>
To:     Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc:     alsa-devel@alsa-project.org, Sameer Pujar <spujar@nvidia.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 2/3] ASoC: dt-bindings: renesas, rsnd: switch to yaml
 base Documentation
Message-ID: <20201023160619.GA2789005@bogus>
References: <87a6wfay7t.wl-kuninori.morimoto.gx@renesas.com>
 <877drjay6m.wl-kuninori.morimoto.gx@renesas.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <877drjay6m.wl-kuninori.morimoto.gx@renesas.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 22 Oct 2020 09:46:36 +0900, Kuninori Morimoto wrote:
> From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> 
> This patch switches from .txt base to .yaml base Document.
> It is still keeping detail explanations at .txt
> 
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> ---
>  .../bindings/sound/renesas,rsnd.txt           | 520 ------------------
>  .../bindings/sound/renesas,rsnd.yaml          | 456 +++++++++++++++
>  2 files changed, 456 insertions(+), 520 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
> 


My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:
./Documentation/devicetree/bindings/sound/renesas,rsnd.yaml:19:13: [warning] wrong indentation: expected 14 but found 12 (indentation)
./Documentation/devicetree/bindings/sound/renesas,rsnd.yaml:22:13: [warning] wrong indentation: expected 14 but found 12 (indentation)
./Documentation/devicetree/bindings/sound/renesas,rsnd.yaml:96:15: [warning] too many spaces after colon (colons)
./Documentation/devicetree/bindings/sound/renesas,rsnd.yaml:101:15: [warning] too many spaces after colon (colons)
./Documentation/devicetree/bindings/sound/renesas,rsnd.yaml:105:19: [warning] too many spaces after colon (colons)

dtschema/dtc warnings/errors:


See https://patchwork.ozlabs.org/patch/1385840

The base for the patch is generally the last rc1. Any dependencies
should be noted.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

