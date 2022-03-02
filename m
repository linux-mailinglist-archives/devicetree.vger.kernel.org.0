Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BFCFC4C9FBD
	for <lists+devicetree@lfdr.de>; Wed,  2 Mar 2022 09:47:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240183AbiCBIsY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Mar 2022 03:48:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58910 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240178AbiCBIsW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Mar 2022 03:48:22 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3831265B3
        for <devicetree@vger.kernel.org>; Wed,  2 Mar 2022 00:47:36 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id ay10so1532197wrb.6
        for <devicetree@vger.kernel.org>; Wed, 02 Mar 2022 00:47:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=DCQrEPCtDoI+8H69Z96ASucXxuMJw4UoB8nrP5Wjy14=;
        b=Q7yM/dy+q5e/yE9G7X2TCAg8SPy/IdhShB5J1fU8Wy5GGGpScNbqDBNAmHeHVzeN7l
         PfsmDJ4bSlEv456JdDRmWTKz02otdHQ/kQjBEHAHmuEdpQ8IzskwG8T5aqfop8jjAKdF
         HH4+CU5ni0Pqf3yjCQzd5UIcTS8DXDhLfLPxbhxOXbXtMiLQLWqeWo20bzr+Wn55vmtW
         qppscrKo9Th/eSz/iWf0Zlgk1W/yx+T3XPLz2h6Riym/YbCzPN3wu22VE5a72stofjVF
         bij3w7Y6gkELtIERTBDATlnkS9y/yUM+EUXjdagBmADzgPG6QiJdevXdAfT9inbYkF+m
         6qWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=DCQrEPCtDoI+8H69Z96ASucXxuMJw4UoB8nrP5Wjy14=;
        b=vEB2h6DqLXRSKLioGX6sUTNL1UbB8Pmeovz8NOrcF9Iag24jUo1H6gnZ/+FveDW/XI
         2Mnn9vC3eQZ+7GJJcc/eQeDJp/pcIEPis+ApeOVQUYCmibd80eDRLv33CBzLqMys9Gl/
         m0/90lC4TiD6v4j+N434m2+knZpDe/UjKNY0ajiuOxlJyoClyTmsyBU3U+ajZxFJcCgr
         NWBgPF+o6HJqyH2D4H2iElNyHcwz/NyDZ0VB6VKi7dh1KZvv1XvgX4rHyAnZShtppnTl
         nJjsJ39lOGCSQ9T1vUNTiEYeZHZsrEoJ8OYnxJ4ZrZcYO/H3noOhgyLqtoHxr4GfK5OD
         VOhw==
X-Gm-Message-State: AOAM531iA78wQkUpPQ5y8JqX4m/SJnUK/jKvtPznJW/z0jbbKq43CVtg
        IWfG9N3GSuKVH4+fe+O0b8PZFA==
X-Google-Smtp-Source: ABdhPJykNDrALYHXpp7fKx7gnW3GwKOzNGSiKBJfxiEbzIZuZkufGxENaee8qMlQe7GOTT8EMklv0A==
X-Received: by 2002:adf:8067:0:b0:1ea:9c01:d8f3 with SMTP id 94-20020adf8067000000b001ea9c01d8f3mr22533179wrk.556.1646210855520;
        Wed, 02 Mar 2022 00:47:35 -0800 (PST)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net. [86.27.177.88])
        by smtp.gmail.com with ESMTPSA id c12-20020a05600c0a4c00b00381141f4967sm7300299wmq.35.2022.03.02.00.47.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Mar 2022 00:47:34 -0800 (PST)
Date:   Wed, 2 Mar 2022 08:47:32 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Robert Marko <robert.marko@sartura.hr>
Cc:     linus.walleij@linaro.org, brgl@bgdev.pl, robh+dt@kernel.org,
        p.zabel@pengutronix.de, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        robh@kernel.org, skhan@linuxfoundation.org, luka.perkov@sartura.hr
Subject: Re: [PATCH v10 5/6] dt-bindings: mfd: Add Delta TN48M CPLD drivers
 bindings
Message-ID: <Yh8vJNc4D6rA68au@google.com>
References: <20220131133049.77780-1-robert.marko@sartura.hr>
 <20220131133049.77780-6-robert.marko@sartura.hr>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220131133049.77780-6-robert.marko@sartura.hr>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 31 Jan 2022, Robert Marko wrote:

> Add binding documents for the Delta TN48M CPLD drivers.
> 
> Signed-off-by: Robert Marko <robert.marko@sartura.hr>

This is missing a DT review.

> ---
> Changes in v7:
> * Update bindings to reflect driver updates
> 
> Changes in v3:
> * Include bindings for reset driver
> 
> Changes in v2:
> * Implement MFD as a simple I2C MFD
> * Add GPIO bindings as separate
> ---
>  .../bindings/gpio/delta,tn48m-gpio.yaml       | 39 ++++++++
>  .../bindings/mfd/delta,tn48m-cpld.yaml        | 90 +++++++++++++++++++
>  .../bindings/reset/delta,tn48m-reset.yaml     | 35 ++++++++
>  3 files changed, 164 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/gpio/delta,tn48m-gpio.yaml
>  create mode 100644 Documentation/devicetree/bindings/mfd/delta,tn48m-cpld.yaml
>  create mode 100644 Documentation/devicetree/bindings/reset/delta,tn48m-reset.yaml

-- 
Lee Jones [李琼斯]
Principal Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
