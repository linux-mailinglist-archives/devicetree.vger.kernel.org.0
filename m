Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 772F85EE0C1
	for <lists+devicetree@lfdr.de>; Wed, 28 Sep 2022 17:44:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233494AbiI1Pou (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Sep 2022 11:44:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45874 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232599AbiI1Pot (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Sep 2022 11:44:49 -0400
Received: from mail-qk1-x734.google.com (mail-qk1-x734.google.com [IPv6:2607:f8b0:4864:20::734])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C998433378
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 08:44:41 -0700 (PDT)
Received: by mail-qk1-x734.google.com with SMTP id x18so8100742qkn.6
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 08:44:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date;
        bh=5VOCWcgoIsE/Ai5qpSZYr71NDjI2Cp8fJOu50Q8l/5U=;
        b=XutHlQR+0NPVe/vdY3DgPVuRIpUanyWgtQAVORqNe0Xz5VDNquT360t8jD613El0J8
         hPe102ZNvG5YG3fLSJVMl21VbEOIgeisxG6eBImQqO/C+pVVUoGUxSrEX8/f9vGo0hxx
         5w18vt4hGlpQ9wCtvDds5/2tGL8MiOt23CL40=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=5VOCWcgoIsE/Ai5qpSZYr71NDjI2Cp8fJOu50Q8l/5U=;
        b=yZqh+b1Wgi+Zr4Tx6ELdHGiNtqnsRpduBFwjtam4aOY4X0Uadud8PyKa4ZG+UPQ7Fg
         HzIzIjFtOujOc0TF7hvcGuXi2izFxBdXfjnYJq0tkO8QKQqu9s11GEaW8d5qqZ1sQYPi
         ZxRDla+S9IS5zxce+RCsb54h4qOxzVpH8p3U8/Iqia+yjJyDvJkkHwMbZ12EO63iNj9R
         FcY+7nvSf+7D0EjeZb2o1DObRE09KeBySVwEHiJe8LJ8z3N/umkRytD21eZQWD8VWCeo
         4dEGlL1/bWfaOO8hmb6oycBidy2mO/O1F6oqpMtIF3sAEc6vm8B68CqgG54ICDPRTVXv
         xy3A==
X-Gm-Message-State: ACrzQf0xEuf9Jk30oGOBlCdqgrl1tRHfqk2Lgn1rD7lc7xOopIOSOJWD
        9Y3VE7A0siB/1Jt1qZUqUROSMg==
X-Google-Smtp-Source: AMsMyM75sbeQKpLJRmaKGZvXkO+iZIio9WRSyymNmbzDHvF0X5OLH+JKbKG/mtRK99YHvJzKgZF8BQ==
X-Received: by 2002:a05:620a:957:b0:6cd:ed32:ed2e with SMTP id w23-20020a05620a095700b006cded32ed2emr22041149qkw.48.1664379880623;
        Wed, 28 Sep 2022 08:44:40 -0700 (PDT)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-33-142-113-79-147.dsl.bell.ca. [142.113.79.147])
        by smtp.gmail.com with ESMTPSA id h2-20020a05620a244200b006ccc96c78easm3249668qkn.134.2022.09.28.08.44.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Sep 2022 08:44:39 -0700 (PDT)
Date:   Wed, 28 Sep 2022 11:44:37 -0400
From:   Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        phone-devel@vger.kernel.org, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        ~postmarketos/upstreaming@lists.sr.ht,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        Martin Botka <martin.botka@somainline.org>,
        Jami Kettunen <jami.kettunen@somainline.org>,
        Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 1/5] dt-bindings: mfd: qcom-spmi-pmic: Add pm6125
 compatible
Message-ID: <20220928154437.if3x2zf5yozhy5kt@meerkat.local>
References: <20220926190148.283805-1-marijn.suijten@somainline.org>
 <20220926190148.283805-2-marijn.suijten@somainline.org>
 <052630d0-299e-e468-b2dd-266d371e2b0f@linaro.org>
 <20220928081055.p66huqct2wnrsrdx@SoMainline.org>
 <3f2e62f5-a6e4-7011-3f5b-29a6657eae79@linaro.org>
 <20220928082340.mkn23ersrtzb5oth@SoMainline.org>
 <2bd60261-a977-3225-8d41-4987252e6abb@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <2bd60261-a977-3225-8d41-4987252e6abb@linaro.org>
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Sep 28, 2022 at 10:30:00AM +0200, Krzysztof Kozlowski wrote:
> > (Side-note: I should get accustomed to `b4 shazam` to automatically pick
> >  this up from the list, instead of rebasing / re-applying local patches)
> 
> Would be nice if b4 could update patches in current branch adding the
> tags... but git reset --hard && b4 shazam should work as well.

FYI, it can do just that using "b4 trailers -uF [msgid]". See:
https://b4.docs.kernel.org/en/stable-0.10.y/contributor/trailers.html

-K
