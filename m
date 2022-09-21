Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E4C815BF6E5
	for <lists+devicetree@lfdr.de>; Wed, 21 Sep 2022 09:01:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230042AbiIUHBy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Sep 2022 03:01:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40944 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229992AbiIUHBw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Sep 2022 03:01:52 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 481167E02B
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 00:01:50 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id f14so7678160lfg.5
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 00:01:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date;
        bh=1QL0CFphpa83RgCH/2JlHwO3au2oWpkZ2fPFgCGnjOc=;
        b=KAZEjvpg4g3daMXmcu3qg47mnxKlqaSfXVmskQZgCXz2x9t9/6yVCt4XgtUR7ju3k7
         pHCNGz5rnqc+9JiK6yxn/P3z/ROBByrXfjt//78y/ZL5gdrkkPnrAKyHcPzNczZSCMvP
         mIK4qaI/gYATNjWM8YVGttLVpPj14MjV8Ri5oNDfoFxaBoA9zP9uDfjKiX52bjo7l8s6
         VhyT0//BHYWAvnPH8kkM00cFx61FifuU2buCNBsiRlv5+IN6OJetflIfygApUXkKKRGU
         +SUEaAESyhzXO71rFH8J2vkqiY/qfzyfxCqU7MTQghE0EwKeLsmB6yTq9ysItki1T73L
         MvqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=1QL0CFphpa83RgCH/2JlHwO3au2oWpkZ2fPFgCGnjOc=;
        b=GUPOoX4b02w3LPlkDfEigdYGepNwUJWJNBvMwnKwnhOF0Q8wDYQUVNbLcgtHIIdumt
         47Pg739g2Dhmh5Y+UMXbv9lTHFOLEbDcHk3ks6EKKxC28G4wD46Mlt9gDDaCfWY5qWE1
         HxpxR8VFErNSgexl5NHW0Ata+croRfobmKMKsQ6/HiiyyTgB/jbJkukUymW2K2DDIUNJ
         85QDjC6bf4RCb/n/0DM1kdJsZcj1y4Vds3wn1C3HoC7gsvP21fRrmXD8xZYZsIxs1/MX
         b6aGoSadSQlKSGyLlvbGH3E7O5lo7CrqmxAZ0oYJUcyP7IQT817Y4oyFcMjARY0ZeVH4
         PyIQ==
X-Gm-Message-State: ACrzQf296O9aHfAUr1+kZ9apKgSAshB1J9xA/PLgLbrw/5moF5JFENeH
        3x1+XsvWYpRNO0Bqq1xctviYGA==
X-Google-Smtp-Source: AMsMyM4dVp6sdbuzr3mFJn+IpomFBs7OZPX8e+/6Km/Cj0w8XZZ8qr5FPUeXcg/zxiTMuLRHZ6ZhPQ==
X-Received: by 2002:a05:6512:31c8:b0:49c:db9d:bb97 with SMTP id j8-20020a05651231c800b0049cdb9dbb97mr9281084lfe.12.1663743708470;
        Wed, 21 Sep 2022 00:01:48 -0700 (PDT)
Received: from krzk-bin (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id k1-20020ac257c1000000b004947555dbc2sm311198lfo.100.2022.09.21.00.01.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Sep 2022 00:01:47 -0700 (PDT)
Date:   Wed, 21 Sep 2022 09:01:46 +0200
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     devicetree@vger.kernel.org, thierry.reding@gmail.com,
        robh+dt@kernel.org, sam@ravnborg.org,
        Chris Morgan <macromorgan@hotmail.com>, daniel@ffwll.ch,
        airlied@linux.ie, dri-devel@lists.freedesktop.org,
        krzysztof.kozlowski+dt@linaro.org
Subject: Re: [PATCH V2 2/3] dt-bindings: display: panel: Add NewVision
 NV3051D bindings
Message-ID: <20220921070146.bqtb7p2xyry3jwaw@krzk-bin>
References: <20220920145905.20595-1-macroalpha82@gmail.com>
 <20220920145905.20595-3-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220920145905.20595-3-macroalpha82@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 20 Sep 2022 09:59:04 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add documentation for the NewVision NV3051D panel bindings.
> Note that for the two expected consumers of this panel binding
> the underlying LCD model is unknown. Name "anbernic,rg353p-panel"
> is used because the hardware itself is known as "anbernic,rg353p".
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../display/panel/newvision,nv3051d.yaml      | 55 +++++++++++++++++++
>  1 file changed, 55 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.example.dtb: panel@0: compatible: ['anbernic,rg353p-panel'] is too short
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.
