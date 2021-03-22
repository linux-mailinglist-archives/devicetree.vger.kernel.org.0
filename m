Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CEC2C344D8B
	for <lists+devicetree@lfdr.de>; Mon, 22 Mar 2021 18:39:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231656AbhCVRjC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Mar 2021 13:39:02 -0400
Received: from mail-io1-f42.google.com ([209.85.166.42]:44873 "EHLO
        mail-io1-f42.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231751AbhCVRi1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Mar 2021 13:38:27 -0400
Received: by mail-io1-f42.google.com with SMTP id v26so14817985iox.11
        for <devicetree@vger.kernel.org>; Mon, 22 Mar 2021 10:38:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=pYhMb2E3pJC4VdfHUbYx0B8sz8Ik3Em99NDUWtj80bM=;
        b=CuKmyh8ck/lOaTlOmoccZAWTpoa7zO46reAlScBM+5QV7g5jWqQK+cJWK5wtIywsOC
         XWB7kyM9qKeOhe2PWPqrfqKANDlPhk7DbJx0/YxNR8xufcVLOGAo7eNVWZxC0tILjxaj
         tDuVKPQPOMsNCVc/ibUZA+Iq3N2mhvURQeqm5eI4L+DUmpgQJ2egPzq+0ksXLec+cbTs
         eoPALzG7deYzvLs5VGVs5wjK1yR8Eh39aq5H5hJ5UgqXjzpPWUTuxlrUsHKZ2lI9E87I
         dgiBsvIPbJHtlI6te6zMBAepwDOFHxuf+q/zM9cmeNwQ7Hj+tCNGHnN17Q8NLKbNiDg9
         KhIg==
X-Gm-Message-State: AOAM532wWkxl8Q1MxPI6UuVViv9egJ9qqGaVjVWYg1/hQvOGRNPLCT7D
        7xqwl/VxqRsHWo1RADey3n91XauUdQ==
X-Google-Smtp-Source: ABdhPJz67/j7RkcEz0IlATilsw4oAlPHSdB4DptV1A33256Nq/4jAtvpQj5E6o59QkY5ssbLGpiMTQ==
X-Received: by 2002:a05:6638:371f:: with SMTP id k31mr439971jav.143.1616434706608;
        Mon, 22 Mar 2021 10:38:26 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.253])
        by smtp.gmail.com with ESMTPSA id m20sm8242992ilj.66.2021.03.22.10.38.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Mar 2021 10:38:25 -0700 (PDT)
Received: (nullmailer pid 2887762 invoked by uid 1000);
        Mon, 22 Mar 2021 17:38:18 -0000
From:   Rob Herring <robh@kernel.org>
To:     Dinh Nguyen <dinguyen@kernel.org>
Cc:     mark.rutland@arm.com, robh+dt@kernel.org,
        devicetree@vger.kernel.org
In-Reply-To: <20210322150406.2411162-1-dinguyen@kernel.org>
References: <20210322150406.2411162-1-dinguyen@kernel.org>
Subject: Re: [PATCH] dt-bindings: documentation: add clock bindings information for N5X
Date:   Mon, 22 Mar 2021 11:38:18 -0600
Message-Id: <1616434698.377481.2887761.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 22 Mar 2021 10:04:06 -0500, Dinh Nguyen wrote:
> Document the N5X clock bindings.
> 
> Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
> ---
>  .../devicetree/bindings/clock/intel,n5x.yaml  | 46 +++++++++++++++++++
>  1 file changed, 46 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/intel,n5x.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
./Documentation/devicetree/bindings/clock/intel,n5x.yaml: $id: relative path/filename doesn't match actual path or filename
	expected: http://devicetree.org/schemas/clock/intel,n5x.yaml#
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/clock/intel,agilex.yaml: duplicate '$id' value 'http://devicetree.org/schemas/clock/intel,agilex.yaml#'

See https://patchwork.ozlabs.org/patch/1456654

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

