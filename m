Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 926B040EB58
	for <lists+devicetree@lfdr.de>; Thu, 16 Sep 2021 22:06:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237056AbhIPUHX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Sep 2021 16:07:23 -0400
Received: from mail-ot1-f47.google.com ([209.85.210.47]:36519 "EHLO
        mail-ot1-f47.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237004AbhIPUHW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Sep 2021 16:07:22 -0400
Received: by mail-ot1-f47.google.com with SMTP id n2-20020a9d6f02000000b0054455dae485so4587478otq.3
        for <devicetree@vger.kernel.org>; Thu, 16 Sep 2021 13:06:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=5lWEoobnSX2Sexj5hgiNgOeTqX4T0+Y1JT62ALjxDZE=;
        b=vCC7/Yk+JewiYia8r/6UDDFio7baBVYLGUFkKl35uzrHOSsKfBuBsIUOVPnLGYXcTB
         DrDshZ/wiIGmnbEUFu7smDqIE0x1bZjFU/6BYl2CHz/oDIfnqQsfU6JlCDP6hLmCyrVL
         u8HryAKtfLvnauxMTdCd6cUkzUiz1dJe1o7Ei8pSB4GjAJExpFAwlHBuRXSA3+uWW+mb
         e987D1jazszJ4CxUywzg+1tyERPIRehX6wr7yeFwq8oLDDcGK0Mq8J/lzjg9sx0fTyHW
         zoRopcMrBQ/OQtWvjx5M5CZD3M+XyuPDbBgO4OSXT2SnwWn9tIDVAFvAiAFbYx4bmXff
         sIsg==
X-Gm-Message-State: AOAM530RD50FuSbWP5UBpvpFmz4PeWc2VN4GSSyTwEy6VUWMq/0NGVCe
        iQbL+kysOfEySdkUQh5nsA==
X-Google-Smtp-Source: ABdhPJzt7s1DZUK4KXAYYEX4XQhq3SY6wPqa8zSGfTEQE9dKzUeaiwe7+MrNsKvWTDdy08qzNsEtsQ==
X-Received: by 2002:a9d:7299:: with SMTP id t25mr6338307otj.232.1631822761230;
        Thu, 16 Sep 2021 13:06:01 -0700 (PDT)
Received: from robh.at.kernel.org (107-211-252-53.lightspeed.cicril.sbcglobal.net. [107.211.252.53])
        by smtp.gmail.com with ESMTPSA id u19sm919455oof.30.2021.09.16.13.05.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Sep 2021 13:06:00 -0700 (PDT)
Received: (nullmailer pid 1406472 invoked by uid 1000);
        Thu, 16 Sep 2021 20:05:58 -0000
Date:   Thu, 16 Sep 2021 15:05:58 -0500
From:   Rob Herring <robh@kernel.org>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc:     plai@codeaurora.org, tiwai@suse.de, bgoswami@codeaurora.org,
        lgirdwood@gmail.com, broonie@kernel.org,
        pierre-louis.bossart@linux.intel.com, perex@perex.cz,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        bjorn.andersson@linaro.org
Subject: Re: [PATCH v6 13/22] ASoC: dt-bindings: add q6apm digital audio
 stream bindings
Message-ID: <YUOjpvKfHdDdQlmT@robh.at.kernel.org>
References: <20210915131333.19047-1-srinivas.kandagatla@linaro.org>
 <20210915131333.19047-14-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210915131333.19047-14-srinivas.kandagatla@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 15 Sep 2021 14:13:24 +0100, Srinivas Kandagatla wrote:
> On AudioReach audio Framework, Audio Streams (PCM/Compressed) are managed by
> Q6APM(Audio Process Manager) service. This patch adds bindings for this DAIs
> exposed by the DSP.
> 
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> ---
>  .../bindings/sound/qcom,q6apm-dai.yaml        | 53 +++++++++++++++++++
>  1 file changed, 53 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/qcom,q6apm-dai.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
