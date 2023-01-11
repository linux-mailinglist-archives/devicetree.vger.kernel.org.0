Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8E663665EC1
	for <lists+devicetree@lfdr.de>; Wed, 11 Jan 2023 16:07:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234932AbjAKPHX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Jan 2023 10:07:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41796 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238831AbjAKPHQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Jan 2023 10:07:16 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9DE67102
        for <devicetree@vger.kernel.org>; Wed, 11 Jan 2023 07:06:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1673449584;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=Myn34I1yOWHLCCRT341CKLbjbol25HP/clSmV2zQUVA=;
        b=bEQbg/RQV6N+2+IjzWrRiMMhvlydtfhMsU4YUAJRgmgc0UL7nS7KB0Njc7qvdk5tRK0I2Y
        0E96nbB5DCPyMM8KTAPBQ38n9Uf8JWSVMo/dkM3qlggaUbtMR54Ca0qlZsIjJuIgaTfX0F
        GJV5nAONSobTRZ1EfCmbn5TTxpo+CsM=
Received: from mail-oi1-f197.google.com (mail-oi1-f197.google.com
 [209.85.167.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-591-SECHU-JLM6uQCcwGK_UTMA-1; Wed, 11 Jan 2023 10:06:23 -0500
X-MC-Unique: SECHU-JLM6uQCcwGK_UTMA-1
Received: by mail-oi1-f197.google.com with SMTP id bl37-20020a05680830a500b00360ffa37a0cso4236754oib.8
        for <devicetree@vger.kernel.org>; Wed, 11 Jan 2023 07:06:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Myn34I1yOWHLCCRT341CKLbjbol25HP/clSmV2zQUVA=;
        b=0u6FfNP85Npivjn6VVEtOHRmgMPDKSX89lkye4SgOb2cUpQjBk0KqDlPermgnzUNWS
         lnajVS/BwPSoGQg19/c51Al4U/tL9Z+CyzN49Ocp60uzPMQP3z/hK7FRRNdwoJHwOozg
         9eM/RFamXLLXLDA2miUJL9lWRYO+8SV7mhJUUgilUNXKQdmLjLeMKdhMz6+9j7Ijt/bT
         lON6RawaSFVjxu6lIQT3cdABzfj3i2xDlgJEGzh95PmRrlPaS+tcYMNht2aIBhrxWsFZ
         ma2ftF68x5gU0Yzal2KGZ/wWlr0oMfpYGzYT1SgPjSKMljdsbTTlsPLjYxuOUvQ+jQ6y
         fjnQ==
X-Gm-Message-State: AFqh2krJZt6CIiaP6U1w+oPeetD6fB3A6Kn/vhw6MxLx0cYaDWNuj2KP
        oARbXfRAqeyJSh3ZQVAF/iE7Q2RhZUDU5d+bB7kwMf04jZFmNO1alOsDpIVgrbMdr3Z/NvM8dsA
        C/6bgw/bHeL7RnNn5AFgZ6g==
X-Received: by 2002:a05:6870:c03:b0:14c:705e:be8c with SMTP id le3-20020a0568700c0300b0014c705ebe8cmr35115952oab.2.1673449581122;
        Wed, 11 Jan 2023 07:06:21 -0800 (PST)
X-Google-Smtp-Source: AMrXdXu8Uy2KPHVWIfK+X7gApwWSrPqKOZdmUIpae+29hH+FsKTAo9JPuf1PRGJTkNMy5Ms/1p31kw==
X-Received: by 2002:a05:6870:c03:b0:14c:705e:be8c with SMTP id le3-20020a0568700c0300b0014c705ebe8cmr35115934oab.2.1673449580634;
        Wed, 11 Jan 2023 07:06:20 -0800 (PST)
Received: from localhost (pool-71-184-142-128.bstnma.fios.verizon.net. [71.184.142.128])
        by smtp.gmail.com with ESMTPSA id s15-20020a05620a254f00b007056237b41bsm9100652qko.67.2023.01.11.07.06.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jan 2023 07:06:20 -0800 (PST)
Date:   Wed, 11 Jan 2023 10:06:19 -0500
From:   Eric Chanudet <echanude@redhat.com>
To:     Johan Hovold <johan+linaro@kernel.org>
Cc:     Bjorn Andersson <andersson@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andrew Halaney <ahalaney@redhat.com>,
        Brian Masney <bmasney@redhat.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sa8450p-pmics: add missing
 interrupt include
Message-ID: <20230111150619.2g737hldisyhceri@echanude>
References: <20230111082331.20641-1-johan+linaro@kernel.org>
 <20230111082331.20641-2-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230111082331.20641-2-johan+linaro@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jan 11, 2023 at 09:23:30AM +0100, Johan Hovold wrote:
> Add the missing interrupt-controller include which is needed by the RTC
> node.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Reviewed-by: Eric Chanudet <echanude@redhat.com>

Nit: sa8450p-pmics -> sa8540p-pmics in the subject. It was mistyped in
the commit renaming the file unfortunately.

-- 
Eric Chanudet

