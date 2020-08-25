Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3669A251CDF
	for <lists+devicetree@lfdr.de>; Tue, 25 Aug 2020 18:05:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726457AbgHYQFk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Aug 2020 12:05:40 -0400
Received: from mail-io1-f66.google.com ([209.85.166.66]:33218 "EHLO
        mail-io1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726222AbgHYQFh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Aug 2020 12:05:37 -0400
Received: by mail-io1-f66.google.com with SMTP id g14so13034505iom.0
        for <devicetree@vger.kernel.org>; Tue, 25 Aug 2020 09:05:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=USbVo7pdWQ2iWUYfdtVits61UbxkogYWPU+SGBVoiSM=;
        b=rCY2F8rIJtHxQEcFWEPLZwWQmyE4fKQW+A/kET5q3GtBdgkMFdSMLFPEQHH3PpBUOT
         8JRbzjOyA+8D9Vy8mtUM4Etc6kCJWcr8dV0MqnflLScvH6iqGjoQgZG5IhkvzCjtbMkA
         EN0L0cpYrbrTM9Z2MDQF1d5gQFmQNPe2nBAXfRHXFm7ifo0EqrUMFWMkOY7Yke4evce6
         9iYEkVY2md+Bi7Mw3ezGWlp8cFyxkNqjazfbezQnYLqD7fdxzs69C+W0eyHdybjj5pF9
         iol0IeicDl75MkCavz0utCFOmnNfbL6GIef5GJU1rzRXGDyAvRObV+BCeUnxzjWV3CXr
         8RzA==
X-Gm-Message-State: AOAM531DZLGOx4lanxlVLssKQcPWRhSfnVzfJkiF7PukTDnL7scag4Wb
        QVAME848E1szkASOEriFaA==
X-Google-Smtp-Source: ABdhPJyrmxHLtqigmu8qg0y8JrSWYH0+kDFnN8rsGoDoBHrPo16Cm4OAj/Vy435rF8nD8peSSuII4g==
X-Received: by 2002:a02:950e:: with SMTP id y14mr11193741jah.106.1598371535869;
        Tue, 25 Aug 2020 09:05:35 -0700 (PDT)
Received: from xps15 ([64.188.179.249])
        by smtp.gmail.com with ESMTPSA id z9sm9234336ilm.78.2020.08.25.09.05.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Aug 2020 09:05:35 -0700 (PDT)
Received: (nullmailer pid 862704 invoked by uid 1000);
        Tue, 25 Aug 2020 16:05:32 -0000
Date:   Tue, 25 Aug 2020 10:05:32 -0600
From:   Rob Herring <robh@kernel.org>
To:     Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc:     Mark Brown <broonie@kernel.org>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 2/2] ASoC: dt-bindings: renesas, rsnd: switch to yaml
 base Documentation
Message-ID: <20200825160532.GA862290@bogus>
References: <87wo1nwdft.wl-kuninori.morimoto.gx@renesas.com>
 <87tuwrwdf0.wl-kuninori.morimoto.gx@renesas.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87tuwrwdf0.wl-kuninori.morimoto.gx@renesas.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 25 Aug 2020 13:37:54 +0900, Kuninori Morimoto wrote:
> From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> 
> This patch switches from .txt base to .yaml base Document.
> It is still keeping detail explanations at .txt
> 
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> ---
>  .../bindings/sound/renesas,rsnd.txt           | 520 ------------------
>  .../bindings/sound/renesas,rsnd.yaml          | 454 +++++++++++++++
>  2 files changed, 454 insertions(+), 520 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
> 


My bot found errors running 'make dt_binding_check' on your patch:

/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/sound/renesas,rsnd.example.dt.yaml: example-0: sound@ec500000:reg:0: [0, 3964665856, 0, 4096] is too long
	From schema: /usr/local/lib/python3.8/dist-packages/dtschema/schemas/reg.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/sound/renesas,rsnd.example.dt.yaml: example-0: sound@ec500000:reg:1: [0, 3965321216, 0, 256] is too long
	From schema: /usr/local/lib/python3.8/dist-packages/dtschema/schemas/reg.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/sound/renesas,rsnd.example.dt.yaml: example-0: sound@ec500000:reg:2: [0, 3964928000, 0, 4096] is too long
	From schema: /usr/local/lib/python3.8/dist-packages/dtschema/schemas/reg.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/sound/renesas,rsnd.example.dt.yaml: example-0: sound@ec500000:reg:3: [0, 3964932096, 0, 4736] is too long
	From schema: /usr/local/lib/python3.8/dist-packages/dtschema/schemas/reg.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/sound/renesas,rsnd.example.dt.yaml: example-0: sound@ec500000:reg:4: [0, 3967025152, 0, 512] is too long
	From schema: /usr/local/lib/python3.8/dist-packages/dtschema/schemas/reg.yaml


See https://patchwork.ozlabs.org/patch/1350780

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure dt-schema is up to date:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade

Please check and re-submit.

