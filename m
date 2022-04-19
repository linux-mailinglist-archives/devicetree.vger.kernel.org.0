Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0C28D506D57
	for <lists+devicetree@lfdr.de>; Tue, 19 Apr 2022 15:20:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343912AbiDSNWS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Apr 2022 09:22:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48468 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238617AbiDSNWR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Apr 2022 09:22:17 -0400
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com [209.85.210.41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9DBA7366A4
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 06:19:34 -0700 (PDT)
Received: by mail-ot1-f41.google.com with SMTP id r12-20020a056830418c00b006054e1142acso3458940otu.7
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 06:19:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=hYORCeWbeix4J5CxHYndk8/zWspzxFUk4CcUI2nGMhg=;
        b=J7yTMjrzsKUSrMxxhT9GUwuKcq2VQU+okwpQzt3+Xdg1GK1sz02SNhZgB2Lk+99MqW
         euiN6LGTbOy166lRIvZrgD1RBIV4ZDUI6SSo2gKSwjr5xcYhbr+oVCYWWlTWiscCOWy5
         apfvwlhk2WXi2egk5MSegSBLYMvnfoxDtiWJsoFsYXm7CTDN+iTCTNg+Wd8sOjQTqD/O
         33Al/LV/kE6JAfQMUMOs5WVZFkggkEq6+bq9LWo/FEsIl+cDimAoDHp+63ycPcnsq9o3
         c8yVTKmsLZiCVmTLGrqHmXyzn4ns5fcalAn+p6gQZcS76mJAUMvytsjv72KhMjwFkN1c
         M4yA==
X-Gm-Message-State: AOAM531C0CAjrPgkeoGB53VCWoaldlumMlx4NZsva5orYNojaODGJRze
        n1OTFNB4+orZuofk9ILMMw==
X-Google-Smtp-Source: ABdhPJz95PNkSHrePsY47MQUDBbqQF6249VaMMsqV2Yk41XDjy6ZzbVnMxC2DSC071gfjYWvuQ90cA==
X-Received: by 2002:a9d:12a9:0:b0:603:d1cc:68eb with SMTP id g38-20020a9d12a9000000b00603d1cc68ebmr5741572otg.326.1650374373912;
        Tue, 19 Apr 2022 06:19:33 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id o64-20020acad743000000b002ef3b249b9esm5002838oig.58.2022.04.19.06.19.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Apr 2022 06:19:33 -0700 (PDT)
Received: (nullmailer pid 2323034 invoked by uid 1000);
        Tue, 19 Apr 2022 13:19:32 -0000
Date:   Tue, 19 Apr 2022 08:19:32 -0500
From:   Rob Herring <robh@kernel.org>
To:     Stefano Stabellini <sstabellini@kernel.org>
Cc:     devicetree@vger.kernel.org, xen-devel@lists.xenproject.org,
        Stefano Stabellini <stefano.stabellini@xilinx.com>,
        robh+dt@kernel.org, julien@xen.org, frowand.list@gmail.com
Subject: Re: [PATCH v2] of: of_property_read_string return -ENODATA when
 !length
Message-ID: <Yl625EnFl0/MChux@robh.at.kernel.org>
References: <20220416003028.1315268-1-sstabellini@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220416003028.1315268-1-sstabellini@kernel.org>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 15 Apr 2022 17:30:28 -0700, Stefano Stabellini wrote:
> From: Stefano Stabellini <stefano.stabellini@xilinx.com>
> 
> When the length of the string is zero of_property_read_string should
> return -ENODATA according to the description of the function.
> 
> However, of_property_read_string doesn't check prop->length. If
> prop->length is zero, return -ENODATA.
> 
> Without this patch the following command in u-boot:
> 
> fdt set /chosen/node property-name
> 
> results in of_property_read_string returning -EILSEQ when attempting to
> read property-name. With this patch, it returns -ENODATA as expected.
> 
> Signed-off-by: Stefano Stabellini <stefano.stabellini@xilinx.com>
> ---
> Changes in v2:
> - use prop instead pp
> - drop value check
> - update function header documentation
> ---
>  drivers/of/property.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 

Applied, thanks!
