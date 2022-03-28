Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9CBBD4EA1B0
	for <lists+devicetree@lfdr.de>; Mon, 28 Mar 2022 22:44:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243797AbiC1Up5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Mar 2022 16:45:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346367AbiC1Uov (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Mar 2022 16:44:51 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id B0A7C5EDF3
        for <devicetree@vger.kernel.org>; Mon, 28 Mar 2022 13:43:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1648500187;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=PJEPbSEt0O6lWWC+/4/A5CGukD+9ye2bG6M4HjxFpHI=;
        b=VokgyMEoNeXACqeY7cBSnVAuQEbnXhkyfjX85Hykn8cb+g4KzL3K+A+4Gc1msISb8RHk6A
        cD/xnmgquUZl317dSEfL5RVfFhFyPDzSu89eGzozPeA+BAkBk4D16ZJFc8bQpxJWuAxql1
        fUGLGkzKkeut3ztZBisdFUbrDOc0mRU=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-416-BizekCJ3NGqXoi1H0taHcw-1; Mon, 28 Mar 2022 16:43:05 -0400
X-MC-Unique: BizekCJ3NGqXoi1H0taHcw-1
Received: by mail-wr1-f70.google.com with SMTP id q4-20020adfc504000000b00203e15159e8so4569837wrf.6
        for <devicetree@vger.kernel.org>; Mon, 28 Mar 2022 13:43:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=PJEPbSEt0O6lWWC+/4/A5CGukD+9ye2bG6M4HjxFpHI=;
        b=Tj7/5YID2deZWZWygqkETrkkdKdc/LVIr1yEGsD4Q16W0am2BfRPop9y/oVdYOKeoR
         Eb0CTGjQjg/Ys0gdNpvuV1aLWYnQx6jCkcsHKBZIni9k0iZk+iozzDP+vtSXsCGVM2fx
         n13KKeiiONO7o+b4k7id1Emp/DMCt0JyehUYJo6sZfmzafBF282jCkeKqxNpqpJfhLoy
         8S9OE39QxZuZygZ2UZXRmAic1HPYO/A7DTR3zNopCYFZLXdPiWPqeN+8zvfmOSYHTlPs
         m9xKsvHu0s0vyxbupQUzjhQJ4wRW2sqimuDSYBfvt92tBHsqeg5aUDia9YvSOLbf3107
         kolw==
X-Gm-Message-State: AOAM533FESRqqvfRDeIPtRgrHX7htX8IWF8ZyeL0NIlenRyrqZYW6J/l
        Fwi92aNXamYe1cwdIIhPLUzsh/yZH7k0eFfdYqC5+JpzzW0/072/mtkca7mrykLGTQlJWmca2J0
        zg3oFSgZC53uHc62QKY5cSQ==
X-Received: by 2002:a7b:c341:0:b0:37b:ed90:7dad with SMTP id l1-20020a7bc341000000b0037bed907dadmr1467626wmj.138.1648500184528;
        Mon, 28 Mar 2022 13:43:04 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwqJ51NlOZBInKiTlBe3giVlBSqn5C3pjZeP3UUXO1W7rcm9wq0r9ipgX192N0DSiX3l8eE+Q==
X-Received: by 2002:a7b:c341:0:b0:37b:ed90:7dad with SMTP id l1-20020a7bc341000000b0037bed907dadmr1467606wmj.138.1648500184334;
        Mon, 28 Mar 2022 13:43:04 -0700 (PDT)
Received: from redhat.com ([2.52.9.207])
        by smtp.gmail.com with ESMTPSA id l20-20020a05600c1d1400b0038cba2f88c0sm616358wms.26.2022.03.28.13.43.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Mar 2022 13:43:03 -0700 (PDT)
Date:   Mon, 28 Mar 2022 16:42:59 -0400
From:   "Michael S. Tsirkin" <mst@redhat.com>
To:     Minghao Xue <quic_mingxue@quicinc.com>
Cc:     jasowang@redhat.com, robh+dt@kernel.org, jean-philippe@linaro.org,
        virtualization@lists.linux-foundation.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_ztu@quicinc.com
Subject: Re: [PATCH v2 1/2] dt-bindings: virtio: mmio: add optional
 wakeup-source property
Message-ID: <20220328164228-mutt-send-email-mst@kernel.org>
References: <20220325015945.GA17578@mingxue-gv.qualcomm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220325015945.GA17578@mingxue-gv.qualcomm.com>
X-Spam-Status: No, score=-3.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Mar 25, 2022 at 09:59:45AM +0800, Minghao Xue wrote:
> Some systems want to set the interrupt of virtio_mmio device
> as a wakeup source. On such systems, we'll use the existence
> of the "wakeup-source" property as a signal of requirement.
> 
> Signed-off-by: Minghao Xue <quic_mingxue@quicinc.com>

I don't have enough of a clue about dt to review this.
Pls get some acks from people with DT expertise.

> ---
> v1 -> v2: rename property from "virtio,wakeup" to "wakeup-source"
> 
>  Documentation/devicetree/bindings/virtio/mmio.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/virtio/mmio.yaml b/Documentation/devicetree/bindings/virtio/mmio.yaml
> index 4b7a027..160b21b 100644
> --- a/Documentation/devicetree/bindings/virtio/mmio.yaml
> +++ b/Documentation/devicetree/bindings/virtio/mmio.yaml
> @@ -31,6 +31,10 @@ properties:
>      description: Required for devices making accesses thru an IOMMU.
>      maxItems: 1
>  
> +  wakeup-source:
> +    type: boolean
> +    description: Required for setting irq of a virtio_mmio device as wakeup source.
> +
>  required:
>    - compatible
>    - reg
> -- 
> 2.7.4

