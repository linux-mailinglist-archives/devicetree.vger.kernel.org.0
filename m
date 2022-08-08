Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0FB6E58CB28
	for <lists+devicetree@lfdr.de>; Mon,  8 Aug 2022 17:18:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234522AbiHHPSR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Aug 2022 11:18:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32988 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235842AbiHHPSP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Aug 2022 11:18:15 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E1EE2632
        for <devicetree@vger.kernel.org>; Mon,  8 Aug 2022 08:18:13 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id bv3so11263256wrb.5
        for <devicetree@vger.kernel.org>; Mon, 08 Aug 2022 08:18:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc;
        bh=GTevZuUiejguEpsgUOnmB47QMW/b8J20g/JC/eJOuvE=;
        b=Ha9+Yq3Ro24vG0M22gEXTKdT+8MKXJUxoz46rajkJVOlPIgQjDAhrEqSP0rt1hRqBQ
         rLVFkIYUFPRNSGpprIMx7NxSf0PqwhHklzuL/K6JV0gNP3EzNNV+uCxHLiVQed6sNArJ
         oHjzPhQHopsgqpBTU3H/IzuQJd0BH9Ahs9Xugqy0LwNkbjSRLno0aviXtFOqvIExRKwE
         Aqq1CPWRhKj0Pp9UmI+uZgmXU74GCVM5gZSh1mxg+t+9C3nfwEjHrZqpPuNrHKuNX5/0
         n/V7ohbx50K9gIxZ6IhddIlYqq1dJniWaNiQ1UvXtLMtpW0uW5KqwTEbS0lWp+tp1jJ/
         Vsqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=GTevZuUiejguEpsgUOnmB47QMW/b8J20g/JC/eJOuvE=;
        b=Vri9iW2KF+6ly8Ys1dvyAnDfUPUw+VJHVjLN/1h5er+UfSEwFbLplOMSl0+sjFmroK
         UkKeIfvhD3mfMd8/4EJCAeCtgumS7NNSPxyaGdUIcQcyIAd42WgopCXCwUXRKP6Kw8zm
         0AnTeYXdw+ixp2y6yGdiSKGM4vigUw+W0BIojcr6h6NgMTiL33Q7uTw5dh9BjyjtCnZG
         +SVatOfiqGHJ7uh9N7+nB1meT7/4E8boyXnHZqEbzIOLxtu/qk7ZW0HjOgz+6Dnpb0j4
         UH7lTdrK7+9BCk/iuHNqFiqEXb+YZKtr82CoTKc7uQMEB6Oc3qUE/8tsTnBJbme6uXMp
         6FXA==
X-Gm-Message-State: ACgBeo2Aj/4RPuSivCq7Oid9yTYRgp8OuGzpgBz6k0b7fhC7KNRRVq0E
        M4/BlmWJxCMY+Yk0Ef8omjyKTw==
X-Google-Smtp-Source: AA6agR6WY56OsLXZMVeNwAo7AIto/ZApH3k/yLb84Q9i7K35DrTs2jRfcVRioZF3DT8sVmQIlOtQ1A==
X-Received: by 2002:adf:d238:0:b0:21e:c972:7505 with SMTP id k24-20020adfd238000000b0021ec9727505mr12096009wrh.536.1659971892232;
        Mon, 08 Aug 2022 08:18:12 -0700 (PDT)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net. [86.27.177.88])
        by smtp.gmail.com with ESMTPSA id n17-20020a7bc5d1000000b003a52969e89csm8572995wmk.4.2022.08.08.08.18.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Aug 2022 08:18:11 -0700 (PDT)
Date:   Mon, 8 Aug 2022 16:18:09 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Francesco Dolcini <francesco.dolcini@toradex.com>
Cc:     Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Ahmad Fatoum <a.fatoum@pengutronix.de>,
        Lee Jones <lee@kernel.org>
Subject: Re: [PATCH v2 2/5] mfd: stmpe: Probe sub-function by compatible
Message-ID: <YvEpMVmv7UQiEnAj@google.com>
References: <20220712163345.445811-1-francesco.dolcini@toradex.com>
 <20220712163345.445811-3-francesco.dolcini@toradex.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220712163345.445811-3-francesco.dolcini@toradex.com>
X-Spam-Status: No, score=1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FSL_HELO_FAKE,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 12 Jul 2022, Francesco Dolcini wrote:

> Use sub-function of_compatible during probe, instead of using the node
> name. The code should not rely on the node names during probe, in
> addition to that the previously hard-coded node names are not compliant
> to the latest naming convention (they are not generic and they use
> underscores), and it was broken by mistake already once [1].
> 
> [1] commit 56086b5e804f ("ARM: dts: imx6qdl-apalis: Avoid underscore in node name")
> 
> Suggested-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>
> ---
> v2:
>  - remove define usage for compatible strings
>  - moved rotator removal from probe to a separate patch
> ---
>  drivers/mfd/stmpe.c | 11 +++++------
>  1 file changed, 5 insertions(+), 6 deletions(-)

Applied, thanks.

-- 
DEPRECATED: Please use lee@kernel.org
