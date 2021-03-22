Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 538ED344D8A
	for <lists+devicetree@lfdr.de>; Mon, 22 Mar 2021 18:39:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231435AbhCVRjA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Mar 2021 13:39:00 -0400
Received: from mail-io1-f47.google.com ([209.85.166.47]:40622 "EHLO
        mail-io1-f47.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231704AbhCVRiY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Mar 2021 13:38:24 -0400
Received: by mail-io1-f47.google.com with SMTP id n21so14805440ioa.7
        for <devicetree@vger.kernel.org>; Mon, 22 Mar 2021 10:38:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=KOn/yikuZnHsfk0ATJJaj5QFXrZZDuf7Us2s6sB+69E=;
        b=NtHX5TYaXICdDHk9+xj1FC2P5KrPUVrsKErHRFw6p/tZWBAj5MGSwo0n68BSrd8YEr
         ePcbNtMCkIZZAboUO0vbg99O6xEDcMmA0VE2UEJAWL7qRZDGquoAHjCGi8nCyPaq7772
         b+MYiGv43iNGsO8O8Uv4EMjKM491sQX4/kaRIf4NG3pAc13ssEgMAWrCnhjLFb7gxh7U
         MWpqyiq0q2YqVnXC7gXvsjbaL2zd87lukCPsHuGl5Q6JqbFMDqzwMXwYgsNox0Sl9IRd
         mjP10elvypoA7dp3vBSmu8u2onIDJrOKB1iJ0Yg5i5zi0gxlNm7LUJym8TZOuc4VGv9X
         QQew==
X-Gm-Message-State: AOAM5303BT+bFltsqLhMzBJjJR73qqDrydsYFwkeNxaxYHbhh8Qt1gPg
        G7xtQEhXiD8db4C87KKgSFmCSP4y5Q==
X-Google-Smtp-Source: ABdhPJyoUAfQkJqmR4npAvIULBx8OckjxTiXjCBeTqmz13ScPx4XNLAqTB0atflhfjKT17Ms5oMweA==
X-Received: by 2002:a05:6638:2101:: with SMTP id n1mr465627jaj.7.1616434703417;
        Mon, 22 Mar 2021 10:38:23 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.253])
        by smtp.gmail.com with ESMTPSA id q8sm6509747ilv.55.2021.03.22.10.38.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Mar 2021 10:38:22 -0700 (PDT)
Received: (nullmailer pid 2887758 invoked by uid 1000);
        Mon, 22 Mar 2021 17:38:18 -0000
From:   Rob Herring <robh@kernel.org>
To:     Daniel Mack <daniel@zonque.org>
Cc:     devicetree@vger.kernel.org, robh+dt@kernel.org, daniel@ffwll.ch,
        dri-devel@lists.freedesktop.org, airlied@linux.ie
In-Reply-To: <20210322095223.3607627-2-daniel@zonque.org>
References: <20210322095223.3607627-1-daniel@zonque.org> <20210322095223.3607627-2-daniel@zonque.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: display: add bindings for newhaven, 1.8-128160EF
Date:   Mon, 22 Mar 2021 11:38:18 -0600
Message-Id: <1616434698.359246.2887757.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 22 Mar 2021 10:52:22 +0100, Daniel Mack wrote:
> This adds documentation for a new ILI9163 based, SPI connected display.
> 
> Signed-off-by: Daniel Mack <daniel@zonque.org>
> ---
>  .../bindings/display/ilitek,ili9163.yaml      | 70 +++++++++++++++++++
>  1 file changed, 70 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/ilitek,ili9163.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
./Documentation/devicetree/bindings/display/ilitek,ili9163.yaml: $id: relative path/filename doesn't match actual path or filename
	expected: http://devicetree.org/schemas/display/ilitek,ili9163.yaml#
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/ilitek,ili9163.yaml: duplicate '$id' value 'http://devicetree.org/schemas/display/ilitek,ili9486.yaml#'

See https://patchwork.ozlabs.org/patch/1456455

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

