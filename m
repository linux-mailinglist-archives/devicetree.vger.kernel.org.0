Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B967754D1B3
	for <lists+devicetree@lfdr.de>; Wed, 15 Jun 2022 21:36:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237461AbiFOTf6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jun 2022 15:35:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348398AbiFOTf4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Jun 2022 15:35:56 -0400
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C03345511
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 12:35:54 -0700 (PDT)
Received: by mail-pl1-x62f.google.com with SMTP id k7so1894692plg.7
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 12:35:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=/PMdbO94F+BOcABvS3JHoU7ACrUEqtckvCco1cnBf7g=;
        b=j0cI7jN56r6MPQUqDJHVArfSuYNuReM5G0nvTMnvCAzHhJC5J6X+ZFHYZHyk1w7Y3V
         CtC8I9wFXaLh3LAq8D+HG5tPc48IgMlZ2KFeNbLm/UI6CpGFRau31n8aQxT8sF395f1I
         WI9HpKtiWeekM/tdyz91/X0A7KGDq5PG7lOy3fsi1RNQuSub2tXq8SjQBsgRMSv+5s+O
         aAM51wtAg/hwviU2Ho0SV9Ep2UQeWjbhYyYdHU3BGIrr1xgjKJXJAj0fV2N/vhD8RI14
         HQ8gbxuE/feMiiJwtIdjXo0ICsJypDC1/mNrU0S63YP18nbmE2ZGpiW3Nb7EPR+nI8H4
         gnkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=/PMdbO94F+BOcABvS3JHoU7ACrUEqtckvCco1cnBf7g=;
        b=3gOsU3TztB8Czptuo/Wva0m4Pau+Uwj7nSZx1bVnTUfgLjj8180flDY/BzCp/6yM6G
         xWQFuBwxEReC6YFvIHLIiX/IEDzVflpWJjM0/3IPwskWiChwnfFooEGVu3wOOLh+b012
         tmZkX4iHZoPF1OUXzFuMAOQKKIZ9+PaxaZtQOi/MZ69brTFYnHGBgq3EfR7drtZzBgiL
         07vNNn91wOsgI0Huuatql057+IGDemjy8m1hu9DvCyw6i1g5JILw/QZ9P+TTIM4m0bMK
         horKPjVxbzEE2k62b3NXfwPN/1UDYLY5Ccb6WAfB/S7EOGVgIEFxpLW3y0N68SXxNoKm
         3s7g==
X-Gm-Message-State: AJIora+nRK6u/r7aZsMpglMAuI0qxpCc1ilf3+rR8s8yeykxIIL78wBJ
        /QB7jW8fr0XbGjGG4N538duUBg==
X-Google-Smtp-Source: AGRyM1s4dOTFMu9AD0Y9keD+388tiwLW1mLTHdurnbjHeWFtQgmBn8S9pS0/PvofaG/ow/eDwQHiMw==
X-Received: by 2002:a17:902:d4d0:b0:163:d4dc:bff8 with SMTP id o16-20020a170902d4d000b00163d4dcbff8mr1185362plg.129.1655321753941;
        Wed, 15 Jun 2022 12:35:53 -0700 (PDT)
Received: from google.com ([192.77.111.2])
        by smtp.gmail.com with ESMTPSA id i9-20020a63b309000000b003fadfd7be5asm10257407pgf.18.2022.06.15.12.35.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jun 2022 12:35:53 -0700 (PDT)
Date:   Wed, 15 Jun 2022 20:35:50 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Rahul T R <r-ravikumar@ti.com>
Cc:     robh+dt@kernel.org, nm@ti.com, vigneshr@ti.com, kishon@ti.com,
        krzysztof.kozlowski+dt@linaro.org, rogerq@kernel.org,
        devicetree@vger.kernel.org, kristo@kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        s-anna@ti.com
Subject: Re: [PATCH v4 1/3] dt-bindings: mfd: ti,j721e-system-controller: Add
 clock property
Message-ID: <Yqo0lq2GipkXg8HG@google.com>
References: <20220530101031.11357-1-r-ravikumar@ti.com>
 <20220530101031.11357-2-r-ravikumar@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220530101031.11357-2-r-ravikumar@ti.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 30 May 2022, Rahul T R wrote:

> Add a pattern property for clock-controller, also update the example
> with a clock-controller node
> 
> Signed-off-by: Rahul T R <r-ravikumar@ti.com>
> ---
>  .../bindings/mfd/ti,j721e-system-controller.yaml     | 12 ++++++++++++
>  1 file changed, 12 insertions(+)

Applied, thanks.

-- 
Lee Jones [李琼斯]
Principal Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
