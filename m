Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A091C283705
	for <lists+devicetree@lfdr.de>; Mon,  5 Oct 2020 15:55:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726123AbgJENzH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Oct 2020 09:55:07 -0400
Received: from mail-ot1-f65.google.com ([209.85.210.65]:42483 "EHLO
        mail-ot1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725911AbgJENzH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Oct 2020 09:55:07 -0400
Received: by mail-ot1-f65.google.com with SMTP id m13so8651632otl.9
        for <devicetree@vger.kernel.org>; Mon, 05 Oct 2020 06:55:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=+Y4gjDGwHEexJsJEMak2JrCEZKWVBN3DiXlKnxcoWUc=;
        b=iAazpdYfWYBF0R92gNk/ueefVg6Lgurno858WfItQlA6MGts4P9WUN+o061ASz98Eq
         0EwXeLgVGxt7LLvdkWd9ZZnZqYeoLV7fhocaowoGc5XuHDUzrF0xr6bkSV1sYl6IIgSV
         ccB2es4H7vQwNmFyNM7kuFgA08vXCyJ84afw1kc1+VfzYZ8tWaLYFOwZV5lsJJYYMct4
         41ZLmfGcY1stERz83wSrg713vpptbng4dWuBB1GuaVG0Sy17Zn327Nwvjhu7dtiwij//
         ikVrB/Dr1soIvyLFMa5zgvA37ZEpe5Mb0TSMzVUeVh+O275iDPUL4bL74KiJJjSpXT1a
         LiRA==
X-Gm-Message-State: AOAM531um69LOtiNksOveKFHWu9CCS8pZzYD06OW6O2kME+9Z6NHSmMq
        +prNGgCr3Fvvu9OKV66vtw==
X-Google-Smtp-Source: ABdhPJxEM6WWOVQjqWQ3oPRaSuayV/A3zEDzJbkHvCwqWMAtfNXsAh8uKNIiEOm8z6t59edGkCW0VQ==
X-Received: by 2002:a9d:5910:: with SMTP id t16mr12615071oth.155.1601906105026;
        Mon, 05 Oct 2020 06:55:05 -0700 (PDT)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id m22sm2885602otf.52.2020.10.05.06.55.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Oct 2020 06:55:04 -0700 (PDT)
Received: (nullmailer pid 87147 invoked by uid 1000);
        Mon, 05 Oct 2020 13:55:03 -0000
Date:   Mon, 5 Oct 2020 08:55:03 -0500
From:   Rob Herring <robh@kernel.org>
To:     Jiaxin Yu <jiaxin.yu@mediatek.com>
Cc:     linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, shane.chien@mediatek.com,
        robh+dt@kernel.org, maowenan@huawei.com, matthias.bgg@gmail.com,
        p.zabel@pengutronix.de, broonie@kernel.org,
        alsa-devel@alsa-project.org, kuninori.morimoto.gx@renesas.com,
        devicetree@vger.kernel.org, tiwai@suse.com, tzungbi@google.com
Subject: Re: [PATCH 3/5] dt-bindings: mediatek: mt8192: add audio afe document
Message-ID: <20201005135503.GA86716@bogus>
References: <1601624142-18991-1-git-send-email-jiaxin.yu@mediatek.com>
 <1601624142-18991-4-git-send-email-jiaxin.yu@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1601624142-18991-4-git-send-email-jiaxin.yu@mediatek.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 02 Oct 2020 15:35:40 +0800, Jiaxin Yu wrote:
> This patch adds mt8192 audio afe document.
> 
> Signed-off-by: Jiaxin Yu <jiaxin.yu@mediatek.com>
> ---
>  .../bindings/sound/mt8192-afe-pcm.yaml        | 98 +++++++++++++++++++
>  1 file changed, 98 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/mt8192-afe-pcm.yaml
> 


My bot found errors running 'make dt_binding_check' on your patch:

Documentation/devicetree/bindings/sound/mt8192-afe-pcm.example.dts:19:18: fatal error: dt-bindings/clock/mt8192-clk.h: No such file or directory
   19 |         #include <dt-bindings/clock/mt8192-clk.h>
      |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
compilation terminated.
make[1]: *** [scripts/Makefile.lib:342: Documentation/devicetree/bindings/sound/mt8192-afe-pcm.example.dt.yaml] Error 1
make[1]: *** Waiting for unfinished jobs....
make: *** [Makefile:1366: dt_binding_check] Error 2


See https://patchwork.ozlabs.org/patch/1375582

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure dt-schema is up to date:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade

Please check and re-submit.

