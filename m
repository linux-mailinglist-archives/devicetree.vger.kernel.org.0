Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9C4E53B3CF9
	for <lists+devicetree@lfdr.de>; Fri, 25 Jun 2021 09:02:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229478AbhFYHEp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Jun 2021 03:04:45 -0400
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124]:31632 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229448AbhFYHEn (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 25 Jun 2021 03:04:43 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1624604542;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=Wk4gJrvVmFJkUUV0V+8tjI0BeJ/S5lprpVx2BaJWvxE=;
        b=gqyyfbAb2NgpDF/hGNXUqJ6FK0CVEkjFNq5UZdi0alkoD4nvlgQmFMqVlI2Q4uXz377Af6
        +gg9uGH91RUp3SAVRmx5pDQrQci/u3oc9WDTEKYv/aiQ4x/kNZtb+sCmBFi+jExwUf/CxH
        P8RfzSAbuWEc3iEA/9VxDQ1Fp2vX+0A=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-371-7za6UqvNOiyB5-zhmQf6Ew-1; Fri, 25 Jun 2021 03:02:21 -0400
X-MC-Unique: 7za6UqvNOiyB5-zhmQf6Ew-1
Received: by mail-ej1-f71.google.com with SMTP id p5-20020a17090653c5b02903db1cfa514dso2743420ejo.13
        for <devicetree@vger.kernel.org>; Fri, 25 Jun 2021 00:02:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Wk4gJrvVmFJkUUV0V+8tjI0BeJ/S5lprpVx2BaJWvxE=;
        b=AKUA8WGlFiZFtlZz8gmZwN0UakDMztG7v11ikGrrNJN0fE4r9T5ixPHZlMCv5tzE5z
         0q2304l8hvmXsTqCevrR3N5l+FP5mmxKNbHCWeN5PYd0XB0frZKziMiLjK0WFMk8nbhe
         CPSeqwA6mhB8dMa5G13sB5ArdHO84fb++7ShR0S4AQbj71MCCVTBOzAhT97o9vg0dtcv
         5fZ/CqBV28dFcTIw8dXTq8XFXfe6ZTYnMCjs1u10CkLPXT/5w9n4UO786czqIZWuGMzQ
         G4Di6FL76EsKpS5WhvrcQf6TOJVpasqdaIg8N5133VlXL+T65DJ/2ZMu5ojWaaiL8RU5
         fpbg==
X-Gm-Message-State: AOAM532Cj/SM/W3mMln/cqFAICI/1a5RCt7BMS13m/idULrlV0ElqJsd
        I+o+QyrYYI3wM1XmGX1NoH2a/afbgvSEtVUYSQZIiiu5E1yQX1oTeNKyilfzNS/xHpoVunaGror
        qfZwvJgBD4Y41ZcJVe0tM/w==
X-Received: by 2002:a50:8dc6:: with SMTP id s6mr12618430edh.50.1624604540040;
        Fri, 25 Jun 2021 00:02:20 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxLZ1E0ag2fxZhez+/apF5lYTGyruCtFj2/grYppl3iqtimvhupRWwcMIgagBLs1nWLMWQjCA==
X-Received: by 2002:a50:8dc6:: with SMTP id s6mr12618408edh.50.1624604539896;
        Fri, 25 Jun 2021 00:02:19 -0700 (PDT)
Received: from gator (cst2-174-132.cust.vodafone.cz. [31.30.174.132])
        by smtp.gmail.com with ESMTPSA id f20sm162281ejl.41.2021.06.25.00.02.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Jun 2021 00:02:19 -0700 (PDT)
Date:   Fri, 25 Jun 2021 09:02:17 +0200
From:   Andrew Jones <drjones@redhat.com>
To:     Gavin Shan <gshan@redhat.com>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        rdunlap@infradead.org, robh+dt@kernel.org, shan.gavin@gmail.com
Subject: Re: [PATCH v4] Documentation, dt, numa: Add note to empty NUMA node
Message-ID: <20210625070217.4ffmfe7nwlusbbjc@gator>
References: <20210625052338.4875-1-gshan@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210625052338.4875-1-gshan@redhat.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jun 25, 2021 at 01:23:38PM +0800, Gavin Shan wrote:
> The empty memory nodes, where no memory resides in, are allowed.
> For these empty memory nodes, the 'len' of 'reg' property is zero.
> The NUMA node IDs are still valid and parsed, but memory can be
> added to them through hotplug afterwards. I finds difficulty to
> get where it's properly documented.
> 
> So lets add note to empty memory nodes in the NUMA binding doc.
> 
> Signed-off-by: Gavin Shan <gshan@redhat.com>
> ---
>  Documentation/devicetree/bindings/numa.txt | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/numa.txt b/Documentation/devicetree/bindings/numa.txt
> index 21b35053ca5a..0fc882e44270 100644
> --- a/Documentation/devicetree/bindings/numa.txt
> +++ b/Documentation/devicetree/bindings/numa.txt
> @@ -109,6 +109,10 @@ Example:
>  Dual socket system consists of 2 boards connected through ccn bus and
>  each board having one socket/soc of 8 cpus, memory and pci bus.
>  
> +Note that empty memory nodes, which no memory resides in, are allowed.
> +The NUMA node IDs in these empty memory nodes are still valid, but
> +memory can be added into them through hotplug afterwards.

Please change the second sentence to:

  The NUMA node IDs in these empty memory nodes are still valid and
  memory may be added into them through hotplug afterwards.

But, this doesn't look like the right place for this paragraph. You're
adding the paragraph to the example section, but the example doesn't have
any empty memory nodes.

I think the paragraph should be added to section "2 - numa-node-id" and an
example empty memory node should be provided. Also, the commit message
talks about the length of 'reg' being zero, which is an important
distinction which should also be documented.

Thanks,
drew

> +
>  	memory@c00000 {
>  		device_type = "memory";
>  		reg = <0x0 0xc00000 0x0 0x80000000>;
> -- 
> 2.23.0
> 

