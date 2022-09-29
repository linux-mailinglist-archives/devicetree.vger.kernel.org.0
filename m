Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 90AE95F0018
	for <lists+devicetree@lfdr.de>; Fri, 30 Sep 2022 00:29:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229563AbiI2W31 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Sep 2022 18:29:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47994 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229597AbiI2W31 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Sep 2022 18:29:27 -0400
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8E3C156266
        for <devicetree@vger.kernel.org>; Thu, 29 Sep 2022 15:29:25 -0700 (PDT)
Received: by mail-oi1-f179.google.com with SMTP id l5so3041655oif.7
        for <devicetree@vger.kernel.org>; Thu, 29 Sep 2022 15:29:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=2rlfS/tCbbcig68M2xOpGj0uzNEqgP1Fi8l2eJSyyuc=;
        b=OCzU/ux0M2tr5MvkYsAz+2VL6SSVFiGzN/ieDwKNPYG/W8FBP7uYlmOtvQFbpOIEQt
         2TePwr7JFe6UoOmCpguXSQe0bpSmbazkFyH+Jc5aWefDEL8NnVYP4uaCGyHtwwoqMvN8
         Jgz+2c7PDbCgIK8y5vo7JNgvhCdJ7Z6CIMr2t5X1kiKjwf3ulXRh0UK1ehA8xxbnEysj
         CRkOLEzVq/5vdCjplIEO1DQIKIKfCHPmzydw5gvvQOA6WVeR3VlgYGtzVQmoTUqJ1JXb
         avMPA6UgITc/h5+uUalEtN92mQsVtEe7TmpriqnoY7PWHTA31Uj7frc5zrTluWWCr/b2
         XKFA==
X-Gm-Message-State: ACrzQf1/09DrDIEYc7l3EnifBga9CI7gEDMrh+OBWIIQy14aU5jN3xiB
        pJXcIpiEMsu2oGnoX1SX/g==
X-Google-Smtp-Source: AMsMyM69Nj9KVO4FWbO6op1MvzhIGvAA+LqCB0fSg7PKTZfxESn+/rZL1r0FRu7CMNhnmSgjZtxpVw==
X-Received: by 2002:a05:6808:14d5:b0:350:5075:cf75 with SMTP id f21-20020a05680814d500b003505075cf75mr2629507oiw.213.1664490565112;
        Thu, 29 Sep 2022 15:29:25 -0700 (PDT)
Received: from macbook.herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id e11-20020a056870d10b00b0010efb044e37sm256080oac.27.2022.09.29.15.29.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Sep 2022 15:29:24 -0700 (PDT)
Received: (nullmailer pid 2880014 invoked by uid 1000);
        Thu, 29 Sep 2022 22:29:24 -0000
Date:   Thu, 29 Sep 2022 17:29:24 -0500
From:   Rob Herring <robh@kernel.org>
To:     Yuan Can <yuancan@huawei.com>
Cc:     robh+dt@kernel.org, devicetree@vger.kernel.org,
        frowand.list@gmail.com
Subject: Re: [PATCH] of: fdt: Remove unused struct fdt_scan_status
Message-ID: <166449055965.2879901.17440536508116799333.robh@kernel.org>
References: <20220927133739.98493-1-yuancan@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220927133739.98493-1-yuancan@huawei.com>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 27 Sep 2022 13:37:39 +0000, Yuan Can wrote:
> After commit bba04d965d06("of/fdt: remove unused of_scan_flat_dt_by_path"), no
> one use struct fdt_scan_status, so remove it.
> 
> Signed-off-by: Yuan Can <yuancan@huawei.com>
> ---
>  drivers/of/fdt.c | 9 ---------
>  1 file changed, 9 deletions(-)
> 

Applied, thanks!
