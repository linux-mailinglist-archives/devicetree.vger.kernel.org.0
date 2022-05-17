Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F1EF252A389
	for <lists+devicetree@lfdr.de>; Tue, 17 May 2022 15:36:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237470AbiEQNgW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 May 2022 09:36:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56330 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348126AbiEQNgJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 May 2022 09:36:09 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id D1E8B118
        for <devicetree@vger.kernel.org>; Tue, 17 May 2022 06:36:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1652794565;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=5P5WzWojyMXlDWaDvwnnFONKEvLDJzZaE27j1zka+wM=;
        b=ItwmisUYeth1bIsl2pAl0H9G+r48W2jcIXqNQwK+qdQTTgG8uzIgwU6Z8E1CYqcZw2s4eb
        K3g2c/ETtUEuBEfh95ZEx0efWH6rO6IH5eaFEDGulkF+gpSqeeBncst6D78E+r3ZuLECtu
        i+83GaozsZUqd1OJz2OVd6vXUg/QG7o=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-444-SBlStjKrMmm59-pKpskMqg-1; Tue, 17 May 2022 09:36:04 -0400
X-MC-Unique: SBlStjKrMmm59-pKpskMqg-1
Received: by mail-qt1-f200.google.com with SMTP id m6-20020ac866c6000000b002f52f9fb4edso9765096qtp.19
        for <devicetree@vger.kernel.org>; Tue, 17 May 2022 06:36:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=5P5WzWojyMXlDWaDvwnnFONKEvLDJzZaE27j1zka+wM=;
        b=csJ3MXsZ+vbZ5B61yWOQDkRPFRok9M20H8epNDnkzlVTQmG1W34UecPrWKdc880ZHx
         RJQOXNUbGTouAjyKKCcdlIi37Vo4Tt3Q4iaMYMfIt4Y75JzGcEfNnf0nX9HZTFv9KT8O
         lkoNekV+ZV7dLwGaNVjd64ZOnHNw1XMA5WIRnYUwL/S9bYIsj5O1aPWUz4fx7709Ptyw
         qQ5msJdia9gTGAMzpcEFMssfE++Ml2Zn9O9Jnkq3zHwdDNDX5RLLv+njm2ga/CgPBG89
         dVYoTm5C+bQiLHZbLYV3np9aG/XGj51RSJ/42y6xL3iRTkoVWzV1Z94wv5rHtkVJjmXK
         4yzA==
X-Gm-Message-State: AOAM531MX1wR6wbUqmJ9Mlz1sK4+6/lthZskM2FrsbGqhB8PokXTXjMr
        wQZm1Y6UiakcWAWJgcF1917VDznFiC/B7/82rN6DEBmqc2wAVtJ039qvihUW7nMuGg/dVBRBIpt
        d4m2fHQKOpUOHBKJGhbx3yg==
X-Received: by 2002:a05:6214:29e9:b0:45a:c341:baaf with SMTP id jv9-20020a05621429e900b0045ac341baafmr19881083qvb.77.1652794563778;
        Tue, 17 May 2022 06:36:03 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyEdc5eDHOjlBpS8FPC+AOzBoHQp0zSLnPR5J0xOEFYvmjviuh3P28nkrVwstGyAbD+Qf1rPg==
X-Received: by 2002:a05:6214:29e9:b0:45a:c341:baaf with SMTP id jv9-20020a05621429e900b0045ac341baafmr19881031qvb.77.1652794563247;
        Tue, 17 May 2022 06:36:03 -0700 (PDT)
Received: from xps13 (c-98-239-145-235.hsd1.wv.comcast.net. [98.239.145.235])
        by smtp.gmail.com with ESMTPSA id x2-20020a376302000000b0069fc13ce1e8sm7575349qkb.25.2022.05.17.06.36.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 May 2022 06:36:02 -0700 (PDT)
Date:   Tue, 17 May 2022 09:36:01 -0400
From:   Brian Masney <bmasney@redhat.com>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/3] phy: qcom-qmp: Add SC8280XP USB3 UNI phy
Message-ID: <YoOkwZAH7EM9AUop@xps13>
References: <20220513225348.1671639-1-bjorn.andersson@linaro.org>
 <20220513225348.1671639-4-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220513225348.1671639-4-bjorn.andersson@linaro.org>
User-Agent: Mutt/2.2.1 (2022-02-19)
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, May 13, 2022 at 03:53:48PM -0700, Bjorn Andersson wrote:
> The SC8280XP platform has two instances of the 5nm USB3 UNI phy attached
> to the multi-port USB controller, add definition for these.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>

I verified that these match what's in the downstream sources for the
sa8540p.

Reviewed-by: Brian Masney <bmasney@redhat.com>

