Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9D58940313B
	for <lists+devicetree@lfdr.de>; Wed,  8 Sep 2021 00:56:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345251AbhIGW5w (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Sep 2021 18:57:52 -0400
Received: from mail-oi1-f175.google.com ([209.85.167.175]:41803 "EHLO
        mail-oi1-f175.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229522AbhIGW5w (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Sep 2021 18:57:52 -0400
Received: by mail-oi1-f175.google.com with SMTP id 6so535124oiy.8
        for <devicetree@vger.kernel.org>; Tue, 07 Sep 2021 15:56:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=GdSJ4oPnHTzno9balxH3QixzXlfpDdLWJYh9sK35SuU=;
        b=ZPkUuYYQcluoO8bjqCLWGizl/667PiEf5t2kyw7A0AEFntej9ha/trt/v95YTTfwZc
         Bp5gfIJMIImWyi3QtjVYrwaBmZnusw13IIZJq6ZaMYk/jrHWKuQMjamCZE/KPOeg01my
         JZABIg46Z6sna1zPMzvciECxCUiRyILYXG96/vqujeHeyyldD6Otcb557UPAjUHn/ofd
         lxiebKip7k/jSQzBmjunPTGEY7e7j4yq1gCUasuHScJOcnDTp19bTCpcBIiIc9TWQfB9
         RLS2P45KCRkqLA32uqXsHXBUV/Z0eawiFd9dCW+pw9Zx/zaxAeRlQaTAL/i58XvsPUfC
         1jdw==
X-Gm-Message-State: AOAM533nyhhzxwW/bvC8/5XPomG8VykpXS0fhbhWVUOMwPOLiTOWIUwt
        1WCnj4EFwVsI63IDLv2EQw==
X-Google-Smtp-Source: ABdhPJyQH5ykl7SVUA+/i9J4TXTCI/gm1rUgetil/5rlbN9PeZxdZe+YOpPGA0X0HRRsXXQOXkgllA==
X-Received: by 2002:aca:c6ce:: with SMTP id w197mr412575oif.6.1631055405356;
        Tue, 07 Sep 2021 15:56:45 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id x198sm71734ooa.43.2021.09.07.15.56.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Sep 2021 15:56:44 -0700 (PDT)
Received: (nullmailer pid 515097 invoked by uid 1000);
        Tue, 07 Sep 2021 22:56:43 -0000
Date:   Tue, 7 Sep 2021 17:56:43 -0500
From:   Rob Herring <robh@kernel.org>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc:     lgirdwood@gmail.com, alsa-devel@alsa-project.org, perex@perex.cz,
        bgoswami@codeaurora.org, bjorn.andersson@linaro.org,
        plai@codeaurora.org, broonie@kernel.org, tiwai@suse.de,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v5 11/21] ASoC: dt-bindings: q6dsp: add q6apm-lpass-dai
 compatible
Message-ID: <YTfuK6vcEf5P2aM9@robh.at.kernel.org>
References: <20210903112032.25834-1-srinivas.kandagatla@linaro.org>
 <20210903112032.25834-12-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210903112032.25834-12-srinivas.kandagatla@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 03 Sep 2021 12:20:22 +0100, Srinivas Kandagatla wrote:
> on AudioReach audio Framework access to LPASS ports is via
> Q6APM(Audio Process Manager) service, so add a dedicated compatible
> string for this.
> 
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> ---
>  .../sound/qcom,q6dsp-lpass-ports.yaml         | 24 +++++++++++++++++++
>  1 file changed, 24 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
