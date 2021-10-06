Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 20CEE424678
	for <lists+devicetree@lfdr.de>; Wed,  6 Oct 2021 21:08:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239274AbhJFTKM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Oct 2021 15:10:12 -0400
Received: from mail-ot1-f51.google.com ([209.85.210.51]:41669 "EHLO
        mail-ot1-f51.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239225AbhJFTKK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Oct 2021 15:10:10 -0400
Received: by mail-ot1-f51.google.com with SMTP id 97-20020a9d006a000000b00545420bff9eso4393436ota.8
        for <devicetree@vger.kernel.org>; Wed, 06 Oct 2021 12:08:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=UtwrzsrYrexw7egYl4wU8hBbEuUQZK7E7w2jgOhW2FY=;
        b=3vPJpRtMWCI1k7nqIt+CwoNkbjKWIEhDXQjpfIbuR6F9JI8O/Wru5V0LzZd9ep7eGR
         XLvDbho3AoFARBIDraRYV6iHvvP845d8F5bIg2/y1+awDzR90uEe19r9lf0DVcDAo72T
         uMl3ybcYlpSFfEDIXykLP6PgaWlOa9EXm5/OHBvIZAhYSGrBKi5pjCAmUB1AlMMOV9O1
         kMHYmJs5FXzgmmzdBY2wdjAIfHcxh0160kPJYbkBDltDpLSTPbIPH+shfFnOucGNIc1P
         LK4PTIyiJFaGzinriHxk1rEEWabJv+/0j64HYZkoNBUwjjk7rhAPTZkyQDY7Yc6JGRQU
         wAcg==
X-Gm-Message-State: AOAM530I9idPfE3IZ2WCxgvxmGQF2MUI+d4eXAaIKGwcu2hdGftgbMV4
        XEjRoftQphNcoFqGUgroHA==
X-Google-Smtp-Source: ABdhPJzCcOPOOJdCjqSevCGuw5AOGRSNXRgCFkbO/1DpFLBrPrHrCVeoHRNZya0eH6wzs4sJ3fSSQw==
X-Received: by 2002:a9d:4702:: with SMTP id a2mr347403otf.271.1633547297462;
        Wed, 06 Oct 2021 12:08:17 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id q39sm268643oiw.47.2021.10.06.12.08.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Oct 2021 12:08:16 -0700 (PDT)
Received: (nullmailer pid 2218064 invoked by uid 1000);
        Wed, 06 Oct 2021 19:08:13 -0000
From:   Rob Herring <robh@kernel.org>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc:     lgirdwood@gmail.com, tiwai@suse.de, devicetree@vger.kernel.org,
        broonie@kernel.org, plai@codeaurora.org,
        pierre-louis.bossart@linux.intel.com, alsa-devel@alsa-project.org,
        perex@perex.cz, bjorn.andersson@linaro.org, bgoswami@codeaurora.org
In-Reply-To: <20211006113950.10782-9-srinivas.kandagatla@linaro.org>
References: <20211006113950.10782-1-srinivas.kandagatla@linaro.org> <20211006113950.10782-9-srinivas.kandagatla@linaro.org>
Subject: Re: [PATCH v9 08/17] ASoC: dt-bindings: add q6apm digital audio stream bindings
Date:   Wed, 06 Oct 2021 14:08:13 -0500
Message-Id: <1633547293.527218.2218062.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 06 Oct 2021 12:39:41 +0100, Srinivas Kandagatla wrote:
> On AudioReach audio Framework, Audio Streams (PCM/Compressed) are managed by
> Q6APM(Audio Process Manager) service. This patch adds bindings for this DAIs
> exposed by the DSP.
> 
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
>  .../bindings/sound/qcom,q6apm-dai.yaml        | 53 +++++++++++++++++++
>  1 file changed, 53 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/qcom,q6apm-dai.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/sound/qcom,q6apm-dai.example.dts:19:18: fatal error: dt-bindings/soc/qcom,gpr.h: No such file or directory
   19 |         #include <dt-bindings/soc/qcom,gpr.h>
      |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
compilation terminated.
make[1]: *** [scripts/Makefile.lib:385: Documentation/devicetree/bindings/sound/qcom,q6apm-dai.example.dt.yaml] Error 1
make[1]: *** Waiting for unfinished jobs....
make: *** [Makefile:1441: dt_binding_check] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1537089

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

