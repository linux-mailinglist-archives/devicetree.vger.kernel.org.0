Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 216CF664414
	for <lists+devicetree@lfdr.de>; Tue, 10 Jan 2023 16:06:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233598AbjAJPG1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Jan 2023 10:06:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238352AbjAJPGI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Jan 2023 10:06:08 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69F8888DCB
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 07:04:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1673363060;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=fuGrtewPgChM6s8r8HaPPXXqLJt4Im2dJEr7Ryz5fP8=;
        b=fawbJuKGGxXKFibiSZRyGBoI0b+T5O5eTlRrBH6BgqSk9xHkb7Yv+kQXBUG+LRR6yjxtPE
        +28BmtIUiWWi2v5vfI9/K6YADiySaPMH8+5cKE2+M/0iGbuYSYUr0m5RvKlkADxdzyvpCQ
        MEMbFjtGa00E7/BY5PqztXNvvnLs3s8=
Received: from mail-io1-f70.google.com (mail-io1-f70.google.com
 [209.85.166.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-577-XMfuP0OcOPa3uoMHQKW68w-1; Tue, 10 Jan 2023 10:04:17 -0500
X-MC-Unique: XMfuP0OcOPa3uoMHQKW68w-1
Received: by mail-io1-f70.google.com with SMTP id s26-20020a5e981a000000b007045ace9e1cso833843ioj.5
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 07:04:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fuGrtewPgChM6s8r8HaPPXXqLJt4Im2dJEr7Ryz5fP8=;
        b=K8CExd1dbbgpgHDC0ErRmusCAqNFeTAH2FeG/LESXNqEPZqbmSHwwWMxRKk6iOXDFI
         vY/e7jfLF65tuUgH2ETixUEMCdcfkewFgT6ZFlFr8rZO/lgEKzf48M/KgUnH6VVZGlIX
         Tn/ofejnWFSTHnU2gQVKvuj75djGGKWnUsEsmzEGX0DWa8nx37ojxOo38l21MKMmE4l7
         RYpZ9FVDO/qBgsPSfz5iyUZ5LOduiliiy6RACIqQhRi7rz0capGAF3MPcqleQ8M6iieN
         p4F6mePuY8//nmPhUJGxkHFkPXGUlfx3D8KIUET0+435BvAyGjfq9JLpF5B/GJ4tdlYm
         +yIA==
X-Gm-Message-State: AFqh2kr3UZFpwxOAot7SLtXEgg2/JTiVqc3BS69q2MABNLcOxxrX521w
        C2OSruxkNMju34Q5p+Wdw/a7CI2a7tpf9j6LZ2A9214e2OoKdcsKUDS00l9y6ILYHHHH6FR/vbM
        +Yyaik6F+KJWy/7pGk6unPg==
X-Received: by 2002:a05:6e02:685:b0:30d:b78b:8a69 with SMTP id o5-20020a056e02068500b0030db78b8a69mr1659718ils.9.1673363057066;
        Tue, 10 Jan 2023 07:04:17 -0800 (PST)
X-Google-Smtp-Source: AMrXdXtKJyVGmVMK2NhrWBpTjy7wmjgz+HOnm2oPnwubMoWdsPOheOgp2ggdA9UyYoHmI0f+r2tikA==
X-Received: by 2002:a05:6e02:685:b0:30d:b78b:8a69 with SMTP id o5-20020a056e02068500b0030db78b8a69mr1659691ils.9.1673363056774;
        Tue, 10 Jan 2023 07:04:16 -0800 (PST)
Received: from x1 (c-73-214-169-22.hsd1.pa.comcast.net. [73.214.169.22])
        by smtp.gmail.com with ESMTPSA id u17-20020a022e51000000b0039d87a31de0sm3631897jae.116.2023.01.10.07.04.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jan 2023 07:04:15 -0800 (PST)
Date:   Tue, 10 Jan 2023 10:04:13 -0500
From:   Brian Masney <bmasney@redhat.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        quic_shazhuss@quicinc.com, robh+dt@kernel.org,
        konrad.dybcio@linaro.org, johan+linaro@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, ahalaney@redhat.com,
        echanude@redhat.co
Subject: Re: [PATCH v4 01/10] dt-bindings: qcom,*-geni: move
 #{address,size}-cells on i2c/spi nodes
Message-ID: <Y71+bXnNFq2g1jDf@x1>
References: <20230103182229.37169-1-bmasney@redhat.com>
 <20230103182229.37169-2-bmasney@redhat.com>
 <a690de32-522f-c777-241b-907bda8a14ba@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a690de32-522f-c777-241b-907bda8a14ba@linaro.org>
User-Agent: Mutt/2.2.7 (2022-08-07)
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jan 10, 2023 at 11:41:14AM +0100, Krzysztof Kozlowski wrote:
> On 03/01/2023 19:22, Brian Masney wrote:
> > Move the #address-cells and #size-cells properties on the existing
> > i2c/spi example nodes below the reg property so that all of the
> > address-related properties are grouped together.
> > 
> > Signed-off-by: Brian Masney <bmasney@redhat.com>
> > Link: https://lore.kernel.org/lkml/Y6Wnh+tXPhF6aC1b@hovoldconsulting.com/
> 
> We do not have conclusion where these should be, so don't make any changes.
> 
> https://github.com/konradybcio-work/dt_review

OK, let's just drop patches 1 and 2 in this series then. Patches 3-10
should be ready for merge.

Brian

