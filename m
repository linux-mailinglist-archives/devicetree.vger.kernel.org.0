Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 355AE270368
	for <lists+devicetree@lfdr.de>; Fri, 18 Sep 2020 19:31:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726159AbgIRRbi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Sep 2020 13:31:38 -0400
Received: from mail-il1-f193.google.com ([209.85.166.193]:33808 "EHLO
        mail-il1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726126AbgIRRbh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Sep 2020 13:31:37 -0400
Received: by mail-il1-f193.google.com with SMTP id q5so454245ilj.1
        for <devicetree@vger.kernel.org>; Fri, 18 Sep 2020 10:31:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=sqtkzS/HNUH1P/WMAuboQz04kwehzQ/TgGVlePpY+UQ=;
        b=L6y/vMS1A0nrpjwb8wg5+85sTZwKQvU1hjTx+7U6U0AL+Xop6B2Npw8w8rULLWOJS5
         Kjk4TGfvYfyWX4S8KKakuFH73+Zn1EBviRD+r7GvsGNKXLNvEstNIxpKHssmBb8TN3m/
         6O1TdtfM+UBK+neYpP0BNaff/jGdggXGN67po+9SIn2c7KGmEeZruXCASK+JeB2a5q2M
         pq1m/ft2ioLStuSUtahYb8Otm/PI9ZalEMNGxjRGf4n5cIms44hNcKtin4e2cdgtRSMW
         vyxU6RJoMbC+tDElP96gxMBJ3vuclFc9MBWbh95XgN2o/ozq18jP3gfsXOncak7SRYCP
         3qng==
X-Gm-Message-State: AOAM531qM7uSa6fZYliXCGMH9ihZnorNunqsS/O8GBUUvX5JNe7R6K5j
        MEUCcUaq0xw8qeIEdulajQ==
X-Google-Smtp-Source: ABdhPJzEfvIj0idmxBiMVQvguucWCLD+aQHmXlcb22dcrEXjFQW5dHO183UIsyXQLckL/p+iysZ1MA==
X-Received: by 2002:a92:999c:: with SMTP id t28mr30067006ilk.230.1600450296973;
        Fri, 18 Sep 2020 10:31:36 -0700 (PDT)
Received: from xps15 ([64.188.179.253])
        by smtp.gmail.com with ESMTPSA id a23sm1710525ioc.54.2020.09.18.10.31.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Sep 2020 10:31:36 -0700 (PDT)
Received: (nullmailer pid 3830952 invoked by uid 1000);
        Fri, 18 Sep 2020 17:31:34 -0000
Date:   Fri, 18 Sep 2020 11:31:34 -0600
From:   Rob Herring <robh@kernel.org>
To:     Robin Murphy <robin.murphy@arm.com>
Cc:     mark.rutland@arm.com, devicetree@vger.kernel.org,
        james.yang@arm.com, linux-arm-kernel@lists.infradead.org,
        tuanphan@os.amperecomputing.com, tsahee@amazon.com,
        will@kernel.org, alisaidi@amazon.com, harb@amperecomputing.com,
        patrik.berglund@arm.com
Subject: Re: [PATCH v2 1/3] perf: Add Arm CMN-600 DT binding
Message-ID: <20200918173134.GA3830613@bogus>
References: <cover.1600357241.git.robin.murphy@arm.com>
 <394449fba250349c2251832da31ac709c5a21fdc.1600357241.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <394449fba250349c2251832da31ac709c5a21fdc.1600357241.git.robin.murphy@arm.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 18 Sep 2020 14:28:37 +0100, Robin Murphy wrote:
> Document the requirements for the CMN-600 DT binding. The internal
> topology is almost entirely discoverable by walking a tree of ID
> registers, but sadly both the starting point for that walk and the
> exact format of those registers are configuration-dependent and not
> discoverable from some sane fixed location. Oh well.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
> 
> v2: fix filename, license and whitespace per Rob's comments
> 
>  .../devicetree/bindings/perf/arm,cmn.yaml     | 57 +++++++++++++++++++
>  1 file changed, 57 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/perf/arm,cmn.yaml
> 


My bot found errors running 'make dt_binding_check' on your patch:

./Documentation/devicetree/bindings/perf/arm,cmn.yaml: $id: relative path/filename doesn't match actual path or filename
	expected: http://devicetree.org/schemas/perf/arm,cmn.yaml#


See https://patchwork.ozlabs.org/patch/1366940

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure dt-schema is up to date:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade

Please check and re-submit.

