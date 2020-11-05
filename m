Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A670A2A8664
	for <lists+devicetree@lfdr.de>; Thu,  5 Nov 2020 19:48:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731060AbgKESsp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Nov 2020 13:48:45 -0500
Received: from mail-oi1-f194.google.com ([209.85.167.194]:44304 "EHLO
        mail-oi1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726801AbgKESsp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Nov 2020 13:48:45 -0500
Received: by mail-oi1-f194.google.com with SMTP id t16so2712407oie.11
        for <devicetree@vger.kernel.org>; Thu, 05 Nov 2020 10:48:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=BYNX3sHJkyMH0t/IiPa/KZjWE+bpxLVyxLEUGb+ssX4=;
        b=KodtkjgP1woEN/5aZ9ftNw/nL3OD4mz1T2MpCNM8WlLRfCddUgRvDhFA6wbce1u9de
         /fPJl9iYPd3ZYHRIiaaUOtSQq27CX3K/6FFwUgssgc9WnD9rFnvu2q4ODNOhmQv1W4R6
         QKkt2ADxHlblqLQ5NP8OQoEcPkM0V8Lnuz8IdrbXTuSkxqODYfsLNZkyZF1Y/5bfeHlD
         g0WYv7J92SSsOdRzmuSLVL60E3Bjog0jTZrQcBouuEjs9iqANAJ7NXre7FFpovvoLqhD
         lQVK8L2djZNXzSq1YxVhqtUmvmwGxyBvxjLCGVFXQcKEgQROOL9TwijLuQ8MSAixfHyq
         Ztww==
X-Gm-Message-State: AOAM531ki+jVOZ6fZ3hjPdw6m3TaiZKOGcjKMZ7VXNNeyY9pjihFoX0K
        ZJl/xqTEJciRnpnBBKMbNg==
X-Google-Smtp-Source: ABdhPJyDHAEgBqcYZhMLwuDBAvHg8cvuucs/nxvXtGPkv7ixqUtMcCymRx0Vx2GSqrwF5pQJqEjC/g==
X-Received: by 2002:a54:4590:: with SMTP id z16mr520016oib.63.1604602124676;
        Thu, 05 Nov 2020 10:48:44 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id q10sm513355oih.56.2020.11.05.10.48.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Nov 2020 10:48:43 -0800 (PST)
Received: (nullmailer pid 1620893 invoked by uid 1000);
        Thu, 05 Nov 2020 18:48:42 -0000
Date:   Thu, 5 Nov 2020 12:48:42 -0600
From:   Rob Herring <robh@kernel.org>
To:     Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        alsa-devel@alsa-project.org, Sameer Pujar <spujar@nvidia.com>,
        Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v6 2/3] dt-bindings: ASoC: renesas, rsnd: switch to yaml
 base Documentation
Message-ID: <20201105184842.GA1620536@bogus>
References: <87eel8baxc.wl-kuninori.morimoto.gx@renesas.com>
 <87blgcbaw4.wl-kuninori.morimoto.gx@renesas.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87blgcbaw4.wl-kuninori.morimoto.gx@renesas.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 05 Nov 2020 15:05:10 +0900, Kuninori Morimoto wrote:
> From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> 
> This patch switches from .txt base to .yaml base Document.
> It is still keeping detail explanations at .txt
> 
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> ---
>  .../bindings/sound/renesas,rsnd.txt           | 520 ------------------
>  .../bindings/sound/renesas,rsnd.yaml          | 450 +++++++++++++++
>  2 files changed, 450 insertions(+), 520 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
