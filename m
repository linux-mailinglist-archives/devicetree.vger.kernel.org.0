Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 03C5E403122
	for <lists+devicetree@lfdr.de>; Wed,  8 Sep 2021 00:37:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346774AbhIGWiF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Sep 2021 18:38:05 -0400
Received: from mail-oi1-f175.google.com ([209.85.167.175]:38581 "EHLO
        mail-oi1-f175.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346337AbhIGWiD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Sep 2021 18:38:03 -0400
Received: by mail-oi1-f175.google.com with SMTP id bd1so489012oib.5
        for <devicetree@vger.kernel.org>; Tue, 07 Sep 2021 15:36:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=7GXuMDvTOLDEpKcOYfCCxlmtd6+MEipLqNFBOa/xCCY=;
        b=J6UbK9NCJh3WQehvRpiEmEZG65KUudvOH3iTpjYVXmblcwbih/XEIkb8TmnE31hlFI
         aejHiFEebDbgkuBjuMG9CxKv1uvdfzW1+UZIKpUv58sKrPFmdlTZpa8i1t04r819EIi1
         i3WY10Lw34Rs1n7ORslbp9jOQTVjT8KiRwzjlCA7fTeDp0HuXHcjUjWE9p2N6rNanEpw
         /wuiiEBrMn/f5ZGhIB8CgoNgt/KP6hXX9mDQ/W2o/47fsUegcUdn0AwUrF1jE3cFFU8+
         CeIkYE7XRQ+mg4jM+RFOj4kFcwj427iF0g9gueC4BhIp60GJsAgWb0p6PJJtghBYIVuR
         XA3w==
X-Gm-Message-State: AOAM530actZNoK39hXboN3boMVIvFsmmwQDErQDnpb3d8XvQfj9rhqGe
        si1wct/n2g8vh9kEwxJ/B75ksZh+MQ==
X-Google-Smtp-Source: ABdhPJymQspdRuiPkUjcw6rhHbziEhJkiTazcFEcZ396bUYDBY6AS2AKXiS/2jpXyQkojgTAXlT4WA==
X-Received: by 2002:a05:6808:618:: with SMTP id y24mr265737oih.179.1631054216401;
        Tue, 07 Sep 2021 15:36:56 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id y11sm59992otg.58.2021.09.07.15.36.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Sep 2021 15:36:55 -0700 (PDT)
Received: (nullmailer pid 488839 invoked by uid 1000);
        Tue, 07 Sep 2021 22:36:54 -0000
Date:   Tue, 7 Sep 2021 17:36:54 -0500
From:   Rob Herring <robh@kernel.org>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc:     perex@perex.cz, alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bjorn.andersson@linaro.org, devicetree@vger.kernel.org,
        bgoswami@codeaurora.org, tiwai@suse.de, plai@codeaurora.org,
        broonie@kernel.org
Subject: Re: [PATCH v5 01/21] soc: dt-bindings: qcom: apr: convert to yaml
Message-ID: <YTfphkPM0nBuLf3P@robh.at.kernel.org>
References: <20210903112032.25834-1-srinivas.kandagatla@linaro.org>
 <20210903112032.25834-2-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210903112032.25834-2-srinivas.kandagatla@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 03 Sep 2021 12:20:12 +0100, Srinivas Kandagatla wrote:
> Convert APR bindings to yaml format so that we could add new bindings support.
> 
> All the dsp services bindings are now part of apr bindings instead
> of adding them to audio bindings.
> 
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> ---
>  .../devicetree/bindings/soc/qcom/qcom,apr.txt | 134 ------------------
>  .../bindings/soc/qcom/qcom,apr.yaml           | 128 +++++++++++++++++
>  2 files changed, 128 insertions(+), 134 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/soc/qcom/qcom,apr.txt
>  create mode 100644 Documentation/devicetree/bindings/soc/qcom/qcom,apr.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
