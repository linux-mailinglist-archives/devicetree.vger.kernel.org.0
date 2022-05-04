Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2ADC051A550
	for <lists+devicetree@lfdr.de>; Wed,  4 May 2022 18:20:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353255AbiEDQXf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 May 2022 12:23:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56986 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353334AbiEDQXc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 May 2022 12:23:32 -0400
Received: from mail-oo1-xc31.google.com (mail-oo1-xc31.google.com [IPv6:2607:f8b0:4864:20::c31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68C0046B10
        for <devicetree@vger.kernel.org>; Wed,  4 May 2022 09:19:55 -0700 (PDT)
Received: by mail-oo1-xc31.google.com with SMTP id y27-20020a4a9c1b000000b0032129651bb0so277229ooj.2
        for <devicetree@vger.kernel.org>; Wed, 04 May 2022 09:19:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=dbVLoGLvvdOw9abtQc9gMQO+m9oCoAXtfZ2W1vRohYs=;
        b=Xl0uRWlbqSeaYgNid5Xu5/x9v7F3s8ycxvRHbVXBkc4EaIyf8JUvW+LZrrYwSj84wg
         Uq7G3EQ7sfke3vOYEhCzmHNBYlM17MnW/uzSzv8nP+Tgohzev8jDZ4W4W+ZpfkD5laux
         TTWySJmTsuGHMjO6dYe3e5VgCshw5h1EZOVlcUeqYNJD3PLb9aNoiXxgfVGYXIq9x0Ke
         9KbzEgVsafGZtNYX7X5WKx/E4i8ciZRLG3KL0RyAn8/Jojrnpcg3wnLSWw/fw9jjwlt9
         22y/68iKAzVgHEYk66WuPBR+IfJBlguzT1rrJfY+btECbT13qFzxAIxq0ipFpCOz2iPI
         tCRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=dbVLoGLvvdOw9abtQc9gMQO+m9oCoAXtfZ2W1vRohYs=;
        b=dubSsDekoLpncBSlIfcLD0i0eDeyX4p9oD7AKubwZ6s6dU9LsJImsylPDRmsbFr7IH
         CJ1yEpe+ZqSidNVvOqge71NhDxG/8qy94pNFqDvpe3KDVi1ssh1as3vYH7PnPiQ0sRwF
         aU5jv3DBcdLgX1y9fsUruWm6pXxJyZYIdBT7+fuhVQwHbm77Rq3Qx42Q+Hg5rmVJobx9
         vRfBsadFRA5SujHu3qgVeEOVBj0NvalnlibMqwztaGrgpAeJlsrn/aWTjn2AIe6hKQQF
         wpx57dQUOzrNJlXrMdwCkhMAKN2al/u7jN9i6InbNvYmqi6IISMyVdM7ISc4J+QFYTNA
         dGXw==
X-Gm-Message-State: AOAM530X2+WrD4wFSOye60IU16Yjx0hjHtjM9zzG7qOpOPw1Ri3z3I4C
        64Ay/JKm1SSbMRyV4yUXsMKJ5g==
X-Google-Smtp-Source: ABdhPJyyqUME15QFq+hLqomIxwFjEJTKjoS8Pdb8JTFULASh6I8vEFeva5aVv9Q+SPjB3A5zoW/eKg==
X-Received: by 2002:a4a:3546:0:b0:35e:cecd:c81d with SMTP id w6-20020a4a3546000000b0035ececdc81dmr7461215oog.79.1651681194666;
        Wed, 04 May 2022 09:19:54 -0700 (PDT)
Received: from ripper (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id z4-20020a056870514400b000edae17a8cesm3104330oak.3.2022.05.04.09.19.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 May 2022 09:19:54 -0700 (PDT)
Date:   Wed, 4 May 2022 09:21:39 -0700
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Pavel Machek <pavel@ucw.cz>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        Uwe Kleine-K?nig <u.kleine-koenig@pengutronix.de>,
        Lee Jones <lee.jones@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Jonathan Corbet <corbet@lwn.net>, linux-leds@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-doc@vger.kernel.org, linux-pwm@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>,
        Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v14 1/2] dt-bindings: leds: Add Qualcomm Light Pulse
 Generator binding
Message-ID: <YnKoEyEtFP3TBxkg@ripper>
References: <20220303214300.59468-1-bjorn.andersson@linaro.org>
 <20220504072435.GB8204@duo.ucw.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220504072435.GB8204@duo.ucw.cz>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed 04 May 00:24 PDT 2022, Pavel Machek wrote:

> Hi!
> 
> > This adds the binding document describing the three hardware blocks
> > related to the Light Pulse Generator found in a wide range of Qualcomm
> > PMICs.
> 
> Sorry for the delays. I have collected tested/review tags and push the
> result to:
> 
> To gitolite.kernel.org:pub/scm/linux/kernel/git/pavel/linux-leds.git
>    312310928417..24e2d05d1b68  for-next -> for-next
> 

Much appreciated, this will unblock a few different use cases for us -
perhaps the most important one backlight control on devices such as the
Lenovo Flex 5G :)

> I'll need to check pattern usage in the driver, and there are some
> small fixes needed as evidenced in the reviews.
> 

I will go through the Marijn's feedback in detail and am looking forward
to hear from you on the pattern front, and will look into preparing
incremental patches for the changes needed.

Thanks,
Bjorn
