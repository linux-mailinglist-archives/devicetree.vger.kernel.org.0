Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 91EC440EB41
	for <lists+devicetree@lfdr.de>; Thu, 16 Sep 2021 22:03:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231543AbhIPUEl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Sep 2021 16:04:41 -0400
Received: from mail-oi1-f180.google.com ([209.85.167.180]:35493 "EHLO
        mail-oi1-f180.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229534AbhIPUEk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Sep 2021 16:04:40 -0400
Received: by mail-oi1-f180.google.com with SMTP id r26so10697577oij.2
        for <devicetree@vger.kernel.org>; Thu, 16 Sep 2021 13:03:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=F9aqKzvhNX0EX8ftMf6SpEqFqIZooGHY07obCdZTdhc=;
        b=6phsLAFn86AmS5tsj5XEA/dhTU7rAt/QyH8Zc0pxGQ2+LVK0VAQjcjIFW4+XWhi6Ic
         GAhT6eG/S5hG97KiCkDCBBdhDHk68uLOangFFHOwxXixSlXx/5QmYuWnWDtQNWk0Tl6p
         +0K1rd86IzQONb/5GJGd0nhQSCPbgK2iWF/y+ICYbsHUyPKTsZwtMWWXfig5A/AXv9D1
         9CRUVc81haklnp6kyZ7ivr9TXN15kJYWsMEzi3d7pEqefejyyCPNFgR/5IyubBuCKzPF
         kwWt640WKgyd3G+XQS/6GnJVEvW4k1eeAwe0LewlyxHoe4/xMwhxWubMrmqSi0sBZeuu
         5nbg==
X-Gm-Message-State: AOAM5322T6OCnOsjV+P6/ACOw2U/CPctQTpj+dl4hmsrn1FiiJdggI2g
        8zP3epQ9O7rgMza0ukkWAA==
X-Google-Smtp-Source: ABdhPJwawxpuhoBPkHwwpYdA3wu77B3bH5gmA+8u4zAyLVaIU7keKA6j0hp+Ag7fD1WIhZux6lM+4w==
X-Received: by 2002:a05:6808:1151:: with SMTP id u17mr1234811oiu.175.1631822599419;
        Thu, 16 Sep 2021 13:03:19 -0700 (PDT)
Received: from robh.at.kernel.org (107-211-252-53.lightspeed.cicril.sbcglobal.net. [107.211.252.53])
        by smtp.gmail.com with ESMTPSA id 33sm915066otx.19.2021.09.16.13.03.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Sep 2021 13:03:17 -0700 (PDT)
Received: (nullmailer pid 1401613 invoked by uid 1000);
        Thu, 16 Sep 2021 20:03:15 -0000
Date:   Thu, 16 Sep 2021 15:03:15 -0500
From:   Rob Herring <robh@kernel.org>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc:     devicetree@vger.kernel.org, lgirdwood@gmail.com,
        plai@codeaurora.org, alsa-devel@alsa-project.org,
        bgoswami@codeaurora.org, perex@perex.cz,
        bjorn.andersson@linaro.org, tiwai@suse.de,
        pierre-louis.bossart@linux.intel.com, broonie@kernel.org
Subject: Re: [PATCH v6 04/22] soc: dt-bindings: qcom: add gpr bindings
Message-ID: <YUOjA9b/njqs6Kgp@robh.at.kernel.org>
References: <20210915131333.19047-1-srinivas.kandagatla@linaro.org>
 <20210915131333.19047-5-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210915131333.19047-5-srinivas.kandagatla@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 15 Sep 2021 14:13:15 +0100, Srinivas Kandagatla wrote:
> Qualcomm Generic Packet router aka GPR is the IPC mechanism found
> in AudioReach next generation signal processing framework to perform
> command and response messages between various processors.
> 
> GPR has concepts of static and dynamic port, all static services like
> APM (Audio Processing Manager), PRM (Proxy resource manager) have
> fixed port numbers where as dynamic services like graphs have dynamic
> port numbers which are allocated at runtime. All GPR packet messages
> will have source and destination domain and port along with opcode
> and payload.
> 
> This support is added using existing APR driver to reuse most of
> the code.
> 
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> ---
>  .../bindings/soc/qcom/qcom,apr.yaml           | 41 +++++++++++++++----
>  include/dt-bindings/soc/qcom,gpr.h            | 19 +++++++++
>  2 files changed, 53 insertions(+), 7 deletions(-)
>  create mode 100644 include/dt-bindings/soc/qcom,gpr.h
> 

Reviewed-by: Rob Herring <robh@kernel.org>
