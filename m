Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 91C575BF963
	for <lists+devicetree@lfdr.de>; Wed, 21 Sep 2022 10:36:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230087AbiIUIgA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Sep 2022 04:36:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42124 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230457AbiIUIf7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Sep 2022 04:35:59 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EBF907FE7A
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 01:35:57 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id b6so6050667ljr.10
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 01:35:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date;
        bh=fCr8MwFtbbcSDSvMf2AcQISoeqvfzG7FR3I7vOSbQlM=;
        b=wAeXEwMmcxP8dYzsCAJu8G0NMnxMRwO60uRgR9N9iiGOFayIzZwDJM2g380S0Lp+MY
         uBXAz4orsz/bBwjRsRDuasi+pYMQSS45VabIyqiQbhXk4nNPLM7qc0IZ4OEg50do/rwj
         iSTIRdX+w1T3dbcWGdI6ZBKWQQgtV2cSf/pR1oSgR6gXVshQ1Ilk8EVUXiDrOki6lRVF
         cIG1nyrqMUSQyO3FxvhbkEk9eU+EI9baXpBk9bpayMn/Qa0gfFJBUU8PHa4AylhVqYRM
         tOZ/yyJcBE7QVXf+0Z92YP9BSBa1BAbZ3j3IBoykz+p5HW0XYjdAws+ZZFbqWmlx6mCw
         xXHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=fCr8MwFtbbcSDSvMf2AcQISoeqvfzG7FR3I7vOSbQlM=;
        b=wviYVymnnFvebTrhq/rAIfUchkYIGoGBZuBsi9L4uqcv4RE1QdzYdnccfYwBWLltLy
         ps8orsWJ6V4jyjWjykbEopSmb8ZO2ajDAjjhl8sTKqcKGlWLkMJQdkVqpJHus5e1lVGY
         /hXstX6oYyy9tVSv/04XI64w6Yyt7Qa1Kh3DuJjj5f7A/LaXUStBa2lgS+TSYyXkAMEA
         +4eY5QwxggUorP4UX/ylKEGe7mhjOJNyQykesYc+rNwWp7U8MglIXBYjvJ4J7eY8QSLT
         +NjOurkQxtDvYI0e7BLAkLEIl9Wjp+4hECoT7NyziDvwHcgZ0vshYJTuXM0iMCf08LcA
         OyrQ==
X-Gm-Message-State: ACrzQf3XCjQ9XaTnqJM3OtHwUD8467g7VC7eh3PZ/EhpyTpHyq9z9tWy
        F3niGYtd9h0xPeQqE8J8pnwsMQ==
X-Google-Smtp-Source: AMsMyM5cQD2qKn16V2w8tpEVl6X83BD1sDdLGMgpXAhpSINiKNmYTE9cE/g9dYyZGiHAZHwKsIHvww==
X-Received: by 2002:a2e:998b:0:b0:26c:4ef4:e4d7 with SMTP id w11-20020a2e998b000000b0026c4ef4e4d7mr4958579lji.42.1663749356227;
        Wed, 21 Sep 2022 01:35:56 -0700 (PDT)
Received: from krzk-bin (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id w11-20020a0565120b0b00b00498fd423cc3sm326358lfu.295.2022.09.21.01.35.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Sep 2022 01:35:55 -0700 (PDT)
Date:   Wed, 21 Sep 2022 10:35:54 +0200
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Sireesh Kodali <sireeshkodali1@gmail.com>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        ~postmarketos/upstreaming@lists.sr.ht,
        linux-remoteproc@vger.kernel.org, Andy Gross <agross@kernel.org>,
        andersson@kernel.org, linux-arm-msm@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        krzysztof.kozlowski+dt@linaro.org,
        Rob Herring <robh+dt@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 4/4] dt-bindings: remoteproc: qcom: wcnss: Add
 compatible for pronto v3
Message-ID: <20220921083554.3zs7xdj6n3pv7zdq@krzk-bin>
References: <20220921043648.2152725-1-sireeshkodali1@gmail.com>
 <20220921043648.2152725-5-sireeshkodali1@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220921043648.2152725-5-sireeshkodali1@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 21 Sep 2022 10:06:48 +0530, Sireesh Kodali wrote:
> The pronto v3 remoteproc is similar to pronto v2. It is found on the
> MSM8953 platform, which is used by SDM450, SDM625, SDM626, APQ8053 and
> other SoCs. Since the configuration is same on all SoCs, a single
> compatible is used.
> 
> Signed-off-by: Sireesh Kodali <sireeshkodali1@gmail.com>
> ---
>  .../bindings/remoteproc/qcom,wcnss-pil.yaml      | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 

Running 'make dtbs_check' with the schema in this patch gives the
following warnings. Consider if they are expected or the schema is
incorrect. These may not be new warnings.

Note that it is not yet a requirement to have 0 warnings for dtbs_check.
This will change in the future.

Full log is available here: https://patchwork.ozlabs.org/patch/


remoteproc@fb21b000: 'power-domain-names' is a required property
	arch/arm/boot/dts/qcom-msm8974pro-fairphone-fp2.dtb

remoteproc@fb21b000: 'power-domains' is a required property
	arch/arm/boot/dts/qcom-msm8974pro-fairphone-fp2.dtb
