Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0E9C6403139
	for <lists+devicetree@lfdr.de>; Wed,  8 Sep 2021 00:56:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344587AbhIGW5N (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Sep 2021 18:57:13 -0400
Received: from mail-ot1-f51.google.com ([209.85.210.51]:36827 "EHLO
        mail-ot1-f51.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229522AbhIGW5N (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Sep 2021 18:57:13 -0400
Received: by mail-ot1-f51.google.com with SMTP id a20-20020a0568300b9400b0051b8ca82dfcso399905otv.3
        for <devicetree@vger.kernel.org>; Tue, 07 Sep 2021 15:56:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Nj4t14lAuTMyn+FACiJr8wE2hMCAXco8zJ7uJLXSnOQ=;
        b=c5bUnzzwZomeIZr1HY3yOGWiJiM3aZhkG+OeFwgHxG2q5KeCDiv32AhlJTKh7ChU3l
         lY3L7Zm/5oIkcl1BgOlMVO6lBhEkUhLCHSe1D8/Gksr2Gr5kmZbGeSpFmlpw9+r/L66U
         YRSy0QermCYVdfIzFRu4N88ndiQKOswUVJfkkzvrAeOsULqaXmfkTHlZr18IRicE2WhB
         du8MqyQr1R27hVmXxYcjDA7LWWwOTzbpDuy4Vdf+JOTIXLrLysfawewW73/mKXMtQzSh
         P75RzgZfd+YJ/M6IFVn7Ltdj32KZGTyZCswWqMtru4NhNd4fFZvmodj0IOceIY0K5DOx
         y3Wg==
X-Gm-Message-State: AOAM533PATPz+bwA5rOsza8Vg84SmV4JttAEPxvhWG64fzL7L+dSfWB9
        srarFhUZuUHicmEZnUz0TQ==
X-Google-Smtp-Source: ABdhPJzj/sKxwoJecCW1XMdtUAm1bpD8qW9nc6wAweqow306DZaFlxJnYKhV77v7qvQvx9neUQxV4g==
X-Received: by 2002:a05:6830:918:: with SMTP id v24mr630891ott.157.1631055365920;
        Tue, 07 Sep 2021 15:56:05 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id 3sm54844ots.61.2021.09.07.15.56.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Sep 2021 15:56:05 -0700 (PDT)
Received: (nullmailer pid 514132 invoked by uid 1000);
        Tue, 07 Sep 2021 22:56:02 -0000
Date:   Tue, 7 Sep 2021 17:56:02 -0500
From:   Rob Herring <robh@kernel.org>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc:     broonie@kernel.org, perex@perex.cz, devicetree@vger.kernel.org,
        plai@codeaurora.org, alsa-devel@alsa-project.org, tiwai@suse.de,
        bgoswami@codeaurora.org, lgirdwood@gmail.com,
        bjorn.andersson@linaro.org
Subject: Re: [PATCH v5 08/21] ASoC: dt-bindings: rename q6afe.h to
 q6dsp-lpass-ports.h
Message-ID: <YTfuAqZ6/Ygb1Dyc@robh.at.kernel.org>
References: <20210903112032.25834-1-srinivas.kandagatla@linaro.org>
 <20210903112032.25834-9-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210903112032.25834-9-srinivas.kandagatla@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 03 Sep 2021 12:20:19 +0100, Srinivas Kandagatla wrote:
> move all LPASS audio ports defines from q6afe.h to q6dsp-lpass-ports.h
> as these belong to LPASS IP.
> Also this move helps in reusing this header across multiple audio
> frameworks on Qualcomm Audio DSP.
> 
> This patch is split out of the dt-bindings patch to enable easy review.
> 
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> ---
>  include/dt-bindings/sound/qcom,q6afe.h        | 203 +----------------
>  .../sound/qcom,q6dsp-lpass-ports.h            | 208 ++++++++++++++++++
>  2 files changed, 210 insertions(+), 201 deletions(-)
>  create mode 100644 include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h
> 

Acked-by: Rob Herring <robh@kernel.org>
