Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 980FF403133
	for <lists+devicetree@lfdr.de>; Wed,  8 Sep 2021 00:54:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344396AbhIGWzc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Sep 2021 18:55:32 -0400
Received: from mail-oi1-f181.google.com ([209.85.167.181]:43770 "EHLO
        mail-oi1-f181.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239848AbhIGWzc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Sep 2021 18:55:32 -0400
Received: by mail-oi1-f181.google.com with SMTP id w19so514765oik.10
        for <devicetree@vger.kernel.org>; Tue, 07 Sep 2021 15:54:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=cqpJgyCuWfM8JYrsZYqtKzigon2BfWGgK2eAlix+GG0=;
        b=OlRiO+IZAt2TX2F1dkzDrriGmZaTBX+VcFn+7qBsiEQG+IwjlfR11pSwr1diXnUmqM
         eznsSQzQeJpMc+r+Zt6sfPijslCfHvlueqR8N7WnVqHg/Ay9uHWnf4rLuvegpy8KdbvT
         fWos3gGmj8xPbPJQ4cC4fB7oQUxk3BZ5Z4pbBZFVwo1lWLm3kC/0+8nLxEJskgIinVOx
         0zeinfsUoVrwcsdAW/GOhB401Fkt1S4eOA3ZUGU8FEqm2Y/yn4WJTIfWfmzpnn34iTpU
         t7ki6ry8nQFgxvNSRTxGKCrd63IFIdoCs3k7639rOp2H1nZvAgB9q0sD21QPSvd0hzdG
         KowA==
X-Gm-Message-State: AOAM532Wls7rcW2wzsavreraeeIrA4LYFAQDRtnblGcPt88kwWc7ihdG
        4xUu5TIoXyN/7DhE9FH/Qw==
X-Google-Smtp-Source: ABdhPJzrCwxlJDDdlTsGBfBHglqBTgvNXhQKiSBpAYiGFipVHm112Ijap2nuNg9gh9SXGulnMqvXng==
X-Received: by 2002:a05:6808:1294:: with SMTP id a20mr389610oiw.4.1631055265056;
        Tue, 07 Sep 2021 15:54:25 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id l21sm73434oop.22.2021.09.07.15.54.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Sep 2021 15:54:24 -0700 (PDT)
Received: (nullmailer pid 511881 invoked by uid 1000);
        Tue, 07 Sep 2021 22:54:23 -0000
Date:   Tue, 7 Sep 2021 17:54:23 -0500
From:   Rob Herring <robh@kernel.org>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc:     perex@perex.cz, tiwai@suse.de, plai@codeaurora.org,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        lgirdwood@gmail.com, broonie@kernel.org, bgoswami@codeaurora.org,
        bjorn.andersson@linaro.org
Subject: Re: [PATCH v5 06/21] ASoC: dt-bindings: move LPASS dai related
 bindings out of q6afe
Message-ID: <YTftnx0YJwdUHgGV@robh.at.kernel.org>
References: <20210903112032.25834-1-srinivas.kandagatla@linaro.org>
 <20210903112032.25834-7-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210903112032.25834-7-srinivas.kandagatla@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 03 Sep 2021 12:20:17 +0100, Srinivas Kandagatla wrote:
> q6afe (Audio Front End) is one of the DSP service that handles both
> LPASS (Low Power Audio SubSystem) Audio ports and LPASS clocks.
> As LPASS is a hardwware IP and commonly used by Qualcomm Audio DSP.
> In order to allow  multiple DSP frameworks to use these bindings
> its best to move it out from the dsp specific bindings.
> 
> For compatibility reasons and not breaking which is already working
> we still maintain same compatible string "qcom,q6afe-dais"
> 
> Also as part of this change convert these LPASS dai related bindings
> into yaml format.
> 
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> ---
>  .../devicetree/bindings/sound/qcom,q6afe.txt  | 158 ----------------
>  .../sound/qcom,q6dsp-lpass-ports.yaml         | 178 ++++++++++++++++++
>  2 files changed, 178 insertions(+), 158 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-ports.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
