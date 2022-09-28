Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2D6C25ED71F
	for <lists+devicetree@lfdr.de>; Wed, 28 Sep 2022 10:08:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233521AbiI1IIl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Sep 2022 04:08:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57282 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231634AbiI1IIk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Sep 2022 04:08:40 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF718109752
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 01:08:38 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id d42so19299001lfv.0
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 01:08:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=jckZECscLpS6KEdTuCnwOnRgnuHZDo7qs0ONTOdf7rU=;
        b=hhF2HF9Kgt4gVSgC4aJztwevRwYIPchFvK7KtB3+6P/BAmrncbafjcdoxchBra5/Hd
         Wv/Xs3/XQCKze6aBmBFeU3QpQlSJqVsPJBJxxDCa4KGkdm1oEqxnhioP8UvNl8VGYZjv
         MkeIJLE85piFAOC7b3OYb6DZNPsQZV9XX2AzHZVUBFOKDKrNf493WtyjXBi/2NtqBxYP
         gix+Sm3O6uZvLa1uPprR5by0QPSui13G0Cwv3yIm/ZCM4+KbjjYYBFMmuZ2qHhQWu97h
         W38KP/ANrFTpCXkMQVarKufsUPTZHAeeY/U1QGBGhsEkJ/CNHxWgSxJBx+G7kAY7ayep
         abKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=jckZECscLpS6KEdTuCnwOnRgnuHZDo7qs0ONTOdf7rU=;
        b=6+oKV2d1yOaYOdPwkhvGXegbx0REwbFjmQd6Q10NG6LbyHi6g8jQN2dUqJEhg+HwBi
         WDA0o4nb1FD77MOUljk/0fbbC1zN2vnlic8TQqM0EkpcrtXxIwgtu+GdnkIJdrNeOuNL
         tVGHXTfR/Mq6kae5H/HKZyZqSmEWHG/+kSVn3J3ewsvliWo6z52LC4+MJ9iFTF1EGmqh
         eCBdiH189VLE94ojn3Vql7K7uKz6I3iRTHEXgjVj2cFE08Qsv7yPOMwSc/J8hagsQZPS
         4wSnKHnHBfsrgz/2gSNytV74L8BjsHTgGkTWNSwOM2144nRdPn9hBJQT5eMJxqf0l41t
         Blyg==
X-Gm-Message-State: ACrzQf0EtCVNQdLd4nchU7qoTi3YD9vHuXA0aC0rwcg51SYlHVoCxvUZ
        y6O9NeqrhMosLkMdqMXZKC5Mgw==
X-Google-Smtp-Source: AMsMyM45tkR+27HIpqozeJUs8AOHuGxvnHbYzocIaeyrKOMjRE/fZiutv/uKJ7GLcrEDUJ+eUX4NPg==
X-Received: by 2002:ac2:4e66:0:b0:48c:e34c:69b4 with SMTP id y6-20020ac24e66000000b0048ce34c69b4mr12549156lfs.85.1664352517374;
        Wed, 28 Sep 2022 01:08:37 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id a7-20020a056512200700b00492dc29be7bsm402103lfb.227.2022.09.28.01.08.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Sep 2022 01:08:36 -0700 (PDT)
Message-ID: <c28ab64a-c7f2-2bb5-29c0-494a1a5594dc@linaro.org>
Date:   Wed, 28 Sep 2022 10:08:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v3 1/2] media: dt-bindings: i2c: document OV4689
Content-Language: en-US
To:     Mikhail Rudenko <mike.rudenko@gmail.com>,
        Tommaso Merciai <tommaso.merciai@amarulasolutions.com>,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sakari Ailus <sakari.ailus@linux.intel.com>,
        Hans Verkuil <hverkuil@xs4all.nl>,
        Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
        Jacopo Mondi <jacopo@jmondi.org>,
        Randy Dunlap <rdunlap@infradead.org>,
        Shawn Tu <shawnx.tu@intel.com>, Arec Kao <arec.kao@intel.com>,
        Jean-Michel Hautbois <jeanmichel.hautbois@ideasonboard.com>,
        =?UTF-8?Q?Krzysztof_Ha=c5=82asa?= <khalasa@piap.pl>
Cc:     linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220927222152.132951-1-mike.rudenko@gmail.com>
 <20220927222152.132951-2-mike.rudenko@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220927222152.132951-2-mike.rudenko@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/09/2022 00:21, Mikhail Rudenko wrote:
> Add device-tree binding documentation for OV4689 image sensor driver,
> and the relevant MAINTAINERS entries.
> 
> Signed-off-by: Mikhail Rudenko <mike.rudenko@gmail.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

