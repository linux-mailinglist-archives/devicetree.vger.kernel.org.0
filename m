Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 77A653930CE
	for <lists+devicetree@lfdr.de>; Thu, 27 May 2021 16:23:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236462AbhE0OZX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 May 2021 10:25:23 -0400
Received: from mail-oo1-f50.google.com ([209.85.161.50]:43811 "EHLO
        mail-oo1-f50.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236501AbhE0OZW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 May 2021 10:25:22 -0400
Received: by mail-oo1-f50.google.com with SMTP id e27-20020a056820061bb029020da48eed5cso144895oow.10
        for <devicetree@vger.kernel.org>; Thu, 27 May 2021 07:23:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=0NAWVGbI8ElxYBsBdhCif69lhi4JoOuf6njf199goA8=;
        b=iZPrbLT5Y6ZdiE/RxJAKN/1S3vPRaVa0V60lHyRISeYt02XjCc/hvSDHZ3q1QeUlF5
         bjf7dWPcxVDgcK4G65DK6ktUh38gIm47hVJoI05jCT73D4u3TXXuoIR4aanTj3uutDiD
         4zKrZFCaRaNWD2w94CESP51XwNLP9QVnqteVoTRSfdoDd3iQL1yfCj44Ns6RmzYjaHIs
         Paep6lVDxIrmh61H9djM4vloYG0AbaCCEQrxOveLw0rJtGmOX0IYJw+yqQcVp5J7AaTR
         5owFSbc9JSJUFwO26ERufcBIKHryDt8wi3F4LuoqnDwSbRaheANFIauV4uHYLK9dzBE+
         XrWg==
X-Gm-Message-State: AOAM531yXTmA04nu6bViIlbqHlbAETup9N4pjdpGFyrOkD1MAqg8gxHi
        748y1R6KtixLN7rKoxy7NQ==
X-Google-Smtp-Source: ABdhPJw4OfaFS9G2jnIooUcJk4rmCMdSZTQJLPGWenhvVeWEDcGTwgd07O5Arqm9x1ahhJps1FUcKw==
X-Received: by 2002:a4a:e1a3:: with SMTP id 3mr2951633ooy.25.1622125428298;
        Thu, 27 May 2021 07:23:48 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id v8sm481166oiv.5.2021.05.27.07.23.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 May 2021 07:23:45 -0700 (PDT)
Received: (nullmailer pid 731790 invoked by uid 1000);
        Thu, 27 May 2021 14:23:27 -0000
From:   Rob Herring <robh@kernel.org>
To:     Sudeep Holla <sudeep.holla@arm.com>
Cc:     Cristian Marussi <cristian.marussi@arm.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>
In-Reply-To: <20210526182807.548118-7-sudeep.holla@arm.com>
References: <20210526182807.548118-1-sudeep.holla@arm.com> <20210526182807.548118-7-sudeep.holla@arm.com>
Subject: Re: [PATCH 6/8] dt-bindings: mailbox : arm, mhu: Fix arm, scpi example used here
Date:   Thu, 27 May 2021 09:23:27 -0500
Message-Id: <1622125407.781075.731789.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 26 May 2021 19:28:05 +0100, Sudeep Holla wrote:
> Now that the arm,scpi binding is converted to YAML format, the following
> errors are seen when doing `make DT_CHECKER_FLAGS=-m dt_binding_check`
> 
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/mailbox/arm,mhu.example.dt.yaml:0:0: /example-1/soc/scpi: failed to match any schema with compatible: ['arm,scpi']
Documentation/devicetree/bindings/mailbox/arm,mhu.example.dt.yaml:0:0: /example-1/soc/scpi/power-domains-0: failed to match any schema with compatible: ['arm,scpi-power-domains']

See https://patchwork.ozlabs.org/patch/1484218

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

