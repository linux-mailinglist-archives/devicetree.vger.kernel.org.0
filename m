Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 108FA34D0E2
	for <lists+devicetree@lfdr.de>; Mon, 29 Mar 2021 15:04:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231259AbhC2NET (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Mar 2021 09:04:19 -0400
Received: from mail-oi1-f171.google.com ([209.85.167.171]:41509 "EHLO
        mail-oi1-f171.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231138AbhC2NDz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Mar 2021 09:03:55 -0400
Received: by mail-oi1-f171.google.com with SMTP id z15so12987287oic.8
        for <devicetree@vger.kernel.org>; Mon, 29 Mar 2021 06:03:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=mo+ALT4kgpXYp4yKEn82bczeTVBJ+FK1ZJ51cQv9Caw=;
        b=sEeHcpF4ReIwsziKORQIQ7obUs8kmH1dsEme6TRlkMtTDQFbeiomrVmxLtZZOFiNnh
         ruF8kv7QKEuP4CogLAN4OpyF7fvGkNN8stsMWWFeJs50rg3ng12Ncxj5QmmMIHR3PYlO
         rGX+FC/kMTiKrW/r1UK4KXW5s+9nQqegBgzMIPb0dKv/y7dVnLztukr2VYyiUskrUIqM
         bUZHMxh6oLblT+QZWaCQU4Uv6i2DfOHIVVL9XKwcvfofpSDFHHW1bvI2te1mrNx+j72X
         i57VNH07B1fvzxOdOgHnq/nPUonO7xtPa8PFizQ7EKomnTVuEK75VaV9Vcga7zV6uIgn
         zhSA==
X-Gm-Message-State: AOAM5319hpTEdAQg7iR0UbLI0o30iIELw31gW0Z0KUgnhz+zDbBGwXQ3
        s6/YDUYvA/gPGzaLPV+iRN91Plodaw==
X-Google-Smtp-Source: ABdhPJxqMq1JTanm3Xl8VvLn7lO2g5QxiCF4UUmO4d3Qd6PFHRNy8vrBK2oa8amm48eZ4ktjQaUObw==
X-Received: by 2002:aca:57d0:: with SMTP id l199mr19421798oib.115.1617023034978;
        Mon, 29 Mar 2021 06:03:54 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id w16sm4444176otq.15.2021.03.29.06.03.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Mar 2021 06:03:53 -0700 (PDT)
Received: (nullmailer pid 2404777 invoked by uid 1000);
        Mon, 29 Mar 2021 13:03:52 -0000
From:   Rob Herring <robh@kernel.org>
To:     Daniel Mack <daniel@zonque.org>
Cc:     dri-devel@lists.freedesktop.org, robh+dt@kernel.org,
        daniel@ffwll.ch, devicetree@vger.kernel.org, airlied@linux.ie
In-Reply-To: <20210328200057.1977778-2-daniel@zonque.org>
References: <20210328200057.1977778-1-daniel@zonque.org> <20210328200057.1977778-2-daniel@zonque.org>
Subject: Re: [PATCH v5 1/2] dt-bindings: display: add bindings for newhaven, 1.8-128160EF
Date:   Mon, 29 Mar 2021 08:03:52 -0500
Message-Id: <1617023032.498284.2404776.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 28 Mar 2021 22:00:56 +0200, Daniel Mack wrote:
> This adds documentation for a new ILI9163 based, SPI connected display.
> 
> Signed-off-by: Daniel Mack <daniel@zonque.org>
> ---
>  .../display/panel/ilitek,ili9163.yaml         | 69 +++++++++++++++++++
>  1 file changed, 69 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/ilitek,ili9163.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
./Documentation/devicetree/bindings/display/panel/ilitek,ili9163.yaml: $id: relative path/filename doesn't match actual path or filename
	expected: http://devicetree.org/schemas/display/panel/ilitek,ili9163.yaml#

See https://patchwork.ozlabs.org/patch/1459305

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

