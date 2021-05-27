Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8DE9E3930D6
	for <lists+devicetree@lfdr.de>; Thu, 27 May 2021 16:24:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236366AbhE0OZp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 May 2021 10:25:45 -0400
Received: from mail-oi1-f170.google.com ([209.85.167.170]:42894 "EHLO
        mail-oi1-f170.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236629AbhE0OZj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 May 2021 10:25:39 -0400
Received: by mail-oi1-f170.google.com with SMTP id c196so902841oib.9
        for <devicetree@vger.kernel.org>; Thu, 27 May 2021 07:24:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=gD2iddxHdKPoF8reFNQITAbMAtgF+meHvlfr1Nrb8Bo=;
        b=cWUQsrGG1wyNBvEZREBZQOM9wG9x0Lo1RhHRIaAOW7eM+5CIOSyXjblhBbfMBGI1KG
         olunwdE7PqEddx0tHdV/phHnBaGC2Nd2yKbu89aDnCDjtZ00g/+cp8fTOxG+QuVh3AuN
         5FP3nwZuMhddyE/+LXijPTjQE5haHHmTeZhN6qfg8+eQmcYAZvQY7s8URVHvQLGwSyPf
         YbF/GZ0+qqr6IQYpB8hxkT7ywsfWODT9iWuffmgf1Huhx6iRP7Jp9pm23JNA3HSWH5b0
         qfiLHC1IaNDU8sUmyIirZ5jh0VDPMd5AR23CMmIweTchCG3zKNsQ4Y12i/uzkAW7pysO
         g59A==
X-Gm-Message-State: AOAM532T+d129Q3Cwp8+VeL5aq4j5RCqOXmPRBFZ68gsYTm2H19aDDk3
        E3F63iYn6yOI/ZENZB9hrw==
X-Google-Smtp-Source: ABdhPJwqbtR2PHUT0PaVMg2Q6VaLzMj8i6vdT+yBgp0djsVdf1ZKDv51Q162A9XiqUNlk12ZOrH56Q==
X-Received: by 2002:a05:6808:10d6:: with SMTP id s22mr5666137ois.96.1622125446330;
        Thu, 27 May 2021 07:24:06 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id e83sm482190oia.40.2021.05.27.07.24.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 May 2021 07:24:03 -0700 (PDT)
Received: (nullmailer pid 731788 invoked by uid 1000);
        Thu, 27 May 2021 14:23:27 -0000
From:   Rob Herring <robh@kernel.org>
To:     Sudeep Holla <sudeep.holla@arm.com>
Cc:     Cristian Marussi <cristian.marussi@arm.com>,
        devicetree@vger.kernel.org, Jerome Brunet <jbrunet@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>,
        linux-arm-kernel@lists.infradead.org,
        Neil Armstrong <narmstrong@baylibre.com>
In-Reply-To: <20210526182807.548118-6-sudeep.holla@arm.com>
References: <20210526182807.548118-1-sudeep.holla@arm.com> <20210526182807.548118-6-sudeep.holla@arm.com>
Subject: Re: [PATCH 5/8] dt-bindings: firmware: arm,scpi: Convert to json schema
Date:   Thu, 27 May 2021 09:23:27 -0500
Message-Id: <1622125407.773675.731787.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 26 May 2021 19:28:04 +0100, Sudeep Holla wrote:
> Convert the old text format binding for System Control and Power Interface
> (SCPI) Message Protocol into the new and shiny YAML format.
> 
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Kevin Hilman <khilman@baylibre.com>
> Cc: Neil Armstrong <narmstrong@baylibre.com>
> Cc: Jerome Brunet <jbrunet@baylibre.com>
> Cc: Viresh Kumar <viresh.kumar@linaro.org
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  .../devicetree/bindings/arm/arm,scpi.txt      | 204 -------------
>  .../bindings/firmware/arm,scpi.yaml           | 284 ++++++++++++++++++
>  MAINTAINERS                                   |   2 +-
>  3 files changed, 285 insertions(+), 205 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/arm,scpi.txt
>  create mode 100644 Documentation/devicetree/bindings/firmware/arm,scpi.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mailbox/arm,mhu.example.dt.yaml: scpi@2f000000: $nodename:0: 'scpi' was expected
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/firmware/arm,scpi.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mailbox/arm,mhu.example.dt.yaml: scpi@2f000000: reg: [[0, 788529152, 0, 512]] is not of type 'object'
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/firmware/arm,scpi.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mailbox/arm,mhu.example.dt.yaml: scpi@2f000000: 'shmem' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/firmware/arm,scpi.yaml

See https://patchwork.ozlabs.org/patch/1484217

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

